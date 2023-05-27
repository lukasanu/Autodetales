--
-- Create Schema Script
--   Database Version            : 19.0.0.0.0
--   Database Compatible Level   : 19.0.0.0.0
--   Script Compatible Level     : 19.0.0.0.0
--   Toad Version                : 13.2.0.258
--   DB Connect String           : FREEPDB1
--   Schema                      : DETALES
--   Script Created by           : SYS
--   Script Created at           : 27/05/2023 09:08:12
--   Notes                       : 
--

-- Object Counts: 
--   Procedures: 14     Lines of Code: 2376 


-- "Set define off" turns off substitution variables.
Set define off; 

--
-- API_APPLY_PART  (Procedure) 
--
--  Dependencies: 
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   STANDARD (Package)
--   V_ORDERS (Table)
--   V_ORDER_DETAILS (Table)
--
CREATE OR REPLACE PROCEDURE DETALES.api_apply_part(spart_code_in     IN     VARCHAR2
                                              ,nsupplier_id_in   IN     NUMBER
                                              ,s_id                 OUT VARCHAR2
                                              ,nstatus              OUT NUMBER) -- 0 Nerasta, 1 Viskas ok, -1 Klaida
IS
    norder_id   NUMBER;
    npart_id    NUMBER;
    nl_qnt_retrieved NUMBER;
    nl_qnt NUMBER;
    nl_status_id NUMBER;
BEGIN
    BEGIN
        SELECT   o.s_id
                ,od.nid
        INTO     s_id
                ,npart_id
        FROM     v_orders       o
                ,v_order_details od
        WHERE    o.nid = od.norder_id
        AND      od.spart_code = spart_code_in
        AND      od.nsupplier_id = nsupplier_id_in
        AND      od.nstatus_id < 17 --Kad nebutu pilnai gauta sandelyje
        ORDER BY o.dtcreated_at
        FETCH    FIRST ROW ONLY;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            nstatus := 0;
    END;

    IF nstatus = 0 THEN
        NULL; -- TODO: Prideti i nerastu detaliu saraša
    ELSE

        UPDATE v_order_details
        SET    nqnt_retrieved = nqnt_retrieved + 1
        WHERE  nid = npart_id;

        SELECT nqnt_retrieved
              ,nqnt
              ,nstatus_id
        INTO nl_qnt_retrieved
            ,nl_qnt
            ,nl_status_id
        FROM   v_order_details
        WHERE  nid = npart_id;

        IF nl_qnt_retrieved = nl_qnt THEN
            UPDATE v_order_details
            SET    nstatus_id = 17 --Gauta iš tiekejo (refactor later)
            WHERE  nid = npart_id;
        ELSIF nl_qnt_retrieved < nl_qnt AND nl_status_id != 16 THEN
            UPDATE v_order_details
            SET    nstatus_id = 16 --Dalinai gauta iš tiekejo (refactor later)
            WHERE  nid = npart_id;
        END IF;
        nstatus := 1;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        nstatus := -1;
END api_apply_part;
/


--
-- APPLY_FILTER  (Procedure) 
--
--  Dependencies: 
--   V_PRICE_LIST_IMPORTS (Table)
--   V_STORAGE_SUPPLIERS_PARTS_INFO (View)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   PLITBLM (Synonym)
--   STANDARD (Package)
--   DUAL (Synonym)
--   V_STORAGE_SUPPLIERS_PARTS (Table)
--   V_ORDER_DETAILS_PREP_INFO (View)
--   V_ORDERS_PREP_INFO (View)
--   V_ORDERS_PREP (Table)
--   V_ORDER_DETAILS_PREP (Table)
--   V_ORDER_TYPES (Table)
--   GET_SURCHARGE (Function)
--
CREATE OR REPLACE PROCEDURE DETALES.apply_filter(ip_order_id        NUMBER
                                            ,ip_supplier_id     NUMBER
                                            ,ip_order_type_id   NUMBER)
AS
    TYPE t_array IS VARRAY(1000) OF VARCHAR2(30);

    sa_codes           t_array := NULL;
    nl_exists          NUMBER;
    nl_code            NUMBER;
    nl_name            NUMBER;
    nl_price           NUMBER;
    nl_supplier_id     NUMBER;
    nl_order_type_id   NUMBER;
    nl_client_id       NUMBER;
    nl_car_id          NUMBER;
BEGIN

    SELECT ncar_id
          ,nclient_id
    INTO   nl_car_id
          ,nl_client_id
    FROM   v_orders_prep
    WHERE  nid = ip_order_id;

    SELECT DISTINCT vodp.spart_code
    BULK   COLLECT INTO sa_codes
    FROM   v_order_details_prep_info  vodp
          ,v_price_list_imports       pli
    WHERE  vodp.norder_id = ip_order_id
    AND    (pli.norder_type_id = vodp.norder_type_id
    OR      vodp.norder_type_id = -1)
    AND    (pli.nsupplier_id = vodp.nsupplier_id
    OR      vodp.norder_type_id = -1)
    AND    pli.napproved = 1
    AND    pli.nhaserrors = 0
    AND    pli.nimport_started = 1
    AND    pli.ncar_id = (SELECT ncar_id
                          FROM   v_orders_prep_info
                          WHERE  nid = ip_order_id);

    IF ip_supplier_id = -4 THEN
        FOR i IN 1 .. sa_codes.COUNT
        LOOP
            SELECT CASE
                       WHEN EXISTS
                                (SELECT 1
                                 FROM   v_storage_suppliers_parts
                                 WHERE  scode = sa_codes(i)) THEN
                           1
                       ELSE
                           0
                   END
            INTO   nl_exists
            FROM   DUAL;

            IF nl_exists = 1 THEN
                SELECT   nsupplier_id
                        ,norder_type_id
                        ,nprice
                INTO     nl_supplier_id
                        ,nl_order_type_id
                        ,nl_price
                FROM     v_storage_suppliers_parts
                WHERE    scode = sa_codes(i)
                ORDER BY nprice ASC
                FETCH    FIRST ROW ONLY;

                UPDATE v_order_details_prep
                SET    nsupplier_id = nl_supplier_id
                      ,norder_type_id = nl_order_type_id
                      ,nprice = nl_price
                      ,nsurcharge = NVL(get_surcharge(nl_client_id
                                             ,nl_car_id
                                             ,nl_order_type_id),0)
                WHERE  norder_id = ip_order_id
                AND    spart_code = sa_codes(i);
            END IF;
        END LOOP;
    ELSIF ip_supplier_id = -5 THEN
        FOR i IN 1 .. sa_codes.COUNT
        LOOP
            SELECT DISTINCT vssp.nprice
                           ,vssp.nsupplier_id
                           ,ot.nid
            INTO   nl_price
                  ,nl_supplier_id
                  ,nl_order_type_id
            FROM   v_order_types                   ot
                  ,v_storage_suppliers_parts_info  vssp
            WHERE  ot.nid = vssp.norder_type_id
            AND    vssp.scode = sa_codes(i)
            AND    ndelivery_days = (SELECT MIN(ot.ndelivery_days)
                                     FROM   v_order_types                   ot
                                           ,v_storage_suppliers_parts_info  vssp
                                     WHERE  ot.nid = vssp.norder_type_id
                                     AND    vssp.scode = sa_codes(i))
            AND    vssp.nprice = (SELECT MIN(nprice)
                                  FROM   v_storage_suppliers_parts_info
                                        ,v_order_types  oty
                                  WHERE  scode = vssp.scode
                                  AND    norder_type_id = oty.nid
                                  AND    ot.ndelivery_days = oty.ndelivery_days)
            FETCH  FIRST ROW ONLY;

            UPDATE v_order_details_prep
            SET    nsupplier_id = nl_supplier_id
                  ,norder_type_id = nl_order_type_id
                  ,nprice = nl_price
                  ,nsurcharge = NVL(get_surcharge(nl_client_id
                                             ,nl_car_id
                                             ,nl_order_type_id),0)
            WHERE  norder_id = ip_order_id
            AND    spart_code = sa_codes(i);
        END LOOP;
    ELSE
        FOR i IN 1 .. sa_codes.COUNT
        LOOP
            SELECT CASE
                       WHEN EXISTS
                                (SELECT 1
                                 FROM   v_storage_suppliers_parts_info
                                 WHERE  nsupplier_id = ip_supplier_id
                                 AND    norder_type_id = ip_order_type_id
                                 AND    scode = sa_codes(i)) THEN
                           1
                       ELSE
                           0
                   END
            INTO   nl_exists
            FROM   DUAL;

            IF nl_exists = 1 THEN
                SELECT nprice
                INTO   nl_price
                FROM   v_storage_suppliers_parts_info
                WHERE  nsupplier_id = ip_supplier_id
                AND    norder_type_id = ip_order_type_id
                AND    scode = sa_codes(i);

                UPDATE v_order_details_prep
                SET    nsupplier_id = ip_supplier_id
                      ,norder_type_id = ip_order_type_id
                      ,nprice = nl_price
                      ,nsurcharge = NVL(get_surcharge(nl_client_id
                                             ,nl_car_id
                                             ,ip_order_type_id),0)
                WHERE  norder_id = ip_order_id
                AND    spart_code = sa_codes(i);
            END IF;
        END LOOP;
    END IF;
END;
/


--
-- CHANGE_PASSWORD  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   V_USERS (Table)
--
CREATE OR REPLACE PROCEDURE DETALES.CHANGE_PASSWORD (sp_user_name   IN VARCHAR2
                                           ,sp_password    IN VARCHAR2)
IS
BEGIN
    UPDATE v_users
    SET    password = sp_password
    WHERE  user_name = sp_user_name;
END;
/


--
-- COUNTRY_CITY_EXISTS_VALIDATION  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   V_CITIES (Table)
--   V_COUNTRIES (Table)
--   SEQ_CITIES (Sequence)
--   SEQ_COUNTRIES (Sequence)
--
CREATE OR REPLACE PROCEDURE DETALES.COUNTRY_CITY_EXISTS_VALIDATION (sp_country_name   IN     VARCHAR2
                                                              ,sp_city_name      IN     VARCHAR2
                                                              ,ip_country_id        OUT NUMBER
                                                              ,ip_city_id           OUT NUMBER
                                                              ,ip_error             OUT NUMBER
                                                              ,sp_error             OUT VARCHAR2)
AS
    n_country_exist   NUMBER;
    n_city_exist      NUMBER;
BEGIN
    ip_error := 0;
    SELECT COUNT(*)
    INTO   n_country_exist
    FROM   v_countries
    WHERE  TRIM(sname) = TRIM(sp_country_name);

    SELECT COUNT(*)
    INTO   n_city_exist
    FROM   v_cities
    WHERE  TRIM(sname) = TRIM(sp_city_name);

    IF (n_country_exist = 0
        AND n_city_exist = 0)
       OR(n_country_exist = 0
          AND n_city_exist > 0) THEN
        ip_country_id := seq_countries.NEXTVAL;
        ip_city_id := seq_cities.NEXTVAL;

        INSERT INTO v_countries(nid
                             ,sname)
        VALUES      (ip_country_id
                    ,TRIM(sp_country_name));

        INSERT INTO v_cities(nid
                          ,ncountry_id
                          ,sname)
        VALUES      (ip_city_id
                    ,ip_country_id
                    ,TRIM(sp_city_name));
    ELSIF n_country_exist != 0
          AND n_city_exist = 0 THEN
        ip_city_id := seq_cities.NEXTVAL;

        SELECT nid
        INTO   ip_country_id
        FROM   v_countries
        WHERE  sname = TRIM(sp_country_name);

        INSERT INTO v_cities(nid
                          ,ncountry_id
                          ,sname)
        VALUES      (ip_city_id
                    ,ip_country_id
                    ,TRIM(sp_city_name));
    ELSE
        SELECT nid
        INTO   ip_country_id
        FROM   v_countries
        WHERE  TRIM(sname) = TRIM(sp_country_name);

        SELECT nid
        INTO   ip_city_id
        FROM   v_cities
        WHERE  TRIM(sname) = TRIM(sp_city_name)
        AND    ncountry_id = ip_country_id;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        ip_error := SQLCODE;
        sp_error := SQLERRM;
END;
/


--
-- PRC_DISPLAY_IMAGE  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   HTP (Synonym)
--   V_PHOTOS (Table)
--   DBMS_LOB (Synonym)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   DBMS_LOB (Package)
--   OWA_UTIL (Synonym)
--
CREATE OR REPLACE PROCEDURE DETALES.prc_DISPLAY_IMAGE(ip_photo_id   IN NUMBER) AS
 L_LENGTH    NUMBER;
 L_FILE_NAME VARCHAR2(2000);
 LOB_LOC     BLOB;
 L_MIME      VARCHAR2(255);
BEGIN
    select  p.blphoto  as image,
    DBMS_LOB.GETLENGTH(p.blphoto),
        p.sfile_name as text
    INTO   LOB_LOC,
    L_LENGTH,
    L_FILE_NAME
    from  v_photos p
    where nid = ip_photo_id ;
   OWA_UTIL.MIME_HEADER('application/octet', FALSE);
   HTP.P('Content-length: ' || L_LENGTH);
    HTP.P('Content-Disposition:  filename="' ||
    SUBSTR(L_FILE_NAME, INSTR(L_FILE_NAME, '/') + 1) || '"');
    OWA_UTIL.HTTP_HEADER_CLOSE;
    --
END;

/


--
-- PRC_ORDER_REPORT  (Procedure) 
--
--  Dependencies: 
--   DUAL (Synonym)
--   STANDARD (Package)
--   V_ORDER_DETAILS_INFO (View)
--   HTP (Synonym)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--
CREATE OR REPLACE procedure DETALES.prc_order_report (np_order_id in number, ip_supplier_id in number)
as
    s_date   DATE;
BEGIN
    htp.p('<style>
  table,
  th,
  td {
    border: 1px solid black;
    border-collapse: collapse;
  }
  td {
    text-align: left;
  }
  th {
    text-align: left;
  }
</style>');
    SELECT TO_CHAR(SYSDATE
                  ,'YYYY-MM-DD')
    INTO   s_date
    FROM   DUAL;
    htp.p('<table style="width: 100%">
  <tr>
    <th>' || s_date || '</th>
    <th>VIN:</th>
  </tr>');
    htp.p('
  <tr>
    <th>Detale pavadinimas</th>
    <th>Detale kodas</th>
    <th>Kiekis</th>
    <th>Savikaina</th>
    <th>Savikaina iš viso</th>
  </tr>');
    FOR x IN (SELECT spart_name               AS part_name
                    ,spart_code               AS part_code
                    ,nqnt                     AS qnt
                    ,nprice_wo_tax_all            AS price_wo_tax
                    ,nprice_with_tax     AS price_with_tax
              FROM   v_order_details_info
              WHERE  (norder_id = np_order_id
              AND     nsupplier_id = ip_supplier_id
              AND     ip_supplier_id != 0)
              OR     (norder_id = np_order_id
              AND     ip_supplier_id = 0))
    LOOP
        htp.p(   '<tr>
<td>'
              || x.part_name
              || '</td>
<td>'
              || x.part_code
              || '</td>
<td>'
              || x.qnt
              || '</td>
<td>'
              || TO_CHAR(ROUND(x.price_wo_tax
                              ,2)
                        ,'FM999999999999990D00')
              || '</td>
<td>'
              || TO_CHAR(ROUND(x.price_with_tax
                              ,2)
                        ,'FM999999999999990D00')
              || '</td>
</tr>');
    END LOOP;
    FOR x IN (SELECT SUM(nqnt)                          AS qnt_all
                    ,TO_CHAR(ROUND(SUM(nprice_wo_tax_all)
                                  ,2)
                            ,'FM999999999999990D00')    AS price_wo_tax_all
                    ,TO_CHAR(ROUND(SUM(nprice_with_tax)
                                  ,2)
                            ,'FM999999999999990D00')    AS price_with_tax_all
              FROM   v_order_details_info
              WHERE  (norder_id = np_order_id
              AND     nsupplier_id = ip_supplier_id
              AND     ip_supplier_id != 0)
              OR     (norder_id = np_order_id
              AND     ip_supplier_id = 0))
    LOOP
        htp.p('<tr>
        <th></th>
    <th>Viso:</th>
    <th>' || x.qnt_all || '</th>
    <th>' || x.price_wo_tax_all || '</th>
    <th>' || x.price_with_tax_all || '</th>
        </tr>');
    END LOOP;
end prc_order_report;

/


--
-- PRC_PRINT_ORDER  (Procedure) 
--
--  Dependencies: 
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   V_ORDER_DETAILS_INFO (View)
--   HTP (Synonym)
--   V_COMPANIES (Table)
--   STANDARD (Package)
--   V_ORDER_DETAILS (Table)
--   V_ORDERS (Table)
--
CREATE OR REPLACE PROCEDURE DETALES.prc_print_order(sp_brand         IN VARCHAR2
                                                   ,sp_vin           IN VARCHAR2
                                                   ,ip_order_id      IN NUMBER
                                                   ,ip_supplier_id   IN NUMBER
                                                   ,ip_language      IN NUMBER)
IS
    s_date            VARCHAR2(20);
    n_client_id       NUMBER;
    s_supplier_name   VARCHAR2(100);
    n_status          NUMBER;
BEGIN
    IF ip_supplier_id = 0 THEN
        FOR idx IN (SELECT   DISTINCT o.nsupplier_id
                                     ,c.scompany_name
                                     ,o.nstatus_id
                    FROM     v_order_details o
                            ,v_companies    c
                    WHERE    o.norder_id = ip_order_id
                    AND      o.nsupplier_id = c.nid
                    ORDER BY 1)
        LOOP
            htp.p('<script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script><style>
  table,
  th,
  td {
    border: 1px solid black;
    border-collapse: collapse;

  }
  td {
        text-align:center;
  }

  th {
    text-align: center;
    padding-right: 10px;
    padding-left: 10px;
  }
  .t-Button  {
    float: right;
    margin-right: 5px;
  }
</style>');

            IF idx.nstatus_id = 12 THEN
                htp.p(
                       '<table id="report'
                    || ip_order_id
                    || ip_language
                    || idx.nsupplier_id
                    || '" style="width: 100%"> <b style="padding-right: 10px;">'
                    || idx.scompany_name
                    || '</b> <button type="button" class="partsOrdered t-Button--padLeft t-Button t-Button--hot u-color-5  t-Button--padTop t-Button--padBottom" id="'
                    || idx.nsupplier_id
                    || '">Užsakyti</button>'
                    || '</b> <button type="button" class="partsSent t-Button--padLeft t-Button t-Button--hot u-color-5  t-Button--padTop t-Button--padBottom" id="'
                    || idx.nsupplier_id
                    || '">Išsiųsti</button>'
                    || '<button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="copyContent(''report'
                    || ip_order_id
                    || ip_language
                    || idx.nsupplier_id
                    || ''')">Kopijuoti</button>
                 <button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="printContent(''report'
                    || ip_order_id
                    || ip_language
                    || idx.nsupplier_id
                    || ''')">Spausdinti</button><button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="tableToExcel(''report'
                    || ip_order_id
                    || ip_language
                    || idx.nsupplier_id
                    || ''', ''Uzsakymas_'
                    || sp_brand
                    || ' '
                    || sp_vin
                    || ''')">Excel</button>
  <tr>
    <th style="text-align:left; width:50px;">'
                    || sp_brand
                    || '</th>
    <th colspan="4" style="text-align:left;">VIN: '
                    || sp_vin
                    || '</th>
  </tr>');
            ELSE
                htp.p(
                       '<table id="report'
                    || ip_order_id
                    || ip_language
                    || idx.nsupplier_id
                    || '" style="width: 100%"> <b style="padding-right: 10px;">'
                    || idx.scompany_name
                    || '</b> <button type="button" class="partsNotOrdered t-Button t-Button--hot u-color-30-bg t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" id="'
                    || idx.nsupplier_id
                    || '">Atšaukti</button>'
                    || '</b> <button type="button" class="partsSent t-Button--padLeft t-Button t-Button--hot u-color-5  t-Button--padTop t-Button--padBottom" id="'
                    || idx.nsupplier_id
                    || '">Išsiųsti</button>'
                    || '<button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="copyContent(''report'
                    || ip_order_id
                    || ip_language
                    || idx.nsupplier_id
                    || ''')">Kopijuoti</button>
                 <button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="printContent(''report'
                    || ip_order_id
                    || ip_language
                    || idx.nsupplier_id
                    || ''')">Spausdinti</button><button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="tableToExcel(''report'
                    || ip_order_id
                    || ip_language
                    || idx.nsupplier_id
                    || ''', ''Uzsakymas_'
                    || sp_brand
                    || ' '
                    || sp_vin
                    || ''')">Excel</button>
  <tr>
    <th style="text-align:left; width:50px;">'
                    || sp_brand
                    || '</th>
    <th colspan="4" style="text-align:left;">VIN: '
                    || sp_vin
                    || '</th>
  </tr>');
            END IF;

            IF ip_language = 0 THEN
                htp.p('
  <tr>
    <th>Nr.</th>
    <th>Detales kodas</th>
    <th>Kiekis</th>
    <th>Savikaina</th>
    <th>Savikaina iš viso</th>
  </tr>');
            ELSE
                htp.p('
  <tr>
    <th>No.</th>
    <th>Part Number</th>
    <th>QTY</th>
    <th>Our Price</th>
    <th>Price Total</th>
  </tr>');
            END IF;

            FOR x IN (SELECT ROWNUM                AS nr
                            ,spart_code            AS part_code
                            ,nqnt                  AS qnt
                            ,nour_price_wo_tax     AS price_wo_tax
                      FROM   v_order_details_info
                      WHERE  norder_id = ip_order_id
                      AND    nsupplier_id = idx.nsupplier_id)
            LOOP
                htp.p(   '<tr>
<td>'
                      || x.nr
                      || '.'
                      || '</td>
<td>'
                      || x.part_code
                      || '</td>
<td>'
                      || x.qnt
                      || '</td>
<td>'
                      || TO_CHAR(ROUND(x.price_wo_tax
                                      ,2)
                                ,'FM999999999999990D00')
                      || '</td>
<td>'
                      || TO_CHAR(ROUND(x.price_wo_tax * x.qnt
                                      ,2)
                                ,'FM999999999999990D00')
                      || '</td>
</tr>');
            END LOOP;

            FOR x IN (SELECT SUM(nqnt)                          AS qnt_all
                            ,TO_CHAR(ROUND(SUM(nour_price_wo_tax)
                                          ,2)
                                    ,'FM999999999999990D00')    AS price_wo_tax_all
                            ,TO_CHAR(ROUND(SUM(nour_price_wo_tax * nqnt)
                                          ,2)
                                    ,'FM999999999999990D00')    AS price_with_tax_all
                      FROM   v_order_details_info
                      WHERE  norder_id = ip_order_id
                      AND    nsupplier_id = idx.nsupplier_id)
            LOOP
                IF ip_language = 0 THEN
                    htp.p('<tr>
    <td></td>
    <td style="text-align:right; padding-right: 10px;">Viso:</td>
    <td>' || x.qnt_all || '</td>
    <td>' || x.price_wo_tax_all || '</td>
    <td>' || x.price_with_tax_all || '</td>
        </tr>');
                ELSE
                    htp.p('<tr>
    <td></td>
    <td style="text-align:right; padding-right: 10px;">Total:</td>
    <td>' || x.qnt_all || '</td>
    <td>' || x.price_wo_tax_all || '</td>
    <td>' || x.price_with_tax_all || '</td>
        </tr>');
                END IF;
            END LOOP;

            htp.p('</table><br>');
        END LOOP;
    ELSIF ip_supplier_id = -1 THEN
        SELECT TO_CHAR(SYSDATE
                      ,'YYYY-MM-DD')
              ,nclient_id
        INTO   s_date
              ,n_client_id
        FROM   v_orders
        WHERE  nid = ip_order_id;

        htp.p('<script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script><style>
  table,
  th,
  td {
    border: 1px solid black;
    border-collapse: collapse;

  }
  td {
        text-align:center;
  }

  th {
    text-align: center;
    padding-right: 10px;
    padding-left: 10px;
    white-space: nowrap;
  }
  .t-Button  {
    float: right;
    margin-right: 5px;
  }
</style>');

        FOR x IN (SELECT TO_CHAR(SYSDATE
                                ,'YYYYMMDD')         AS sid
                        ,NVL(scompany_code, NULL)    AS code
                        ,NVL(stax_code, NULL)        AS pvmcode
                        ,scompany_name               AS name
                  FROM   v_companies
                  WHERE  nid = n_client_id)
        LOOP
            IF ip_language = 0 THEN
                htp.p(
                       '<table id="report'
                    || ip_language
                    || x.code
                    || '" style="width: 100%"><button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="copyContent(''report'
                    || ip_language
                    || x.code
                    || ''')">Kopijuoti</button>
                 <button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="printContent(''report'
                    || ip_language
                    || x.code
                    || ''')">Spausdinti</button><button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="tableToExcel(''report'
                    || ip_language
                    || x.code
                    || ''', ''Uzsakymas_'
                    || sp_brand
                    || ' '
                    || sp_vin
                    || ''')">Excel</button>
  <tr>
    <th style="text-align:center; width:100px;">'
                    || s_date
                    || '</th>
    <th colspan="6" style="text-align:center;">Užklauos Numeris: '
                    || x.sid
                    || '</th>
  </tr>
  <tr>
    <th colspan="3" style="text-align:center;">Pardavejas<br>UAB Detaliu Tiekimas<br>'
                    || '</th>
            <th colspan="4" style="text-align:center;">Pirkejas<br>'
                    || x.name
                    || '<br>'
                    || x.code
                    || x.pvmcode
                    || '</th>
  </tr>');
            ELSE
                htp.p(
                       '<table id="report'
                    || ip_language
                    || x.code
                    || '" style="width: 100%"><button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="copyContent(''report'
                    || ip_language
                    || x.code
                    || ''')">Kopijuoti</button>
                 <button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="printContent(''report'
                    || ip_language
                    || x.code
                    || ''')">Spausdinti</button><button type="button" class="t-Button t-Button--hot u-color-5  t-Button--padTop t-Button--padBottom" onclick="tableToExcel(''report'
                    || ip_language
                    || x.code
                    || ''', ''Uzsakymas_'
                    || sp_brand
                    || ' '
                    || sp_vin
                    || ''')">Excel</button>
  <tr>
    <th style="text-align:center; width:100px;">'
                    || s_date
                    || '</th>
    <th colspan="6" style="text-align:center;">Request Number: '
                    || x.sid
                    || '</th>
  </tr>
  <tr>
    <th colspan="3" style="text-align:center;">Supplier<br>UAB Detaliu Tiekimas<br>'
                    || '</th>
            <th colspan="4" style="text-align:center;">Customer<br>'
                    || x.name
                    || '<br>'
                    || x.code
                    || x.pvmcode
                    || '</th>
  </tr>');
            END IF;
        END LOOP;

        IF ip_language = 0 THEN
            htp.p('
  <tr>
    <th style="max-width: 50px;">Nr.</th>
    <th>Pavadinimas</th>
    <th>Detales kodas</th>
    <th>Kiekis</th>
    <th>Kaina be PVM</th>
    <th>Suma be PVM</th>
    <th>Suma su PVM</th>
  </tr>');
        ELSE
            htp.p('
  <tr>
    <th style="max-width: 50px;">No.</th>
    <th>Part Name</th>
    <th>Part Number</th>
    <th>QTY</th>
    <th>Price</th>
    <th>Price Total</th>
    <th>Price With VAT</th>
  </tr>');
        END IF;

        FOR x IN (SELECT ROWNUM                AS nr
                        ,spart_name            AS part_name
                        ,spart_code            AS part_code
                        ,nqnt                  AS qnt
                        ,nprice_wo_tax         AS price
                        ,nprice_wo_tax_all     AS price_wo_tax
                        ,nprice_with_tax       AS price_with_tax
                  FROM   v_order_details_info
                  WHERE  norder_id = ip_order_id)
        LOOP
            htp.p(   '<tr>
    <td>'
                  || x.nr
                  || '.'
                  || '</td>
    <td>'
                  || x.part_name
                  || '</td>
    <td>'
                  || x.part_code
                  || '</td>
    <td>'
                  || x.qnt
                  || '</td>
    <td>'
                  || TO_CHAR(ROUND(x.price
                                  ,2)
                            ,'FM999999999999990D00')
                  || '</td>
    <td>'
                  || TO_CHAR(ROUND(x.price_wo_tax
                                  ,2)
                            ,'FM999999999999990D00')
                  || '</td>
    <td>'
                  || TO_CHAR(ROUND(x.price_with_tax
                                  ,2)
                            ,'FM999999999999990D00')
                  || '</td>
    </tr>');
        END LOOP;

        FOR x IN (SELECT TO_CHAR(ROUND(SUM(nprice_wo_tax)
                                      ,2)
                                ,'FM999999999999990D00')    AS price_all
                        ,TO_CHAR(ROUND(SUM(nprice_wo_tax_all)
                                      ,2)
                                ,'FM999999999999990D00')    AS price_wo_tax_all
                        ,TO_CHAR(ROUND(SUM(nprice_with_tax)
                                      ,2)
                                ,'FM999999999999990D00')    AS price_with_tax_all
                  FROM   v_order_details_info
                  WHERE  norder_id = ip_order_id)
        LOOP
            IF ip_language = 0 THEN
                htp.p('<tr>
        <td></td>
        <td colspan="3" style="text-align:right; padding-right: 10px;">VISO:</td>
        <td>' || x.price_all || '</td>
        <td>' || x.price_wo_tax_all || '</td>
        <td>' || x.price_with_tax_all || '</td>
            </tr>');
            ELSE
                htp.p('<tr>
        <td></td>
        <td colspan="3" style="text-align:right; padding-right: 10px;">TOTAL:</td>
        <td>' || x.price_all || '</td>
        <td>' || x.price_wo_tax_all || '</td>
        <td>' || x.price_with_tax_all || '</td>
            </tr>');
            END IF;
        END LOOP;

        htp.p('</table><br>');
    ELSE
        SELECT UPPER(scompany_name)
        INTO   s_supplier_name
        FROM   v_companies
        WHERE  nid = ip_supplier_id;

        htp.p('<script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script><style>
          table,
          th,
          td {
            border: 1px solid black;
            border-collapse: collapse;

          }
          td {
                text-align:center;
          }

          th {
            text-align: center;
            padding-right: 10px;
            padding-left: 10px;
          }
          .t-Button  {
            float: right;
            margin-right: 5px;
          }
        </style>');

        SELECT nstatus_id
        INTO   n_status
        FROM   v_order_details
        WHERE  norder_id = ip_order_id
        AND    nsupplier_id = ip_supplier_id
        FETCH  FIRST ROW ONLY;

        IF n_status = 12 THEN
            IF s_supplier_name LIKE '%IGTIS%' THEN
                htp.p(
                       '<table id="report'
                    || ip_language
                    || ip_supplier_id
                    || '" style="width: 100%"><button type="button" class="partsOrdered t-Button--padLeft t-Button t-Button--hot u-color-5  t-Button--padTop t-Button--padBottom" id="'
                    || ip_supplier_id
                    || '">Užsakyti</button>'
                    || '<button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="copyContent(''report'
                    || ip_language
                    || ip_supplier_id
                    || ''')">Kopijuoti</button>
  <tr>
    <th style="text-align:left; width:50px;">'
                    || sp_brand
                    || '</th>
    <th colspan="4"style="text-align:left;">VIN: '
                    || sp_vin
                    || '</th>
  </tr>');
            ELSE
                htp.p(
                       '<table id="report'
                    || ip_language
                    || ip_supplier_id
                    || '" style="width: 100%"><button type="button" class="partsOrdered t-Button--padLeft t-Button t-Button--hot u-color-5  t-Button--padTop t-Button--padBottom" id="'
                    || ip_supplier_id
                    || '">Užsakyti</button>'
                    || '<button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="copyContent(''report'
                    || ip_language
                    || ip_supplier_id
                    || ''')">Kopijuoti</button>
                 <button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="printContent(''report'
                    || ip_language
                    || ip_supplier_id
                    || ''')">Spausdinti</button><button type="button" class="t-Button t-Button--hot t-Button--padTop t-Button--padBottom" onclick="tableToExcel(''report'
                    || ip_language
                    || ip_supplier_id
                    || ''', ''Uzsakymas_'
                    || sp_brand
                    || ' '
                    || sp_vin
                    || ''')">Excel</button>
  <tr>
    <th style="text-align:left; width:50px;">'
                    || sp_brand
                    || '</th>
    <th colspan="4"style="text-align:left;">VIN: '
                    || sp_vin
                    || '</th>
  </tr>');
            END IF;
        ELSE
            IF s_supplier_name LIKE '%IGTIS%' THEN
                htp.p(
                       '<table id="report'
                    || ip_language
                    || ip_supplier_id
                    || '" style="width: 100%"><button type="button" class="partsNotOrdered t-Button t-Button--hot u-color-30-bg t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" id="'
                    || ip_supplier_id
                    || '">Atšaukti</button>'
                    || '<button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="copyContent(''report'
                    || ip_language
                    || ip_supplier_id
                    || ''')">Kopijuoti</button>
                 <button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="tableToExcel(''report'
                    || ip_language
                    || ip_supplier_id
                    || ''',''File'')">Excel</button>
  <tr>
    <th style="text-align:left; width:50px;">'
                    || sp_brand
                    || '</th>
    <th colspan="4"style="text-align:left;">VIN: '
                    || sp_vin
                    || '</th>
  </tr>');
            ELSE
                htp.p(
                       '<table id="report'
                    || ip_language
                    || ip_supplier_id
                    || '" style="width: 100%"><button type="button" class="partsNotOrdered t-Button t-Button--hot u-color-30-bg t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" id="'
                    || ip_supplier_id
                    || '">Atšaukti</button>'
                    || '<button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="copyContent(''report'
                    || ip_language
                    || ip_supplier_id
                    || ''')">Kopijuoti</button>
                 <button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="printContent(''report'
                    || ip_language
                    || ip_supplier_id
                    || ''')">Spausdinti</button><button type="button" class="t-Button t-Button--hot t-Button--padTop t-Button--padBottom" onclick="tableToExcel(''report'
                    || ip_language
                    || ip_supplier_id
                    || ''', ''Uzsakymas_'
                    || sp_brand
                    || ' '
                    || sp_vin
                    || ''')">Excel</button>
  <tr>
    <th style="text-align:left; width:50px;">'
                    || sp_brand
                    || '</th>
    <th colspan="4"style="text-align:left;">VIN: '
                    || sp_vin
                    || '</th>
  </tr>');
            END IF;
        END IF;

        IF ip_language = 0 THEN
            htp.p('
  <tr>
    <th>Nr.</th>
    <th>Detales kodas</th>
    <th>Kiekis</th>
    <th>Savikaina</th>
    <th>Savikaina iš viso</th>
  </tr>');
        ELSE
            htp.p('
  <tr>
    <th>No.</th>
    <th>Part Number</th>
    <th>QTY</th>
    <th>Our Price</th>
    <th>Price Total</th>
  </tr>');
        END IF;

        FOR x IN (SELECT ROWNUM                       AS nr
                        ,spart_code                   AS part_code
                        ,nqnt                         AS qnt
                        ,nour_price_wo_tax            AS price_wo_tax
                        ,nour_price_wo_tax * 1.21     AS price_with_tax
                  FROM   v_order_details_info
                  WHERE  (norder_id = ip_order_id
                  AND     nsupplier_id = ip_supplier_id
                  AND     ip_supplier_id != 0)
                  OR     (norder_id = ip_order_id
                  AND     ip_supplier_id = 0))
        LOOP
            htp.p(   '<tr>
<td>'
                  || x.nr
                  || '.'
                  || '</td>
<td>'
                  || x.part_code
                  || '</td>
<td>'
                  || x.qnt
                  || '</td>
<td>'
                  || TO_CHAR(ROUND(x.price_wo_tax
                                  ,2)
                            ,'FM999999999999990D00')
                  || '</td>
<td>'
                  || TO_CHAR(ROUND(x.price_with_tax
                                  ,2)
                            ,'FM999999999999990D00')
                  || '</td>
</tr>');
        END LOOP;

        FOR x IN (SELECT SUM(nqnt)                          AS qnt_all
                        ,TO_CHAR(ROUND(SUM(nour_price_wo_tax)
                                      ,2)
                                ,'FM999999999999990D00')    AS price_wo_tax_all
                        ,TO_CHAR(ROUND(SUM(nour_price_wo_tax) * 1.21
                                      ,2)
                                ,'FM999999999999990D00')    AS price_with_tax_all
                  FROM   v_order_details_info
                  WHERE  (norder_id = ip_order_id
                  AND     nsupplier_id = ip_supplier_id
                  AND     ip_supplier_id != 0)
                  OR     (norder_id = ip_order_id
                  AND     ip_supplier_id = 0))
        LOOP
            IF ip_language = 0 THEN
                htp.p('<tr>
    <td></td>
    <td style="text-align:right; padding-right: 10px;">Viso:</td>
    <td>' || x.qnt_all || '</td>
    <td>' || x.price_wo_tax_all || '</td>
    <td>' || x.price_with_tax_all || '</td>
        </tr>');
            ELSE
                htp.p('<tr>
    <td></td>
    <td style="text-align:right; padding-right: 10px;">Total:</td>
    <td>' || x.qnt_all || '</td>
    <td>' || x.price_wo_tax_all || '</td>
    <td>' || x.price_with_tax_all || '</td>
        </tr>');
            END IF;
        END LOOP;

        htp.p('</table><br>');
    END IF;
END;
/


--
-- PRC_PRINT_ORDER_PREP  (Procedure) 
--
--  Dependencies: 
--   V_ORDERS_PREP (Table)
--   V_ORDER_DETAILS_PREP_INFO (View)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   STANDARD (Package)
--   V_COMPANIES (Table)
--   HTP (Synonym)
--
CREATE OR REPLACE PROCEDURE DETALES.prc_print_order_prep(ip_order_id   IN NUMBER
                                                        ,ip_language   IN NUMBER)
IS
    s_date        VARCHAR2(20);
    n_client_id   NUMBER;
BEGIN
    SELECT TO_CHAR(SYSDATE
                  ,'YYYY-MM-DD')
          ,nclient_id
    INTO   s_date
          ,n_client_id
    FROM   v_orders_prep
    WHERE  nid = ip_order_id;

    htp.p('<script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script><style>
  table,
  th,
  td {
    border: 1px solid #000000;
    border-collapse: collapse;

  }
  td {
        text-align:center;
  }
  th {
    text-align: center;
    padding-right: 10px;
    padding-left: 10px;
    white-space: nowrap;
    width: fit-content;
  }
  .t-Button  {
    float: right;
    margin-right: 5px;
  }
  .noBorder{
    border:none;
    padding-bottom: 15px;
  }
  .wrapText{
    white-space: pre-wrap;
    width: 90px !important;
  }
  table{
    border:none;
  }
  .wide{
      width: fit-content !important;
      white-space: nowrap;
  }
</style>');

    FOR x IN (SELECT TO_CHAR(SYSDATE
                            ,'YYYYMMDD')         AS sid
                    ,NVL(scompany_code, NULL)    AS code
                    ,NVL(stax_code, NULL)        AS pvmcode
                    ,scompany_name               AS name
              FROM   v_companies
              WHERE  nid = n_client_id)
    LOOP
        IF ip_language = 0 THEN
            htp.p(
                   '<table id="report'
                || ip_order_id
                || ip_language
                || '" style="width: 100%; position: realtive;"><button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="copyContent(''report'
                || ip_order_id
                || ip_language
                || ''')">Kopijuoti</button>'
                || '</b> <button type="button" class="partsSent t-Button--padLeft t-Button t-Button--hot u-color-5  t-Button--padTop t-Button--padBottom" id="'
                || ip_order_id
                || '">Išsiųsti</button>'
                || '
                <button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="printContent(''report'
                || ip_order_id
                || ip_language
                || ''')">Spausdinti</button><button type="button" class="t-Button t-Button--hot u-color-5  t-Button--padTop t-Button--padBottom" onclick="tableToExcel(''report'
                || ip_order_id
                || ip_language
                || ''', ''Uzklausa_'
                || REPLACE(x.name
                          ,'"'
                          ,'')
                || ' '
                || x.sid
                || ''')">Excel</button>
  <tr >
    <th class="noBorder" colspan="2" style="text-align:center; width:100px;">'
                || s_date
                || '</th>
    <th class="noBorder" colspan="5" style="text-align:center;">Užklausos Numeris: '
                || x.sid
                || '</th>
  </tr>
  <tr>
    <th class="noBorder" colspan="3" style="text-align:center;">Pardavejas<br>UAB Detaliu Tiekimas<br>'
                || '</th>
            <th class="noBorder" colspan="4" style="text-align:center;">Pirkejas<br>'
                || x.name
                || '<br>'
                || x.code
                || x.pvmcode
                || '</th>
  </tr>');
        ELSE
            htp.p(
                   '<table id="report'
                || ip_order_id
                || ip_language
                || '" style="width: 100%"><button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="copyContent(''report'
                || ip_order_id
                || ip_language
                || ''')">Kopijuoti</button>'
                || '</b> <button type="button" class="partsSent t-Button--padLeft t-Button t-Button--hot u-color-5  t-Button--padTop t-Button--padBottom" id="'
                || ip_order_id
                || '">Išsiųsti</button>'
                || '
                 <button type="button" class="t-Button t-Button--hot t-Button--padLeft t-Button--padRight t-Button--padTop t-Button--padBottom" onclick="printContent(''report'
                || ip_order_id
                || ip_language
                || ''')">Spausdinti</button><button type="button" class="t-Button t-Button--hot u-color-5  t-Button--padTop t-Button--padBottom" onclick="tableToExcel(''report'
                || ip_order_id
                || ip_language
                || ''', ''Uzklausa_'
                || REPLACE(x.name
                          ,'"'
                          ,'')
                || ' '
                || x.sid
                || ''')">Excel</button>
  <tr>
    <th colspan="2" class="noBorder">'
                || s_date
                || '</th>
    <th class="noBorder" colspan="5" style="text-align:center;">Request Number: '
                || x.sid
                || '</th>
  </tr>
  <tr>
    <th class="noBorder" colspan="3" style="text-align:center;">Supplier<br>UAB Detaliu Tiekimas<br>'
                || '</th>
            <th class="noBorder" colspan="4" style="text-align:center;">Customer<br>'
                || x.name
                || '<br>'
                || x.code
                || x.pvmcode
                || '</th>
  </tr>');
        END IF;
    END LOOP;

    IF ip_language = 0 THEN
        htp.p('
  <tr>
    <th style="max-width: 50px;">Nr.</th>
    <th class="wide">Pavadinimas</th>
    <th>Detales kodas</th>
    <th>Kiekis</th>
    <th class="wrapText">Kaina be PVM</th>
    <th class="wrapText">Suma be PVM</th>
    <th class="wrapText">Suma su PVM</th>
  </tr>');
    ELSE
        htp.p('
  <tr>
    <th style="max-width: 50px;">No.</th>
    <th>Part Name</th>
    <th>Part Number</th>
    <th>QTY</th>
    <th>Price</th>
    <th class="wrapText">Price Total</th>
    <th class="wrapText">Price With VAT</th>
  </tr>');
    END IF;

    FOR x IN (SELECT ROWNUM                AS nr
                    ,spart_name            AS part_name
                    ,spart_code            AS part_code
                    ,nqnt                  AS qnt
                    ,sprice_wo_tax         AS price
                    ,sprice_wo_tax_all     AS price_wo_tax
                    ,sprice_with_tax       AS price_with_tax
              FROM   v_order_details_prep_info
              WHERE  norder_id = ip_order_id
              AND    selected = 1)
    LOOP
        htp.p(   '<tr>
    <td>'
              || x.nr
              || '.'
              || '</td>
    <td>'
              || x.part_name
              || '</td>
    <td>'
              || x.part_code
              || '</td>
    <td>'
              || x.qnt
              || '</td>
    <td>'
              || TO_CHAR(ROUND(x.price
                              ,2)
                        ,'FM999999999999990D00')
              || '</td>
    <td>'
              || TO_CHAR(ROUND(x.price_wo_tax
                              ,2)
                        ,'FM999999999999990D00')
              || '</td>
    <td>'
              || TO_CHAR(ROUND(x.price_with_tax
                              ,2)
                        ,'FM999999999999990D00')
              || '</td>
    </tr>');
    END LOOP;

    FOR x IN (SELECT SUM(nqnt)                          AS qnt_all
                    ,TO_CHAR(ROUND(SUM(sprice_wo_tax)
                                  ,2)
                            ,'FM999999999999990D00')    AS price_all
                    ,TO_CHAR(ROUND(SUM(sprice_wo_tax_all)
                                  ,2)
                            ,'FM999999999999990D00')    AS price_wo_tax_all
                    ,TO_CHAR(ROUND(SUM(sprice_with_tax)
                                  ,2)
                            ,'FM999999999999990D00')    AS price_with_tax_all
              FROM   v_order_details_prep_info
              WHERE  norder_id = ip_order_id
               AND    selected = 1)
    LOOP
        IF ip_language = 0 THEN
            htp.p('<tr>
        <td></td>
        <td colspan="2" style="text-align:right; padding-right: 10px;">VISO:</td>
        <td>' || x.qnt_all || '</td>
        <td>' || x.price_all || '</td>
        <td>' || x.price_wo_tax_all || '</td>
        <td>' || x.price_with_tax_all || '</td>
            </tr>');
        ELSE
            htp.p('<tr>
        <td></td>
        <td colspan="2" style="text-align:right; padding-right: 10px;">TOTAL:</td>
        <td>' || x.qnt_all || '</td>
        <td>' || x.price_all || '</td>
        <td>' || x.price_wo_tax_all || '</td>
        <td>' || x.price_with_tax_all || '</td>
            </tr>');
        END IF;
    END LOOP;

    htp.p('</table><br>');
END;
/


--
-- PRC_SEND_ORDER  (Procedure) 
--
--  Dependencies: 
--   V_ORDER_DETAILS (Table)
--   V_ORDER_DETAILS_INFO (View)
--   V_COMPANIES (Table)
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   V_ORDERS (Table)
--
CREATE OR REPLACE PROCEDURE DETALES.prc_send_order(sp_brand         IN     VARCHAR2
                                                  ,sp_vin           IN     VARCHAR2
                                                  ,ip_order_id      IN     NUMBER
                                                  ,ip_supplier_id   IN     NUMBER
                                                  ,ip_language      IN     NUMBER
                                                  ,cl_body             OUT CLOB)
IS
    s_date            VARCHAR2(20);
    n_client_id       NUMBER;
    s_supplier_name   VARCHAR2(100);
    n_status          NUMBER;
    sorder_id VARCHAR2(100);
BEGIN
    select s_id into sorder_id from v_orders where nid = ip_order_id fetch first row only;
    
    if ip_language = 0 THEN
    cl_body := 'Sveiki, prisegu užsakymo - ' || sorder_id || ' informaciją, susisiekite su mumis dėl apmokėjimo! <br> <br>';
    else
    cl_body := 'Hello, I am sending you details about order - ' || sorder_id || ', please reach back to me for payment information! <br> <br>';
    end if;

    IF ip_supplier_id = 0 THEN
        FOR idx IN (SELECT   DISTINCT o.nsupplier_id
                                     ,c.scompany_name
                                     ,o.nstatus_id
                    FROM     v_order_details o
                            ,v_companies    c
                    WHERE    o.norder_id = ip_order_id
                    AND      o.nsupplier_id = c.nid
                    ORDER BY 1)
        LOOP
            cl_body := cl_body || '<script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script><style>
  table,
  th,
  td {
    border: 1px solid #000000;
    border-collapse: separate;

  }
  td {
        text-align:center;
  }

  th {
    text-align: center;
    padding-right: 5px;
    padding-left: 5px;
    white-space: nowrap;
  }
  .t-Button  {
    float: right;
    margin-right: 5px;
  }
</style>';

            IF idx.nstatus_id = 12 THEN
                cl_body :=
                       cl_body
                    || '<table id="report'
                    || ip_order_id
                    || ip_language
                    || idx.nsupplier_id
                    || '" style="width: 100%"> <b style="padding-right: 10px;">'
                    || idx.scompany_name
                    || '
  <tr>
    <th style="text-align:left; width:50px;">'
                    || sp_brand
                    || '</th>
    <th colspan="4" style="text-align:left;">VIN: '
                    || sp_vin
                    || '</th>
  </tr>';
            ELSE
                cl_body :=
                       cl_body
                    || '<table id="report'
                    || ip_order_id
                    || ip_language
                    || idx.nsupplier_id
                    || '" style="width: 100%"> <b style="padding-right: 10px;">'
                    || idx.scompany_name
                    || '
  <tr>
    <th style="text-align:left; width:50px;">'
                    || sp_brand
                    || '</th>
    <th colspan="4" style="text-align:left;">VIN: '
                    || sp_vin
                    || '</th>
  </tr>';
            END IF;

            IF ip_language = 0 THEN
                cl_body := cl_body || '
  <tr>
    <th>Nr.</th>
    <th>Detales kodas</th>
    <th>Kiekis</th>
    <th>Savikaina</th>
    <th>Savikaina iš viso</th>
  </tr>';
            ELSE
                cl_body := cl_body || '
  <tr>
    <th>No.</th>
    <th>Part Number</th>
    <th>QTY</th>
    <th>Our Price</th>
    <th>Price Total</th>
  </tr>';
            END IF;

            FOR x IN (SELECT ROWNUM                AS nr
                            ,spart_code            AS part_code
                            ,nqnt                  AS qnt
                            ,nour_price_wo_tax     AS price_wo_tax
                      FROM   v_order_details_info
                      WHERE  norder_id = ip_order_id
                      AND    nsupplier_id = idx.nsupplier_id)
            LOOP
                cl_body :=
                       cl_body
                    || '<tr>
<td>'
                    || x.nr
                    || '.'
                    || '</td>
<td>'
                    || x.part_code
                    || '</td>
<td>'
                    || x.qnt
                    || '</td>
<td>'
                    || TO_CHAR(ROUND(x.price_wo_tax
                                    ,2)
                              ,'FM999999999999990D00')
                    || '</td>
<td>'
                    || TO_CHAR(ROUND(x.price_wo_tax * x.qnt
                                    ,2)
                              ,'FM999999999999990D00')
                    || '</td>
</tr>';
            END LOOP;

            FOR x IN (SELECT SUM(nqnt)                          AS qnt_all
                            ,TO_CHAR(ROUND(SUM(nour_price_wo_tax)
                                          ,2)
                                    ,'FM999999999999990D00')    AS price_wo_tax_all
                            ,TO_CHAR(ROUND(SUM(nour_price_wo_tax * nqnt)
                                          ,2)
                                    ,'FM999999999999990D00')    AS price_with_tax_all
                      FROM   v_order_details_info
                      WHERE  norder_id = ip_order_id
                      AND    nsupplier_id = idx.nsupplier_id)
            LOOP
                IF ip_language = 0 THEN
                    cl_body := cl_body || '<tr>
    <td></td>
    <td style="text-align:right; padding-right: 10px;">Viso:</td>
    <td>' || x.qnt_all || '</td>
    <td>' || x.price_wo_tax_all || '</td>
    <td>' || x.price_with_tax_all || '</td>
        </tr>';
                ELSE
                    cl_body := cl_body || '<tr>
    <td></td>
    <td style="text-align:right; padding-right: 10px;">Total:</td>
    <td>' || x.qnt_all || '</td>
    <td>' || x.price_wo_tax_all || '</td>
    <td>' || x.price_with_tax_all || '</td>
        </tr>';
                END IF;
            END LOOP;

            cl_body := cl_body || '</table><br>';
        END LOOP;
    ELSIF ip_supplier_id = -1 THEN
        SELECT TO_CHAR(SYSDATE
                      ,'YYYY-MM-DD')
              ,nclient_id
        INTO   s_date
              ,n_client_id
        FROM   v_orders
        WHERE  nid = ip_order_id;

        cl_body := cl_body || '<script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script><style>
  table,
  th,
  td {
   border: 1px solid #000000;
    border-collapse: collapse;

  }
  td {
        text-align:center;
  }

  th {
    text-align: center;
    padding-right: 10px;
    padding-left: 10px;
    white-space: nowrap;
  }
  .t-Button  {
    float: right;
    margin-right: 5px;
  }
</style>';

        FOR x IN (SELECT TO_CHAR(SYSDATE
                                ,'YYYYMMDD')         AS sid
                        ,NVL(scompany_code, NULL)    AS code
                        ,NVL(stax_code, NULL)        AS pvmcode
                        ,scompany_name               AS name
                  FROM   v_companies
                  WHERE  nid = n_client_id)
        LOOP
            IF ip_language = 0 THEN
                cl_body :=
                       cl_body
                    || '<table id="report'
                    || ip_language
                    || x.code
                    || '
  <tr>
    <th style="text-align:center; width:100px;">'
                    || s_date
                    || '</th>
    <th colspan="6" style="text-align:center;">Užklauos Numeris: '
                    || x.sid
                    || '</th>
  </tr>
  <tr>
    <th colspan="3" style="text-align:center;">Pardavejas<br>UAB Detaliu Tiekimas<br>'
                    || '</th>
            <th colspan="4" style="text-align:center;">Pirkejas<br>'
                    || x.name
                    || '<br>'
                    || x.code
                    || x.pvmcode
                    || '</th>
  </tr>';
            ELSE
                cl_body :=
                       cl_body
                    || '<table id="report'
                    || ip_language
                    || '
  <tr>
    <th style="text-align:center; width:100px;">'
                    || s_date
                    || '</th>
    <th colspan="6" style="text-align:center;">Request Number: '
                    || x.sid
                    || '</th>
  </tr>
  <tr>
    <th colspan="3" style="text-align:center;">Supplier<br>UAB Detaliu Tiekimas<br>'
                    || '</th>
            <th colspan="4" style="text-align:center;">Customer<br>'
                    || x.name
                    || '<br>'
                    || x.code
                    || x.pvmcode
                    || '</th>
  </tr>';
            END IF;
        END LOOP;

        IF ip_language = 0 THEN
            cl_body := cl_body || '
  <tr>
    <th style="max-width: 50px;">Nr.</th>
    <th>Pavadinimas</th>
    <th>Detales kodas</th>
    <th>Kiekis</th>
    <th>Kaina be PVM</th>
    <th>Suma be PVM</th>
    <th>Suma su PVM</th>
  </tr>';
        ELSE
            cl_body := cl_body || '
  <tr>
    <th style="max-width: 50px;">No.</th>
    <th>Part Name</th>
    <th>Part Number</th>
    <th>QTY</th>
    <th>Price</th>
    <th>Price Total</th>
    <th>Price With VAT</th>
  </tr>';
        END IF;

        FOR x IN (SELECT ROWNUM                AS nr
                        ,spart_name            AS part_name
                        ,spart_code            AS part_code
                        ,nqnt                  AS qnt
                        ,nprice_wo_tax         AS price
                        ,nprice_wo_tax_all     AS price_wo_tax
                        ,nprice_with_tax       AS price_with_tax
                  FROM   v_order_details_info
                  WHERE  norder_id = ip_order_id)
        LOOP
            cl_body :=
                   cl_body
                || '<tr>
    <td>'
                || x.nr
                || '.'
                || '</td>
    <td>'
                || x.part_name
                || '</td>
    <td>'
                || x.part_code
                || '</td>
    <td>'
                || x.qnt
                || '</td>
    <td>'
                || TO_CHAR(ROUND(x.price
                                ,2)
                          ,'FM999999999999990D00')
                || '</td>
    <td>'
                || TO_CHAR(ROUND(x.price_wo_tax
                                ,2)
                          ,'FM999999999999990D00')
                || '</td>
    <td>'
                || TO_CHAR(ROUND(x.price_with_tax
                                ,2)
                          ,'FM999999999999990D00')
                || '</td>
    </tr>';
        END LOOP;

        FOR x IN (SELECT TO_CHAR(ROUND(SUM(nprice_wo_tax)
                                      ,2)
                                ,'FM999999999999990D00')    AS price_all
                        ,TO_CHAR(ROUND(SUM(nprice_wo_tax_all)
                                      ,2)
                                ,'FM999999999999990D00')    AS price_wo_tax_all
                        ,TO_CHAR(ROUND(SUM(nprice_with_tax)
                                      ,2)
                                ,'FM999999999999990D00')    AS price_with_tax_all
                  FROM   v_order_details_info
                  WHERE  norder_id = ip_order_id)
        LOOP
            IF ip_language = 0 THEN
                cl_body := cl_body || '<tr>
        <td></td>
        <td colspan="3" style="text-align:right; padding-right: 10px;">VISO:</td>
        <td>' || x.price_all || '</td>
        <td>' || x.price_wo_tax_all || '</td>
        <td>' || x.price_with_tax_all || '</td>
            </tr>';
            ELSE
                cl_body := cl_body || '<tr>
        <td></td>
        <td colspan="3" style="text-align:right; padding-right: 10px;">TOTAL:</td>
        <td>' || x.price_all || '</td>
        <td>' || x.price_wo_tax_all || '</td>
        <td>' || x.price_with_tax_all || '</td>
            </tr>';
            END IF;
        END LOOP;

        cl_body := cl_body || '</table><br>';
    ELSE
        SELECT UPPER(scompany_name)
        INTO   s_supplier_name
        FROM   v_companies
        WHERE  nid = ip_supplier_id;

        cl_body := cl_body || '<script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script><style>
          table,
          th,
          td {
            border: 1px solid #000000;
            border-collapse: collapse;

          }
          td {
                text-align:center;
          }

          th {
            text-align: center;
            padding-right: 5px;
            padding-left: 5px;
            white-space: nowrap;
          }
          .t-Button  {
            float: right;
            margin-right: 5px;
          }
        </style>';

        SELECT nstatus_id
        INTO   n_status
        FROM   v_order_details
        WHERE  norder_id = ip_order_id
        AND    nsupplier_id = ip_supplier_id
        FETCH  FIRST ROW ONLY;

        IF n_status = 12 THEN
            IF s_supplier_name LIKE '%IGTIS%' THEN
                cl_body :=
                       cl_body
                    || '<table id="report'
                    || ip_language
                    || ip_supplier_id
                    || '
  <tr>
    <th style="text-align:left; width:50px;">'
                    || sp_brand
                    || '</th>
    <th colspan="4"style="text-align:left;">VIN: '
                    || sp_vin
                    || '</th>
  </tr>';
            ELSE
                cl_body :=
                       cl_body
                    || '<table id="report'
                    || ip_language
                    || ip_supplier_id
                    || '
  <tr>
    <th style="text-align:left; width:50px;">'
                    || sp_brand
                    || '</th>
    <th colspan="4"style="text-align:left;">VIN: '
                    || sp_vin
                    || '</th>
  </tr>';
            END IF;
        ELSE
            IF s_supplier_name LIKE '%IGTIS%' THEN
                cl_body :=
                       cl_body
                    || '<table id="report'
                    || ip_language
                    || ip_supplier_id
                    || '
  <tr>
    <th style="text-align:left; width:50px;">'
                    || sp_brand
                    || '</th>
    <th colspan="4"style="text-align:left;">VIN: '
                    || sp_vin
                    || '</th>
  </tr>';
            ELSE
                cl_body :=
                       cl_body
                    || '<table id="report'
                    || ip_language
                    || ip_supplier_id
                    || '
  <tr>
    <th style="text-align:left; width:50px;">'
                    || sp_brand
                    || '</th>
    <th colspan="4"style="text-align:left;">VIN: '
                    || sp_vin
                    || '</th>
  </tr>';
            END IF;
        END IF;

        IF ip_language = 0 THEN
            cl_body := cl_body || '
  <tr>
    <th>Nr.</th>
    <th>Detales kodas</th>
    <th>Kiekis</th>
    <th>Savikaina</th>
    <th>Savikaina iš viso</th>
  </tr>';
        ELSE
            cl_body := cl_body || '
  <tr>
    <th>No.</th>
    <th>Part Number</th>
    <th>QTY</th>
    <th>Our Price</th>
    <th>Price Total</th>
  </tr>';
        END IF;

        FOR x IN (SELECT ROWNUM                       AS nr
                        ,spart_code                   AS part_code
                        ,nqnt                         AS qnt
                        ,nour_price_wo_tax            AS price_wo_tax
                        ,nour_price_wo_tax * nqnt     AS price_with_tax
                  FROM   v_order_details_info
                  WHERE  (norder_id = ip_order_id
                  AND     nsupplier_id = ip_supplier_id
                  AND     ip_supplier_id != 0)
                  OR     (norder_id = ip_order_id
                  AND     ip_supplier_id = 0))
        LOOP
            cl_body :=
                   cl_body
                || '<tr>
<td>'
                || x.nr
                || '.'
                || '</td>
<td>'
                || x.part_code
                || '</td>
<td>'
                || x.qnt
                || '</td>
<td>'
                || TO_CHAR(ROUND(x.price_wo_tax
                                ,2)
                          ,'FM999999999999990D00')
                || '</td>
<td>'
                || TO_CHAR(ROUND(x.price_with_tax
                                ,2)
                          ,'FM999999999999990D00')
                || '</td>
</tr>';
        END LOOP;

        FOR x IN (SELECT SUM(nqnt)                          AS qnt_all
                        ,TO_CHAR(ROUND(SUM(nour_price_wo_tax)
                                      ,2)
                                ,'FM999999999999990D00')    AS price_wo_tax_all
                        ,TO_CHAR(ROUND(SUM(nour_price_wo_tax) * SUM(nqnt)
                                      ,2)
                                ,'FM999999999999990D00')    AS price_with_tax_all
                  FROM   v_order_details_info
                  WHERE  (norder_id = ip_order_id
                  AND     nsupplier_id = ip_supplier_id
                  AND     ip_supplier_id != 0)
                  OR     (norder_id = ip_order_id
                  AND     ip_supplier_id = 0))
        LOOP
            IF ip_language = 0 THEN
                cl_body := cl_body || '<tr>
    <td></td>
    <td style="text-align:right; padding-right: 10px;">Viso:</td>
    <td>' || x.qnt_all || '</td>
    <td>' || x.price_wo_tax_all || '</td>
    <td>' || x.price_with_tax_all || '</td>
        </tr>';
            ELSE
                cl_body := cl_body || '<tr>
    <td></td>
    <td style="text-align:right; padding-right: 10px;">Total:</td>
    <td>' || x.qnt_all || '</td>
    <td>' || x.price_wo_tax_all || '</td>
    <td>' || x.price_with_tax_all || '</td>
        </tr>';
            END IF;
        END LOOP;
    if ip_language = 0 THEN
    cl_body := cl_body || '</table><br> Pagarbiai, detalių tiekimas.';
    else
    cl_body := cl_body || '</table><br> Best regards, detalių tiekimas.';
    end if;
        
    END IF;
END;
/


--
-- PRC_SEND_ORDER_PREP  (Procedure) 
--
--  Dependencies: 
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   STANDARD (Package)
--   V_ORDER_DETAILS_PREP_INFO (View)
--   V_ORDERS_PREP (Table)
--   V_COMPANIES (Table)
--
CREATE OR REPLACE PROCEDURE DETALES.prc_send_order_prep(ip_order_id   IN NUMBER
                                                       ,ip_language   IN NUMBER
                                                       ,cl_body       OUT CLOB)
IS
    s_date        VARCHAR2(20);
    n_client_id   NUMBER;
BEGIN
    SELECT TO_CHAR(SYSDATE
                  ,'YYYY-MM-DD')
          ,nclient_id
    INTO   s_date
          ,n_client_id
    FROM   v_orders_prep
    WHERE  nid = ip_order_id;
    
    if ip_language = 0 THEN
    cl_body := 'Sveiki, prisegu užklausos - ' || TO_CHAR(SYSDATE,'YYYYMMDD') || ' informaciją, susisiekite su mumis dėl užklausos derinimo! <br> <br>';
    else
    cl_body := 'Hello, I am sending you details about prepared order - ' || TO_CHAR(SYSDATE,'YYYYMMDD') || ', please reach back to me if any changes are required! <br> <br>';
    end if;
    
    cl_body := cl_body ||'<script type="text/javascript" src="https://unpkg.com/xlsx@0.15.1/dist/xlsx.full.min.js"></script><style>
  table,
  th,
  td {
    border: 1px solid #000000;
    border-collapse: separate;

  }
  td {
        text-align:center;
  }
  th {
    text-align: center;
    padding-right: 5px;
    padding-left: 5px;
    white-space: nowrap;
    width: fit-content;
  }
  .t-Button  {
    float: right;
    margin-right: 5px;
  }
  .noBorder{
    border:none;
    padding-bottom: 15px;
  }
  .wrapText{
    white-space: pre-wrap;
    width: 90px !important;
  }
  table{
    border:none;
  }
  .wide{
      width: fit-content !important;
      white-space: nowrap;
  }
</style>';

    FOR x IN (SELECT TO_CHAR(SYSDATE
                            ,'YYYYMMDD')         AS sid
                    ,NVL(scompany_code, NULL)    AS code
                    ,NVL(stax_code, NULL)        AS pvmcode
                    ,scompany_name               AS name
              FROM   v_companies
              WHERE  nid = n_client_id)
    LOOP
        IF ip_language = 0 THEN
            cl_body := cl_body ||
                   '<table id="report'
                || ip_order_id
                || ip_language
                || '
  <tr >
    <th class="noBorder" colspan="2" style="text-align:center; width:100px;">'
                || s_date
                || '</th>
    <th class="noBorder" colspan="5" style="text-align:center;">Užklausos Numeris: '
                || x.sid
                || '</th>
  </tr>
  <tr>
    <th class="noBorder" colspan="3" style="text-align:center;">Pardavejas<br>UAB Detaliu Tiekimas<br>'
                || '</th>
            <th class="noBorder" colspan="4" style="text-align:center;">Pirkejas<br>'
                || x.name
                || '<br>'
                || x.code
                || x.pvmcode
                || '</th>
  </tr>';
        ELSE
            cl_body := cl_body ||
                   '<table id="report'
                || ip_order_id
                || ip_language
                || '
  <tr>
    <th colspan="2" class="noBorder">'
                || s_date
                || '</th>
    <th class="noBorder" colspan="5" style="text-align:center;">Request Number: '
                || x.sid
                || '</th>
  </tr>
  <tr>
    <th class="noBorder" colspan="3" style="text-align:center;">Supplier<br>UAB Detaliu Tiekimas<br>'
                || '</th>
            <th class="noBorder" colspan="4" style="text-align:center;">Customer<br>'
                || x.name
                || '<br>'
                || x.code
                || x.pvmcode
                || '</th>
  </tr>';
        END IF;
    END LOOP;

    IF ip_language = 0 THEN
        cl_body := cl_body ||'
  <tr>
    <th style="max-width: 50px;">Nr.</th>
    <th class="wide">Pavadinimas</th>
    <th>Detales kodas</th>
    <th>Kiekis</th>
    <th class="wrapText">Kaina be PVM</th>
    <th class="wrapText">Suma be PVM</th>
    <th class="wrapText">Suma su PVM</th>
  </tr>';
    ELSE
        cl_body := cl_body ||'
  <tr>
    <th style="max-width: 50px;">No.</th>
    <th>Part Name</th>
    <th>Part Number</th>
    <th>QTY</th>
    <th>Price</th>
    <th class="wrapText">Price Total</th>
    <th class="wrapText">Price With VAT</th>
  </tr>';
    END IF;

    FOR x IN (SELECT ROWNUM                AS nr
                    ,spart_name            AS part_name
                    ,spart_code            AS part_code
                    ,nqnt                  AS qnt
                    ,sprice_wo_tax         AS price
                    ,sprice_wo_tax_all     AS price_wo_tax
                    ,sprice_with_tax       AS price_with_tax
              FROM   v_order_details_prep_info
              WHERE  norder_id = ip_order_id
              AND    selected = 1)
    LOOP
        cl_body := cl_body ||   '<tr>
    <td>'
              || x.nr
              || '.'
              || '</td>
    <td>'
              || x.part_name
              || '</td>
    <td>'
              || x.part_code
              || '</td>
    <td>'
              || x.qnt
              || '</td>
    <td>'
              || TO_CHAR(ROUND(x.price
                              ,2)
                        ,'FM999999999999990D00')
              || '</td>
    <td>'
              || TO_CHAR(ROUND(x.price_wo_tax
                              ,2)
                        ,'FM999999999999990D00')
              || '</td>
    <td>'
              || TO_CHAR(ROUND(x.price_with_tax
                              ,2)
                        ,'FM999999999999990D00')
              || '</td>
    </tr>';
    END LOOP;

    FOR x IN (SELECT SUM(nqnt) as qnt_all
                    ,TO_CHAR(ROUND(SUM(sprice_wo_tax)
                                  ,2)
                            ,'FM999999999999990D00')    AS price_all
                    ,TO_CHAR(ROUND(SUM(sprice_wo_tax_all)
                                  ,2)
                            ,'FM999999999999990D00')    AS price_wo_tax_all
                    ,TO_CHAR(ROUND(SUM(sprice_with_tax)
                                  ,2)
                            ,'FM999999999999990D00')    AS price_with_tax_all
              FROM   v_order_details_prep_info
              WHERE  norder_id = ip_order_id
               AND    selected = 1)
    LOOP
        IF ip_language = 0 THEN
            cl_body := cl_body ||'<tr>
        <td></td>
        <td colspan="2" style="text-align:right; padding-right: 10px;">VISO:</td>
        <td>' || x.qnt_all || '</td>
        <td>' || x.price_all || '</td>
        <td>' || x.price_wo_tax_all || '</td>
        <td>' || x.price_with_tax_all || '</td>
            </tr>';
        ELSE
            cl_body := cl_body ||'<tr>
        <td></td>
        <td colspan="2" style="text-align:right; padding-right: 10px;">TOTAL:</td>
        <td>' || x.qnt_all || '</td>
        <td>' || x.price_all || '</td>
        <td>' || x.price_wo_tax_all || '</td>
        <td>' || x.price_with_tax_all || '</td>
            </tr>';
        END IF;
    END LOOP;

    if ip_language = 0 THEN
    cl_body := cl_body || '</table><br> Pagarbiai, detalių tiekimas.';
    else
    cl_body := cl_body || '</table><br> Best regards, detalių tiekimas.';
    end if;
    
END;
/


--
-- PROCESSING_PREP_PART_DATA  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   V_ORDERS_PREP (Table)
--   V_ORDER_DETAILS_PREP_INSERT_VIEW (View)
--   DUAL (Synonym)
--   V_STORAGE_SUPPLIERS_PARTS_INFO (View)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--
CREATE OR REPLACE PROCEDURE DETALES.processing_prep_part_data(part_codes      IN     VARCHAR2
                                                         ,part_names      IN     VARCHAR2
                                                         ,part_qnt        IN     VARCHAR2
                                                         ,part_comments   IN     VARCHAR2
                                                         ,p_order_id      IN     NUMBER
                                                         ,flag               OUT NUMBER)
AS
    n_car_id   NUMBER;
BEGIN
    flag := 0;

    SELECT ncar_id
    INTO   n_car_id
    FROM   v_orders_prep
    WHERE  nid = p_order_id;

    INSERT INTO v_order_details_prep_insert_view(spart_code
                                                ,spart_name
                                                ,nqnt
                                                ,spart_comment
                                                ,nsupplier_id
                                                ,norder_type_id
                                                ,nprice
                                                ,norder_id)
        WITH
            partcodes
            AS
                (SELECT     ROWNUM         AS cnt
                           ,REPLACE(TRIM(REGEXP_SUBSTR(part_codes
                                                      ,'^.*$'
                                                      ,1
                                                      ,ROWNUM
                                                      ,'m'))
                                   ,CHR(13)
                                   ,'')    part_code
                 FROM       DUAL
                 CONNECT BY ROWNUM <= LENGTH(REGEXP_REPLACE(REGEXP_REPLACE(part_codes
                                                                          ,'^.*$'
                                                                          ,'1'
                                                                          ,1
                                                                          ,0
                                                                          ,'m')
                                                           ,'\s'
                                                           ,''))),
            partnames
            AS
                (SELECT     ROWNUM                      AS cnt
                           ,TRIM(REGEXP_SUBSTR(part_names
                                              ,'^.*$'
                                              ,1
                                              ,ROWNUM
                                              ,'m'))    part_name
                 FROM       DUAL
                 CONNECT BY ROWNUM <= LENGTH(REGEXP_REPLACE(REGEXP_REPLACE(part_names
                                                                          ,'^.*$'
                                                                          ,'1'
                                                                          ,1
                                                                          ,0
                                                                          ,'m')
                                                           ,'\s'
                                                           ,''))),
            partqnt
            AS
                (SELECT     ROWNUM                      AS cnt
                           ,TRIM(REGEXP_SUBSTR(part_qnt
                                              ,'^.*$'
                                              ,1
                                              ,ROWNUM
                                              ,'m'))    part_qnt
                 FROM       DUAL
                 CONNECT BY ROWNUM <= LENGTH(REGEXP_REPLACE(REGEXP_REPLACE(part_qnt
                                                                          ,'^.*$'
                                                                          ,'1'
                                                                          ,1
                                                                          ,0
                                                                          ,'m')
                                                           ,'\s'
                                                           ,''))),
            partcomment
            AS
                (SELECT     ROWNUM                      AS cnt
                           ,TRIM(REGEXP_SUBSTR(part_comments
                                              ,'^.*$'
                                              ,1
                                              ,ROWNUM
                                              ,'m'))    part_comment
                 FROM       DUAL
                 CONNECT BY ROWNUM <= LENGTH(REGEXP_REPLACE(REGEXP_REPLACE(part_comments
                                                                          ,'^.*$'
                                                                          ,'1'
                                                                          ,1
                                                                          ,0
                                                                          ,'m')
                                                           ,'\s'
                                                           ,''))),
            cmax
            AS
                (SELECT     LEVEL     AS cnt
                 FROM       DUAL
                 CONNECT BY LEVEL <= (SELECT MAX(cnt)
                                      FROM   (
                                                 SELECT cnt FROM partcodes
                                                 UNION
                                                 SELECT cnt FROM partnames
                                                 UNION
                                                 SELECT cnt FROM partqnt
                                                 UNION
                                                 SELECT cnt FROM partcomment
                                             ))),
            full_data
            AS
                (SELECT   CASE
                              WHEN LENGTH(REPLACE(TRIM(pc.part_code)
                                                 ,CHR(13)
                                                 ,'')) < 3 THEN
                                  SUBSTR(REPLACE(REPLACE(TRIM(pc.part_code)
                                                        ,CHR(13)
                                                        ,'')
                                                ,'-'
                                                ,NULL)
                                        ,0
                                        ,30)
                              ELSE
                                  SUBSTR(TRIM(pc.part_code)
                                        ,0
                                        ,30)
                          END
                         ,CASE
                              WHEN LENGTH(REPLACE(TRIM(pn.part_name)
                                                 ,CHR(13)
                                                 ,'')) < 3 THEN
                                  SUBSTR(REPLACE(REPLACE(TRIM(pn.part_name)
                                                        ,CHR(13)
                                                        ,'')
                                                ,'-'
                                                ,NULL)
                                        ,0
                                        ,100)
                              ELSE
                                  SUBSTR(REPLACE(TRIM(pn.part_name)
                                                ,CHR(13)
                                                ,'')
                                        ,0
                                        ,100)
                          END
                         ,NVL(DECODE(validate_conversion(TRIM(REPLACE(pq.part_qnt
                                                                     ,CHR(13)
                                                                     ,'')) AS NUMBER)
                                    ,1, REPLACE(pq.part_qnt
                                               ,CHR(13)
                                               ,'')
                                    ,1)
                             ,1)
                         ,CASE
                              WHEN LENGTH(TRIM(pcmt.part_comment)) < 3 THEN
                                  SUBSTR(REPLACE(TRIM(pcmt.part_comment)
                                                ,'-'
                                                ,NULL)
                                        ,0
                                        ,254)
                              ELSE
                                  SUBSTR(TRIM(pcmt.part_comment)
                                        ,0
                                        ,254)
                          END
                         ,(SELECT   NVL(ssp.nsupplier_id, 0)
                           FROM     v_storage_suppliers_parts_info ssp
                           WHERE    ssp.scode = REPLACE(TRIM(pc.part_code)
                                                       ,CHR(13)
                                                       ,'')
                           AND      ssp.ncar_id = n_car_id
                           ORDER BY ssp.scode ASC
                           FETCH    FIRST 1 ROWS ONLY)
                         ,(SELECT   NVL(ssp.norder_type_id, 0)
                           FROM     v_storage_suppliers_parts_info ssp
                           WHERE    ssp.scode = REPLACE(TRIM(pc.part_code)
                                                       ,CHR(13)
                                                       ,'')
                           AND      ssp.ncar_id = n_car_id
                           ORDER BY ssp.scode ASC
                           FETCH    FIRST 1 ROWS ONLY)
                         ,(SELECT   TO_NUMBER(REGEXP_REPLACE(ssp.nprice
                                                            ,'[,.]'
                                                            ,SUBSTR(TO_CHAR(11 / 10)
                                                                   ,2
                                                                   ,1)))
                           FROM     v_storage_suppliers_parts_info ssp
                           WHERE    ssp.scode = REPLACE(TRIM(pc.part_code)
                                                       ,CHR(13)
                                                       ,'')
                           AND      ssp.ncar_id = n_car_id
                           ORDER BY ssp.scode ASC
                           FETCH    FIRST 1 ROWS ONLY)
                         ,p_order_id
                 FROM     partcodes  pc
                         ,partnames  pn
                         ,partqnt    pq
                         ,partcomment pcmt
                         ,cmax
                 WHERE    cmax.cnt = pc.cnt(+)
                 AND      cmax.cnt = pn.cnt(+)
                 AND      cmax.cnt = pq.cnt(+)
                 AND      cmax.cnt = pcmt.cnt(+)
                 ORDER BY cmax.cnt ASC)
        (SELECT * FROM full_data);

    COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    flag := 0;
END;
/


--
-- REGISTER_USER  (Procedure) 
--
--  Dependencies: 
--   V_USERS (Table)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   STANDARD (Package)
--
CREATE OR REPLACE PROCEDURE DETALES.REGISTER_USER (sp_user_name          IN     VARCHAR2
                                              ,sp_first_name         IN     VARCHAR2
                                              ,sp_last_name          IN     VARCHAR2
                                              ,sp_password           IN     VARCHAR2
                                              ,ip_error              OUT    NUMBER)
IS
BEGIN
    ip_error := 0;
    INSERT INTO v_users(user_name
                       ,first_name
                       ,last_name
                       ,password)
    VALUES      (sp_user_name
                ,sp_first_name
                ,sp_last_name
                ,sp_password);
    EXCEPTION WHEN OTHERS THEN
        ip_error := 1;
END;
/


--
-- SECURE_DML  (Procedure) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   DBMS_STANDARD (Package)
--
CREATE OR REPLACE PROCEDURE DETALES.secure_dml
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
RAISE_APPLICATION_ERROR (-20205,
'You may only make changes during normal office hours');
  END IF;
END secure_dml;
/


--
-- SID_SEQ_RESET  (Procedure) 
--
--  Dependencies: 
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   SEQ_DATA (Table)
--
CREATE OR REPLACE PROCEDURE DETALES.sid_seq_reset
AS
BEGIN
    UPDATE seq_data
    SET    nvalue = 1
    WHERE  ssequence_name = 'SEQ_SID';
END;
/

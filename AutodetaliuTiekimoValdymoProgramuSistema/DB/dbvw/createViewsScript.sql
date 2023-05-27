--
-- Create Schema Script
--   Database Version            : 19.0.0.0.0
--   Database Compatible Level   : 19.0.0.0.0
--   Script Compatible Level     : 19.0.0.0.0
--   Toad Version                : 13.2.0.258
--   DB Connect String           : FREEPDB1
--   Schema                      : DETALES
--   Script Created by           : SYS
--   Script Created at           : 27/05/2023 09:04:07
--   Notes                       : 
--

-- Object Counts: 
--   Views: 23          Columns: 293        


-- "Set define off" turns off substitution variables.
Set define off; 

--
-- PRICE_LIST_MERGING_FIX  (View) 
--
--  Dependencies: 
--   GET_SURCHARGE (Function)
--   V_STORAGE_SUPPLIERS_PARTS (Table)
--   V_PRICE_LIST_IMPORTS (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.PRICE_LIST_MERGING_FIX
("Code", "Replacement", "Title", "Minimal quantity", "Price EUR", 
 "min Price EUR")
BEQUEATH DEFINER
AS 
SELECT   ssp.scode as "Code"
        ,ssp.schild_code as "Replacement"
        ,ssp.sname as "Title"
        ,ssp.nqnt as "Minimal quantity"
        ,to_char(ssp.nprice,'fm99999990.90') as "Price EUR"
        ,MIN(ssp.nprice * GET_SURCHARGE(80, vpl.ncar_id, vpl.norder_type_id)) as "min Price EUR" -- suranda maziausia kaina su antkainiu
FROM     v_storage_suppliers_parts ssp
        ,v_price_list_imports     vpl
WHERE    ssp.ncar_id = vpl.ncar_id
AND      ssp.norder_type_id = vpl.norder_type_id
AND      ssp.nsupplier_id = vpl.nsupplier_id
AND      vpl.napproved = 1
AND      vpl.nhaserrors = 0
AND      vpl.nid IN (SELECT nid
                     FROM   v_price_list_imports
                     WHERE  nmerge_bool = 1)  -- nmerge_bool, tai kai paspaudzia checkboxa kainorašciu puslapyje, iš to žino kaip formuot kainorašti.
GROUP BY ssp.scode      -- groupai yra problema, nes atvaizduoja per daug duomenu
        ,ssp.sname
        ,ssp.schild_code
        ,ssp.nqnt
        ,ssp.nprice;


--
-- V_CLIENTS_INFO  (View) 
--
--  Dependencies: 
--   V_COMPANIES (Table)
--   V_CITIES (Table)
--   V_CONTACTS (Table)
--   V_COUNTRIES (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_CLIENTS_INFO
(NID, SCOMPANY_NAME, SEMAIL, SPHONE, SWEBSITE, 
 SCOUNTRY_NAME, SCITY_NAME, NCOUNTRY_ID, NCITY_ID, SCOMPANY_ADDRESS, 
 SSHIPPING_ADDRESS, SZIP, SCOMPANY_CODE, STAX_CODE, SCONTRACT_NUMBER, 
 NDO_PAYMENT_DELAY, NPAYMENT_DELAY_IN_DAYS, SRESPONSIBLE_EMPLOYEE, NHAS_COMMENT, SCOMPANY_COMMENT, 
 NCONTACTS, CUSTOMERSHORT)
BEQUEATH DEFINER
AS 
SELECT -- =============================================================================
           -- 01.00.00.00/11-Feb-2022/LAN20220211
           --  o View was created to select clients data
           -- =============================================================================
           -- @VER@/01.00.00.00/11-Feb-2022/20220211/v_clients
           -- =============================================================================
             c.nid                                          AS id
            ,c.scompany_name                                AS company_name
            ,c.semail                                       AS email
            ,CASE
                 WHEN LENGTH(c.sphone) = 7 THEN
                        SUBSTR(c.sphone
                              ,1
                              ,3)
                     || ' '
                     || SUBSTR(c.sphone
                              ,4)
                 ELSE
                        SUBSTR(c.sphone
                              ,1
                              ,4)
                     || ' '
                     || SUBSTR(c.sphone
                              ,5
                              ,3)
                     || ' '
                     || SUBSTR(c.sphone
                              ,8)
             END                                            AS phone
            ,c.swebsite                                     AS website
            ,LTRIM(ctr.sname
                  ,',')                                     AS country_name
            ,LTRIM(ct.sname
                  ,',')                                     AS city_name
            ,c.ncountry_id                                  AS country_id
            ,c.ncity_id                                     AS city_id
            ,c.scompany_address || ct.sname || ctr.sname    AS company_address
            ,c.sshipping_address                            AS shipping_address
            ,c.szip                                         AS zip
            ,c.scompany_code                                AS company_code
            ,c.stax_code                                    AS tax_code
            ,c.scontract_number                             AS contract_number
            ,c.ndopaymentdelayflag                          AS do_payment_delay
            ,c.npayment_delay_in_days                       AS payment_delay_in_days
            ,c.sresponsibleemployee                         AS responsible_employee
            ,c.ncomment                                     AS has_comment
            ,c.scomment                                     AS company_comment
            ,NVL(ctc.contacts_count, 0)                     AS contacts
            ,c.scompany_name_short                          AS customerShort
    FROM     v_companies c
            ,(
                 SELECT nid AS nid, ', ' || sname AS sname FROM v_cities
             ) ct
            ,(
                 SELECT nid AS nid, ', ' || sname AS sname FROM v_countries
             ) ctr
            ,(
                 SELECT   ncompany_id
                         ,TO_CHAR(COUNT(nid))     AS contacts_count
                 FROM     v_contacts
                 GROUP BY ncompany_id
             ) ctc
    WHERE    c.ntype = 0
    AND      c.nhidden = 0
    AND      c.ncity_id = ct.nid(+)
    AND      c.ncountry_id = ctr.nid(+)
    AND      c.nid = ctc.ncompany_id(+)
    ORDER BY TRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(scompany_name
                                                         ,'"'
                                                         ,'')
                                                 ,'“'
                                                 ,'')
                                         ,'”'
                                         ,'')
                                 ,'„'
                                 ,'')
                         ,'  '
                         ,' '));


--
-- V_COMPANIES_EXT_INFO  (View) 
--
--  Dependencies: 
--   V_COUNTRIES (Table)
--   V_COMPANY_EXT (Table)
--   V_CITIES (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_COMPANIES_EXT_INFO
(NID, SCOMPANY_NAME, SWEBSITE, SPHONE, SEMAIL, 
 NCOUNTRY_ID, NCITY_ID, SCOUNTRY_NAME, SCITY_NAME, SCOMPANY_ADDRESS, 
 SSHIPPING_ADDRESS, SZIP, SCOMPANY_CODE, STAX_CODE)
BEQUEATH DEFINER
AS 
SELECT c.nid                   AS id
          ,c.scompany_name         AS company_name
          ,c.swebsite              AS website
          ,c.sphone                AS phone
          ,c.semail                AS email
          ,c.ncountry_id           AS country_id
          ,c.ncity_id              AS city_id
          ,ctr.sname               AS country_name
          ,ct.sname                AS city_name
          ,c.scompany_address      AS company_address
          ,c.sshipping_address     AS shipping_address
          ,c.szip                  AS zip
          ,c.scompany_code         AS company_code
          ,c.stax_code             AS tax_code
    FROM   v_company_ext  c
          ,v_cities       ct
          ,v_countries    ctr
    WHERE  c.ncity_id = ct.nid(+)
    AND    c.ncountry_id = ctr.nid(+);


--
-- V_COMPANIES_INFO  (View) 
--
--  Dependencies: 
--   V_CITIES (Table)
--   V_COMPANIES (Table)
--   V_COUNTRIES (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_COMPANIES_INFO
(NID, NTYPE, SCOMPANY_NAME, SEMAIL, SPHONE, 
 SWEBSITE, SCOUNTRY_NAME, SCITY_NAME, NCOUNTRY_ID, NCITY_ID, 
 SCOMPANY_ADDRESS, SSHIPPING_ADDRESS, SZIP, SCOMPANY_CODE, STAX_CODE, 
 SCONTRACT_NUMBER, NDO_PAYMENT_DELAY, NPAYMENT_DELAY_IN_DAYS, NHAS_COMMENT, SCOMPANY_COMMENT)
BEQUEATH DEFINER
AS 
SELECT c.nid                        AS id
          ,c.ntype                      AS TYPE
          ,c.scompany_name              AS company_name
          ,c.semail                     AS email
          ,c.sphone                     AS phone
          ,c.swebsite                   AS website
          ,ctr.sname                    AS country_name
          ,ct.sname                     AS city_name
          ,c.ncountry_id                AS country_id
          ,c.ncity_id                   AS city_id
          ,c.scompany_address           AS company_address
          ,c.sshipping_address          AS shipping_address
          ,c.szip                       AS zip
          ,c.scompany_code              AS company_code
          ,c.stax_code                  AS tax_code
          ,c.scontract_number           AS contract_number
          ,c.ndopaymentdelayflag        AS do_payment_delay
          ,c.npayment_delay_in_days     AS payment_delay_in_days
          ,c.ncomment                   AS has_comment
          ,c.scomment                   AS company_comment
    FROM   v_companies  c
          ,v_cities     ct
          ,v_countries  ctr
    WHERE  c.nhidden = 0
    AND    c.ncity_id = ct.nid(+)
    AND    c.ncountry_id = ctr.nid(+);


--
-- V_COMPANY_SURCHARGES_INFO  (View) 
--
--  Dependencies: 
--   V_CLIENT_SURCHARGE_GROUPS (Table)
--   V_COMPANIES (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_COMPANY_SURCHARGES_INFO
(NID, SCOMPANY_NAME, NSURCHARGE_ID)
BEQUEATH DEFINER
AS 
SELECT c.nid                AS id
          ,REPLACE(c.scompany_name
                  ,'  '
                  ,' ')         AS company_name
          ,csg.nsurcharge_id    AS surcharge_id
    FROM   v_companies                c
          ,v_client_surcharge_groups  csg
    WHERE  c.nid = csg.nclient_id;


--
-- V_FILTERED_DATA  (View) 
--
--  Dependencies: 
--   V_STORAGE_SUPPLIERS_PARTS (Table)
--   V_ORDER_DETAILS_PREP (Table)
--   V_COMPANIES (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_FILTERED_DATA
(NORDER_ID, TIEKEJAS, NFULLPRICE, NQNT)
BEQUEATH DEFINER
AS 
SELECT DISTINCT od.norder_id
                   ,(SELECT scompany_name
                     FROM   v_companies
                     WHERE  nid = od.nsupplier_id)
                   ,(SELECT SUM((SELECT ssp.nprice
                                 FROM   v_storage_suppliers_parts ssp
                                 WHERE  ssp.nsupplier_id = odp.nsupplier_id
                                 AND    odp.spart_code = ssp.scode))
                     FROM   v_order_details_prep odp
                     WHERE  odp.norder_id = od.norder_id
                     AND    odp.nsupplier_id = od.nsupplier_id)
                   ,(SELECT COUNT(odp.nprice)
                     FROM   v_order_details_prep odp
                     WHERE  odp.norder_id = od.norder_id
                     AND    odp.nsupplier_id = od.nsupplier_id)
    FROM   v_order_details_prep od;


--
-- V_GETSUPPLIERDATAIMPORTDETALES  (View) 
--
--  Dependencies: 
--   GET_FILES (Function)
--   T_VARCHAR2_ARR (Type)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_GETSUPPLIERDATAIMPORTDETALES
(COLUMN_VALUE)
BEQUEATH DEFINER
AS 
SELECT column_value
FROM   TABLE(get_files('SUPPLIER_DATA_DIR'));


--
-- V_ORDERS_INFO  (View) 
--
--  Dependencies: 
--   V_STATUSES (Table)
--   V_ORDER_DETAILS (Table)
--   V_COMPANIES (Table)
--   V_ORDERS (Table)
--   V_VEHICLE_MODELS (Table)
--   V_VEHICLE_BRANDS (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_ORDERS_INFO
(NID, NCLIENT_ID, SCLIENT, S_ID, NCAR_ID, 
 NCAR_MODEL_ID, SVEHICLE_BRAND, SVEHICLE_MODEL, NSTATUS_ID, SSTATUS, 
 SVIN, NUSER_ID, DTCREATION_DATE, DTUPDATE_DATE, NPRICE_CHANGED_SUM, 
 NCODE_CHANGED_SUM, NSHIPMENT_DELAYED_SUM, NADDITIONAL_COMMENT_SUM, NATLEAST_ONE_DECLINED)
BEQUEATH DEFINER
AS 
SELECT o.nid                             AS id
          ,o.nclient_id                      AS client_id
          ,c.scompany_name                   AS client
          ,o.s_id                            AS sid
          ,o.ncar_id                         AS car_id
          ,o.ncar_model_id                   AS car_model_id
          ,vb.sname                          AS vehicle_brand
          ,vm.sname                          AS vehicle_model
          ,o.nstatus_id                      AS status_id
          ,s.sname                           AS status
          ,o.svin                            AS vin
          ,o.nuser_id                        AS user_id
          ,o.dtcreated_at                    AS creation_date
          ,o.dtupdated_at                    AS update_date
          ,(SELECT SUM(vod.nprice_changed)
            FROM   v_order_details vod
            WHERE  vod.norder_id = o.nid)    AS nprice_changed_sum
          ,(SELECT SUM(vod.ncode_changed)
            FROM   v_order_details vod
            WHERE  vod.norder_id = o.nid)    AS ncode_changed_sum
          ,(SELECT SUM(vod.nshipment_delayed)
            FROM   v_order_details vod
            WHERE  vod.norder_id = o.nid)    AS nshipment_delayed_sum
          ,(SELECT SUM(vod.nadditional_comment)
            FROM   v_order_details vod
            WHERE  vod.norder_id = o.nid)    AS nadditional_comment_sum
          ,(SELECT NVL(MAX(1), 0)
            FROM   v_order_details vod
            WHERE  vod.norder_id = o.nid
            AND    vod.nstatus_id = 18)      AS natleast_one_declined
    FROM   v_orders          o
          ,v_vehicle_brands  vb
          ,v_companies       c
          ,v_vehicle_models  vm
          ,v_statuses        s
    WHERE  c.nid = o.nclient_id
    AND    vb.nid(+) = o.ncar_id
    AND    vm.nid(+) = o.ncar_model_id
    AND    s.nid = o.nstatus_id
    and    o.nhidden = 0;


--
-- V_ORDERS_PREP_INFO  (View) 
--
--  Dependencies: 
--   V_VEHICLE_BRANDS (Table)
--   V_STATUSES (Table)
--   V_ORDERS_PREP (Table)
--   V_COMPANIES (Table)
--   V_VEHICLE_MODELS (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_ORDERS_PREP_INFO
(NID, NCLIENT_ID, SCLIENT, NCAR_ID, NCAR_MODEL_ID, 
 SVEHICLE_BRAND, SVEHICLE_MODEL, NSTATUS_ID, SSTATUS, SVIN, 
 NUSER_ID, DTCREATION_DATE, DTUPDATE_DATE)
BEQUEATH DEFINER
AS 
SELECT o.nid               AS id
          ,o.nclient_id        AS client_id
          ,c.scompany_name     AS client
          ,o.ncar_id           AS car_id
          ,o.ncar_model_id     AS car_model_id
          ,vb.sname            AS vehicle_brand
          ,vm.sname            AS vehicle_model
          ,o.nstatus_id        AS status_id
          ,s.sname             AS status
          ,o.svin              AS vin
          ,o.nuser_id          AS user_id
          ,o.dtcreated_at      AS creation_date
          ,o.dtupdated_at      AS update_date
    FROM   v_orders_prep     o
          ,v_vehicle_brands  vb
          ,v_companies       c
          ,v_vehicle_models  vm
          ,v_statuses        s
    WHERE  c.nid = o.nclient_id
    AND    vb.nid(+) = o.ncar_id
    AND    vm.nid(+) = o.ncar_model_id
    AND    s.nid = o.nstatus_id;


--
-- V_ORDER_DETAILS_INFO  (View) 
--
--  Dependencies: 
--   V_ORDER_DETAILS (Table)
--   V_COMPANIES (Table)
--   V_ORDERS (Table)
--   V_STATUSES (Table)
--   V_ORDER_DETAILS_CHANGES (Table)
--   V_ORDER_TYPES (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_ORDER_DETAILS_INFO
(NID, NORDER_ID, SPART_NAME, SPART_CODE, SPART_COMMENT, 
 NQNT, NQNT_RETRIEVED, NSUPPLIER_ID, SSUPPLIER, SORDER_TYPE, 
 NORDER_TYPE_ID, NPRICE, NOUR_PRICE_WO_TAX, NPRICE_WO_TAX, NPRICE_WO_TAX_ALL, 
 NPRICE_WITH_TAX, SSTATUS, NSTATUS_ID, NCODE_CHANGED, NCODE_CHANGED_DESC, 
 NPRICE_CHANGED, NPRICE_CHANGED_DESC, NSHIPMENT_DELAYED, NSHIPMENT_DELAYED_DESC, NADDITIONAL_COMMENT, 
 NADDITIONAL_COMMENT_DESC, NINOVICE_COUNT, NQNT_CONFIRMED, DELET)
BEQUEATH DEFINER
AS 
SELECT od.nid                                 AS id
          ,od.norder_id                           AS order_id
          ,od.spart_name                          AS part_name
          ,od.spart_code                          AS part_code
          ,od.spart_comment                       AS part_comment
          ,od.nqnt                                AS qnt
          ,od.nqnt_retrieved                      AS qnt_retrieved
          ,od.nsupplier_id                        AS supplier_id
          ,(SELECT c.scompany_name
            FROM   v_companies c
            WHERE  c.nid = od.nsupplier_id)       AS supplier
          ,(SELECT ot.sname
            FROM   v_order_types ot
            WHERE  ot.nid = od.norder_type_id)    AS order_type
          ,od.norder_type_id                      AS order_type_id
          ,nprice                                 AS price
          ,TO_CHAR(ROUND(od.nprice
                        ,2)
                  ,'FM999999999999990D00')        our_price_wo_tax
          ,TO_CHAR(ROUND(od.nprice * (od.nsurcharge / 100 + 1)
                        ,2)
                  ,'FM999999999999990D00')        price_wo_tax
          ,TO_CHAR(ROUND(od.nprice * (od.nsurcharge / 100 + 1) * TO_NUMBER(NVL(od.nqnt, 1))
                        ,2)
                  ,'FM999999999999990D00')        price_wo_tax_all
          ,TO_CHAR(ROUND(od.nprice * (od.nsurcharge / 100 + 1) * TO_NUMBER(NVL(od.nqnt, 1)) * 1.21
                        ,2)
                  ,'FM999999999999990D00')        price_with_tax
          ,vs.sname                               AS sstatus
          ,vs.nid                                 AS nstatus_id
          ,od.ncode_changed
          ,(SELECT   vdc.scomment
            FROM     v_order_details_changes vdc
            WHERE    vdc.npart_id = od.nid
            AND      vdc.ntype = 1
            ORDER BY vdc.dtcreated_at DESC
            FETCH    FIRST ROW ONLY)              AS ncode_changed_desc
          ,od.nprice_changed
          ,(SELECT   vdc.scomment
            FROM     v_order_details_changes vdc
            WHERE    vdc.npart_id = od.nid
            AND      vdc.ntype = 2
            ORDER BY vdc.dtcreated_at DESC
            FETCH    FIRST ROW ONLY)              AS nprice_changed_desc
          ,od.nshipment_delayed
          ,(SELECT   vdc.scomment
            FROM     v_order_details_changes vdc
            WHERE    vdc.npart_id = od.nid
            AND      vdc.ntype = 3
            ORDER BY vdc.dtcreated_at DESC
            FETCH    FIRST ROW ONLY)              AS nshipment_delayed_desc
          ,od.nadditional_comment
          ,(SELECT   vdc.scomment
            FROM     v_order_details_changes vdc
            WHERE    vdc.npart_id = od.nid
            AND      vdc.ntype = 4
            ORDER BY vdc.dtcreated_at DESC
            FETCH    FIRST ROW ONLY)              AS nadditional_comment_desc
          ,od.NINOVICE_COUNT as ninovice_count
          ,nqnt_confirmed
          ,NULL                                   delet
    FROM   v_order_details  od
          ,v_orders         op
          ,v_statuses       vs
    WHERE  op.nid = od.norder_id
    AND    vs.nid = od.nstatus_id;


--
-- V_ORDER_DETAILS_PREP_INFO  (View) 
--
--  Dependencies: 
--   V_ORDERS (Table)
--   V_ORDER_DETAILS_PREP (Table)
--   V_PRICE_LIST_IMPORTS (Table)
--   V_COMPANIES (Table)
--   V_ORDER_TYPES (Table)
--   V_ORDER_DETAILS (Table)
--   V_ORDERS_PREP (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_ORDER_DETAILS_PREP_INFO
(NID, NORDER_ID, SPART_NAME, SPART_CODE, SPART_COMMENT, 
 NQNT, NSUPPLIER_ID, SORDER_ID, SSUPPLIER, SORDER_TYPE, 
 NORDER_TYPE_ID, NPRICE, SOUR_PRICE_WO_TAX, SPRICE_WO_TAX, SPRICE_WO_TAX_ALL, 
 SPRICE_WITH_TAX, NSURCHARGE, DELET, SELECTED)
BEQUEATH DEFINER
AS 
SELECT od.nid                                 AS nid
          ,od.norder_id                           AS norder_id
          ,od.spart_name                          AS spart_name
          ,od.spart_code                          AS spart_code
          ,od.spart_comment                       AS spart_comment
          ,od.nqnt                                AS nqnt
          ,od.nsupplier_id                        AS nsupplier_id
          ,(SELECT CASE
                       WHEN o.nstatus_id = 4 THEN
                           '<a class="notOrdered">' || od.sorder_id || '</a>'
                       WHEN o.nstatus_id = 5
            OR              o.nstatus_id = 6 THEN
                           '<a class="ordered">' || od.sorder_id || '</a>'
                       WHEN o.nstatus_id = 7 THEN
                           '<a class="arived">' || od.sorder_id || '</a>'
                       ELSE
                           od.sorder_id
                   END
            FROM   v_order_details  d
                  ,v_orders         o
            WHERE  o.s_id = od.sorder_id
            AND    d.norder_id = o.nid
            AND    d.spart_code = od.spart_code)
          -- ,od.sorder_id AS sorder_id
          ,(SELECT CASE
                       WHEN SYSDATE >= pli.dtexpiration_date THEN
                           '<a style="color:red"><b>' || c.scompany_name || ' (nebegaliojantis)' || '</b></a>'
                       ELSE
                           c.scompany_name
                   END
            FROM   v_companies c
            WHERE  c.nid = od.nsupplier_id)       AS ssupplier
          ,(SELECT ot.sname
            FROM   v_order_types ot
            WHERE  ot.nid = od.norder_type_id)    AS sorder_type
          ,od.norder_type_id                      AS norder_type_id
          ,nprice                                 AS nprice
          ,TO_CHAR(ROUND(od.nprice
                        ,2)
                  ,'FM999999999999990D00')        sour_price_wo_tax
          ,TO_CHAR(ROUND(  od.nprice
                         * (od.nsurcharge / 100 + 1)
                        ,2)
                  ,'FM999999999999990D00')        sprice_wo_tax
          ,TO_CHAR(ROUND(  od.nprice
                         * (od.nsurcharge / 100 + 1)
                         * TO_NUMBER(TRIM(od.nqnt))
                        ,2)
                  ,'FM999999999999990D00')        sprice_wo_tax_all
          ,TO_CHAR(ROUND(  od.nprice
                         * (od.nsurcharge / 100 + 1)
                         * 1.21
                         * TO_NUMBER(TRIM(od.nqnt))
                        ,2)
                  ,'FM999999999999990D00')        sprice_with_tax
          ,od.nsurcharge || '%'
          ,NULL                                   delet
          ,od.selected
    FROM   v_order_details_prep  od
          ,v_orders_prep         op
          ,v_price_list_imports  pli
    WHERE  op.nid = od.norder_id
    AND    pli.norder_type_id(+) = od.norder_type_id
    AND    pli.nsupplier_id(+) = od.nsupplier_id
    AND    pli.napproved(+) = 1;


--
-- V_ORDER_DETAILS_PREP_INSERT_VIEW  (View) 
--
--  Dependencies: 
--   V_ORDER_DETAILS_PREP (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_ORDER_DETAILS_PREP_INSERT_VIEW
(NID, NORDER_ID, SPART_NAME, SPART_CODE, SPART_COMMENT, 
 NQNT, NSUPPLIER_ID, NORDER_TYPE_ID, NPRICE)
BEQUEATH DEFINER
AS 
SELECT od.nid                                 AS nid
          ,od.norder_id                           AS norder_id
          ,od.spart_name                          AS spart_name
          ,od.spart_code                          AS spart_code
          ,od.spart_comment                       AS spart_comment
          ,od.nqnt                                AS nqnt
          ,od.nsupplier_id                        AS nsupplier_id
          ,od.norder_type_id                      AS norder_type_id
          ,od.nprice                              AS nprice
    FROM   v_order_details_prep  od;


--
-- V_ORDER_DETAIL_LABEL_INFO  (View) 
--
--  Dependencies: 
--   V_ORDER_DETAILS (Table)
--   V_ORDERS (Table)
--   V_COMPANIES (Table)
--   V_COUNTRIES (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_ORDER_DETAIL_LABEL_INFO
(NID, S_ID, NORDER_ID, SCOMMENT, SPART_NAME, 
 SPART_CODE, SPART_COMMENT, NQNT, NQNT_RETRIEVED, NQNT_DIFF, 
 NSUPPLIER_ID, NSTATUS_ID, NORDERSTATUS_ID, NPRICE, SENDER, 
 RECEIVER, ISFOREIGNCUSTOMER, RECEIVER_SHORT, DTCREATED_AT)
BEQUEATH DEFINER
AS 
SELECT od.nid                            AS nid
          ,op.s_id                           AS s_id
          ,od.norder_id                      AS norder_id
          ,op.scomment                       AS scomment
          ,od.spart_name                     AS spart_name
          ,od.spart_code                     AS spart_code
          ,od.spart_comment                  AS spart_comment
          ,od.nqnt                           AS nqnt
          ,od.nqnt_retrieved                 AS nqnt_retrieved
          ,od.nqnt - od.nqnt_retrieved       AS nqnt_diff
          ,od.nsupplier_id                   AS nsupplier_id
          ,od.nstatus_id                     AS nstatus_id
          ,op.nstatus_id                     AS norderstatus_id
          ,od.nprice                         AS nprice
          ,'Detaliu tiekimas'               AS sender
          ,(SELECT c.scompany_name
            FROM   v_companies c
            WHERE  c.nid = op.nclient_id)    AS receiver
          ,(SELECT DECODE((SELECT sname
                           FROM   v_countries vc
                           WHERE  c.ncountry_id = vc.nid)
                         ,'Lietuva', 0
                         ,1)
            FROM   v_companies c
            WHERE  c.nid = op.nclient_id)    AS isforeigncustomer
          ,(SELECT c.scompany_name_short
            FROM   v_companies c
            WHERE  c.nid = op.nclient_id)    AS receiver_short
          ,op.dtcreated_at
    FROM   v_order_details  od
          ,v_orders         op
    WHERE  op.nid = od.norder_id;


--
-- V_ORDER_TYPES_INFO  (View) 
--
--  Dependencies: 
--   V_COMPANIES (Table)
--   V_ORDER_TYPES (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_ORDER_TYPES_INFO
(NID, NSUPPLIER_ID, SCOMPANY_NAME, SNAME, NDELIVERY_DAYS)
BEQUEATH DEFINER
AS 
SELECT   o.nid                AS nid
            ,o.nsupplier_id       AS nsupplier_id
            ,c.scompany_name      AS scompany_name
            ,o.sname              AS sname
            ,o.ndelivery_days     AS ndelivery_days
    FROM     v_companies  c
            ,v_order_types o
    WHERE    c.nid = o.nsupplier_id
    ORDER BY TRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(c.scompany_name
                                                         ,'"'
                                                         ,'')
                                                 ,'“'
                                                 ,'')
                                         ,'”'
                                         ,'')
                                 ,'„'
                                 ,'')
                         ,'  '
                         ,' '));


--
-- V_OVERSUPPLIED_PARTS_INFO  (View) 
--
--  Dependencies: 
--   V_COMPANIES (Table)
--   V_VEHICLE_BRANDS (Table)
--   V_STATUSES (Table)
--   V_OVERSUPPLIED_PARTS (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_OVERSUPPLIED_PARTS_INFO
(NID, SPART_CODE, SVEHICLE_BRAND, NQNT, NCAR_ID, 
 NPRICE, SCOMMENT, DTCREATED_AT, NSTATUS_ID, SSTATUS, 
 SCOMPANY_NAME, NIS_ACCOUNTED, SIS_ACCOUNTED)
BEQUEATH DEFINER
AS 
SELECT   s.nid                                       nid
            ,s.scode                                     spart_code
            ,vb.sname                                    svehicle_brand
            ,s.nqnt                                      nqnt
            ,s.ncar_id                                   ncar_id
            ,TO_CHAR(ROUND(s.nprice
                          ,2)
                    ,'FM999G990D00')                     nprice
            ,s.scomment                                  scomment
            ,s.dtcreated_at                              dtcreated_at
            ,s.nstatus_id                                nstatus_id
            ,(SELECT sname
              FROM   v_statuses
              WHERE  nid = s.nstatus_id
              AND    ntype = 4)                          AS sstatus
            ,(SELECT scompany_name
              FROM   v_companies
              WHERE  nid = nsupplier_id)                 AS scompany_name
              ,s.nis_accounted as nis_accounted
            ,DECODE(s.nis_accounted, 1, 'Taip', 'Ne')    sis_accounted
    FROM     v_oversupplied_parts s
            ,v_vehicle_brands    vb
    WHERE    vb.nid(+) = s.ncar_id
    ORDER BY dtcreated_at;


--
-- V_PART_SCANNING_HISTORY_INFO  (View) 
--
--  Dependencies: 
--   V_PART_SCANNING_HISTORY (Table)
--   V_COMPANIES (Table)
--   V_ORDERS (Table)
--   V_ORDER_DETAILS (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_PART_SCANNING_HISTORY_INFO
(NID, NPART_ID, SPART_CODE, NSUPPLIER_ID, SCOMPANY_NAME, 
 NQNT, NORDER_ID, S_ID, SVIN, NUSER_ID, 
 S_STATUS, DTCREATION_DATE)
BEQUEATH DEFINER
AS 
SELECT vpsh.nid
          ,vpsh.npart_id
          ,vpsh.spart_code
          ,vpsh.nsupplier_id
          ,NVL(vc.SCOMPANY_NAME, 'Nera nurodyto tiekejo!') as scompany_name
          ,vpsh.nqnt
          ,vpsh.norder_id
          ,NVL(vo.s_id, 'Nerasta')                                                                                                                AS s_id
          ,vo.svin                                                                                                               AS svin
          ,vpsh.nuser_id
          ,DECODE(vpsh.nstatus,  -2, 'Blogas nurodytas kiekis',  -1, 'Klaida',  0, 'Detale nerasta sistemoje',  1, 'Sekmingai užfiksuota')     AS s_status
          ,vpsh.dtcreation_date
    FROM   v_part_scanning_history  vpsh
          ,v_orders                 vo
          ,v_order_details          vod
          ,v_companies              vc
    WHERE  vpsh.norder_id = vo.nid(+)
    AND    vpsh.npart_id = vod.nid(+)
    AND    vpsh.nsupplier_id = vc.nid (+)
    AND    vc.ntype (+)= 1;


--
-- V_PRICE_LIST_INFO  (View) 
--
--  Dependencies: 
--   V_ORDER_TYPES (Table)
--   V_VEHICLE_BRANDS (Table)
--   V_PRICE_LIST_IMPORTS (Table)
--   V_COMPANIES (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_PRICE_LIST_INFO
(NID, SVEHICLE_NAME, SSUPPLIER, SORDER_TYPE, DTEXPIRATION_DATE, 
 SCUSTOM, SFILENAME, SSTATUS, SCUSTOMSTATUS)
BEQUEATH DEFINER
AS 
SELECT pli.nid
          ,vb.sname                                                                                                                                                vehicle_name
          ,c.scompany_name                                                                                                                                         supplier
          ,ot.sname                                                                                                                                                order_type
          ,NVL2(CASE
                    WHEN SYSDATE >= dtexpiration_date THEN
                        NULL
                    ELSE
                        '1'
                END
               ,'<a style="color:green"><b>' || pli.dtexpiration_date || '</b></a>'
               ,'<a style="color:red"><b>' || pli.dtexpiration_date || '</b></a>')                                                                                 AS expiration_date
          ,CASE
               WHEN SYSDATE >= dtexpiration_date THEN
                   'Negaliojanti data'
               ELSE
                   'Galiojanti data'
           END                                                                                                                                                     AS custom
          ,pli.sfilename                                                                                                                                           AS filename
          ,DECODE(pli.napproved,  1, '<a style="color:green"><b>Priimtas i sistema</b></a>',  NULL, '<a style="color:red"><b>Nepriimtas i sistema</b></a>')    AS status
          ,CASE
               WHEN pli.napproved = 1 THEN
                   'Priimtas i sistema'
               WHEN pli.napproved IS NULL THEN
                   'Nepriimtas i sistema'
           END           AS customstatus
    FROM   v_price_list_imports  pli
          ,v_vehicle_brands      vb
          ,v_companies           c
          ,v_order_types         ot
    WHERE  vb.nid = pli.ncar_id
    AND    c.nid = pli.nsupplier_id
    AND    ot.nid = pli.norder_type_id
    AND    NVL(pli.napproved, 1) = 1;


--
-- V_STORAGE_PARTS_INFO  (View) 
--
--  Dependencies: 
--   V_VEHICLE_MODELS (Table)
--   V_STORAGE_PARTS (Table)
--   V_VEHICLE_BRANDS (Table)
--   V_STORAGE_PLACES (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_STORAGE_PARTS_INFO
(NID, SPART_NAME, SPART_CODE, SVEHICLE_NAME, SVEHICLE_BRAND, 
 SVEHICLE_MODEL, NCAR_ID, NCAR_MODEL_ID, NLENGTH, NWIDTH, 
 NHEIGHT, NWEIGHT, NVOLUME, NPRICE, SDESCRIPTION, 
 NACCOUNTING_FLAG, SORIGINAL_PACKAGE, NORIGINAL_PACKAGE, NSECTION_ID, SPLACE, 
 IMAGES, NQNT, DTCREATED_AT)
BEQUEATH DEFINER
AS 
SELECT   s.nid                                                AS id
            ,s.sname                                              AS part_name
            ,s.scode                                              AS part_code
            ,vb.sname || ' ' || vm.sname                          AS vehicle_name
            ,vb.sname                                             AS vehicle_brand
            ,vm.sname                                             AS vehicle_model
            ,s.ncar_id                                            AS car_id
            ,s.ncar_model_id                                      AS car_model_id
            ,TO_CHAR(ROUND(s.nlength / 1000
                          ,2)
                    ,'FM999G990D00')                              LENGTH
            ,TO_CHAR(ROUND(s.nwidth / 1000
                          ,2)
                    ,'FM999G990D00')                              width
            ,TO_CHAR(ROUND(s.nheight / 1000
                          ,2)
                    ,'FM999G990D00')                              height
            ,TO_CHAR(ROUND(s.nweight / 1000
                          ,2)
                    ,'FM999G990D00')                              weight
            ,TO_CHAR(ROUND((s.nlength * s.nwidth * s.nheight / 1000000000)
                          ,2)
                    ,'FM999G990D00')                              volume
            ,TO_CHAR(ROUND(s.nprice
                          ,2)
                    ,'FM999G990D00')                              price
            ,s.sdescription                                       AS description
            ,DECODE(s.naccountingflag,  1, 'Yra',  0, 'Nera')    AS accounting_flag
            ,DECODE(s.noriginal_package, 0, 'Taip', 'Ne')                  AS soriginal_package
            ,s.noriginal_package                                  AS noriginal_package
            ,s.nsection_id                                        AS nsection_id
            ,(SELECT sname
              FROM   v_storage_places
              WHERE  nid = s.nsection_id)                         AS splace
            ,NULL                                                 AS images
            ,nqnt                                                 AS qnt
            ,s.DTCREATED_AT                                         AS dtcreated_at
    FROM     v_storage_parts s
            ,v_vehicle_brands vb
            ,v_vehicle_models vm
    WHERE    vb.nid(+) = s.ncar_id
    AND      vm.nid(+) = s.ncar_model_id
    ORDER BY part_name;


--
-- V_STORAGE_SUPPLIERS_PARTS_INFO  (View) 
--
--  Dependencies: 
--   V_STORAGE_PARTS (Table)
--   V_STORAGE_SUPPLIERS_PARTS (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_STORAGE_SUPPLIERS_PARTS_INFO
(NID, NCAR_ID, NORDER_TYPE_ID, NSUPPLIER_ID, SCODE, 
 SNAME, NPRICE, SCHILD_CODE, NHEIGHT, NWIDTH, 
 NLENGTH, NWEIGHT)
BEQUEATH DEFINER
AS 
SELECT ssp.nid                AS nid
          ,ssp.ncar_id            AS ncar_id
          ,ssp.norder_type_id     AS norder_type_id
          ,ssp.nsupplier_id       AS nsupplier_id
          ,ssp.scode              AS scode
          ,ssp.sname              AS sname
          ,ssp.nprice             AS nprice
          ,ssp.schild_code        AS schild_code
          ,ssp.nheight            AS nheight
          ,ssp.nwidth             AS nwidth
          ,ssp.nlength            AS nlength
          ,ssp.nweight            AS nweight
    FROM   v_storage_suppliers_parts ssp
    UNION ALL
    SELECT sp.nid         AS nid
          ,sp.ncar_id     AS ncar_id
          ,-1             AS norder_type_id
          ,-1             AS nsupplier_id
          ,sp.scode       AS scode
          ,sp.sname       AS sname
          ,sp.nprice      AS nprice
          ,NULL           AS schildcode
          ,sp.nheight     AS nheight
          ,sp.nwidth      AS nwidth
          ,sp.nlength     AS nLENGTH
          ,sp.nweight     AS nweight
    FROM   v_storage_parts sp;


--
-- V_SUPPLIERS_INFO  (View) 
--
--  Dependencies: 
--   V_COUNTRIES (Table)
--   V_CONTACTS (Table)
--   V_COMPANIES (Table)
--   V_CITIES (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_SUPPLIERS_INFO
(NID, NTYPE, SCOMPANY_NAME, SEMAIL, SPHONE, 
 SWEBSITE, SCOUNTRY_NAME, SCITY_NAME, NCOUNTRY_ID, NCITY_ID, 
 SCOMPANY_ADDRESS, SSHIPPING_ADDRESS, SZIP, SCOMPANY_CODE, STAX_CODE, 
 SCONTRACT_NUMBER, NDO_PAYMENT_DELAY, NPAYMENT_DELAY_IN_DAYS, NCONTACTS)
BEQUEATH DEFINER
AS 
SELECT c.nid                                          AS nid
          ,c.ntype                                        AS ntype
          ,c.scompany_name                                AS scompany_name
          ,c.semail                                       AS semail
          ,CASE
               WHEN LENGTH(c.sphone) = 7 THEN
                      SUBSTR(c.sphone
                            ,1
                            ,3)
                   || ' '
                   || SUBSTR(c.sphone
                            ,4)
               ELSE
                      SUBSTR(c.sphone
                            ,1
                            ,4)
                   || ' '
                   || SUBSTR(c.sphone
                            ,5
                            ,3)
                   || ' '
                   || SUBSTR(c.sphone
                            ,8)
           END                                            AS sphone
          ,c.swebsite                                     AS swebsite
          ,LTRIM(ctr.sname
                ,',')                                     AS scountry_name
          ,LTRIM(ct.sname
                ,',')                                     AS scity_name
          ,c.ncountry_id                                  AS ncountry_id
          ,c.ncity_id                                     AS ncity_id
          ,c.scompany_address || ct.sname || ctr.sname    AS scompany_address
          ,c.sshipping_address                            AS sshipping_address
          ,c.szip                                         AS szip
          ,c.scompany_code                                AS scompany_code
          ,c.stax_code                                    AS stax_code
          ,c.scontract_number                             AS scontract_number
          ,c.ndopaymentdelayflag                          AS ndo_payment_delay
          ,c.npayment_delay_in_days                       AS npayment_delay_in_days
          ,NVL(ctc.contacts_count, 0)                     AS ncontacts
    FROM   v_companies  c
          ,(
               SELECT nid AS nid, ', ' || sname AS sname FROM v_cities
           ) ct
          ,(
               SELECT nid AS nid, ', ' || sname AS sname FROM v_countries
           ) ctr
          ,(
               SELECT   ncompany_id
                       ,TO_CHAR(COUNT(nid))     AS contacts_count
               FROM     v_contacts
               GROUP BY ncompany_id
           ) ctc
    WHERE  c.ntype = 1
    AND    c.nhidden = 0
    AND    c.ncity_id = ct.nid(+)
    AND    c.ncountry_id = ctr.nid(+)
    AND    c.nid = ctc.ncompany_id(+);


--
-- V_SURCHARGES_INFO  (View) 
--
--  Dependencies: 
--   V_VEHICLE_BRANDS (Table)
--   V_SURCHARGES (Table)
--   V_ORDER_TYPES (Table)
--   V_COMPANIES (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_SURCHARGES_INFO
(NID, SVEHICLE_BRAND, NVEHICLE_BRAND_ID, SORDER_TYPE, NORDER_TYPE_ID, 
 SCLIENT_NAME, NCLIENT_ID, NPRICE)
BEQUEATH DEFINER
AS 
SELECT s.nid               AS nid
          ,cm.sname            AS svehicle_brand
          ,cm.nid              AS nvehicle_brand_id
          ,ot.sname            AS sorder_type
          ,ot.nid              AS norder_type_id
          ,c.scompany_name     AS sclient_name
          ,c.nid               AS nclient_id
          ,s.nprice            AS nprice
    FROM   v_surcharges      s
          ,v_vehicle_brands  cm
          ,v_order_types     ot
          ,v_companies       c
    WHERE  cm.nid = s.nvehicle_brand_id
    AND    ot.nid = s.norder_type_id
    AND    c.nid = s.nclient_id;


--
-- V_SURCHARGES_LIST_INFO  (View) 
--
--  Dependencies: 
--   V_SURCHARGE_GROUP (Table)
--   V_ORDER_TYPES (Table)
--   V_COMPANIES (Table)
--   V_SURCHARGE_BY_GROUP (Table)
--   V_SURCHARGES (Table)
--   V_CLIENT_SURCHARGE_GROUPS (Table)
--   V_VEHICLE_BRANDS (Table)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_SURCHARGES_LIST_INFO
(SCLIENT_NAME, SSURCHARGE_GROUP_NAME, SSUPPLIER_NAME, SCAR_MODEL_NAME, SORDER_TYPE_NAME, 
 SCUSTOM, NSURCHARGE_VALUE)
BEQUEATH DEFINER
AS 
SELECT DISTINCT clt.scompany_name                    AS sclient_name
                   ,sg.sname                             AS ssurcharge_group_name
                   ,sup.scompany_name                    AS ssupplier_name
                   ,cm.sname                             AS scar_model_name
                   ,ot.sname                             AS sorder_type_name
                   ,NVL2(TO_CHAR(DECODE(INSTR((SELECT NVL(MAX('<a style="color:green"><b>' || sur.nprice || '%</b></a>'), sbg.nprice || '%')
                                               FROM   v_surcharges sur
                                               WHERE  sur.nvehicle_brand_id = cm.nid
                                               AND    sur.norder_type_id = ot.nid
                                               AND    sur.nclient_id = clt.nid)
                                             ,'style')
                                       ,0, 0
                                       ,NULL))
                        ,'Grupiniai antkainiai'
                        ,'Specifiniai antkainiai')       AS scustom
                   ,(SELECT NVL(MAX('<a style="color:green"><b>' || sur.nprice || '%</b></a>'), sbg.nprice || '%')
                     FROM   v_surcharges sur
                     WHERE  sur.nvehicle_brand_id = cm.nid
                     AND    sur.norder_type_id = ot.nid
                     AND    sur.nclient_id = clt.nid)    AS nsurcharge_value
    FROM   v_companies                clt
          ,v_companies                sup
          ,v_client_surcharge_groups  csg
          ,v_surcharge_group          sg
          ,v_surcharge_by_group       sbg
          ,v_vehicle_brands           cm
          ,v_order_types              ot
    WHERE  csg.nclient_id = clt.nid
    AND    clt.ntype = 0
    AND    sup.ntype = 1
    AND    sup.nid = ot.nsupplier_id
    AND    csg.nsurcharge_id = sg.nid
    AND    sbg.nsurcharge_group_id = csg.nsurcharge_id
    AND    sbg.nvehicle_brand_id = cm.nid
    AND    ot.nid = sbg.norder_type_id;


--
-- V_PARTS_INFO  (View) 
--
--  Dependencies: 
--   V_PRICE_LIST_IMPORTS (Table)
--   V_ORDER_TYPES (Table)
--   V_COMPANIES (Table)
--   V_STORAGE_SUPPLIERS_PARTS_INFO (View)
--
CREATE OR REPLACE FORCE VIEW DETALES.V_PARTS_INFO
(NID, NCAR_ID, "Tiekėjas", "Užsakymo tipas", "Detalės pavadinimas", 
 "Detalės kodas", "Kaina")
BEQUEATH DEFINER
AS 
SELECT DISTINCT ssp.nid
                   ,ssp.ncar_id
                   ,CASE
                        WHEN SYSDATE >= pli.dtexpiration_date THEN
                            '<a style="color:red"><b>' || c.scompany_name || ' (nebegalioja)' || '</b></a>'
                        ELSE
                            c.scompany_name
                    END                                AS supplier
                   ,ot.sname                           order_type
                   ,ssp.sname
                   ,ssp.scode
                   ,TO_CHAR(ROUND(ssp.nprice
                                 ,2)
                           ,'FM999999999999990D00')    price
    FROM   v_companies                     c
          ,v_order_types                   ot
          ,v_storage_suppliers_parts_info  ssp
          ,v_price_list_imports            pli
    WHERE  c.nid = ssp.nsupplier_id
    AND    ot.nid = ssp.norder_type_id
    AND    pli.norder_type_id(+) = ot.nid
    AND    pli.nsupplier_id(+) = c.nid
    AND    pli.ncar_id(+) = ssp.ncar_id
    AND    pli.napproved(+) = 1;

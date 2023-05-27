--
-- Create Schema Script
--   Database Version            : 19.0.0.0.0
--   Database Compatible Level   : 19.0.0.0.0
--   Script Compatible Level     : 19.0.0.0.0
--   Toad Version                : 13.2.0.258
--   DB Connect String           : FREEPDB1
--   Schema                      : DETALES
--   Script Created by           : SYS
--   Script Created at           : 27/05/2023 09:06:48
--   Notes                       : 
--

-- Object Counts: 
--   Functions: 14      Lines of Code: 367 


-- "Set define off" turns off substitution variables.
Set define off; 

--
-- CREATE_CACHED_BLOB  (Function) 
--
--  Dependencies: 
--   DBMS_LOB (Synonym)
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--
CREATE OR REPLACE FUNCTION DETALES.create_cached_blob(p_file IN BLOB)
   RETURN BLOB
IS
   l_blob   BLOB;
BEGIN
   dbms_lob.createtemporary(lob_loc   => l_blob
                           ,cache     => TRUE);
   dbms_lob.COPY(dest_lob   => l_blob
                ,src_lob    => p_file
                ,amount     => dbms_lob.lobmaxsize);

   RETURN l_blob;
END create_cached_blob;
/


--
-- FNC_GET_PHOTO  (Function) 
--
--  Dependencies: 
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   STANDARD (Package)
--   V_PHOTOS (Table)
--
CREATE OR REPLACE function DETALES.fnc_get_photo (ip_photo_id number)
return blob
as
    bl_photo blob;
begin
    select blphoto
    into bl_photo
    from v_photos
    where npart_id = ip_photo_id;
    return bl_photo;
end;

/


--
-- FNC_ORDER_REPORT  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   V_ORDER_DETAILS_INFO (View)
--   DUAL (Synonym)
--
CREATE OR REPLACE FUNCTION DETALES.fnc_order_report(np_order_id      IN NUMBER
                                           ,ip_supplier_id   IN NUMBER)
    RETURN VARCHAR2
IS
    s_date   VARCHAR2(20);
    s_code   VARCHAR2(30000);
BEGIN
    SELECT TO_CHAR(SYSDATE
                  ,'YYYY-MM-DD')
    INTO   s_date
    FROM   DUAL;

    s_code := '<style>
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
</style><table style="width: 100%">
  <tr>
    <th>' || s_date || '</th>
    <th>VIN:</th>
  </tr>
  <tr>
    <th>Detale pavadinimas</th>
    <th>Detale kodas</th>
    <th>Kiekis</th>
    <th>Savikaina</th>
    <th>Savikaina iš viso</th>
  </tr>';

    FOR x IN (SELECT spart_name            AS part_name
                    ,spart_code            AS part_code
                    ,nqnt                  AS qnt
                    ,nprice_wo_tax_all     AS price_wo_tax
                    ,nprice_with_tax       AS price_with_tax
              FROM   v_order_details_info
              WHERE  (norder_id = np_order_id
              AND     nsupplier_id = ip_supplier_id
              AND     ip_supplier_id != 0)
              OR     (norder_id = np_order_id
              AND     ip_supplier_id = 0))
    LOOP
        s_code :=
               s_code
            || '<tr>
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
</tr>';
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
        s_code := s_code || '<tr>
        <th></th>
    <th>Viso:</th>
    <th>' || x.qnt_all || '</th>
    <th>' || x.price_wo_tax_all || '</th>
    <th>' || x.price_with_tax_all || '</th>
        </tr>';
    END LOOP;

    RETURN s_code;
END;
/


--
-- FNC_PREPARE_URL  (Function) 
--
--  Dependencies: 
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   STANDARD (Package)
--   APEX_UTIL (Synonym)
--
CREATE OR REPLACE function DETALES.fnc_prepare_url(sp_url VARCHAR2, sp_title VARCHAR2)
return varchar2
is
l_url varchar2(2000);
BEGIN
    l_url := APEX_UTIL.prepare_url( p_url => sp_url, p_checksum_type => 'SESSION');
    return '<a href="'||l_url||'">'||sp_title||'</a>';
END;

/


--
-- F_GETLOV_TT  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   LOV_TT (Type)
--   DBMS_ASSERT (Synonym)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--
CREATE OR REPLACE FUNCTION DETALES.f_getlov_tt(i_table_tx     VARCHAR2
                           ,i_id_tx        VARCHAR2
                           ,i_display_tx   VARCHAR2
                           ,i_order_nr     VARCHAR2
                           ,i_where_s      VARCHAR2
                           ,i_where_n      NUMBER
                           ,i_limit_nr     NUMBER:= 100)
    RETURN lov_tt
IS
    v_out_tt   lov_tt := lov_tt();
    v_sql_tx   VARCHAR2(32767);
BEGIN
    v_sql_tx :=
           'SELECT lov_item_t '
        || 'FROM (SELECT lov_t('
        || dbms_assert.simple_sql_name(i_id_tx)
        || ', '
        || dbms_assert.simple_sql_name(i_display_tx)
        || ') lov_item_t '
        || ' FROM '
        || dbms_assert.simple_sql_name(i_table_tx)
        || ' where '
        || i_where_s
        || ' = '
        || i_where_n
        || ' order by '
        || dbms_assert.simple_sql_name(i_order_nr)
        || ')'
        || ' WHERE ROWNUM <= :limit';

    EXECUTE IMMEDIATE v_sql_tx
        BULK COLLECT INTO v_out_tt
        USING i_limit_nr;

    RETURN v_out_tt;
END;
/


--
-- GET_FILES  (Function) 
--
--  Dependencies: 
--   T_VARCHAR2_ARR (Type)
--   PLITBLM (Synonym)
--   APEX_STRING (Synonym)
--   APEX_APPLICATION_GLOBAL (Synonym)
--   WWV_FLOW_GLOBAL (Package)
--   DBMS_SQL (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   STANDARD (Package)
--   FILE_LIST_API (Package)
--
CREATE OR REPLACE FUNCTION DETALES.get_files (p_dir IN VARCHAR2)
  RETURN t_varchar2_arr PIPELINED
AS
  l_array  APEX_APPLICATION_GLOBAL.vc_arr2;
  l_string VARCHAR2(32767);
BEGIN
  l_array:= APEX_STRING.string_to_table(FILE_LIST_API.list(p_dir), ',');

  FOR i in 1..l_array.count LOOP
    PIPE ROW(l_array(i));
  END LOOP;
  RETURN;
END;
/


--
-- GET_PART_COUNT  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   V_ORDER_DETAILS (Table)
--
CREATE OR REPLACE FUNCTION DETALES."GET_PART_COUNT" (ip_order_id IN NUMBER)
    RETURN NUMBER
AS
    il_count   NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO   il_count
    FROM   v_order_details
    WHERE  norder_id = ip_order_id;

    RETURN il_count;
END;
/


--
-- GET_SID  (Function) 
--
--  Dependencies: 
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   STANDARD (Package)
--   SEQ_DATA (Table)
--
CREATE OR REPLACE FUNCTION DETALES."GET_SID"
    RETURN VARCHAR2
AS
    sid     VARCHAR2(100);
    rnumb   NUMBER;
BEGIN
    SELECT    'DT'
           || TO_CHAR(SYSDATE
                     ,'YY')
           || DECODE(LENGTH(nvalue),  1, '0000',  2, '000',  3, '00',  4, '0',  '00000')
           || nvalue
    INTO   sid
    FROM   seq_data
    WHERE  ssequence_name = 'SEQ_SID';
BEGIN
    UPDATE seq_data
    SET    nvalue = nvalue + 1
    WHERE  ssequence_name = 'SEQ_SID';
    COMMIT;
END;
    RETURN sid;
END;
/


--
-- GET_SURCHARGE  (Function) 
--
--  Dependencies: 
--   V_SURCHARGE_BY_GROUP (Table)
--   V_SURCHARGES (Table)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   STANDARD (Package)
--   V_CLIENT_SURCHARGE_GROUPS (Table)
--
CREATE OR REPLACE FUNCTION DETALES."GET_SURCHARGE" (ip_client_id          NUMBER
                                        ,ip_vehicle_brand_id   NUMBER
                                        ,ip_order_type_id      NUMBER)
    RETURN NUMBER
IS
    nl_price   NUMBER;
BEGIN
    WITH
        surcharge
        AS
            (SELECT nprice
             FROM   v_surcharges
             WHERE  nclient_id = ip_client_id
             AND    nvehicle_brand_id = ip_vehicle_brand_id
             AND    norder_type_id = ip_order_type_id
             UNION ALL
             SELECT nprice
             FROM   v_surcharge_by_group
             WHERE  nsurcharge_group_id = (SELECT nsurcharge_id
                                          FROM   v_client_surcharge_groups
                                          WHERE  nclient_id = ip_client_id)
             AND    nvehicle_brand_id = ip_vehicle_brand_id
             AND    norder_type_id = ip_order_type_id
             FETCH FIRST ROW ONLY)
    SELECT nprice
    INTO   nl_price
    FROM   surcharge;

    RETURN nvl(nl_price,0);
END;
/


--
-- HASH_PASSWORD  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION DETALES."HASH_PASSWORD" (sp_user_name   IN VARCHAR2
                                        ,sp_password    IN VARCHAR2)
    RETURN VARCHAR2
IS
    sl_password   VARCHAR2(255);
    sl_salt       VARCHAR2(255) := '2345USFGOJN2T3HW89EFGOBN23R5SDFGAKL';
BEGIN
    sl_password := sp_password;
    RETURN sl_password;
END hash_password;
/


--
-- HAS_PRIVILEGES  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION DETALES."HAS_PRIVILEGES" (sp_table_name   IN VARCHAR2
                                         ,ip_operation    IN NUMBER)
    RETURN BOOLEAN
IS
BEGIN
    RETURN TRUE;
END;
/


--
-- IS_NUMERIC  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE FUNCTION DETALES."IS_NUMERIC" (p_str IN VARCHAR2)
    RETURN NUMBER
IS
    l_num   NUMBER;
BEGIN
    l_num := TO_NUMBER(p_str);
    RETURN 1;
EXCEPTION
    WHEN VALUE_ERROR THEN
        RETURN 0;
END;
/


--
-- VALIDATE_ORDER_PREP_CREATION  (Function) 
--
--  Dependencies: 
--   V_CLIENTS_INFO (View)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   STANDARD (Package)
--   V_VEHICLE_BRANDS (Table)
--
CREATE OR REPLACE FUNCTION DETALES.validate_order_prep_creation(sclient   IN VARCHAR2
                                                       ,scar      IN VARCHAR2)
    RETURN NUMBER
AS
    il_count         NUMBER;
    nclient_exists   NUMBER := 0;
    ncar_exists      NUMBER := 0;
BEGIN
    BEGIN
        SELECT 1
        INTO   nclient_exists
        FROM   v_clients_info
        WHERE  scompany_name = sclient;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            NULL;
    END;

    BEGIN
        SELECT 1
        INTO   ncar_exists
        FROM   v_vehicle_brands
        WHERE  sname = scar;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            NULL;
    END;

    IF ncar_exists = 0
       OR nclient_exists = 0 THEN
        RETURN 0;
    ELSE
        RETURN 1;
    END IF;
END;
/


--
-- AUTHENTICATE_USER  (Function) 
--
--  Dependencies: 
--   STANDARD (Package)
--   SYS_STUB_FOR_PURITY_ANALYSIS (Package)
--   APEX_UTIL (Synonym)
--   V_USERS (Table)
--   HASH_PASSWORD (Function)
--
CREATE OR REPLACE FUNCTION DETALES.AUTHENTICATE_USER
  (p_username in varchar2,
   p_password in varchar2)
return boolean
is
  l_user_name       v_users.user_name%type    := upper(p_username);
  l_password        v_users.password%type;
  l_issuspended     v_users.issuspended%type;
  l_hashed_password varchar2(1000);
  l_count           number;
begin
-- Returns from the AUTHENTICATE_USER function
--    0    Normal, successful authentication
--    1    Unknown User Name
--    2    Account Locked
--    3    Account Expired
--    4    Incorrect Password
--    5    Password First Use
--    6    Maximum Login Attempts Exceeded
--    7    Unknown Internal Error
    select count(*)
      into l_count
      from v_users
      where user_name = l_user_name;

     if l_count > 0 then
          l_hashed_password := hash_password(l_user_name, p_password);

          select password, issuspended
            into l_password, l_issuspended
            from v_users
           where user_name = l_user_name;
          if l_issuspended = 1 THEN
              APEX_UTIL.SET_AUTHENTICATION_RESULT(2);
              APEX_UTIL.SET_CUSTOM_AUTH_STATUS('Šis vartotojas suspenduotas!');
              return false;
          end if;
          if l_hashed_password = l_password then
              APEX_UTIL.SET_AUTHENTICATION_RESULT(0);
              return true;
          else
              APEX_UTIL.SET_AUTHENTICATION_RESULT(4);
              return false;
          end if;

    else
          APEX_UTIL.SET_AUTHENTICATION_RESULT(1);
          return false;
    end if;
    APEX_UTIL.SET_AUTHENTICATION_RESULT(7);
    return false;
exception
    when others then
        APEX_UTIL.SET_AUTHENTICATION_RESULT(7);
        APEX_UTIL.SET_CUSTOM_AUTH_STATUS(sqlerrm);
        return false;

end ;
/

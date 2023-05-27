prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Klientas'
,p_alias=>'KLIENTAS'
,p_page_mode=>'MODAL'
,p_step_title=>'Klientas'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230509134436'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13348146258994568)
,p_plug_name=>'Klientas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9626611630517882)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c.nid as id',
'      ,c.scompany_name as company_name',
'      ,c.swebsite as website',
'      ,c.sphone as phone',
'      ,c.semail as email',
'      ,cr.sname as country_id',
'      ,ct.sname as city_id',
'      ,c.scompany_address as company_address',
'      ,c.sshipping_address as shipping_address',
'      ,c.szip as zip',
'      ,c.scompany_code as company_code',
'      ,c.stax_code as tax_code',
'      ,c.scontract_number as contract_number',
'      ,(select nsurcharge_id from v_client_surcharge_groups where nclient_id = c.nid) as surcharge_id',
'      ,c.sresponsibleemployee as responsible_employee',
'      ,c.ndopaymentdelayflag as payment_delay_flag',
'      ,c.npayment_delay_in_days as payment_delay',
'      ,c.NCOMMENT as comment_flag',
'      ,c.scomment as scomment',
'FROM   v_companies  c',
'      ,v_countries  cr',
'      ,v_cities     ct',
'WHERE  cr.nid = c.ncountry_id',
'AND    ct.nid = c.ncity_id',
'AND    c.ntype = 0'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13360449527994576)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9629970051517884)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13374733340994589)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9664461405517910)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9600063663517815)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9718955338517984)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13360868380994576)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13360449527994576)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31038518681796612)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13360449527994576)
,p_button_name=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161valyti')
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13363236816994578)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13360449527994576)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE_BTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P3_NID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13059084575899737)
,p_name=>'P3_JOB_TITLE_1'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Pareigos'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'sname ',
'FROM v_job_titles'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13059104229899738)
,p_name=>'P3_SEMAIL_1'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>unistr('El. pa\0161tas')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13059254789899739)
,p_name=>'P3_SPHONE_1'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Tel. numeris'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13059348048899740)
,p_name=>'P3_JOB_TITLE_2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Pareigos'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'sname ',
'FROM v_job_titles'))
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13059641181899743)
,p_name=>'P3_SEMAIL_3'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>unistr('El. pa\0161tas')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13059747383899744)
,p_name=>'P3_SPHONE_2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Tel. numeris'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13059881308899745)
,p_name=>'P3_NEW'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Kontaktai'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1;1,2;2,3;3'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'0'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13348558081994568)
,p_name=>'P3_NID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_default=>'ISEQ$$_75761'
,p_item_default_type=>'SEQUENCE'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13350196485994570)
,p_name=>'P3_SCOMPANYNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Klientas'
,p_source=>'COMPANY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT *',
'FROM   (',
'           SELECT scompany_name',
'           FROM   v_companies',
'           WHERE  ntype = 0',
'           UNION ALL',
'           SELECT scompany_name FROM v_company_ext',
'       )'))
,p_cSize=>32
,p_cMaxlength=>50
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13350984681994570)
,p_name=>'P3_SPHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Tel. numeris'
,p_source=>'PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>12
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13351319530994570)
,p_name=>'P3_SWEBSITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'El. puslapis'
,p_source=>'WEBSITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13351745837994570)
,p_name=>'P3_SCOUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>unistr('\0160alis')
,p_source=>'COUNTRY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'sname',
'FROM v_countries'))
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13352147737994571)
,p_name=>'P3_SCITY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Miestas'
,p_source=>'CITY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'    tbl',
'    AS',
'        (SELECT nid',
'         FROM   v_countries',
'         WHERE  sname = :P3_SCOUNTRY)',
'SELECT c.sname',
'FROM   v_cities  c',
'      ,tbl     t',
'WHERE  t.nid = c.ncountry_id'))
,p_lov_cascade_parent_items=>'P3_SCOUNTRY'
,p_ajax_items_to_submit=>'P3_SCOUNTRY'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_10=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13352543154994571)
,p_name=>'P3_SCOMPANYADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>unistr('Kliento adresas (be miesto ir \0161alies)')
,p_source=>'COMPANY_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>128
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13352967421994571)
,p_name=>'P3_SSHIPPINGADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Siuntimo adresas (pilnas)'
,p_source=>'SHIPPING_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>128
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13353360021994571)
,p_name=>'P3_SZIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>unistr('Pa\0161to kodas')
,p_source=>'ZIP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13354554425994572)
,p_name=>'P3_SCOMPANYCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>unistr('\012Emon\0117s kodas')
,p_source=>'COMPANY_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT *',
'FROM   (',
'           SELECT scompany_code',
'           FROM   v_companies',
'           WHERE  ntype = 0',
'           UNION ALL',
'           SELECT scompany_code FROM v_company_ext',
'       )'))
,p_cSize=>60
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13354955822994572)
,p_name=>'P3_SPVMCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>unistr('PVM mok\0117tojo kodas')
,p_source=>'TAX_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT *',
'FROM   (',
'           SELECT stax_code',
'           FROM   v_companies',
'           WHERE  ntype = 0',
'           UNION ALL',
'           SELECT stax_code FROM v_company_ext',
'       )'))
,p_cSize=>60
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13694737070037905)
,p_name=>'P3_JOB_TITLE_3'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Pareigos'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'sname ',
'FROM v_job_titles'))
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13694807141037906)
,p_name=>'P3_SNAME_3'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Vardas'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13694954805037907)
,p_name=>'P3_SLASTNAME_3'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>unistr('Pavard\0117')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13695074994037908)
,p_name=>'P3_SEMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>unistr('El. pa\0161tas')
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13695368693037911)
,p_name=>'P3_SEMAIL_2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>unistr('El. pa\0161tas')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13695418703037912)
,p_name=>'P3_SPHONE_3'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Tel. numeris'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15394996569090902)
,p_name=>'P3_NPAYMENTDELAY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_default=>'0'
,p_prompt=>unistr('Mok\0117jimo atid\0117jimas')
,p_source=>'PAYMENT_DELAY_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'margin-top-md:margin-bottom-md'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15395093720090903)
,p_name=>'P3_NPAYMENTDELAYQNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_default=>'0'
,p_prompt=>unistr('Mok\0117jimo atid\0117jimas')
,p_source=>'PAYMENT_DELAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select level d, level r from dual connect by Level <=30;'
,p_lov_display_null=>'YES'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_icon_css_classes=>'fa-calendar-o'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15487061441775703)
,p_name=>'P3_SCONTRACTNUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Sutarties numeris'
,p_source=>'CONTRACT_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15488134171775714)
,p_name=>'P3_EXISTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17811747564578236)
,p_name=>'P3_FLAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23017476434213142)
,p_name=>'P3_SURCHARGE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>unistr('Antkaini\0173 grup\0117')
,p_source=>'SURCHARGE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   sname     d',
'        ,nid       r',
'FROM     v_surcharge_group',
'WHERE    nid > 0',
'ORDER BY nid'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45215610695093863)
,p_name=>'P3_SCOMMENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Komentaras'
,p_source=>'SCOMMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>254
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>10
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45215705610093864)
,p_name=>'P3_NCOMMENT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_default=>'0'
,p_prompt=>'Komentaras'
,p_source=>'COMMENT_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'margin-top-md:margin-bottom-md'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46686190389614437)
,p_name=>'P3_SRESPONSIBLE_EMPLOYEE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Atsakingas asmuo'
,p_source=>'RESPONSIBLE_EMPLOYEE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select first_name || '' ''||last_name from v_users where isadmin = 0 and first_name is not null order by 1'
,p_cSize=>30
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71073499557555373)
,p_name=>'P3_COMPANYSHORTNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_item_source_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Trumpas pavadinimas'
,p_source=>'ZIP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71491006283465234)
,p_name=>'P3_SLASTNAME_1'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>unistr('Pavard\0117')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71491145650465235)
,p_name=>'P3_SNAME_1'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Vardas'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71491206589465236)
,p_name=>'P3_SLASTNAME_2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>unistr('Pavard\0117')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71491278967465237)
,p_name=>'P3_SNAME_2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(13348146258994568)
,p_prompt=>'Vardas'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(17811880343578237)
,p_tabular_form_region_id=>wwv_flow_imp.id(13348146258994568)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>':P3_SCOUNTRY is null'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Iveskite \0161al\012F!')
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(13363236816994578)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13360999066994576)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13360868380994576)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13361768150994577)
,p_event_id=>wwv_flow_imp.id(13360999066994576)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13695669565037914)
,p_name=>'One Contact'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_NEW'
,p_condition_element=>'P3_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13695734180037915)
,p_event_id=>wwv_flow_imp.id(13695669565037914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_JOB_TITLE_1,P3_SEMAIL_1,P3_SPHONE_1,P3_SNAME_1,P3_SLASTNAME_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13695848292037916)
,p_event_id=>wwv_flow_imp.id(13695669565037914)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_JOB_TITLE_2,P3_SEMAIL_2,P3_SPHONE_2,P3_JOB_TITLE_3,P3_SNAME_3,P3_SLASTNAME_3,P3_SEMAIL_3,P3_SPHONE_3,P3_SLASTNAME_2,P3_SNAME_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15395678740090909)
,p_name=>'Zero Contacts'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_NEW'
,p_condition_element=>'P3_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15395813050090911)
,p_event_id=>wwv_flow_imp.id(15395678740090909)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_JOB_TITLE_1,P3_SEMAIL_1,P3_SPHONE_1,P3_JOB_TITLE_2,P3_SEMAIL_2,P3_SPHONE_2,P3_JOB_TITLE_3,P3_SNAME_3,P3_SLASTNAME_3,P3_SEMAIL_3,P3_SPHONE_3,P3_SLASTNAME_2,P3_SNAME_2,P3_SLASTNAME_1,P3_SNAME_1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13695934102037917)
,p_name=>'Two Contacts'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_NEW'
,p_condition_element=>'P3_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13696028418037918)
,p_event_id=>wwv_flow_imp.id(13695934102037917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_JOB_TITLE_1,P3_SEMAIL_1,P3_SPHONE_1,P3_JOB_TITLE_2,P3_SEMAIL_2,P3_SPHONE_2,P3_SNAME_1,P3_SLASTNAME_1,P3_SNAME_2,P3_SLASTNAME_2,P3_SPHONE_3,P3_SEMAIL_3,P3_SLASTNAME_3,P3_SNAME_3,P3_JOB_TITLE_3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13696170655037919)
,p_event_id=>wwv_flow_imp.id(13695934102037917)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_JOB_TITLE_3,P3_SNAME_3,P3_SLASTNAME_3,P3_SEMAIL_3,P3_SPHONE_3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13696208675037920)
,p_name=>'Three Contacts'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_NEW'
,p_condition_element=>'P3_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13696332534037921)
,p_event_id=>wwv_flow_imp.id(13696208675037920)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_JOB_TITLE_1,P3_SEMAIL_1,P3_SPHONE_1,P3_JOB_TITLE_2,P3_SEMAIL_2,P3_SPHONE_2,P3_JOB_TITLE_3,P3_SNAME_3,P3_SLASTNAME_3,P3_SEMAIL_3,P3_SPHONE_3,P3_SLASTNAME_2,P3_SNAME_2,P3_SLASTNAME_1,P3_SNAME_1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13696675262037924)
,p_name=>'Update/Insert'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13363236816994578)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$x(''P3_EXISTS'').value == 1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16323237864697806)
,p_event_id=>wwv_flow_imp.id(13696675262037924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'n_country_id number;',
'n_city_id number;',
'n_error number;',
's_error varchar2(254);',
'BEGIN',
'    COUNTRY_CITY_EXISTS_VALIDATION(:P3_SCOUNTRY, :P3_SCITY, n_country_id, n_city_id, n_error, s_error);',
'',
'    :P3_FLAG := 0;',
'    UPDATE v_companies',
'    SET scompany_name = :P3_SCOMPANYNAME',
'        ,semail = :P3_SEMAIL',
'        ,sphone = :P3_SPHONE',
'        ,swebsite = :P3_SWEBSITE',
'        ,ncountry_id = n_country_id',
'        ,ncity_id = n_city_id',
'        ,scompany_address = :P3_SCOMPANYADDRESS',
'        ,sshipping_address = :P3_SSHIPPINGADDRESS',
'        ,szip = :P3_SZIP',
'        ,scompany_code = :P3_SCOMPANYCODE',
'        ,stax_code = :P3_SPVMCODE',
'        ,ndopaymentdelayflag = :P3_NPAYMENTDELAY',
'        ,npayment_delay_in_days = :P3_NPAYMENTDELAYQNT',
'        ,scontract_number = :P3_SCONTRACTNUMBER',
'        ,sresponsibleemployee = :P3_SRESPONSIBLE_EMPLOYEE',
'        ,ncomment = :P3_NCOMMENT',
'        ,scomment = :P3_SCOMMENT',
'        ,scompany_name_short = :P3_COMPANYSHORTNAME',
'    WHERE nid = :P3_NID;    ',
'    :P3_FLAG := 0;',
'exception when others then',
'    :P3_FLAG := 1;',
'END;'))
,p_attribute_02=>'P3_NID,P3_SCOMPANYNAME,P3_SWEBSITE,P3_SEMAIL,P3_SPHONE,P3_SCOUNTRY,P3_SCITY,P3_SCOMPANYADDRESS,P3_SSHIPPINGADDRESS,P3_SZIP,P3_SCOMPANYCODE,P3_SPVMCODE,P3_NPAYMENTDELAY,P3_NPAYMENTDELAYQNT,P3_SCONTRACTNUMBER,P3_SURCHARGE_ID,P3_SRESPONSIBLE_EMPLOYEE,P3'
||'_NCOMMENT,P3_SCOMMENT,P3_COMPANYSHORTNAME'
,p_attribute_03=>'P3_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13696769236037925)
,p_event_id=>wwv_flow_imp.id(13696675262037924)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'il_company_id number;',
'n_country_id number;',
'n_city_id number;',
'n_error number;',
's_error varchar2(254);',
'BEGIN',
'    COUNTRY_CITY_EXISTS_VALIDATION(:P3_SCOUNTRY, :P3_SCITY, n_country_id, n_city_id, n_error, s_error);',
'    :P3_FLAG := 0;',
'    INSERT INTO v_companies(scompany_name',
'                         ,semail',
'                         ,sphone',
'                         ,swebsite',
'                         ,ncountry_id',
'                         ,ncity_id',
'                         ,scompany_address',
'                         ,sshipping_address',
'                         ,szip',
'                         ,scompany_code',
'                         ,stax_code',
'                         ,ndopaymentdelayflag',
'                         ,npayment_delay_in_days',
'                         ,scontract_number',
'                         ,sresponsibleemployee',
'                         ,ncomment',
'                         ,scomment',
'                         ,ntype',
'                         ,scompany_name_short)',
'    VALUES      (:P3_SCOMPANYNAME',
'                ,:P3_SEMAIL',
'                ,:P3_SPHONE',
'                ,:P3_SWEBSITE',
'                ,n_country_id',
'                ,n_city_id',
'                ,:P3_SCOMPANYADDRESS',
'                ,:P3_SSHIPPINGADDRESS',
'                ,:P3_SZIP',
'                ,:P3_SCOMPANYCODE',
'                ,:P3_SPVMCODE',
'                ,:P3_NPAYMENTDELAY',
'                ,:P3_NPAYMENTDELAYQNT',
'                ,:P3_SCONTRACTNUMBER',
'                ,:P3_SRESPONSIBLE_EMPLOYEE',
'                ,:P3_NCOMMENT',
'                ,:P3_SCOMMENT',
'                ,0',
'                ,:P3_COMPANYSHORTNAME);',
'    SELECT nid',
'    INTO il_company_id',
'    FROM v_companies',
'    WHERE scompany_name = :P3_SCOMPANYNAME;',
'',
'    if to_number(:P3_NEW) = 1 then',
'        insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P3_JOB_TITLE_1, :P3_SNAME_1, :P3_SLASTNAME_1, :P3_SEMAIL_1, :P3_SPHONE_1);',
'    elsif to_number(:P3_NEW) = 2 then',
'            insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P3_JOB_TITLE_1, :P3_SNAME_1, :P3_SLASTNAME_1, :P3_SEMAIL_1, :P3_SPHONE_1);',
'            insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P3_JOB_TITLE_2,:P3_SNAME_2, :P3_SLASTNAME_2, :P3_SEMAIL_2, :P3_SPHONE_2);',
'    elsif to_number(:P3_NEW) = 3 then',
'            insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P3_JOB_TITLE_1, :P3_SNAME_1, :P3_SLASTNAME_1, :P3_SEMAIL_1, :P3_SPHONE_1);',
'            insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P3_JOB_TITLE_2,:P3_SNAME_2, :P3_SLASTNAME_2, :P3_SEMAIL_2, :P3_SPHONE_2);',
'                insert into V_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P3_JOB_TITLE_3,:P3_SNAME_3, :P3_SLASTNAME_3, :P3_SEMAIL_3, :P3_SPHONE_3);',
'    end if;',
'    INSERT INTO v_client_surcharge_groups(nclient_id, nsurcharge_id) VALUES(il_company_id,NVL(:P3_SURCHARGE_ID,0));',
'    :P3_FLAG := 0;',
'exception when others then',
'    :P3_FLAG := 1;',
'end;'))
,p_attribute_02=>'P3_NID,P3_SCOMPANYNAME,P3_SWEBSITE,P3_SPHONE,P3_SEMAIL,P3_SCOUNTRY,P3_SCITY,P3_SCOMPANYADDRESS,P3_SSHIPPINGADDRESS,P3_SZIP,P3_SCOMPANYCODE,P3_SPVMCODE,P3_JOB_TITLE_1,P3_SEMAIL_1,P3_SPHONE_1,P3_JOB_TITLE_2,P3_SEMAIL_2,P3_SPHONE_2,P3_JOB_TITLE_3,P3_SNA'
||'ME_3,P3_SLASTNAME_3,P3_SEMAIL_3,P3_SPHONE_3,P3_NEW,P3_NPAYMENTDELAY,P3_NPAYMENTDELAYQNT,P3_SCONTRACTNUMBER,P3_SURCHARGE_ID,P3_SRESPONSIBLE_EMPLOYEE,P3_NCOMMENT,P3_SCOMMENT,P3_COMPANYSHORTNAME'
,p_attribute_03=>'P3_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17811419364578232)
,p_event_id=>wwv_flow_imp.id(13696675262037924)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai atnaujintas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P3_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13696847165037926)
,p_event_id=>wwv_flow_imp.id(13696675262037924)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai sukurtas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P3_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17811249146578231)
,p_event_id=>wwv_flow_imp.id(13696675262037924)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Iveskite pavadinima, el. pa\0161ta, \0161ali ir miesta, patikrinkite ar kliento trumpas pavadinimas unikalus!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P3_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16323742172697811)
,p_event_id=>wwv_flow_imp.id(13696675262037924)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13348146258994568)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P3_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16323899017697812)
,p_event_id=>wwv_flow_imp.id(13696675262037924)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:2:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P3_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17811597069578234)
,p_event_id=>wwv_flow_imp.id(13696675262037924)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Iveskite pavadinima, el. pa\0161ta, \0161ali ir miesta, patikrinkite ar kliento trumpas pavadinimas unikalus!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P3_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13697595294037933)
,p_event_id=>wwv_flow_imp.id(13696675262037924)
,p_event_result=>'FALSE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13348146258994568)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P3_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13696933926037927)
,p_event_id=>wwv_flow_imp.id(13696675262037924)
,p_event_result=>'FALSE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:2:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P3_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15395196489090904)
,p_name=>'Payment Delay 1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_NPAYMENTDELAY'
,p_condition_element=>'P3_NPAYMENTDELAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15395293476090905)
,p_event_id=>wwv_flow_imp.id(15395196489090904)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_NPAYMENTDELAYQNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15395466827090907)
,p_name=>'Payment Delay 0'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_NPAYMENTDELAY'
,p_condition_element=>'P3_NPAYMENTDELAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15395559881090908)
,p_event_id=>wwv_flow_imp.id(15395466827090907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_NPAYMENTDELAYQNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31038670064796613)
,p_name=>'Clear'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(31038518681796612)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31038703249796614)
,p_event_id=>wwv_flow_imp.id(31038670064796613)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_EXISTS,P3_NID,P3_SCOMPANYNAME,P3_SWEBSITE,P3_SPHONE,P3_SEMAIL,P3_SCOUNTRY,P3_SCITY,P3_SCOMPANYADDRESS,P3_SSHIPPINGADDRESS,P3_SZIP,P3_SCOMPANYCODE,P3_SPVMCODE,P3_SCONTRACTNUMBER,P3_SURCHARGE_ID,P3_NPAYMENTDELAY,P3_NPAYMENTDELAYQNT,P3_NEW,P3_JOB_TIT'
||'LE_1,P3_SEMAIL_1,P3_SPHONE_1,P3_JOB_TITLE_2,P3_SEMAIL_2,P3_SPHONE_2,P3_JOB_TITLE_3,P3_SNAME_3,P3_SLASTNAME_3,P3_SEMAIL_3,P3_SPHONE_3,P3_FLAG,P3_SRESPONSIBLE_EMPLOYEE,P3_NCOMMENT,P3_SCOMMENT,P3_SNAME_1,P3_SLASTNAME_1,P3_SNAME_2,P3_SLASTNAME_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45215443219093862)
,p_name=>'Comment 0'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_NCOMMENT'
,p_condition_element=>'P3_NCOMMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45215415837093861)
,p_event_id=>wwv_flow_imp.id(45215443219093862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_SCOMMENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45215231890093860)
,p_name=>'Comment 1'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_NCOMMENT'
,p_condition_element=>'P3_NCOMMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45215224973093859)
,p_event_id=>wwv_flow_imp.id(45215231890093860)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_SCOMMENT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13364400856994579)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13363658325994578)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(13348146258994568)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Klientas'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

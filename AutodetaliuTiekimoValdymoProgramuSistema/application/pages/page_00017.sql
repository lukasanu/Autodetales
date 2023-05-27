prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_name=>unistr('Tiek\0117jas')
,p_alias=>unistr('TIEK\0116JAS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Tiek\0117jas')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>'.delayqnt {text-align: center;}'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'OST'
,p_last_upd_yyyymmddhh24miss=>'20230208173922'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27229392703265593)
,p_plug_name=>unistr('Tiek\0117jas')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9626611630517882)
,p_plug_display_sequence=>10
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
'      ,c.ndopaymentdelayflag as payment_delay_flag',
'      ,c.npayment_delay_in_days as payment_delay',
'FROM   v_companies  c',
'      ,v_countries  cr',
'      ,v_cities     ct',
'WHERE  cr.nid = c.ncountry_id',
'AND    ct.nid = c.ncity_id',
'AND    c.ntype = 1'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27241695972265601)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9629970051517884)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13900397286271043)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27241695972265601)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9044419542156656)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(27241695972265601)
,p_button_name=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161valyti')
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13900755346271043)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(27241695972265601)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE_BTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P17_NID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58610620771060)
,p_name=>'P17_SNAME'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(58738678771061)
,p_name=>'P17_SLASTNAME'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(58823731771062)
,p_name=>'P17_SNAME_2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(58936149771063)
,p_name=>'P17_SLASTNAME_2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13853381470296445)
,p_name=>'P17_NPAYMENTDELAY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>unistr('Mok\0117jimo atid\0117jimas')
,p_source=>'PAYMENT_DELAY_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'margin-top-md'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13853452481296446)
,p_name=>'P17_NPAYMENTDELAYQNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>unistr('Mokejimo atid\0117jimas (dienomis)')
,p_source=>'PAYMENT_DELAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select level d, level r from dual connect by level <=30'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'0'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(13882121099271027)
,p_name=>'P17_NEW'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>'Kontatkai'
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
 p_id=>wwv_flow_imp.id(13882569254271029)
,p_name=>'P17_JOB_TITLE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>'Pareigos'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select sNAME from v_JOB_TITLES order by 1'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13883742505271030)
,p_name=>'P17_SEMAIL_1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>unistr('El. a\0161tas')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
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
 p_id=>wwv_flow_imp.id(13884191830271030)
,p_name=>'P17_SPHONE_1'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13884532872271030)
,p_name=>'P17_JOB_TITLE_2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>'Pareigos'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select sNAME from v_JOB_TITLES order by 1'
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
 p_id=>wwv_flow_imp.id(13885790665271031)
,p_name=>'P17_SEMAIL_2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13886189565271031)
,p_name=>'P17_NID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13886970435271032)
,p_name=>'P17_SPHONE_2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13887370689271032)
,p_name=>'P17_JOB_TITLE_3'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>'Pareigos'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select sNAME from v_JOB_TITLES order by 1'
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
 p_id=>wwv_flow_imp.id(13887781262271032)
,p_name=>'P17_SNAME_3'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13888101181271032)
,p_name=>'P17_SLASTNAME_3'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13888558231271032)
,p_name=>'P17_SEMAIL_3'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13888937114271033)
,p_name=>'P17_SPHONE_3'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13889339673271033)
,p_name=>'P17_SCOMPANYNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>unistr('Tiek\0117jas')
,p_source=>'COMPANY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct * from (select distinct * from (select sCOMPANY_NAME',
'from   v_COMPANIES ',
'where nTYPE = 1',
'union all',
'select sCOMPANY_NAME',
'from v_COMPANY_EXT))',
'order by 1'))
,p_cSize=>32
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
 p_id=>wwv_flow_imp.id(13889772384271033)
,p_name=>'P17_SWEBSITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13890100893271033)
,p_name=>'P17_SPHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13890538455271034)
,p_name=>'P17_SEMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13890962157271034)
,p_name=>'P17_SCOUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>unistr('\0160alis')
,p_source=>'COUNTRY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'Select sname from v_countries order by 1'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_imp.id(13891341371271035)
,p_name=>'P17_SCITY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>'Miestas'
,p_source=>'CITY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with tbl as(',
'select nid from v_countries where sname = :P17_SCOUNTRY',
')',
'select c.sname from v_cities c, tbl t where t.nid = c.ncountry_id',
'order by 1'))
,p_lov_cascade_parent_items=>'P17_SCOUNTRY'
,p_ajax_items_to_submit=>'P17_SCOUNTRY'
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
,p_attribute_10=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13891793753271035)
,p_name=>'P17_SCOMPANYADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>unistr('Tiek\0117jo adresas (be miesto ir \0161alies)')
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
 p_id=>wwv_flow_imp.id(13892179785271035)
,p_name=>'P17_SSHIPPINGADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13892566702271035)
,p_name=>'P17_SZIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
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
 p_id=>wwv_flow_imp.id(13892962279271036)
,p_name=>'P17_SCOMPANYCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>unistr('\012Emon\0117s kodas')
,p_source=>'COMPANY_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct * from (select  sCOMPANY_CODE',
'from   v_COMPANIES ',
'where nTYPE = 1',
'union all',
'select sCOMPANY_CODE',
'from v_COMPANY_EXT)',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(13893326535271036)
,p_name=>'P17_SPVMCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>unistr('PVM mok\0117tojo kodas')
,p_source=>'TAX_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct * from (select sTAX_CODE',
'from   v_COMPANIES ',
'where nTYPE = 1',
'union all',
'select sTAX_CODE',
'from v_COMPANY_EXT)',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(15458466188382376)
,p_name=>'P17_FLAG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15487358763775706)
,p_name=>'P17_SCONTRACTNUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_item_source_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_prompt=>'Sutarties numeris'
,p_source=>'CONTRACT_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_colspan=>6
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
 p_id=>wwv_flow_imp.id(16324886050697822)
,p_name=>'P17_EXISTS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27229392703265593)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19398094157211930)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P17_SCOMPANYNAME'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('\012Eveskite \012Fmon\0117s pavadinim\0105!')
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(13900755346271043)
,p_associated_item=>wwv_flow_imp.id(13889339673271033)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(19397950331211929)
,p_validation_name=>'New_1'
,p_validation_sequence=>20
,p_validation=>'P17_SCOUNTRY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('\012Eveskite \0161al\012F!')
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(13900755346271043)
,p_associated_item=>wwv_flow_imp.id(13890962157271034)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13904133725271050)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13900397286271043)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13904639973271050)
,p_event_id=>wwv_flow_imp.id(13904133725271050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13907450120271052)
,p_name=>'One'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_NEW'
,p_condition_element=>'P17_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13907921541271053)
,p_event_id=>wwv_flow_imp.id(13907450120271052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_JOB_TITLE,P17_SEMAIL_1,P17_SPHONE_1,P17_SNAME,P17_SLASTNAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13908417347271053)
,p_event_id=>wwv_flow_imp.id(13907450120271052)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_JOB_TITLE_2,P17_SEMAIL_2,P17_SPHONE_2,P17_JOB_TITLE_3,P17_SNAME_3,P17_SLASTNAME_3,P17_SEMAIL_3,P17_SPHONE_3,P17_SNAME_2,P17_SLASTNAME_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15396786779090920)
,p_name=>'Zero'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_NEW'
,p_condition_element=>'P17_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15396906122090922)
,p_event_id=>wwv_flow_imp.id(15396786779090920)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_JOB_TITLE,P17_SEMAIL_1,P17_SPHONE_1,P17_JOB_TITLE_2,P17_SEMAIL_2,P17_SPHONE_2,P17_JOB_TITLE_3,P17_SNAME_3,P17_SLASTNAME_3,P17_SEMAIL_3,P17_SPHONE_3,P17_SNAME,P17_SLASTNAME,P17_SNAME_2,P17_SLASTNAME_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13901884997271048)
,p_name=>'Two'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_NEW'
,p_condition_element=>'P17_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13902347715271049)
,p_event_id=>wwv_flow_imp.id(13901884997271048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_JOB_TITLE,P17_SEMAIL_1,P17_SPHONE_1,P17_SNAME,P17_SLASTNAME,P17_JOB_TITLE_2,P17_SEMAIL_2,P17_SPHONE_2,P17_SNAME_2,P17_SLASTNAME_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13902825136271049)
,p_event_id=>wwv_flow_imp.id(13901884997271048)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_JOB_TITLE_3,P17_SNAME_3,P17_SLASTNAME_3,P17_SEMAIL_3,P17_SPHONE_3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13903207468271049)
,p_name=>'Three'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_NEW'
,p_condition_element=>'P17_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13903796009271050)
,p_event_id=>wwv_flow_imp.id(13903207468271049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_JOB_TITLE,P17_SEMAIL_1,P17_SPHONE_1,P17_SNAME,P17_SLASTNAME,P17_JOB_TITLE_3,P17_SNAME_3,P17_SLASTNAME_3,P17_SEMAIL_3,P17_SPHONE_3,P17_JOB_TITLE_2,P17_SEMAIL_2,P17_SPHONE_2,P17_SNAME_2,P17_SLASTNAME_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13905087588271050)
,p_name=>'New'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13900755346271043)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$x(''P17_EXISTS'').value == 1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13906504868271052)
,p_event_id=>wwv_flow_imp.id(13905087588271050)
,p_event_result=>'FALSE'
,p_action_sequence=>10
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
'    COUNTRY_CITY_EXISTS_VALIDATION(:P17_SCOUNTRY, :P17_SCITY, n_country_id, n_city_id, n_error, s_error);',
'    :P17_FLAG := 0;',
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
'                         ,ntype)',
'    VALUES      (:P17_SCOMPANYNAME',
'                ,:P17_SEMAIL',
'                ,:P17_SPHONE',
'                ,:P17_SWEBSITE',
'                ,n_country_id',
'                ,n_city_id',
'                ,:P17_SCOMPANYADDRESS',
'                ,:P17_SSHIPPINGADDRESS',
'                ,:P17_SZIP',
'                ,:P17_SCOMPANYCODE',
'                ,:P17_SPVMCODE',
'                ,:P17_NPAYMENTDELAY',
'                ,:P17_NPAYMENTDELAYQNT',
'                ,:P17_SCONTRACTNUMBER',
'                ,1);',
'    SELECT nid',
'    INTO il_company_id',
'    FROM v_companies',
'    WHERE scompany_name = :P17_SCOMPANYNAME;',
'',
'    if to_number(:P17_NEW) = 1 then',
'        insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P17_JOB_TITLE, :P17_SNAME, :P17_SLASTNAME, :P17_SEMAIL_1, :P17_SPHONE_1);',
'    elsif to_number(:P17_NEW) = 2 then',
'            insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P17_JOB_TITLE, :P17_SNAME, :P17_SLASTNAME, :P17_SEMAIL_1, :P17_SPHONE_1);',
'            insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P17_JOB_TITLE_2,:P17_SNAME_2, :P17_SLASTNAME_2, :P17_SEMAIL_2, :P17_SPHONE_2);',
'    elsif to_number(:P17_NEW) = 3 then',
'            insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P17_JOB_TITLE, :P17_SNAME, :P17_SLASTNAME, :P17_SEMAIL_1, :P17_SPHONE_1);',
'            insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P17_JOB_TITLE_2,:P17_SNAME_2, :P17_SLASTNAME_2, :P17_SEMAIL_2, :P17_SPHONE_2);',
'                insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P17_JOB_TITLE_3,:P17_SNAME_3, :P17_SLASTNAME_3, :P17_SEMAIL_3, :P17_SPHONE_3);',
'    end if;',
'    :P17_FLAG := 0;',
'--exception when others then',
'   -- :P17_FLAG := 1;',
'end;'))
,p_attribute_02=>'P17_NID,P17_SCOMPANYNAME,P17_SWEBSITE,P17_SPHONE,P17_SEMAIL,P17_SCOUNTRY,P17_SCITY,P17_SCOMPANYADDRESS,P17_SSHIPPINGADDRESS,P17_SZIP,P17_SCOMPANYCODE,P17_SPVMCODE,P17_JOB_TITLE,P17_SNAME,P17_SLASTNAME,P17_SEMAIL_1,P17_SPHONE_1,P17_JOB_TITLE_2,P17_SNA'
||'ME_2,P17_SLASTNAME_2,P17_SEMAIL_2,P17_SPHONE_2,P17_JOB_TITLE_3,P17_SNAME_3,P17_SLASTNAME_3,P17_SEMAIL_3,P17_SPHONE_3,P17_NEW,P17_NPAYMENTDELAY,P17_NPAYMENTDELAYQNT,P17_SCONTRACTNUMBER'
,p_attribute_03=>'P17_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_stop_execution_on_error=>'N'
,p_wait_for_result=>'Y'
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
 p_id=>wwv_flow_imp.id(16326603433697840)
,p_event_id=>wwv_flow_imp.id(13905087588271050)
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
'    COUNTRY_CITY_EXISTS_VALIDATION(:P17_SCOUNTRY, :P17_SCITY, n_country_id, n_city_id, n_error, s_error);',
'    :P17_FLAG := 0;',
'    UPDATE v_companies',
'    SET scompany_name = :P17_SCOMPANYNAME',
'        ,semail = :P17_SEMAIL',
'        ,sphone = :P17_SPHONE',
'        ,swebsite = :P17_SWEBSITE',
'        ,ncountry_id = n_country_id',
'        ,ncity_id = n_city_id',
'        ,scompany_address = :P17_SCOMPANYADDRESS',
'        ,sshipping_address = :P17_SSHIPPINGADDRESS',
'        ,szip = :P17_SZIP',
'        ,scompany_code = :P17_SCOMPANYCODE',
'        ,stax_code = :P17_SPVMCODE',
'        ,ndopaymentdelayflag = :P17_NPAYMENTDELAY',
'        ,npayment_delay_in_days = :P17_NPAYMENTDELAYQNT',
'        ,scontract_number = :P17_SCONTRACTNUMBER',
'    WHERE nid = :P17_NID;    ',
'    :P17_FLAG := 0;',
'--exception when others then',
'   -- :P17_FLAG := 1;',
'END;'))
,p_attribute_02=>'P17_NID,P17_SCOMPANYNAME,P17_SWEBSITE,P17_SEMAIL,P17_SPHONE,P17_SCOUNTRY,P17_SCITY,P17_SCOMPANYADDRESS,P17_SSHIPPINGADDRESS,P17_SZIP,P17_SCOMPANYCODE,P17_SPVMCODE,P17_NPAYMENTDELAY,P17_NPAYMENTDELAYQNT,P17_SCONTRACTNUMBER'
,p_attribute_03=>'P17_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15458271613382374)
,p_event_id=>wwv_flow_imp.id(13905087588271050)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai sukurtas!')
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P17_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16326756195697841)
,p_event_id=>wwv_flow_imp.id(13905087588271050)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai atnaujintas!')
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P17_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15458156154382373)
,p_event_id=>wwv_flow_imp.id(13905087588271050)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Eveskite pavadinim\0105, el. pa\0161t\0105, \0161al\012F ir miest\0105!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P17_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15458037787382372)
,p_event_id=>wwv_flow_imp.id(13905087588271050)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27229392703265593)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P17_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15458417270382375)
,p_event_id=>wwv_flow_imp.id(13905087588271050)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Eveskite pavadinim\0105, el. pa\0161t\0105, \0161al\012F ir miest\0105!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P17_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15457963379382371)
,p_event_id=>wwv_flow_imp.id(13905087588271050)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:16:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P17_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16326811239697842)
,p_event_id=>wwv_flow_imp.id(13905087588271050)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27229392703265593)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P17_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16326992784697843)
,p_event_id=>wwv_flow_imp.id(13905087588271050)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:16:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P17_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13853582367296447)
,p_name=>'New_1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_NPAYMENTDELAY'
,p_condition_element=>'P17_NPAYMENTDELAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13853678476296448)
,p_event_id=>wwv_flow_imp.id(13853582367296447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_NPAYMENTDELAYQNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13853748305296449)
,p_event_id=>wwv_flow_imp.id(13853582367296447)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_NPAYMENTDELAYQNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13853860655296450)
,p_name=>'New_2'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_NPAYMENTDELAY'
,p_condition_element=>'P17_NPAYMENTDELAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15486804741775701)
,p_event_id=>wwv_flow_imp.id(13853860655296450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_NPAYMENTDELAYQNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16324526855697819)
,p_name=>'New_3'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_SCOMPANYNAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16324641267697820)
,p_event_id=>wwv_flow_imp.id(16324526855697819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'n_ex_c number;',
'n_ex_cs number;',
'n_ex number;',
'begin',
'select decode(count(*), 0, null, 1) into n_ex_c',
'from (select sCOMPANY_NAME',
'      from v_COMPANIES',
'      where sCOMPANY_NAME = to_char(:P17_SCOMPANYNAME) ',
'      and nTYPE = 1); ',
'',
'select decode(count(*), 0, null, 2) into n_ex_cs',
'from (select sCOMPANY_NAME',
'      from v_COMPANY_EXT',
'      where sCOMPANY_NAME = to_char(:P17_SCOMPANYNAME));    ',
'',
'apex_util.set_session_state(''P17_EXISTS'', COALESCE(n_ex_c, n_ex_cs));',
'end;'))
,p_attribute_02=>'P17_SCOMPANYNAME'
,p_attribute_03=>'P17_EXISTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16324915406697823)
,p_event_id=>wwv_flow_imp.id(16324526855697819)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if to_char(:P17_EXISTS) = 1 then',
' select nID,',
'        sWEBSITE, ',
'        sPHONE, ',
'        sEMAIL, ',
'        (select c.sname from v_countries c where c.nid = nCOUNTRY_ID) country_id, ',
'        (select ci.sname from v_cities ci where ci.nid = nCITY_ID) CITY_ID, ',
'        sCOMPANY_ADDRESS, ',
'        sSHIPPING_ADDRESS, ',
'        sZIP, ',
'        sCOMPANY_CODE, ',
'        sTAX_CODE, ',
'        sCONTRACT_NUMBER, ',
'        nDOPAYMENTDELAYFLAG, ',
'        nPAYMENT_DELAY_IN_DAYS',
'        into :P17_NID, ',
'        :P17_SWEBSITE, ',
'        :P17_SPHONE, ',
'        :P17_SEMAIL, ',
'        :P17_SCOUNTRY, ',
'        :P17_SCITY, ',
'        :P17_SCOMPANYADDRESS, ',
'        :P17_SSHIPPINGADDRESS, ',
'        :P17_SZIP, ',
'        :P17_SCOMPANYCODE, ',
'        :P17_SPVMCODE, ',
'        :P17_SCONTRACTNUMBER, ',
'        :P17_NPAYMENTDELAY, ',
'        :P17_NPAYMENTDELAYQNT ',
'        from v_COMPANIES where nTYPE=1 and sCOMPANY_NAME = :P17_SCOMPANYNAME',
'        fetch first row only;  ',
'      elsif to_char(:P17_EXISTS) = 2 then',
'        select nID,',
'        sWEBSITE, ',
'        sPHONE, ',
'        sEMAIL, ',
'        (select c.sname from v_countries c where c.nid = nCOUNTRY_ID) country_id, ',
'        (select ci.sname from v_cities ci where ci.nid = nCITY_ID) CITY_ID, ',
'        sCOMPANY_ADDRESS, ',
'        sSHIPPING_ADDRESS, ',
'        sZIP, ',
'        sCOMPANY_CODE, ',
'        sTAX_CODE',
'        into :P17_NID, ',
'        :P17_SWEBSITE, ',
'        :P17_SPHONE, ',
'        :P17_SEMAIL, ',
'        :P17_SCOUNTRY, ',
'        :P17_SCITY, ',
'        :P17_SCOMPANYADDRESS, ',
'        :P17_SSHIPPINGADDRESS, ',
'        :P17_SZIP, ',
'        :P17_SCOMPANYCODE, ',
'        :P17_SPVMCODE from v_COMPANY_EXT where sCOMPANY_NAME = :P17_SCOMPANYNAME',
'        fetch first row only;',
'    else ',
'        select null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null',
'        into :P17_NID, ',
'        :P17_SWEBSITE, ',
'        :P17_SPHONE, ',
'        :P17_SEMAIL, ',
'        :P17_SCOUNTRY, ',
'        :P17_SCITY, ',
'        :P17_SCOMPANYADDRESS, ',
'        :P17_SSHIPPINGADDRESS, ',
'        :P17_SZIP, ',
'        :P17_SCOMPANYCODE, ',
'        :P17_SPVMCODE, ',
'        :P17_SCONTRACTNUMBER, ',
'        :P17_NPAYMENTDELAY, ',
'        :P17_NPAYMENTDELAYQNT from dual;',
'    end if;',
'end;'))
,p_attribute_02=>'P17_EXISTS,P17_SCOMPANYNAME'
,p_attribute_03=>'P17_SWEBSITE,P17_SPHONE,P17_SEMAIL,P17_SCOUNTRY,P17_SCITY,P17_SCOMPANYADDRESS,P17_SSHIPPINGADDRESS,P17_SZIP,P17_SCOMPANYCODE,P17_SPVMCODE,P17_SCONTRACTNUMBER,P17_NPAYMENTDELAY,P17_NPAYMENTDELAYQNT,P17_NID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16325061735697824)
,p_event_id=>wwv_flow_imp.id(16324526855697819)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(13900755346271043)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($x(''P17_EXISTS'').value == 1) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Atnaujinti";',
'  $x_Hide("P17_NEW");',
'} else if ($x(''P17_EXISTS'').value == 2) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'  $x_Show("P17_NEW");',
'} else {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'   $x_Show("P17_NEW");',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16325174760697825)
,p_event_id=>wwv_flow_imp.id(16324526855697819)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_SWEBSITE,P17_SPHONE,P17_SEMAIL,P17_SCOUNTRY,P17_SCITY,P17_SCOMPANYADDRESS,P17_SSHIPPINGADDRESS,P17_SZIP,P17_SCOMPANYCODE,P17_SPVMCODE,P17_SCOMPANYNAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16325229174697826)
,p_event_id=>wwv_flow_imp.id(16324526855697819)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(13900755346271043)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16325477022697828)
,p_name=>'New_4'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_SCOMPANYCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16325592648697829)
,p_event_id=>wwv_flow_imp.id(16325477022697828)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'n_ex_c number;',
'n_ex_cs number;',
'n_ex number;',
'begin',
'select decode(count(*), 0, null, 1) into n_ex_c',
'from (select sCOMPANY_CODE',
'      from v_COMPANIES',
'      where sCOMPANY_CODE = to_char(:P17_SCOMPANYCODE)',
'      and nTYPE = 1); ',
'',
'select decode(count(*), 0, null, 2) into n_ex_cs',
'from (select sCOMPANY_CODE',
'      from v_COMPANY_EXT',
'      where sCOMPANY_CODE = to_char(:P17_SCOMPANYCODE));    ',
'',
'apex_util.set_session_state(''P17_EXISTS'',to_number(COALESCE(n_ex_c, n_ex_cs)));',
'',
'end;'))
,p_attribute_02=>'P17_SCOMPANYCODE'
,p_attribute_03=>'P17_EXISTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16325660795697830)
,p_event_id=>wwv_flow_imp.id(16325477022697828)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if to_char(:P17_EXISTS) = 1 then',
'        select nID,',
'        sCOMPANY_NAME,',
'        sWEBSITE, ',
'        sPHONE, ',
'        sEMAIL, ',
'        (select c.sname from v_countries c where c.nid = nCOUNTRY_ID) country_id, ',
'        (select ci.sname from v_cities ci where ci.nid = nCITY_ID) CITY_ID, ',
'        sCOMPANY_ADDRESS, ',
'        sSHIPPING_ADDRESS, ',
'        sZIP, ',
'        sTAX_CODE, ',
'        sCONTRACT_NUMBER, ',
'        nDOPAYMENTDELAYFLAG, ',
'        nPAYMENT_DELAY_IN_DAYS',
'        into :P17_NID,',
'        :P17_SCOMPANYNAME,',
'        :P17_SWEBSITE, ',
'        :P17_SPHONE, ',
'        :P17_SEMAIL, ',
'        :P17_SCOUNTRY, ',
'        :P17_SCITY, ',
'        :P17_SCOMPANYADDRESS, ',
'        :P17_SSHIPPINGADDRESS, ',
'        :P17_SZIP, ',
'        :P17_SPVMCODE, ',
'        :P17_SCONTRACTNUMBER, ',
'        :P17_NPAYMENTDELAY, ',
'        :P17_NPAYMENTDELAYQNT ',
'        from v_COMPANIES where nTYPE=1 and sCOMPANY_CODE = :P17_SCOMPANYCODE',
'        fetch first row only;',
'    elsif to_char(:P17_EXISTS) = 2 then',
'        select nID,',
'        sCOMPANY_NAME,',
'        sWEBSITE, ',
'        sPHONE, ',
'        sEMAIL, ',
'         (select c.sname from v_countries c where c.nid = nCOUNTRY_ID) country_id, ',
'        (select ci.sname from v_cities ci where ci.nid = nCITY_ID) CITY_ID, ',
'        sCOMPANY_ADDRESS, ',
'        sSHIPPING_ADDRESS, ',
'        sZIP, ',
'        sTAX_CODE',
'        into :P17_NID,',
'        :P17_SCOMPANYNAME,',
'        :P17_SWEBSITE, ',
'        :P17_SPHONE, ',
'        :P17_SEMAIL, ',
'        :P17_SCOUNTRY, ',
'        :P17_SCITY, ',
'        :P17_SCOMPANYADDRESS, ',
'        :P17_SSHIPPINGADDRESS, ',
'        :P17_SZIP, ',
'        :P17_SPVMCODE from v_COMPANY_EXT where sCOMPANY_CODE = :P17_SCOMPANYCODE',
'        fetch first row only;',
'    else ',
'        select null,',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null',
'        into :P17_NID,',
'        :P17_SCOMPANYNAME,',
'        :P17_SWEBSITE, ',
'        :P17_SPHONE, ',
'        :P17_SEMAIL, ',
'        :P17_SCOUNTRY, ',
'        :P17_SCITY, ',
'        :P17_SCOMPANYADDRESS, ',
'        :P17_SSHIPPINGADDRESS, ',
'        :P17_SZIP, ',
'        :P17_SPVMCODE, ',
'        :P17_SCONTRACTNUMBER, ',
'        :P17_NPAYMENTDELAY, ',
'        :P17_NPAYMENTDELAYQNT from dual;',
'    end if;',
'end;'))
,p_attribute_02=>'P17_EXISTS,P17_SCOMPANYCODE'
,p_attribute_03=>'P17_SWEBSITE,P17_SPHONE,P17_SEMAIL,P17_SCOUNTRY,P17_SCITY,P17_SCOMPANYADDRESS,P17_SSHIPPINGADDRESS,P17_SZIP,P17_SPVMCODE,P17_SCONTRACTNUMBER,P17_NPAYMENTDELAY,P17_NPAYMENTDELAYQNT,P17_SCOMPANYNAME,P17_NID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16325712728697831)
,p_event_id=>wwv_flow_imp.id(16325477022697828)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(13900755346271043)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($x(''P17_EXISTS'').value == 1) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Atnaujinti";',
'} else if ($x(''P17_EXISTS'').value == 2) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'} else {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59702223771071)
,p_event_id=>wwv_flow_imp.id(16325477022697828)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_SCITY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select nid from v_cities where nid = (select ncity_id from v_companies where nid = :P17_NID)'
,p_attribute_07=>'P17_NID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16325865006697832)
,p_event_id=>wwv_flow_imp.id(16325477022697828)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_SWEBSITE,P17_SPHONE,P17_SEMAIL,P17_SCOUNTRY,P17_SCITY,P17_SCOMPANYADDRESS,P17_SSHIPPINGADDRESS,P17_SZIP,P17_SCOMPANYNAME,P17_SPVMCODE,P17_SCOMPANYCODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16325997879697833)
,p_event_id=>wwv_flow_imp.id(16325477022697828)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(13900755346271043)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16326049988697834)
,p_name=>'New_5'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_SPVMCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16326154967697835)
,p_event_id=>wwv_flow_imp.id(16326049988697834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'n_ex_c number;',
'n_ex_cs number;',
'n_ex number;',
'begin',
'select decode(count(*), 0, null, 1) into n_ex_c',
'from (select sTAX_CODE',
'      from v_COMPANIES',
'      where sTAX_CODE = to_char(:P17_SPVMCODE)',
'      and nTYPE = 1); ',
'',
'select decode(count(*), 0, null, 2) into n_ex_cs',
'from (select sTAX_CODE',
'      from v_COMPANY_EXT',
'      where sTAX_CODE = to_char(:P17_SPVMCODE));    ',
'',
'apex_util.set_session_state(''P17_EXISTS'', COALESCE(n_ex_c, n_ex_cs));',
'',
'end;'))
,p_attribute_02=>'P17_SPVMCODE'
,p_attribute_03=>'P17_EXISTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16326205463697836)
,p_event_id=>wwv_flow_imp.id(16326049988697834)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if to_char(:P17_EXISTS) = 1 then',
'        select nID,',
'        sCOMPANY_NAME,',
'        sWEBSITE, ',
'        sPHONE, ',
'        sEMAIL, ',
'         (select c.sname from v_countries c where c.nid = nCOUNTRY_ID) country_id, ',
'        (select ci.sname from v_cities ci where ci.nid = nCITY_ID) CITY_ID,  ',
'        sCOMPANY_ADDRESS, ',
'        sSHIPPING_ADDRESS, ',
'        sZIP, ',
'        sCOMPANY_CODE, ',
'        sCONTRACT_NUMBER, ',
'        nDOPAYMENTDELAYflag, ',
'        nPAYMENT_DELAY_IN_DAYS',
'        into :P17_NID,',
'        :P17_SCOMPANYNAME,',
'        :P17_SWEBSITE, ',
'        :P17_SPHONE, ',
'        :P17_SEMAIL, ',
'        :P17_SCOUNTRY, ',
'        :P17_SCITY, ',
'        :P17_SCOMPANYADDRESS, ',
'        :P17_SSHIPPINGADDRESS, ',
'        :P17_SZIP, ',
'        :P17_SCOMPANYCODE, ',
'        :P17_SCONTRACTNUMBER, ',
'        :P17_NPAYMENTDELAY, ',
'        :P17_NPAYMENTDELAYQNT ',
'        from v_COMPANIES ',
'        where nTYPE=1 ',
'        and sTAX_CODE = :P17_SPVMCODE',
'        fetch first row only;',
'    elsif to_char(:P17_EXISTS) = 2 then',
'        select nID,',
'        sCOMPANY_NAME,',
'        sWEBSITE, ',
'        sPHONE, ',
'        sEMAIL, ',
'                (select c.sname from v_countries c where c.nid = nCOUNTRY_ID) country_id, ',
'        (select ci.sname from v_cities ci where ci.nid = nCITY_ID) CITY_ID, ',
'        sCOMPANY_ADDRESS, ',
'        sSHIPPING_ADDRESS, ',
'        sZIP, ',
'        sCOMPANY_CODE',
'        into :P17_NID,',
'        :P17_SCOMPANYNAME,',
'        :P17_SWEBSITE, ',
'        :P17_SPHONE, ',
'        :P17_SEMAIL, ',
'        :P17_SCOUNTRY, ',
'        :P17_SCITY, ',
'        :P17_SCOMPANYADDRESS, ',
'        :P17_SSHIPPINGADDRESS, ',
'        :P17_SZIP, ',
'        :P17_SCOMPANYCODE ',
'        from v_COMPANY_EXT ',
'        where sTAX_CODE = :P17_SPVMCODE',
'        fetch first row only;',
'    else ',
'        select null,',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null, ',
'        null',
'        into :P17_NID,',
'        :P17_SCOMPANYNAME,',
'        :P17_SWEBSITE, ',
'        :P17_SPHONE, ',
'        :P17_SEMAIL, ',
'        :P17_SCOUNTRY, ',
'        :P17_SCITY, ',
'        :P17_SCOMPANYADDRESS, ',
'        :P17_SSHIPPINGADDRESS, ',
'        :P17_SZIP, ',
'        :P17_SCOMPANYCODE, ',
'        :P17_SCONTRACTNUMBER, ',
'        :P17_NPAYMENTDELAY, ',
'        :P17_NPAYMENTDELAYQNT from dual;',
'    end if;',
'end;'))
,p_attribute_02=>'P17_EXISTS,P17_SPVMCODE'
,p_attribute_03=>'P17_SSHIPPINGADDRESS,P17_SZIP,P17_SWEBSITE,P17_SPHONE,P17_SEMAIL,P17_SCOUNTRY,P17_SCITY,P17_SCOMPANYADDRESS,P17_SCOMPANYCODE,P17_SCONTRACTNUMBER,P17_NPAYMENTDELAY,P17_NPAYMENTDELAYQNT,P17_SCOMPANYNAME,P17_NID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16326317560697837)
,p_event_id=>wwv_flow_imp.id(16326049988697834)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(13900755346271043)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($x(''P17_EXISTS'').value == 1) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Atnaujinti";',
'} else if ($x(''P17_EXISTS'').value == 2) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'} else {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(59843941771072)
,p_event_id=>wwv_flow_imp.id(16326049988697834)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_SCITY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select nid from v_cities where nid = (select ncity_id from v_companies where nid = :P17_NID)'
,p_attribute_07=>'P17_NID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16326490041697838)
,p_event_id=>wwv_flow_imp.id(16326049988697834)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_SWEBSITE,P17_SPHONE,P17_SEMAIL,P17_SCOUNTRY,P17_SCITY,P17_SCOMPANYADDRESS,P17_SSHIPPINGADDRESS,P17_SZIP,P17_SCOMPANYNAME,P17_SCOMPANYCODE,P17_SPVMCODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16326555288697839)
,p_event_id=>wwv_flow_imp.id(16326049988697834)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(13900755346271043)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9044536869156657)
,p_name=>'New_6'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(9044419542156656)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9044606714156658)
,p_event_id=>wwv_flow_imp.id(9044536869156657)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_EXISTS,P17_NID,P17_SCOMPANYNAME,P17_SWEBSITE,P17_SPHONE,P17_SEMAIL,P17_SCOUNTRY,P17_SCITY,P17_SCOMPANYADDRESS,P17_SSHIPPINGADDRESS,P17_SZIP,P17_SCOMPANYCODE,P17_SPVMCODE,P17_SCONTRACTNUMBER,P17_SURCHARGE_ID,P17_NPAYMENTDELAY,P17_NPAYMENTDELAYQNT,'
||'P17_NEW,P17_JOB_TITLE,P17_SNAME,P17_SLASTNAME,P17_SEMAIL_1,P17_SPHONE_1,P17_JOB_TITLE_2,P17_SNAME_2,P17_SLASTNAME_2,P17_SEMAIL_2,P17_SPHONE_2,P17_JOB_TITLE_3,P17_SNAME_3,P17_SLATSNAME_3,P17_SEMAIL_3,P17_SPHONE_3'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13901499412271048)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13899260265271042)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(27229392703265593)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Klientas'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00058
begin
--   Manifest
--     PAGE: 00058
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
 p_id=>58
,p_name=>unistr('Kliento k\016Brimas i\0161 u\017Eklaus\0173 puslapio')
,p_alias=>unistr('KLIENTO-K\016ARIMAS-I\0160-U\017DKLAUS\0172-PUSLAPIO')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Kliento k\016Brimas i\0161 u\017Eklaus\0173 puslapio')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230216173351'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17137492512748671)
,p_plug_name=>'Klientas'
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
 p_id=>wwv_flow_imp.id(17149795781748679)
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
 p_id=>wwv_flow_imp.id(71138147324490739)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17149795781748679)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71137686614490739)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17149795781748679)
,p_button_name=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161valyti')
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71137289248490738)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(17149795781748679)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE_BTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P58_NID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71145278063490745)
,p_name=>'P58_SPHONE_3'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71145765125490745)
,p_name=>'P58_SEMAIL_3'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71146152314490746)
,p_name=>'P58_SLASTNAME_3'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71146537686490746)
,p_name=>'P58_SNAME_3'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71146922485490746)
,p_name=>'P58_JOB_TITLE_3'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71147297601490746)
,p_name=>'P58_SPHONE_2'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71147722071490746)
,p_name=>'P58_SEMAIL_2'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71148107510490747)
,p_name=>'P58_SLASTNAME_2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71148566878490747)
,p_name=>'P58_SNAME_2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71148929448490747)
,p_name=>'P58_JOB_TITLE_2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71149362300490747)
,p_name=>'P58_SPHONE_1'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71149737298490747)
,p_name=>'P58_SEMAIL_1'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71150091796490748)
,p_name=>'P58_SLASTNAME_1'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71150493733490748)
,p_name=>'P58_SNAME_1'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71150968525490748)
,p_name=>'P58_JOB_TITLE_1'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71151348847490748)
,p_name=>'P58_NEW'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71151678667490748)
,p_name=>'P58_SCOMMENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71152123852490749)
,p_name=>'P58_NCOMMENT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71152476658490749)
,p_name=>'P58_NPAYMENTDELAYQNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71152929547490749)
,p_name=>'P58_NPAYMENTDELAY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71153306339490749)
,p_name=>'P58_SRESPONSIBLE_EMPLOYEE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71153754591490749)
,p_name=>'P58_SURCHARGE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71154120273490750)
,p_name=>'P58_SCONTRACTNUMBER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71154489828490750)
,p_name=>'P58_SPVMCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71154942608490750)
,p_name=>'P58_SCOMPANYCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71155348465490750)
,p_name=>'P58_SZIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71155701771490750)
,p_name=>'P58_SSHIPPINGADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71156137311490751)
,p_name=>'P58_SCOMPANYADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71156504450490751)
,p_name=>'P58_SCITY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
'         WHERE  sname = :P58_SCOUNTRY)',
'SELECT c.sname',
'FROM   v_cities  c',
'      ,tbl     t',
'WHERE  t.nid = c.ncountry_id'))
,p_lov_cascade_parent_items=>'P58_SCOUNTRY'
,p_ajax_items_to_submit=>'P58_SCOUNTRY'
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
 p_id=>wwv_flow_imp.id(71156967429490752)
,p_name=>'P58_SCOUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71157297265490752)
,p_name=>'P58_SEMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71157751974490752)
,p_name=>'P58_SPHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71158081970490752)
,p_name=>'P58_SWEBSITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71158495391490753)
,p_name=>'P58_SCOMPANYNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71158927132490753)
,p_name=>'P58_NID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_item_source_plug_id=>wwv_flow_imp.id(17137492512748671)
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
 p_id=>wwv_flow_imp.id(71159281767490753)
,p_name=>'P58_EXISTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71159726924490756)
,p_name=>'P58_FLAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17137492512748671)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(71139122248490741)
,p_tabular_form_region_id=>wwv_flow_imp.id(17137492512748671)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>':P58_SCOUNTRY is null'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Iveskite \0161al\012F!')
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(13363236816994578)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71135959219490726)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71138147324490739)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71135445162490725)
,p_event_id=>wwv_flow_imp.id(71135959219490726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71134981940490725)
,p_name=>'One Contact'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_NEW'
,p_condition_element=>'P58_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71134550027490724)
,p_event_id=>wwv_flow_imp.id(71134981940490725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_JOB_TITLE_1,P58_SEMAIL_1,P58_SPHONE_1,P58_SNAME_1,P58_SLASTNAME_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71134067337490724)
,p_event_id=>wwv_flow_imp.id(71134981940490725)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_JOB_TITLE_2,P58_SEMAIL_2,P58_SPHONE_2,P58_JOB_TITLE_3,P58_SNAME_3,P58_SLASTNAME_3,P58_SEMAIL_3,P58_SPHONE_3,P58_SLASTNAME_2,P58_SNAME_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71133585553490724)
,p_name=>'Zero Contacts'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_NEW'
,p_condition_element=>'P58_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71133153234490724)
,p_event_id=>wwv_flow_imp.id(71133585553490724)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_JOB_TITLE_1,P58_SEMAIL_1,P58_SPHONE_1,P58_JOB_TITLE_2,P58_SEMAIL_2,P58_SPHONE_2,P58_JOB_TITLE_3,P58_SNAME_3,P58_SLASTNAME_3,P58_SEMAIL_3,P58_SPHONE_3,P58_SLASTNAME_2,P58_SNAME_2,P58_SLASTNAME_1,P58_SNAME_1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71132710405490723)
,p_name=>'Two Contacts'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_NEW'
,p_condition_element=>'P58_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71132223517490723)
,p_event_id=>wwv_flow_imp.id(71132710405490723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_JOB_TITLE_1,P58_SEMAIL_1,P58_SPHONE_1,P58_JOB_TITLE_2,P58_SEMAIL_2,P58_SPHONE_2,P58_SNAME_1,P58_SLASTNAME_1,P58_SNAME_2,P58_SLASTNAME_2,P58_SPHONE_3,P58_SEMAIL_3,P58_SLASTNAME_3,P58_SNAME_3,P58_JOB_TITLE_3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71131681547490723)
,p_event_id=>wwv_flow_imp.id(71132710405490723)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_JOB_TITLE_3,P58_SNAME_3,P58_SLASTNAME_3,P58_SEMAIL_3,P58_SPHONE_3'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71131299576490723)
,p_name=>'Three Contacts'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_NEW'
,p_condition_element=>'P58_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71130780386490723)
,p_event_id=>wwv_flow_imp.id(71131299576490723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_JOB_TITLE_1,P58_SEMAIL_1,P58_SPHONE_1,P58_JOB_TITLE_2,P58_SEMAIL_2,P58_SPHONE_2,P58_JOB_TITLE_3,P58_SNAME_3,P58_SLASTNAME_3,P58_SEMAIL_3,P58_SPHONE_3,P58_SLASTNAME_2,P58_SNAME_2,P58_SLASTNAME_1,P58_SNAME_1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71130378048490723)
,p_name=>'Update/Insert'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71137289248490738)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$x(''P58_EXISTS'').value == 1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71129970051490722)
,p_event_id=>wwv_flow_imp.id(71130378048490723)
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
'    COUNTRY_CITY_EXISTS_VALIDATION(:P58_SCOUNTRY, :P58_SCITY, n_country_id, n_city_id, n_error, s_error);',
'',
'    :P58_FLAG := 0;',
'    UPDATE v_companies',
'    SET scompany_name = :P58_SCOMPANYNAME',
'        ,semail = :P58_SEMAIL',
'        ,sphone = :P58_SPHONE',
'        ,swebsite = :P58_SWEBSITE',
'        ,ncountry_id = n_country_id',
'        ,ncity_id = n_city_id',
'        ,scompany_address = :P58_SCOMPANYADDRESS',
'        ,sshipping_address = :P58_SSHIPPINGADDRESS',
'        ,szip = :P58_SZIP',
'        ,scompany_code = :P58_SCOMPANYCODE',
'        ,stax_code = :P58_SPVMCODE',
'        ,ndopaymentdelayflag = :P58_NPAYMENTDELAY',
'        ,npayment_delay_in_days = :P58_NPAYMENTDELAYQNT',
'        ,scontract_number = :P58_SCONTRACTNUMBER',
'        ,sresponsibleemployee = :P58_SRESPONSIBLE_EMPLOYEE',
'        ,ncomment = :P58_NCOMMENT',
'        ,scomment = :P58_SCOMMENT',
'    WHERE nid = :P58_NID;    ',
'    :P58_FLAG := 0;',
'--exception when others then',
'  --  :P58_FLAG := 1;',
'END;'))
,p_attribute_02=>'P58_NID,P58_SCOMPANYNAME,P58_SWEBSITE,P58_SEMAIL,P58_SPHONE,P58_SCOUNTRY,P58_SCITY,P58_SCOMPANYADDRESS,P58_SSHIPPINGADDRESS,P58_SZIP,P58_SCOMPANYCODE,P58_SPVMCODE,P58_NPAYMENTDELAY,P58_NPAYMENTDELAYQNT,P58_SCONTRACTNUMBER,P58_SURCHARGE_ID,P58_SRESPON'
||'SIBLE_EMPLOYEE,P58_NCOMMENT,P58_SCOMMENT'
,p_attribute_03=>'P58_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71128925943490721)
,p_event_id=>wwv_flow_imp.id(71130378048490723)
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
'    COUNTRY_CITY_EXISTS_VALIDATION(:P58_SCOUNTRY, :P58_SCITY, n_country_id, n_city_id, n_error, s_error);',
'    :P58_FLAG := 0;',
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
'                         ,ntype)',
'    VALUES      (:P58_SCOMPANYNAME',
'                ,:P58_SEMAIL',
'                ,:P58_SPHONE',
'                ,:P58_SWEBSITE',
'                ,n_country_id',
'                ,n_city_id',
'                ,:P58_SCOMPANYADDRESS',
'                ,:P58_SSHIPPINGADDRESS',
'                ,:P58_SZIP',
'                ,:P58_SCOMPANYCODE',
'                ,:P58_SPVMCODE',
'                ,:P58_NPAYMENTDELAY',
'                ,:P58_NPAYMENTDELAYQNT',
'                ,:P58_SCONTRACTNUMBER',
'                ,:P58_SRESPONSIBLE_EMPLOYEE',
'                ,:P58_NCOMMENT',
'                ,:P58_SCOMMENT',
'                ,0);',
'    SELECT nid',
'    INTO il_company_id',
'    FROM v_companies',
'    WHERE scompany_name = :P58_SCOMPANYNAME;',
'',
'    if to_number(:P58_NEW) = 1 then',
'        insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P58_JOB_TITLE_1, :P58_SNAME_1, :P58_SLASTNAME_1, :P58_SEMAIL_1, :P58_SPHONE_1);',
'    elsif to_number(:P58_NEW) = 2 then',
'            insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P58_JOB_TITLE_1, :P58_SNAME_1, :P58_SLASTNAME_1, :P58_SEMAIL_1, :P58_SPHONE_1);',
'            insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P58_JOB_TITLE_2,:P58_SNAME_2, :P58_SLASTNAME_2, :P58_SEMAIL_2, :P58_SPHONE_2);',
'    elsif to_number(:P58_NEW) = 3 then',
'            insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P58_JOB_TITLE_1, :P58_SNAME_1, :P58_SLASTNAME_1, :P58_SEMAIL_1, :P58_SPHONE_1);',
'            insert into v_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P58_JOB_TITLE_2,:P58_SNAME_2, :P58_SLASTNAME_2, :P58_SEMAIL_2, :P58_SPHONE_2);',
'                insert into V_CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P58_JOB_TITLE_3,:P58_SNAME_3, :P58_SLASTNAME_3, :P58_SEMAIL_3, :P58_SPHONE_3);',
'    end if;',
'    INSERT INTO v_client_surcharge_groups(nclient_id, nsurcharge_id) VALUES(il_company_id,NVL(:P58_SURCHARGE_ID,0));',
'    :P58_FLAG := 0;',
'exception when others then',
'    :P58_FLAG := 1;',
'end;'))
,p_attribute_02=>'P58_NID,P58_SCOMPANYNAME,P58_SWEBSITE,P58_SPHONE,P58_SEMAIL,P58_SCOUNTRY,P58_SCITY,P58_SCOMPANYADDRESS,P58_SSHIPPINGADDRESS,P58_SZIP,P58_SCOMPANYCODE,P58_SPVMCODE,P58_JOB_TITLE_1,P58_SEMAIL_1,P58_SPHONE_1,P58_JOB_TITLE_2,P58_SEMAIL_2,P58_SPHONE_2,P58'
||'_JOB_TITLE_3,P58_SNAME_3,P58_SLASTNAME_3,P58_SEMAIL_3,P58_SPHONE_3,P58_NEW,P58_NPAYMENTDELAY,P58_NPAYMENTDELAYQNT,P58_SCONTRACTNUMBER,P58_SURCHARGE_ID,P58_SRESPONSIBLE_EMPLOYEE,P58_NCOMMENT,P58_SCOMMENT'
,p_attribute_03=>'P58_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71129402969490722)
,p_event_id=>wwv_flow_imp.id(71130378048490723)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai atnaujintas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P58_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71127927728490721)
,p_event_id=>wwv_flow_imp.id(71130378048490723)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai sukurtas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P58_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71128415116490721)
,p_event_id=>wwv_flow_imp.id(71130378048490723)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Eveskite pavadinim\0105, el. pa\0161t\0105, \0161al\012F ir miest\0105!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P58_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71127437951490720)
,p_event_id=>wwv_flow_imp.id(71130378048490723)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17137492512748671)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P58_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71126431624490720)
,p_event_id=>wwv_flow_imp.id(71130378048490723)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:40:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P58_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71126886402490720)
,p_event_id=>wwv_flow_imp.id(71130378048490723)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Eveskite pavadinim\0105, el. pa\0161t\0105, \0161al\012F ir miest\0105!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P58_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71125971732490719)
,p_event_id=>wwv_flow_imp.id(71130378048490723)
,p_event_result=>'FALSE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17137492512748671)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P58_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71125410546490719)
,p_event_id=>wwv_flow_imp.id(71130378048490723)
,p_event_result=>'FALSE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:40:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P58_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71124977597490719)
,p_name=>'Payment Delay 1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_NPAYMENTDELAY'
,p_condition_element=>'P58_NPAYMENTDELAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71124483459490719)
,p_event_id=>wwv_flow_imp.id(71124977597490719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_NPAYMENTDELAYQNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71124150607490719)
,p_name=>'Payment Delay 0'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_NPAYMENTDELAY'
,p_condition_element=>'P58_NPAYMENTDELAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71123657881490719)
,p_event_id=>wwv_flow_imp.id(71124150607490719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_NPAYMENTDELAYQNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71123220735490718)
,p_name=>'Load Data'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_SCOMPANYNAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71122733789490718)
,p_event_id=>wwv_flow_imp.id(71123220735490718)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    n_ex_c    NUMBER;',
'    n_ex_cs   NUMBER;',
'BEGIN',
'    SELECT DECODE(COUNT(*), 0, NULL, 1)',
'    INTO   n_ex_c',
'    FROM   (',
'               SELECT scompany_name',
'               FROM   v_companies',
'               WHERE  scompany_name = TO_CHAR( :P58_SCOMPANYNAME)',
'               AND    ntype = 0',
'           );',
'',
'    SELECT DECODE(COUNT(*), 0, NULL, 2)',
'    INTO   n_ex_cs',
'    FROM   (',
'               SELECT scompany_name',
'               FROM   v_company_ext',
'               WHERE  scompany_name = TO_CHAR( :P58_SCOMPANYNAME)',
'           );',
'',
'    apex_util.set_session_state(''P58_EXISTS''',
'                               ,COALESCE(n_ex_c',
'                                        ,n_ex_cs));',
'END;'))
,p_attribute_02=>'P58_SCOMPANYNAME'
,p_attribute_03=>'P58_EXISTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71122191262490717)
,p_event_id=>wwv_flow_imp.id(71123220735490718)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF TO_CHAR( :P58_EXISTS) = 1 THEN',
'        SELECT nid',
'              ,swebsite',
'              ,replace(sphone, '' '', '''')',
'              ,semail',
'              ,(select sname from v_countries where nid = ncountry_id)',
'              ,(select sname from v_cities where nid = ncity_id)',
'              ,scompany_address',
'              ,sshipping_address',
'              ,szip',
'              ,scompany_code',
'              ,stax_code',
'              ,scontract_number',
'              ,ndopaymentdelayflag',
'              ,npayment_delay_in_days',
'              ,sresponsibleemployee',
'        INTO  :P58_NID',
'              ,:P58_SWEBSITE',
'              ,:P58_SPHONE',
'              ,:P58_SEMAIL',
'              ,:P58_SCOUNTRY',
'              ,:P58_SCITY',
'              ,:P58_SCOMPANYADDRESS',
'              ,:P58_SSHIPPINGADDRESS',
'              ,:P58_SZIP',
'              ,:P58_SCOMPANYCODE',
'              ,:P58_SPVMCODE',
'              ,:P58_SCONTRACTNUMBER',
'              ,:P58_NPAYMENTDELAY',
'              ,:P58_NPAYMENTDELAYQNT',
'              ,:P58_SRESPONSIBLE_EMPLOYEE',
'        FROM   v_companies',
'        WHERE    scompany_name = :P58_SCOMPANYNAME',
'        fetch first row only;',
'    ELSIF TO_CHAR( :P58_EXISTS) = 2 THEN',
'        SELECT nid',
'              ,swebsite',
'              ,replace(sphone, '' '', '''')',
'              ,semail',
'              ,(select sname from v_countries where nid = ncountry_id)',
'              ,(select sname from v_cities where nid = ncity_id)',
'              ,scompany_address',
'              ,sshipping_address',
'              ,szip',
'              ,scompany_code',
'              ,stax_code',
'        INTO  :P58_NID',
'              ,:P58_SWEBSITE',
'              ,:P58_SPHONE',
'              ,:P58_SEMAIL',
'              ,:P58_SCOUNTRY',
'              ,:P58_SCITY',
'              ,:P58_SCOMPANYADDRESS',
'              ,:P58_SSHIPPINGADDRESS',
'              ,:P58_SZIP',
'              ,:P58_SCOMPANYCODE',
'              ,:P58_SPVMCODE',
'        FROM   v_company_ext',
'        WHERE  scompany_name = :P58_SCOMPANYNAME',
'        fetch first row only;',
'    ELSE',
'        SELECT NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'        INTO  :P58_NID',
'              ,:P58_SWEBSITE',
'              ,:P58_SPHONE',
'              ,:P58_SEMAIL',
'              ,:P58_SCOUNTRY',
'              ,:P58_SCITY',
'              ,:P58_SCOMPANYADDRESS',
'              ,:P58_SSHIPPINGADDRESS',
'              ,:P58_SZIP',
'              ,:P58_SCOMPANYCODE',
'              ,:P58_SPVMCODE',
'              ,:P58_SCONTRACTNUMBER',
'              ,:P58_NPAYMENTDELAY',
'              ,:P58_NPAYMENTDELAYQNT',
'              ,:P58_SRESPONSIBLE_EMPLOYEE',
'        FROM   DUAL;',
'    END IF;',
'END;'))
,p_attribute_02=>'P58_EXISTS,P58_SCOMPANYNAME'
,p_attribute_03=>'P58_SWEBSITE,P58_SPHONE,P58_SEMAIL,P58_SCOUNTRY,P58_SCOMPANYADDRESS,P58_SSHIPPINGADDRESS,P58_SZIP,P58_SCOMPANYCODE,P58_SPVMCODE,P58_SCONTRACTNUMBER,P58_NPAYMENTDELAY,P58_NPAYMENTDELAYQNT,P58_NID,P58_SCITY,P58_SRESPONSIBLE_EMPLOYEE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71121706470490717)
,p_event_id=>wwv_flow_imp.id(71123220735490718)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(71137289248490738)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($x(''P58_EXISTS'').value == 1) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Atnaujinti";',
'  $x_Hide("P58_NEW");',
'} else if ($x(''P58_EXISTS'').value == 2) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'  $x_Show("P58_NEW");',
'} else {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'   $x_Show("P58_NEW");',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71120184137490716)
,p_event_id=>wwv_flow_imp.id(71123220735490718)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_JOB_TITLE_1,P58_SEMAIL_1,P58_SPHONE_1,P58_JOB_TITLE_2,P58_SEMAIL_2,P58_SPHONE_2,P58_JOB_TITLE_3,P58_SNAME_3,P58_SLASTNAME_3,P58_SEMAIL_3,P58_SPHONE_3,P58_SLASTNAME_2,P58_SNAME_2,P58_SLASTNAME_1,P58_SNAME_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71121190800490717)
,p_event_id=>wwv_flow_imp.id(71123220735490718)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_SWEBSITE,P58_SPHONE,P58_SEMAIL,P58_SCOUNTRY,P58_SCITY,P58_SCOMPANYADDRESS,P58_SSHIPPINGADDRESS,P58_SZIP,P58_SCOMPANYCODE,P58_SPVMCODE,P58_SCOMPANYNAME,P58_SRESPONSIBLE_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71120705025490716)
,p_event_id=>wwv_flow_imp.id(71123220735490718)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(71137289248490738)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71119853348490716)
,p_name=>'Load Data 2'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_SCOMPANYCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71119299585490716)
,p_event_id=>wwv_flow_imp.id(71119853348490716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    n_ex_c    NUMBER;',
'    n_ex_cs   NUMBER;',
'BEGIN',
'    SELECT DECODE(COUNT(*), 0, NULL, 1)',
'    INTO   n_ex_c',
'    FROM   (',
'               SELECT scompany_code',
'               FROM   v_companies',
'               WHERE  scompany_code = TO_CHAR(:P58_SCOMPANYCODE)',
'               AND    ntype = 0',
'           );',
'',
'    SELECT DECODE(COUNT(*), 0, NULL, 2)',
'    INTO   n_ex_cs',
'    FROM   (',
'               SELECT scompany_code',
'               FROM   v_company_ext',
'               WHERE  scompany_code = TO_CHAR(:P58_SCOMPANYCODE)',
'           );',
'',
'    apex_util.set_session_state(''P58_EXISTS''',
'                               ,COALESCE(n_ex_c',
'                                        ,n_ex_cs));',
'END;'))
,p_attribute_02=>'P58_SCOMPANYCODE'
,p_attribute_03=>'P58_EXISTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71118793305490715)
,p_event_id=>wwv_flow_imp.id(71119853348490716)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF TO_CHAR( :P58_EXISTS) = 1 THEN',
'        SELECT nid',
'              ,scompany_name',
'              ,swebsite',
'              ,replace(sphone, '' '', '''')',
'              ,semail',
'              ,(select sname from v_countries where nid = ncountry_id)',
'              ,(select sname from v_cities where nid = ncity_id)',
'              ,scompany_address',
'              ,sshipping_address',
'              ,szip',
'              ,stax_code',
'              ,scontract_number',
'              ,ndopaymentdelayflag',
'              ,npayment_delay_in_days',
'              ,sresponsibleemployee',
'        INTO  :P58_NID',
'              ,:P58_SCOMPANYNAME',
'              ,:P58_SWEBSITE',
'              ,:P58_SPHONE',
'              ,:P58_SEMAIL',
'              ,:P58_SCOUNTRY',
'              ,:P58_SCITY',
'              ,:P58_SCOMPANYADDRESS',
'              ,:P58_SSHIPPINGADDRESS',
'              ,:P58_SZIP',
'              ,:P58_SPVMCODE',
'              ,:P58_SCONTRACTNUMBER',
'              ,:P58_NPAYMENTDELAY',
'              ,:P58_NPAYMENTDELAYQNT',
'              ,:P58_SRESPONSIBLE_EMPLOYEE',
'        FROM   v_companies',
'        WHERE  scompany_code = :P58_SCOMPANYCODE',
'        fetch first row only;',
'    ELSIF TO_CHAR( :P58_EXISTS) = 2 THEN',
'        SELECT nid',
'              ,scompany_name',
'              ,swebsite',
'              ,replace(sphone, '' '', '''')',
'              ,semail',
'              ,(select sname from v_countries where nid = ncountry_id)',
'              ,(select sname from v_cities where nid = ncity_id)',
'              ,scompany_address',
'              ,sshipping_address',
'              ,szip',
'              ,stax_code',
'        INTO  :P58_NID',
'              ,:P58_SCOMPANYNAME',
'              ,:P58_SWEBSITE',
'              ,:P58_SPHONE',
'              ,:P58_SEMAIL',
'              ,:P58_SCOUNTRY',
'              ,:P58_SCITY',
'              ,:P58_SCOMPANYADDRESS',
'              ,:P58_SSHIPPINGADDRESS',
'              ,:P58_SZIP',
'              ,:P58_SPVMCODE',
'        FROM   v_company_ext',
'        WHERE  scompany_code = :P58_SCOMPANYCODE',
'        fetch first row only;',
'    ELSE',
'        SELECT NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'        INTO  :P58_NID',
'              ,:P58_SCOMPANYNAME',
'              ,:P58_SWEBSITE',
'              ,:P58_SPHONE',
'              ,:P58_SEMAIL',
'              ,:P58_SCOUNTRY',
'              ,:P58_SCITY',
'              ,:P58_SCOMPANYADDRESS',
'              ,:P58_SSHIPPINGADDRESS',
'              ,:P58_SZIP',
'              ,:P58_SPVMCODE',
'              ,:P58_SCONTRACTNUMBER',
'              ,:P58_NPAYMENTDELAY',
'              ,:P58_NPAYMENTDELAYQNT',
'              ,:P58_SRESPONSIBLE_EMPLOYEE',
'        FROM   DUAL;',
'    END IF;',
'END;'))
,p_attribute_02=>'P58_EXISTS,P58_SCOMPANYCODE'
,p_attribute_03=>'P58_SWEBSITE,P58_SPHONE,P58_SEMAIL,P58_SCOUNTRY,P58_SCITY,P58_SCOMPANYADDRESS,P58_SSHIPPINGADDRESS,P58_SZIP,P58_SPVMCODE,P58_SCONTRACTNUMBER,P58_NPAYMENTDELAY,P58_NPAYMENTDELAYQNT,P58_SCOMPANYNAME,P58_NID,P58_SRESPONSIBLE_EMPLOYEE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71118346352490715)
,p_event_id=>wwv_flow_imp.id(71119853348490716)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_SCITY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nid',
'FROM   v_cities',
'WHERE  nid = (SELECT ncity_id',
'             FROM   v_companies',
'             WHERE  nid = :P58_NID)'))
,p_attribute_07=>'P58_NID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71117847779490715)
,p_event_id=>wwv_flow_imp.id(71119853348490716)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(71137289248490738)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($x(''P58_EXISTS'').value == 1) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Atnaujinti";',
'} else if ($x(''P58_EXISTS'').value == 2) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'} else {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71116323422490714)
,p_event_id=>wwv_flow_imp.id(71119853348490716)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_JOB_TITLE_1,P58_SEMAIL_1,P58_SPHONE_1,P58_JOB_TITLE_2,P58_SEMAIL_2,P58_SPHONE_2,P58_JOB_TITLE_3,P58_SNAME_3,P58_SLASTNAME_3,P58_SEMAIL_3,P58_SPHONE_3,P58_SLASTNAME_2,P58_SNAME_2,P58_SLASTNAME_1,P58_SNAME_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71117315175490715)
,p_event_id=>wwv_flow_imp.id(71119853348490716)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_SWEBSITE,P58_SPHONE,P58_SEMAIL,P58_SCOUNTRY,P58_SCITY,P58_SCOMPANYADDRESS,P58_SSHIPPINGADDRESS,P58_SZIP,P58_SCOMPANYNAME,P58_SPVMCODE,P58_SCOMPANYCODE,P58_SRESPONSIBLE_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71116825217490714)
,p_event_id=>wwv_flow_imp.id(71119853348490716)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(71137289248490738)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71115964835490714)
,p_name=>'Load Data 3'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_SPVMCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71115395834490714)
,p_event_id=>wwv_flow_imp.id(71115964835490714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    n_ex_c    NUMBER;',
'    n_ex_cs   NUMBER;',
'BEGIN',
'    SELECT DECODE(COUNT(*), 0, NULL, 1)',
'    INTO   n_ex_c',
'    FROM   (',
'               SELECT stax_code',
'               FROM   v_companies',
'               WHERE  stax_code = TO_CHAR(:P58_SPVMCODE)',
'               AND    ntype = 0',
'           );',
'',
'    SELECT DECODE(COUNT(*), 0, NULL, 2)',
'    INTO   n_ex_cs',
'    FROM   (',
'               SELECT stax_code',
'               FROM   v_company_ext',
'               WHERE  stax_code = TO_CHAR(:P58_SPVMCODE)',
'           );',
'',
'    apex_util.set_session_state(''P58_EXISTS''',
'                               ,COALESCE(n_ex_c',
'                                        ,n_ex_cs));',
'END;'))
,p_attribute_02=>'P58_SPVMCODE'
,p_attribute_03=>'P58_EXISTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71114907542490713)
,p_event_id=>wwv_flow_imp.id(71115964835490714)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF TO_CHAR( :P58_EXISTS) = 1 THEN',
'        SELECT nid',
'              ,scompany_name',
'              ,swebsite',
'              ,replace(sphone, '' '', '''')',
'              ,semail',
'              ,(select sname from v_countries where nid = ncountry_id)',
'              ,(select sname from v_cities where nid = ncity_id)',
'              ,scompany_address',
'              ,sshipping_address',
'              ,szip',
'              ,scompany_code',
'              ,scontract_number',
'              ,ndopaymentdelayflag',
'              ,npayment_delay_in_days',
'              ,sresponsibleemployee',
'        INTO  :P58_NID',
'              ,:P58_SCOMPANYNAME',
'              ,:P58_SWEBSITE',
'              ,:P58_SPHONE',
'              ,:P58_SEMAIL',
'              ,:P58_SCOUNTRY',
'              ,:P58_SCITY',
'              ,:P58_SCOMPANYADDRESS',
'              ,:P58_SSHIPPINGADDRESS',
'              ,:P58_SZIP',
'              ,:P58_SCOMPANYCODE',
'              ,:P58_SCONTRACTNUMBER',
'              ,:P58_NPAYMENTDELAY',
'              ,:P58_NPAYMENTDELAYQNT',
'              ,:P58_SRESPONSIBLE_EMPLOYEE',
'        FROM   v_companies',
'        WHERE  stax_code = :P58_SPVMCODE',
'        fetch first row only;',
'    ELSIF TO_CHAR( :P58_EXISTS) = 2 THEN',
'        SELECT nid',
'              ,scompany_name',
'              ,swebsite',
'              ,replace(sphone, '' '', '''')',
'              ,semail',
'              ,(select sname from v_countries where nid = ncountry_id)',
'              ,(select sname from v_cities where nid = ncity_id)',
'              ,scompany_address',
'              ,sshipping_address',
'              ,szip',
'              ,scompany_code',
'        INTO  :P58_NID',
'              ,:P58_SCOMPANYNAME',
'              ,:P58_SWEBSITE',
'              ,:P58_SPHONE',
'              ,:P58_SEMAIL',
'              ,:P58_SCOUNTRY',
'              ,:P58_SCITY',
'              ,:P58_SCOMPANYADDRESS',
'              ,:P58_SSHIPPINGADDRESS',
'              ,:P58_SZIP',
'              ,:P58_SCOMPANYCODE',
'        FROM   v_company_ext',
'        WHERE  stax_code = :P58_SPVMCODE',
'        fetch first row only;',
'    ELSE',
'        SELECT NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'              ,NULL',
'        INTO  :P58_NID',
'              ,:P58_SCOMPANYNAME',
'              ,:P58_SWEBSITE',
'              ,:P58_SPHONE',
'              ,:P58_SEMAIL',
'              ,:P58_SCOUNTRY',
'              ,:P58_SCITY',
'              ,:P58_SCOMPANYADDRESS',
'              ,:P58_SSHIPPINGADDRESS',
'              ,:P58_SZIP',
'              ,:P58_SPVMCODE',
'              ,:P58_SCONTRACTNUMBER',
'              ,:P58_NPAYMENTDELAY',
'              ,:P58_NPAYMENTDELAYQNT',
'              ,:P58_SRESPONSIBLE_EMPLOYEE',
'        FROM   DUAL;',
'    END IF;',
'END;'))
,p_attribute_02=>'P58_EXISTS,P58_SPVMCODE'
,p_attribute_03=>'P58_SWEBSITE,P58_SPHONE,P58_SEMAIL,P58_SCOUNTRY,P58_SCITY,P58_SCOMPANYADDRESS,P58_SSHIPPINGADDRESS,P58_SZIP,P58_SCOMPANYCODE,P58_SCONTRACTNUMBER,P58_NPAYMENTDELAY,P58_NPAYMENTDELAYQNT,P58_SCOMPANYNAME,P58_NID,P58_SRESPONSIBLE_EMPLOYEE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(71114445044490713)
,p_event_id=>wwv_flow_imp.id(71115964835490714)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(71137289248490738)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($x(''P58_EXISTS'').value == 1) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Atnaujinti";',
'} else if ($x(''P58_EXISTS'').value == 2) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'} else {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71112958412490712)
,p_event_id=>wwv_flow_imp.id(71115964835490714)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_JOB_TITLE_1,P58_SEMAIL_1,P58_SPHONE_1,P58_JOB_TITLE_2,P58_SEMAIL_2,P58_SPHONE_2,P58_JOB_TITLE_3,P58_SNAME_3,P58_SLASTNAME_3,P58_SEMAIL_3,P58_SPHONE_3,P58_SLASTNAME_2,P58_SNAME_2,P58_SLASTNAME_1,P58_SNAME_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71113918534490713)
,p_event_id=>wwv_flow_imp.id(71115964835490714)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_SWEBSITE,P58_SPHONE,P58_SEMAIL,P58_SCOUNTRY,P58_SCITY,P58_SCOMPANYADDRESS,P58_SSHIPPINGADDRESS,P58_SZIP,P58_SCOMPANYNAME,P58_SCOMPANYCODE,P58_SPVMCODE,P58_SRESPONSIBLE_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71113435026490713)
,p_event_id=>wwv_flow_imp.id(71115964835490714)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(71137289248490738)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71112500894490712)
,p_name=>'Clear'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71137686614490739)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71112064315490712)
,p_event_id=>wwv_flow_imp.id(71112500894490712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_EXISTS,P58_NID,P58_SCOMPANYNAME,P58_SWEBSITE,P58_SPHONE,P58_SEMAIL,P58_SCOUNTRY,P58_SCITY,P58_SCOMPANYADDRESS,P58_SSHIPPINGADDRESS,P58_SZIP,P58_SCOMPANYCODE,P58_SPVMCODE,P58_SCONTRACTNUMBER,P58_SURCHARGE_ID,P58_NPAYMENTDELAY,P58_NPAYMENTDELAYQNT,'
||'P58_NEW,P58_JOB_TITLE_1,P58_SEMAIL_1,P58_SPHONE_1,P58_JOB_TITLE_2,P58_SEMAIL_2,P58_SPHONE_2,P58_JOB_TITLE_3,P58_SNAME_3,P58_SLASTNAME_3,P58_SEMAIL_3,P58_SPHONE_3,P58_FLAG,P58_SRESPONSIBLE_EMPLOYEE,P58_NCOMMENT,P58_SCOMMENT,P58_SNAME_1,P58_SLASTNAME_1'
||',P58_SNAME_2,P58_SLASTNAME_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71111664129490712)
,p_name=>'Comment 0'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_NCOMMENT'
,p_condition_element=>'P58_NCOMMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71111100557490712)
,p_event_id=>wwv_flow_imp.id(71111664129490712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_SCOMMENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71110775879490712)
,p_name=>'Comment 1'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P58_NCOMMENT'
,p_condition_element=>'P58_NCOMMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71110262518490711)
,p_event_id=>wwv_flow_imp.id(71110775879490712)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P58_SCOMMENT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71136309233490726)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71138857199490740)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(17137492512748671)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Klientas'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

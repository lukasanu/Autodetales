prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'Redaguoti'
,p_alias=>'REDAGUOTI'
,p_page_mode=>'MODAL'
,p_step_title=>'Redaguoti'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230502084507'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13737577933411552)
,p_plug_name=>'Modifikuoti'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9626611630517882)
,p_plug_display_sequence=>0
,p_query_type=>'TABLE'
,p_query_table=>'COMPANIES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13747676564411569)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9629970051517884)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13748034022411569)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13747676564411569)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13749626581411574)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13747676564411569)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161trinti')
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P9_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13750058917411574)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(13747676564411569)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161saugoti')
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P9_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13737826219411554)
,p_name=>'P9_NID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13738226009411558)
,p_name=>'P9_NTYPE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_source=>'TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13738607729411561)
,p_name=>'P9_SCOMPANYNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>unistr('\012Emon\0117s pavadinimas')
,p_source=>'COMPANY_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>50
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
 p_id=>wwv_flow_imp.id(13739038057411561)
,p_name=>'P9_SEMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>unistr('El. pa\0161tas')
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
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
 p_id=>wwv_flow_imp.id(13739451114411561)
,p_name=>'P9_SPHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>'Tel. numeris'
,p_source=>'PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>12
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
 p_id=>wwv_flow_imp.id(13739845099411562)
,p_name=>'P9_SWEBSITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>'El. puslapis'
,p_source=>'WEBSITE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
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
 p_id=>wwv_flow_imp.id(13740228786411562)
,p_name=>'P9_SCOUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>unistr('\0160alis')
,p_source=>'COUNTRY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'sname ',
'FROM v_countries'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13740637661411562)
,p_name=>'P9_SCITY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
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
'         WHERE  sname = :P9_SCOUNTRY)',
'SELECT c.sname',
'FROM   v_cities  c',
'      ,tbl     t',
'WHERE  t.nid = c.ncountry_id'))
,p_lov_cascade_parent_items=>'P9_SCOUNTRY'
,p_ajax_items_to_submit=>'P9_SCOUNTRY'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(13741038154411563)
,p_name=>'P9_SCOMPANYADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>unistr('\012Emon\0117s adresas (be miesto ir \0161alies)')
,p_source=>'COMPANY_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>254
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
 p_id=>wwv_flow_imp.id(13741499552411563)
,p_name=>'P9_SSHIPPINGADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>'Siuntimo adresas (pilnas)'
,p_source=>'SHIPPING_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>254
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
 p_id=>wwv_flow_imp.id(13741861917411563)
,p_name=>'P9_SZIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>unistr('Pa\0161to kodas')
,p_source=>'ZIP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
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
 p_id=>wwv_flow_imp.id(13742623831411565)
,p_name=>'P9_SCOMPANYCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>unistr('\012Emon\0117s kodas')
,p_source=>'COMPANY_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>254
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
 p_id=>wwv_flow_imp.id(13743042386411565)
,p_name=>'P9_SPVMCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>unistr('PVM mok\0117tojo kodas')
,p_source=>'TAX_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>254
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
 p_id=>wwv_flow_imp.id(15395933413090912)
,p_name=>'P9_NPAYMENTDELAY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>unistr('Mok\0117jimo atid\0117jimas')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'margin-top-md'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15396098207090913)
,p_name=>'P9_NPAYMENTDELAYQNT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>unistr('Mok\0117jimo atid\0117jimas')
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
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15487177937775704)
,p_name=>'P9_SCONTRACTNUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>'Sutarties numeris'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17811202200578230)
,p_name=>'P9_FLAG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45214533842093853)
,p_name=>'P9_SCOMMENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>'Komentaras'
,p_source=>'SCOMMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>254
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>9
,p_display_when=>'P9_NTYPE'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
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
 p_id=>wwv_flow_imp.id(45214708491093854)
,p_name=>'P9_NCOMMENT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_item_source_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>'Komentaras'
,p_source=>'NCOMMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when=>'P9_NTYPE'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'margin-top-md'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46443527438665336)
,p_name=>'P9_SRESPONSIBLE_EMPLOYEE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>'Atsakingas asmuo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select first_name || '' ''||last_name from v_users order by 1'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>20
,p_colspan=>4
,p_display_when=>'P9_NTYPE'
,p_display_when2=>'0'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71073608368555374)
,p_name=>'P9_CUSTOMERSHORT_NAME'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(13737577933411552)
,p_prompt=>'Trumpas pavadinimas'
,p_source=>'select scompany_name_short from v_companies where nid = :P9_NID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>254
,p_begin_on_new_line=>'N'
,p_display_when=>'P9_NTYPE'
,p_display_when2=>'0'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13748145195411569)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13748034022411569)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13748997489411572)
,p_event_id=>wwv_flow_imp.id(13748145195411569)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13697962170037937)
,p_name=>'Delete Client'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13749626581411574)
,p_condition_element=>'P9_NTYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13698158755037939)
,p_event_id=>wwv_flow_imp.id(13697962170037937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161trinti \0161\012F \012Fra\0161\0105?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13698035076037938)
,p_event_id=>wwv_flow_imp.id(13697962170037937)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE',
'FROM',
'v_companies',
'WHERE nid = :P9_NID;'))
,p_attribute_02=>'P9_NID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13698289470037940)
,p_event_id=>wwv_flow_imp.id(13697962170037937)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13737577933411552)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13850870101296420)
,p_event_id=>wwv_flow_imp.id(13697962170037937)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:2:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13852642117296438)
,p_name=>'Delete Supplier'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13749626581411574)
,p_condition_element=>'P9_NTYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13852995289296441)
,p_event_id=>wwv_flow_imp.id(13852642117296438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161trinti \0161\012F \012Fra\0161\0105?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13852843728296440)
,p_event_id=>wwv_flow_imp.id(13852642117296438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE',
'FROM',
'v_companies',
'WHERE nid = :P9_NID;'))
,p_attribute_02=>'P9_NID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13853033996296442)
,p_event_id=>wwv_flow_imp.id(13852642117296438)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13737577933411552)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13852704961296439)
,p_event_id=>wwv_flow_imp.id(13852642117296438)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:16:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15396203872090915)
,p_name=>'Show'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_NPAYMENTDELAY'
,p_condition_element=>'P9_NPAYMENTDELAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15396302209090916)
,p_event_id=>wwv_flow_imp.id(15396203872090915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_NPAYMENTDELAYQNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15396450321090917)
,p_name=>'Hide'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_NPAYMENTDELAY'
,p_condition_element=>'P9_NPAYMENTDELAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15396626927090919)
,p_event_id=>wwv_flow_imp.id(15396450321090917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_NPAYMENTDELAYQNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15396551343090918)
,p_event_id=>wwv_flow_imp.id(15396450321090917)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_NPAYMENTDELAYQNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13851076811296422)
,p_name=>'Update'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13750058917411574)
,p_condition_element=>'P9_NTYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13851171262296423)
,p_event_id=>wwv_flow_imp.id(13851076811296422)
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
'    COUNTRY_CITY_EXISTS_VALIDATION(:P9_SCOUNTRY, :P9_SCITY, n_country_id, n_city_id, n_error, s_error);',
'    :P9_FLAG := 0;',
'    UPDATE v_companies',
'    SET scompany_name = :P9_SCOMPANYNAME',
'        ,semail = :P9_SEMAIL',
'        ,sphone = :P9_SPHONE',
'        ,swebsite = :P9_SWEBSITE',
'        ,ncountry_id = n_country_id',
'        ,ncity_id = n_city_id',
'        ,scompany_address = :P9_SCOMPANYADDRESS',
'        ,sshipping_address = :P9_SSHIPPINGADDRESS',
'        ,szip = :P9_SZIP',
'        ,scompany_code = :P9_SCOMPANYCODE',
'        ,stax_code = :P9_SPVMCODE',
'        ,ndopaymentdelayflag = :P9_NPAYMENTDELAY',
'        ,npayment_delay_in_days = :P9_NPAYMENTDELAYQNT',
'        ,scontract_number = :P9_SCONTRACTNUMBER',
'        ,sresponsibleemployee = :P9_SRESPONSIBLE_EMPLOYEE',
'        ,ncomment = :P9_NCOMMENT',
'        ,scomment = :P9_SCOMMENT',
'        ,scompany_name_short = :P9_CUSTOMERSHORT_NAME',
'    WHERE nid = :P9_NID;    ',
'    :P9_FLAG := 0;',
'exception when others then ',
'    :P9_FLAG := 1;',
'end;'))
,p_attribute_02=>'P9_SCOMPANYNAME,P9_SWEBSITE,P9_SEMAIL,P9_SPHONE,P9_SCOUNTRY,P9_SCITY,P9_SCOMPANYADDRESS,P9_SSHIPPINGADDRESS,P9_SZIP,P9_SCOMPANYCODE,P9_SPVMCODE,P9_NPAYMENTDELAY,P9_NPAYMENTDELAYQNT,P9_SCONTRACTNUMBER,P9_NID,P9_SRESPONSIBLE_EMPLOYEE,P9_NCOMMENT,P9_SCO'
||'MMENT,P9_CUSTOMERSHORT_NAME'
,p_attribute_03=>'P9_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48120160807754446)
,p_event_id=>wwv_flow_imp.id(13851076811296422)
,p_event_result=>'FALSE'
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
'    COUNTRY_CITY_EXISTS_VALIDATION(:P9_SCOUNTRY, :P9_SCITY, n_country_id, n_city_id, n_error, s_error);',
'    :P9_FLAG := 0;',
'    UPDATE v_companies',
'    SET scompany_name = :P9_SCOMPANYNAME',
'        ,semail = :P9_SEMAIL',
'        ,sphone = :P9_SPHONE',
'        ,swebsite = :P9_SWEBSITE',
'        ,ncountry_id = n_country_id',
'        ,ncity_id = n_city_id',
'        ,scompany_address = :P9_SCOMPANYADDRESS',
'        ,sshipping_address = :P9_SSHIPPINGADDRESS',
'        ,szip = :P9_SZIP',
'        ,scompany_code = :P9_SCOMPANYCODE',
'        ,stax_code = :P9_SPVMCODE',
'        ,ndopaymentdelayflag = :P9_NPAYMENTDELAY',
'        ,npayment_delay_in_days = :P9_NPAYMENTDELAYQNT',
'        ,scontract_number = :P9_SCONTRACTNUMBER',
'        ,scompany_name_short = :P9_CUSTOMERSHORT_NAME',
'    WHERE nid = :P9_NID;    ',
'    :P9_FLAG := 0;',
'exception when others then ',
'    :P9_FLAG := 1;',
'end;'))
,p_attribute_02=>'P9_SCOMPANYNAME,P9_SWEBSITE,P9_SEMAIL,P9_SPHONE,P9_SCOUNTRY,P9_SCITY,P9_SCOMPANYADDRESS,P9_SSHIPPINGADDRESS,P9_SZIP,P9_SCOMPANYCODE,P9_SPVMCODE,P9_NPAYMENTDELAY,P9_NPAYMENTDELAYQNT,P9_SCONTRACTNUMBER,P9_NID,P9_CUSTOMERSHORT_NAME'
,p_attribute_03=>'P9_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48120129807754445)
,p_event_id=>wwv_flow_imp.id(13851076811296422)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Pakeitimai i\0161saugoti!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P9_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17810987275578228)
,p_event_id=>wwv_flow_imp.id(13851076811296422)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Pakeitimai i\0161saugoti!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P9_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48119994572754444)
,p_event_id=>wwv_flow_imp.id(13851076811296422)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Eveskite pavadinim\0105, el. pa\0161t\0105, \0161al\012F ir miest\0105, patikrinkite ar kliento trumpas pavadinimas unikalus!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P9_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48119918548754443)
,p_event_id=>wwv_flow_imp.id(13851076811296422)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13737577933411552)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P9_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15458534158382377)
,p_event_id=>wwv_flow_imp.id(13851076811296422)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Eveskite pavadinim\0105, el. pa\0161t\0105, \0161al\012F ir miest\0105, patikrinkite ar kliento trumpas pavadinimas unikalus!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P9_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48119813070754442)
,p_event_id=>wwv_flow_imp.id(13851076811296422)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:16:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P9_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13852460138296436)
,p_event_id=>wwv_flow_imp.id(13851076811296422)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13737577933411552)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P9_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13852201153296434)
,p_event_id=>wwv_flow_imp.id(13851076811296422)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:2:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P9_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45214504221093852)
,p_name=>'Comment 1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_NCOMMENT'
,p_condition_element=>'P9_NCOMMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45214345791093851)
,p_event_id=>wwv_flow_imp.id(45214504221093852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_SCOMMENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45214283753093850)
,p_name=>'Comment 0'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_NCOMMENT'
,p_condition_element=>'P9_NCOMMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45154897890531874)
,p_event_id=>wwv_flow_imp.id(45214283753093850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_SCOMMENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45214201136093849)
,p_event_id=>wwv_flow_imp.id(45214283753093850)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_SCOMMENT'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13751220926411576)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(13737577933411552)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Modifikuoti'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13751600487411576)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16324059041697814)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Initialize form Modifikuoti'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        select',
'        sCOMPANY_NAME,',
'        sWEBSITE, ',
'        sPHONE, ',
'        sEMAIL, ',
'        (select sname from v_countries where nid = ncountry_id),',
'        (select sname from v_cities where nid = ncity_id) ,',
'        sCOMPANY_ADDRESS, ',
'        sSHIPPING_ADDRESS, ',
'        sZIP, ',
'        sCOMPANY_CODE, ',
'        sTAX_CODE, ',
'        sCONTRACT_NUMBER, ',
'        nDOPAYMENTDELAYflag, ',
'        nPAYMENT_DELAY_IN_DAYS',
'        into',
'        :P9_SCOMPANYNAME,',
'        :P9_SWEBSITE, ',
'        :P9_SPHONE, ',
'        :P9_SEMAIL, ',
'        :P9_SCOUNTRY, ',
'        :P9_SCITY, ',
'        :P9_SCOMPANYADDRESS, ',
'        :P9_SSHIPPINGADDRESS, ',
'        :P9_SZIP, ',
'        :P9_SCOMPANYCODE, ',
'        :P9_SPVMCODE, ',
'        :P9_SCONTRACTNUMBER, ',
'        :P9_NPAYMENTDELAY, ',
'        :P9_NPAYMENTDELAYQNT ',
'        from v_COMPANIES where nID = :P9_NID;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_name=>'Klientas2'
,p_alias=>'KLIENTAS2'
,p_page_mode=>'MODAL'
,p_step_title=>'Klientas2'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'OST'
,p_last_upd_yyyymmddhh24miss=>'20230202205107'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16660915500054943)
,p_plug_name=>'Klientas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9626611630517882)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select * from COMPANIES where TYPE=0;'
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16673218769054951)
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
 p_id=>wwv_flow_imp.id(71614903827184473)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(16673218769054951)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71614545566184473)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(16673218769054951)
,p_button_name=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161valyti')
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71614162958184473)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(16673218769054951)
,p_button_name=>'CREATE'
,p_button_static_id=>'CREATE_BTN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P55_NID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71621480302184479)
,p_name=>'P55_SPHONE_3'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71621880870184479)
,p_name=>'P55_SEMAIL_3'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71622330059184479)
,p_name=>'P55_SLATSNAME_3'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71622707513184479)
,p_name=>'P55_SNAME_3'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71623118271184480)
,p_name=>'P55_JOB_TITLE_3'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>'Pareigos'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'name ',
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
 p_id=>wwv_flow_imp.id(71623509596184480)
,p_name=>'P55_SPHONE_2'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71623906393184480)
,p_name=>'P55_NTYPE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_default=>'0'
,p_source=>'TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71624280051184480)
,p_name=>'P55_SEMAIL_2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71624776076184480)
,p_name=>'P55_SLASTNAME_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>unistr('Pavard\0117')
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(71625156273184480)
,p_name=>'P55_SNAME_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>'Vardas'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(71625495037184481)
,p_name=>'P55_JOB_TITLE_2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>'Pareigos'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'name ',
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
 p_id=>wwv_flow_imp.id(71625936562184481)
,p_name=>'P55_SPHONE_1'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71626310924184481)
,p_name=>'P55_SEMAIL_1'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71626737168184481)
,p_name=>'P55_SLASTNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>unistr('Pavard\0117')
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(71627144425184482)
,p_name=>'P55_SNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>'Vardas'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_colspan=>4
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
 p_id=>wwv_flow_imp.id(71627498116184482)
,p_name=>'P55_JOB_TITLE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>'Pareigos'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'name ',
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
 p_id=>wwv_flow_imp.id(71627927763184482)
,p_name=>'P55_NEW'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71628297871184482)
,p_name=>'P55_SCOMMENT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>'Komentaras'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>10
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71628775631184482)
,p_name=>'P55_NCOMMENT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_default=>'0'
,p_prompt=>'Komentaras'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'margin-top-md:margin-bottom-md'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71629152513184482)
,p_name=>'P55_NPAYMENTDELAYQNT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_default=>'0'
,p_prompt=>unistr('Mok\0117jimo atid\0117jimas')
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
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71629535439184483)
,p_name=>'P55_NPAYMENTDELAY'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_default=>'0'
,p_prompt=>unistr('Mok\0117jimo atid\0117jimas')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'margin-top-md:margin-bottom-md'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71629932233184483)
,p_name=>'P55_SRESPONSIBLE_EMPLOYEE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>'Atsakingas asmuo'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select first_name || '' ''||last_name from v_users where isadmin = 0 and first_name is not null order by 1'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71630374526184483)
,p_name=>'P55_SURCHARGE_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>unistr('Antkaini\0173 grup\0117')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   sname     d',
'        ,nid       r',
'FROM     surcharge_group',
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
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71630687150184483)
,p_name=>'P55_SCONTRACTNUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>'Sutarties numeris'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71631076476184483)
,p_name=>'P55_SPVMCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>unistr('PVM mok\0117tojo kodas')
,p_source=>'TAX_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT *',
'FROM   (',
'           SELECT tax_code',
'           FROM   v_companies',
'           WHERE  type = 0',
'           UNION ALL',
'           SELECT tax_code FROM v_company_ext',
'       )'))
,p_cSize=>60
,p_cMaxlength=>254
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
 p_id=>wwv_flow_imp.id(71631562142184484)
,p_name=>'P55_SCOMPANYCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>unistr('\012Emon\0117s kodas')
,p_source=>'COMPANY_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT *',
'FROM   (',
'           SELECT company_code',
'           FROM   v_companies',
'           WHERE  type = 0',
'           UNION ALL',
'           SELECT company_code FROM v_company_ext',
'       )'))
,p_cSize=>60
,p_cMaxlength=>254
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
 p_id=>wwv_flow_imp.id(71631932833184484)
,p_name=>'P55_SZIP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71632357442184484)
,p_name=>'P55_SSHIPPINGADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71632729187184485)
,p_name=>'P55_SCOMPANYADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>unistr('Kliento adresas (be miesto ir \0161alies)')
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
 p_id=>wwv_flow_imp.id(71633175731184485)
,p_name=>'P55_SCITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>'Miestas'
,p_source=>'CITY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'    tbl',
'    AS',
'        (SELECT id',
'         FROM   v_countries',
'         WHERE  name = :P55_SCOUNTRY)',
'SELECT c.name',
'FROM   v_cities  c',
'      ,tbl     t',
'WHERE  t.id = c.country_id'))
,p_lov_cascade_parent_items=>'P55_SCOUNTRY'
,p_ajax_items_to_submit=>'P55_SCOUNTRY'
,p_ajax_optimize_refresh=>'N'
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
 p_id=>wwv_flow_imp.id(71633538392184485)
,p_name=>'P55_SCOUNTRY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>unistr('\0160alis')
,p_source=>'COUNTRY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'name',
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
 p_id=>wwv_flow_imp.id(71633963289184485)
,p_name=>'P55_SEMAIL'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_prompt=>unistr('El. pa\0161tas')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71634336023184485)
,p_name=>'P55_SPHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71634698876184486)
,p_name=>'P55_SWEBSITE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71635158084184486)
,p_name=>'P55_SCOMPANYNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71635515850184486)
,p_name=>'P55_NID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_item_source_plug_id=>wwv_flow_imp.id(16660915500054943)
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
 p_id=>wwv_flow_imp.id(71635960027184487)
,p_name=>'P55_EXISTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71636350951184488)
,p_name=>'P55_FLAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16660915500054943)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(71616203059184475)
,p_tabular_form_region_id=>wwv_flow_imp.id(16660915500054943)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>':P55_SCOUNTRY is null'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Iveskite \0161al\012F!')
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(13363236816994578)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71612766143184469)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71614903827184473)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71612204111184468)
,p_event_id=>wwv_flow_imp.id(71612766143184469)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71611874384184468)
,p_name=>'One Contact'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_NEW'
,p_condition_element=>'P55_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71611321485184468)
,p_event_id=>wwv_flow_imp.id(71611874384184468)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_JOB_TITLE,P55_SNAME,P55_SLASTNAME,P55_SEMAIL_1,P55_SPHONE_1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71610784247184467)
,p_event_id=>wwv_flow_imp.id(71611874384184468)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_JOB_TITLE_2,P55_SNAME_2,P55_SLASTNAME_2,P55_SEMAIL_2,P55_SPHONE_2,P55_JOB_TITLE_3,P55_SNAME_3,P55_SLATSNAME_3,P55_SEMAIL_3,P55_SPHONE_3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71610404089184467)
,p_name=>'Zero Contacts'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_NEW'
,p_condition_element=>'P55_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71609926671184467)
,p_event_id=>wwv_flow_imp.id(71610404089184467)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_JOB_TITLE,P55_SNAME,P55_SLASTNAME,P55_SEMAIL_1,P55_SPHONE_1,P55_JOB_TITLE_2,P55_SNAME_2,P55_SLASTNAME_2,P55_SEMAIL_2,P55_SPHONE_2,P55_JOB_TITLE_3,P55_SNAME_3,P55_SLATSNAME_3,P55_SEMAIL_3,P55_SPHONE_3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71609489611184467)
,p_name=>'Two Contacts'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_NEW'
,p_condition_element=>'P55_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71608981490184467)
,p_event_id=>wwv_flow_imp.id(71609489611184467)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_JOB_TITLE,P55_SNAME,P55_SLASTNAME,P55_SEMAIL_1,P55_SPHONE_1,P55_JOB_TITLE_2,P55_SNAME_2,P55_SLASTNAME_2,P55_SEMAIL_2,P55_SPHONE_2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71608553294184466)
,p_event_id=>wwv_flow_imp.id(71609489611184467)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_JOB_TITLE_3,P55_SNAME_3,P55_SLATSNAME_3,P55_SEMAIL_3,P55_SPHONE_3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71608174422184466)
,p_name=>'Three Contacts'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_NEW'
,p_condition_element=>'P55_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71607657879184466)
,p_event_id=>wwv_flow_imp.id(71608174422184466)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_JOB_TITLE,P55_SNAME,P55_SLASTNAME,P55_SEMAIL_1,P55_SPHONE_1,P55_JOB_TITLE_3,P55_SNAME_3,P55_SLATSNAME_3,P55_SEMAIL_3,P55_SPHONE_3,P55_JOB_TITLE_2,P55_SNAME_2,P55_SLASTNAME_2,P55_SEMAIL_2,P55_SPHONE_2'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71607219522184466)
,p_name=>'Update/Insert'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71614162958184473)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$x(''P55_EXISTS'').value == 1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71606700340184465)
,p_event_id=>wwv_flow_imp.id(71607219522184466)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :P55_FLAG := 0;',
'    UPDATE v_clients',
'    SET company_name = :P55_SCOMPANYNAME',
'        ,email = :P55_SEMAIL',
'        ,phone = :P55_SPHONE',
'        ,website = :P55_SWEBSITE',
'        ,country_name = :P55_SCOUNTRY',
'        ,city_name = :P55_SCITY',
'        ,company_address = :P55_SCOMPANYADDRESS',
'        ,shipping_address = :P55_SSHIPPINGADDRESS',
'        ,zip = :P55_SZIP',
'        ,company_code = :P55_SCOMPANYCODE',
'        ,tax_code = :P55_SPVMCODE',
'        ,do_payment_delay = :P55_NPAYMENTDELAY',
'        ,payment_delay_in_days = :P55_NPAYMENTDELAYQNT',
'        ,contract_number = :P55_SCONTRACTNUMBER',
'        ,responsible_employee = :P55_SRESPONSIBLE_EMPLOYEE',
'        ,has_comment = :P55_NCOMMENT',
'        ,company_comment = :P55_SCOMMENT',
'    WHERE id = :P55_NID;    ',
'    :P55_FLAG := 0;',
'exception when others then',
'    :P55_FLAG := 1;',
'END;'))
,p_attribute_02=>'P55_NID,P55_SCOMPANYNAME,P55_SWEBSITE,P55_SEMAIL,P55_SPHONE,P55_SCOUNTRY,P55_SCITY,P55_SCOMPANYADDRESS,P55_SSHIPPINGADDRESS,P55_SZIP,P55_SCOMPANYCODE,P55_SPVMCODE,P55_NPAYMENTDELAY,P55_NPAYMENTDELAYQNT,P55_SCONTRACTNUMBER,P55_SURCHARGE_ID,P55_SRESPON'
||'SIBLE_EMPLOYEE,P55_NCOMMENT,P55_SCOMMENT'
,p_attribute_03=>'P55_FLAG'
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
 p_id=>wwv_flow_imp.id(71605769127184465)
,p_event_id=>wwv_flow_imp.id(71607219522184466)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'il_company_id number;',
'BEGIN',
'    :P55_FLAG := 0;',
'    INSERT INTO v_clients(company_name',
'                         ,email',
'                         ,phone',
'                         ,website',
'                         ,country_name',
'                         ,city_name',
'                         ,company_address',
'                         ,shipping_address',
'                         ,zip',
'                         ,company_code',
'                         ,tax_code',
'                         ,do_payment_delay',
'                         ,payment_delay_in_days',
'                         ,contract_number',
'                         ,responsible_employee',
'                         ,has_comment',
'                         ,company_comment)',
'    VALUES      (:P55_SCOMPANYNAME',
'                ,:P55_SEMAIL',
'                ,:P55_SPHONE',
'                ,:P55_SWEBSITE',
'                ,:P55_SCOUNTRY',
'                ,:P55_SCITY',
'                ,:P55_SCOMPANYADDRESS',
'                ,:P55_SSHIPPINGADDRESS',
'                ,:P55_SZIP',
'                ,:P55_SCOMPANYCODE',
'                ,:P55_SPVMCODE',
'                ,:P55_NPAYMENTDELAY',
'                ,:P55_NPAYMENTDELAYQNT',
'                ,:P55_SCONTRACTNUMBER',
'                ,:P55_SRESPONSIBLE_EMPLOYEE',
'                ,:P55_NCOMMENT',
'                ,:P55_SCOMMENT);',
'    SELECT nid',
'    INTO il_company_id',
'    FROM companies',
'    WHERE scompany_name = :P55_SCOMPANYNAME;',
'',
'    if to_number(:P55_NEW) = 1 then',
'        insert into CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P55_JOB_TITLE, :P55_SNAME, :P55_SLASTNAME, :P55_SEMAIL_1, :P55_SPHONE_1);',
'    elsif to_number(:P55_NEW) = 2 then',
'            insert into CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P55_JOB_TITLE, :P55_SNAME, :P55_SLASTNAME, :P55_SEMAIL_1, :P55_SPHONE_1);',
'            insert into CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P55_JOB_TITLE_2,:P55_SNAME_2, :P55_SLASTNAME_2, :P55_SEMAIL_2, :P55_SPHONE_2);',
'    elsif to_number(:P55_NEW) = 3 then',
'            insert into CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P55_JOB_TITLE, :P55_SNAME, :P55_SLASTNAME, :P55_SEMAIL_1, :P55_SPHONE_1);',
'            insert into CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P55_JOB_TITLE_2,:P55_SNAME_2, :P55_SLASTNAME_2, :P55_SEMAIL_2, :P55_SPHONE_2);',
'                insert into CONTACTS (ncompany_id, sjob_title, sname, slast_name, semail, sphone)',
'        values (il_company_id, :P55_JOB_TITLE_3,:P55_SNAME_3, :P55_SLATSNAME_3, :P55_SEMAIL_3, :P55_SPHONE_3);',
'    end if;',
'    INSERT INTO client_surcharge_groups(nclient_id, nsurcharge_id) VALUES(il_company_id,NVL(:P55_SURCHARGE_ID,0));',
'    :P55_FLAG := 0;',
'exception when others then',
'    :P55_FLAG := 1;',
'end;'))
,p_attribute_02=>'P55_NTYPE,P55_NID,P55_SCOMPANYNAME,P55_SWEBSITE,P55_SPHONE,P55_SEMAIL,P55_SCOUNTRY,P55_SCITY,P55_SCOMPANYADDRESS,P55_SSHIPPINGADDRESS,P55_SZIP,P55_SCOMPANYCODE,P55_SPVMCODE,P55_JOB_TITLE,P55_SNAME,P55_SLASTNAME,P55_SEMAIL_1,P55_SPHONE_1,P55_JOB_TITLE'
||'_2,P55_SNAME_2,P55_SLASTNAME_2,P55_SEMAIL_2,P55_SPHONE_2,P55_JOB_TITLE_3,P55_SNAME_3,P55_SLATSNAME_3,P55_SEMAIL_3,P55_SPHONE_3,P55_NEW,P55_NPAYMENTDELAY,P55_NPAYMENTDELAYQNT,P55_SCONTRACTNUMBER,P55_SURCHARGE_ID,P55_SRESPONSIBLE_EMPLOYEE,P55_NCOMMENT,'
||'P55_SCOMMENT'
,p_attribute_03=>'P55_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71606232170184465)
,p_event_id=>wwv_flow_imp.id(71607219522184466)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai atnaujintas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P55_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71604773776184464)
,p_event_id=>wwv_flow_imp.id(71607219522184466)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai sukurtas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P55_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71605210565184464)
,p_event_id=>wwv_flow_imp.id(71607219522184466)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Eveskite pavadinim\0105, el. pa\0161t\0105, \0161al\012F ir miest\0105!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P55_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71604221906184464)
,p_event_id=>wwv_flow_imp.id(71607219522184466)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16660915500054943)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P55_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71603203164184463)
,p_event_id=>wwv_flow_imp.id(71607219522184466)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:2:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P55_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71603702187184463)
,p_event_id=>wwv_flow_imp.id(71607219522184466)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Eveskite pavadinim\0105, el. pa\0161t\0105, \0161al\012F ir miest\0105!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P55_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71602689436184463)
,p_event_id=>wwv_flow_imp.id(71607219522184466)
,p_event_result=>'FALSE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(16660915500054943)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P55_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71602274872184463)
,p_event_id=>wwv_flow_imp.id(71607219522184466)
,p_event_result=>'FALSE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:2:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P55_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71601792719184463)
,p_name=>'Payment Delay 1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_NPAYMENTDELAY'
,p_condition_element=>'P55_NPAYMENTDELAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71601311476184463)
,p_event_id=>wwv_flow_imp.id(71601792719184463)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_NPAYMENTDELAYQNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71600929134184462)
,p_name=>'Payment Delay 0'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_NPAYMENTDELAY'
,p_condition_element=>'P55_NPAYMENTDELAY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71600447563184462)
,p_event_id=>wwv_flow_imp.id(71600929134184462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_NPAYMENTDELAYQNT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71600054619184462)
,p_name=>'Load Data'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_SCOMPANYNAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71599565191184462)
,p_event_id=>wwv_flow_imp.id(71600054619184462)
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
'               SELECT company_name',
'               FROM   v_companies',
'               WHERE  company_name = TO_CHAR( :P55_SCOMPANYNAME)',
'               AND    type = 0',
'           );',
'',
'    SELECT DECODE(COUNT(*), 0, NULL, 2)',
'    INTO   n_ex_cs',
'    FROM   (',
'               SELECT company_name',
'               FROM   v_company_ext',
'               WHERE  company_name = TO_CHAR( :P55_SCOMPANYNAME)',
'           );',
'',
'    apex_util.set_session_state(''P55_EXISTS''',
'                               ,COALESCE(n_ex_c',
'                                        ,n_ex_cs));',
'END;'))
,p_attribute_02=>'P55_SCOMPANYNAME'
,p_attribute_03=>'P55_EXISTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71599036720184461)
,p_event_id=>wwv_flow_imp.id(71600054619184462)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF TO_CHAR( :P55_EXISTS) = 1 THEN',
'        SELECT id',
'              ,website',
'              ,replace(phone, '' '', '''')',
'              ,email',
'              ,country_name',
'              ,city_name',
'              ,company_address',
'              ,shipping_address',
'              ,zip',
'              ,company_code',
'              ,tax_code',
'              ,contract_number',
'              ,do_payment_delay',
'              ,payment_delay_in_days',
'              ,responsible_employee',
'        INTO  :P55_NID',
'              ,:P55_SWEBSITE',
'              ,:P55_SPHONE',
'              ,:P55_SEMAIL',
'              ,:P55_SCOUNTRY',
'              ,:P55_SCITY',
'              ,:P55_SCOMPANYADDRESS',
'              ,:P55_SSHIPPINGADDRESS',
'              ,:P55_SZIP',
'              ,:P55_SCOMPANYCODE',
'              ,:P55_SPVMCODE',
'              ,:P55_SCONTRACTNUMBER',
'              ,:P55_NPAYMENTDELAY',
'              ,:P55_NPAYMENTDELAYQNT',
'              ,:P55_SRESPONSIBLE_EMPLOYEE',
'        FROM   v_clients',
'        WHERE    company_name = :P55_SCOMPANYNAME;',
'    ELSIF TO_CHAR( :P55_EXISTS) = 2 THEN',
'        SELECT id',
'              ,website',
'              ,replace(phone, '' '', '''')',
'              ,email',
'              ,country_name',
'              ,city_name',
'              ,company_address',
'              ,shipping_address',
'              ,zip',
'              ,company_code',
'              ,tax_code',
'        INTO  :P55_NID',
'              ,:P55_SWEBSITE',
'              ,:P55_SPHONE',
'              ,:P55_SEMAIL',
'              ,:P55_SCOUNTRY',
'              ,:P55_SCITY',
'              ,:P55_SCOMPANYADDRESS',
'              ,:P55_SSHIPPINGADDRESS',
'              ,:P55_SZIP',
'              ,:P55_SCOMPANYCODE',
'              ,:P55_SPVMCODE',
'        FROM   v_company_ext',
'        WHERE  company_name = :P55_SCOMPANYNAME;',
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
'        INTO  :P55_NID',
'              ,:P55_SWEBSITE',
'              ,:P55_SPHONE',
'              ,:P55_SEMAIL',
'              ,:P55_SCOUNTRY',
'              ,:P55_SCITY',
'              ,:P55_SCOMPANYADDRESS',
'              ,:P55_SSHIPPINGADDRESS',
'              ,:P55_SZIP',
'              ,:P55_SCOMPANYCODE',
'              ,:P55_SPVMCODE',
'              ,:P55_SCONTRACTNUMBER',
'              ,:P55_NPAYMENTDELAY',
'              ,:P55_NPAYMENTDELAYQNT',
'              ,:P55_SRESPONSIBLE_EMPLOYEE',
'        FROM   DUAL;',
'    END IF;',
'END;'))
,p_attribute_02=>'P55_EXISTS,P55_SCOMPANYNAME'
,p_attribute_03=>'P55_SWEBSITE,P55_SPHONE,P55_SEMAIL,P55_SCOUNTRY,P55_SCOMPANYADDRESS,P55_SSHIPPINGADDRESS,P55_SZIP,P55_SCOMPANYCODE,P55_SPVMCODE,P55_SCONTRACTNUMBER,P55_NPAYMENTDELAY,P55_NPAYMENTDELAYQNT,P55_NID,P55_SCITY,P55_SRESPONSIBLE_EMPLOYEE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71598542185184461)
,p_event_id=>wwv_flow_imp.id(71600054619184462)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(71614162958184473)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($x(''P55_EXISTS'').value == 1) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Atnaujinti";',
'  $x_Hide("P55_NEW");',
'} else if ($x(''P55_EXISTS'').value == 2) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'  $x_Show("P55_NEW");',
'} else {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'   $x_Show("P55_NEW");',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71598054155184461)
,p_event_id=>wwv_flow_imp.id(71600054619184462)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_SWEBSITE,P55_SPHONE,P55_SEMAIL,P55_SCOUNTRY,P55_SCITY,P55_SCOMPANYADDRESS,P55_SSHIPPINGADDRESS,P55_SZIP,P55_SCOMPANYCODE,P55_SPVMCODE,P55_SCOMPANYNAME,P55_SRESPONSIBLE_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71597515342184460)
,p_event_id=>wwv_flow_imp.id(71600054619184462)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(71614162958184473)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71597155699184460)
,p_name=>'Load Data 2'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_SCOMPANYCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71596588171184460)
,p_event_id=>wwv_flow_imp.id(71597155699184460)
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
'               SELECT company_code',
'               FROM   v_companies',
'               WHERE  company_code = TO_CHAR(:P55_SCOMPANYCODE)',
'               AND    type = 0',
'           );',
'',
'    SELECT DECODE(COUNT(*), 0, NULL, 2)',
'    INTO   n_ex_cs',
'    FROM   (',
'               SELECT company_code',
'               FROM   v_company_ext',
'               WHERE  company_code = TO_CHAR(:P55_SCOMPANYCODE)',
'           );',
'',
'    apex_util.set_session_state(''P55_EXISTS''',
'                               ,COALESCE(n_ex_c',
'                                        ,n_ex_cs));',
'END;'))
,p_attribute_02=>'P55_SCOMPANYCODE'
,p_attribute_03=>'P55_EXISTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71596147307184460)
,p_event_id=>wwv_flow_imp.id(71597155699184460)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF TO_CHAR( :P55_EXISTS) = 1 THEN',
'        SELECT id',
'              ,company_name',
'              ,website',
'              ,replace(phone, '' '', '''')',
'              ,email',
'              ,country_name',
'              ,city_name',
'              ,company_address',
'              ,shipping_address',
'              ,zip',
'              ,tax_code',
'              ,contract_number',
'              ,do_payment_delay',
'              ,payment_delay_in_days',
'              ,responsible_employee',
'        INTO  :P55_NID',
'              ,:P55_SCOMPANYNAME',
'              ,:P55_SWEBSITE',
'              ,:P55_SPHONE',
'              ,:P55_SEMAIL',
'              ,:P55_SCOUNTRY',
'              ,:P55_SCITY',
'              ,:P55_SCOMPANYADDRESS',
'              ,:P55_SSHIPPINGADDRESS',
'              ,:P55_SZIP',
'              ,:P55_SPVMCODE',
'              ,:P55_SCONTRACTNUMBER',
'              ,:P55_NPAYMENTDELAY',
'              ,:P55_NPAYMENTDELAYQNT',
'              ,:P55_SRESPONSIBLE_EMPLOYEE',
'        FROM   v_clients',
'        WHERE  company_code = :P55_SCOMPANYCODE;',
'    ELSIF TO_CHAR( :P55_EXISTS) = 2 THEN',
'        SELECT id',
'              ,company_name',
'              ,website',
'              ,replace(phone, '' '', '''')',
'              ,email',
'              ,country_name',
'              ,city_name',
'              ,company_address',
'              ,shipping_address',
'              ,zip',
'              ,tax_code',
'        INTO  :P55_NID',
'              ,:P55_SCOMPANYNAME',
'              ,:P55_SWEBSITE',
'              ,:P55_SPHONE',
'              ,:P55_SEMAIL',
'              ,:P55_SCOUNTRY',
'              ,:P55_SCITY',
'              ,:P55_SCOMPANYADDRESS',
'              ,:P55_SSHIPPINGADDRESS',
'              ,:P55_SZIP',
'              ,:P55_SPVMCODE',
'        FROM   v_company_ext',
'        WHERE  company_code = :P55_SCOMPANYCODE;',
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
'        INTO  :P55_NID',
'              ,:P55_SCOMPANYNAME',
'              ,:P55_SWEBSITE',
'              ,:P55_SPHONE',
'              ,:P55_SEMAIL',
'              ,:P55_SCOUNTRY',
'              ,:P55_SCITY',
'              ,:P55_SCOMPANYADDRESS',
'              ,:P55_SSHIPPINGADDRESS',
'              ,:P55_SZIP',
'              ,:P55_SPVMCODE',
'              ,:P55_SCONTRACTNUMBER',
'              ,:P55_NPAYMENTDELAY',
'              ,:P55_NPAYMENTDELAYQNT',
'              ,:P55_SRESPONSIBLE_EMPLOYEE',
'        FROM   DUAL;',
'    END IF;',
'END;'))
,p_attribute_02=>'P55_EXISTS,P55_SCOMPANYCODE'
,p_attribute_03=>'P55_SWEBSITE,P55_SPHONE,P55_SEMAIL,P55_SCOUNTRY,P55_SCITY,P55_SCOMPANYADDRESS,P55_SSHIPPINGADDRESS,P55_SZIP,P55_SPVMCODE,P55_SCONTRACTNUMBER,P55_NPAYMENTDELAY,P55_NPAYMENTDELAYQNT,P55_SCOMPANYNAME,P55_NID,P55_SRESPONSIBLE_EMPLOYEE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71595636213184459)
,p_event_id=>wwv_flow_imp.id(71597155699184460)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_SCITY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id',
'FROM   v_cities',
'WHERE  id = (SELECT city_id',
'             FROM   v_companies',
'             WHERE  id = :P55_NID)'))
,p_attribute_07=>'P55_NID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71595078397184459)
,p_event_id=>wwv_flow_imp.id(71597155699184460)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(71614162958184473)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($x(''P55_EXISTS'').value == 1) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Atnaujinti";',
'} else if ($x(''P55_EXISTS'').value == 2) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'} else {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71594645489184459)
,p_event_id=>wwv_flow_imp.id(71597155699184460)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_SWEBSITE,P55_SPHONE,P55_SEMAIL,P55_SCOUNTRY,P55_SCITY,P55_SCOMPANYADDRESS,P55_SSHIPPINGADDRESS,P55_SZIP,P55_SCOMPANYNAME,P55_SPVMCODE,P55_SCOMPANYCODE,P55_SRESPONSIBLE_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71594154484184459)
,p_event_id=>wwv_flow_imp.id(71597155699184460)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(71614162958184473)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71593775011184459)
,p_name=>'Load Data 3'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_SPVMCODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71593184478184458)
,p_event_id=>wwv_flow_imp.id(71593775011184459)
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
'               SELECT tax_code',
'               FROM   v_companies',
'               WHERE  tax_code = TO_CHAR(:P55_SPVMCODE)',
'               AND    type = 0',
'           );',
'',
'    SELECT DECODE(COUNT(*), 0, NULL, 2)',
'    INTO   n_ex_cs',
'    FROM   (',
'               SELECT tax_code',
'               FROM   v_company_ext',
'               WHERE  tax_code = TO_CHAR(:P55_SPVMCODE)',
'           );',
'',
'    apex_util.set_session_state(''P55_EXISTS''',
'                               ,COALESCE(n_ex_c',
'                                        ,n_ex_cs));',
'END;'))
,p_attribute_02=>'P55_SPVMCODE'
,p_attribute_03=>'P55_EXISTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71592764145184458)
,p_event_id=>wwv_flow_imp.id(71593775011184459)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF TO_CHAR( :P55_EXISTS) = 1 THEN',
'        SELECT id',
'              ,company_name',
'              ,website',
'              ,replace(phone, '' '', '''')',
'              ,email',
'              ,country_name',
'              ,city_name',
'              ,company_address',
'              ,shipping_address',
'              ,zip',
'              ,company_code',
'              ,contract_number',
'              ,do_payment_delay',
'              ,payment_delay_in_days',
'              ,responsible_employee',
'        INTO  :P55_NID',
'              ,:P55_SCOMPANYNAME',
'              ,:P55_SWEBSITE',
'              ,:P55_SPHONE',
'              ,:P55_SEMAIL',
'              ,:P55_SCOUNTRY',
'              ,:P55_SCITY',
'              ,:P55_SCOMPANYADDRESS',
'              ,:P55_SSHIPPINGADDRESS',
'              ,:P55_SZIP',
'              ,:P55_SCOMPANYCODE',
'              ,:P55_SCONTRACTNUMBER',
'              ,:P55_NPAYMENTDELAY',
'              ,:P55_NPAYMENTDELAYQNT',
'              ,:P55_SRESPONSIBLE_EMPLOYEE',
'        FROM   v_clients',
'        WHERE  tax_code = :P55_SPVMCODE;',
'    ELSIF TO_CHAR( :P55_EXISTS) = 2 THEN',
'        SELECT id',
'              ,company_name',
'              ,website',
'              ,replace(phone, '' '', '''')',
'              ,email',
'              ,country_name',
'              ,city_name',
'              ,company_address',
'              ,shipping_address',
'              ,zip',
'              ,company_code',
'        INTO  :P55_NID',
'              ,:P55_SCOMPANYNAME',
'              ,:P55_SWEBSITE',
'              ,:P55_SPHONE',
'              ,:P55_SEMAIL',
'              ,:P55_SCOUNTRY',
'              ,:P55_SCITY',
'              ,:P55_SCOMPANYADDRESS',
'              ,:P55_SSHIPPINGADDRESS',
'              ,:P55_SZIP',
'              ,:P55_SCOMPANYCODE',
'        FROM   v_company_ext',
'        WHERE  tax_code = :P55_SPVMCODE;',
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
'        INTO  :P55_NID',
'              ,:P55_SCOMPANYNAME',
'              ,:P55_SWEBSITE',
'              ,:P55_SPHONE',
'              ,:P55_SEMAIL',
'              ,:P55_SCOUNTRY',
'              ,:P55_SCITY',
'              ,:P55_SCOMPANYADDRESS',
'              ,:P55_SSHIPPINGADDRESS',
'              ,:P55_SZIP',
'              ,:P55_SPVMCODE',
'              ,:P55_SCONTRACTNUMBER',
'              ,:P55_NPAYMENTDELAY',
'              ,:P55_NPAYMENTDELAYQNT',
'              ,:P55_SRESPONSIBLE_EMPLOYEE',
'        FROM   DUAL;',
'    END IF;',
'END;'))
,p_attribute_02=>'P55_EXISTS,P55_SPVMCODE'
,p_attribute_03=>'P55_SWEBSITE,P55_SPHONE,P55_SEMAIL,P55_SCOUNTRY,P55_SCITY,P55_SCOMPANYADDRESS,P55_SSHIPPINGADDRESS,P55_SZIP,P55_SCOMPANYCODE,P55_SCONTRACTNUMBER,P55_NPAYMENTDELAY,P55_NPAYMENTDELAYQNT,P55_SCOMPANYNAME,P55_NID,P55_SRESPONSIBLE_EMPLOYEE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71592267046184458)
,p_event_id=>wwv_flow_imp.id(71593775011184459)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(71614162958184473)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($x(''P55_EXISTS'').value == 1) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Atnaujinti";',
'} else if ($x(''P55_EXISTS'').value == 2) {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'} else {',
'  document.getElementById("CREATE_BTN").innerHTML  = "Sukurti";',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71591760223184458)
,p_event_id=>wwv_flow_imp.id(71593775011184459)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_SWEBSITE,P55_SPHONE,P55_SEMAIL,P55_SCOUNTRY,P55_SCITY,P55_SCOMPANYADDRESS,P55_SSHIPPINGADDRESS,P55_SZIP,P55_SCOMPANYNAME,P55_SCOMPANYCODE,P55_SPVMCODE,P55_SRESPONSIBLE_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71591206288184457)
,p_event_id=>wwv_flow_imp.id(71593775011184459)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(71614162958184473)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71590794879184457)
,p_name=>'Clear'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(71614545566184473)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71590358359184457)
,p_event_id=>wwv_flow_imp.id(71590794879184457)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_EXISTS,P55_NID,P55_SCOMPANYNAME,P55_SWEBSITE,P55_SPHONE,P55_SEMAIL,P55_SCOUNTRY,P55_SCITY,P55_SCOMPANYADDRESS,P55_SSHIPPINGADDRESS,P55_SZIP,P55_SCOMPANYCODE,P55_SPVMCODE,P55_SCONTRACTNUMBER,P55_SURCHARGE_ID,P55_NPAYMENTDELAY,P55_NPAYMENTDELAYQNT,'
||'P55_NEW,P55_JOB_TITLE,P55_SNAME,P55_SLASTNAME,P55_SEMAIL_1,P55_SPHONE_1,P55_JOB_TITLE_2,P55_SNAME_2,P55_SLASTNAME_2,P55_SEMAIL_2,P55_NTYPE,P55_SPHONE_2,P55_JOB_TITLE_3,P55_SNAME_3,P55_SLATSNAME_3,P55_SEMAIL_3,P55_SPHONE_3'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71589888830184457)
,p_name=>'Comment 0'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_NCOMMENT'
,p_condition_element=>'P55_NCOMMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71589448611184456)
,p_event_id=>wwv_flow_imp.id(71589888830184457)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_SCOMMENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71588981751184456)
,p_name=>'Comment 1'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_NCOMMENT'
,p_condition_element=>'P55_NCOMMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71588479362184456)
,p_event_id=>wwv_flow_imp.id(71588981751184456)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P55_SCOMMENT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71615480239184474)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(16660915500054943)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Klientas'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
 p_id=>wwv_flow_imp.id(71613159347184470)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71615895436184474)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(16660915500054943)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Klientas'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_name=>unistr('Automobilio Mark\0117')
,p_alias=>unistr('MARK\0116')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Automobilio Mark\0117')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230129191104'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20705765112471566)
,p_plug_name=>'Automobilis'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9626611630517882)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'V_VEHICLE_BRANDS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20707442457471568)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9629970051517884)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20707868078471568)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20707442457471568)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20709452191471569)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(20707442457471568)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161trinti')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P13_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20709864233471570)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(20707442457471568)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161saugoti')
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P13_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20710216024471570)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(20707442457471568)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P13_NID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20706010638471567)
,p_name=>'P13_NID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20705765112471566)
,p_item_source_plug_id=>wwv_flow_imp.id(20705765112471566)
,p_source=>'NID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20706423916471567)
,p_name=>'P13_SNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20705765112471566)
,p_item_source_plug_id=>wwv_flow_imp.id(20705765112471566)
,p_prompt=>'Pavadinimas'
,p_source=>'SNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
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
 p_id=>wwv_flow_imp.id(47497605894967357)
,p_name=>'P13_FLAG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20705765112471566)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20707986867471568)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20707868078471568)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9208902359664340)
,p_event_id=>wwv_flow_imp.id(20707986867471568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20705765112471566)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9209024491664341)
,p_event_id=>wwv_flow_imp.id(20707986867471568)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:8:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9046037660156672)
,p_name=>'Delete'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20709452191471569)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9207408789664325)
,p_event_id=>wwv_flow_imp.id(9046037660156672)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161trinti \012Fra\0161\0105?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9207204439664323)
,p_event_id=>wwv_flow_imp.id(9046037660156672)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE',
'FROM v_vehicle_brands ',
'WHERE nid = :P13_NID;'))
,p_attribute_02=>'P13_NID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9207555826664326)
,p_event_id=>wwv_flow_imp.id(9046037660156672)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20705765112471566)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9207581671664327)
,p_event_id=>wwv_flow_imp.id(9046037660156672)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:8:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9207762642664328)
,p_name=>'Update'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20709864233471570)
,p_condition_element=>'P13_SNAME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9208137933664332)
,p_event_id=>wwv_flow_imp.id(9207762642664328)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE v_vehicle_brands',
'SET sname = :P13_SNAME',
'WHERE nid = :P13_NID;',
':P13_FLAG := 0;',
'EXCEPTION WHEN OTHERS THEN',
':P13_FLAG := 1;'))
,p_attribute_02=>'P13_NID,P13_SNAME'
,p_attribute_03=>'P13_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15457771679382369)
,p_event_id=>wwv_flow_imp.id(9207762642664328)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Eveskite pavadinim\0105!')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9207888387664330)
,p_event_id=>wwv_flow_imp.id(9207762642664328)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai atnaujintas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P13_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70355172512077327)
,p_event_id=>wwv_flow_imp.id(9207762642664328)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Tokiu pavadinimu mark\0117 jau egzistuoja!')
,p_attribute_03=>'danger'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P13_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9208067930664331)
,p_event_id=>wwv_flow_imp.id(9207762642664328)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20705765112471566)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9208274311664333)
,p_event_id=>wwv_flow_imp.id(9207762642664328)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:8:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9208360151664334)
,p_name=>'Insert'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20710216024471570)
,p_condition_element=>'P13_SNAME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9208573970664336)
,p_event_id=>wwv_flow_imp.id(9208360151664334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO v_vehicle_brands(sname)',
'VALUES (:P13_SNAME);',
':P13_FLAG := 0;',
'EXCEPTION WHEN OTHERS THEN',
':P13_FLAG := 1;'))
,p_attribute_02=>'P13_SNAME'
,p_attribute_03=>'P13_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15457900896382370)
,p_event_id=>wwv_flow_imp.id(9208360151664334)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Eveskite pavadinim\0105!')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9208594210664337)
,p_event_id=>wwv_flow_imp.id(9208360151664334)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai sukurtas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P13_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70355090775077326)
,p_event_id=>wwv_flow_imp.id(9208360151664334)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Tokiu pavadinimu mark\0117 jau egzistuoja!')
,p_attribute_03=>'danger'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P13_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9208738343664338)
,p_event_id=>wwv_flow_imp.id(9208360151664334)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20705765112471566)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9208799515664339)
,p_event_id=>wwv_flow_imp.id(9208360151664334)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:8:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20711043130471570)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(20705765112471566)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Automobilis'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20711496899471570)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20710634123471570)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(20705765112471566)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Automobilis'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_name=>'Automobilio Modelis'
,p_alias=>'AUTOMOBILIO-MODELIS'
,p_page_mode=>'MODAL'
,p_step_title=>'Automobilio Modelis'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230129191340'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28953836034303682)
,p_plug_name=>'Automobilio Modelis'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9626611630517882)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'V_VEHICLE_MODELS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28956299718303684)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9629970051517884)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28956676675303685)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28956299718303684)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28958282904303686)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(28956299718303684)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161trinti')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P34_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28958662045303686)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(28956299718303684)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161saugoti')
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P34_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28959077595303686)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(28956299718303684)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P34_NID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28954118025303683)
,p_name=>'P34_NID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28953836034303682)
,p_item_source_plug_id=>wwv_flow_imp.id(28953836034303682)
,p_source=>'NID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28954574982303683)
,p_name=>'P34_NCARID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(28953836034303682)
,p_item_source_plug_id=>wwv_flow_imp.id(28953836034303682)
,p_prompt=>unistr('Automobilio Mark\0117')
,p_source=>'NCAR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT sname d, nid r FROM v_vehicle_brands'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28954914969303684)
,p_name=>'P34_SNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(28953836034303682)
,p_item_source_plug_id=>wwv_flow_imp.id(28953836034303682)
,p_prompt=>'Automobilio Modelis'
,p_source=>'SNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>30
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
 p_id=>wwv_flow_imp.id(47497341566967355)
,p_name=>'P34_FLAG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28953836034303682)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28956706267303685)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28956676675303685)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9209245238664343)
,p_event_id=>wwv_flow_imp.id(28956706267303685)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28953836034303682)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9209145935664342)
,p_event_id=>wwv_flow_imp.id(28956706267303685)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:33:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9209287220664344)
,p_name=>'Delete'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28958282904303686)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9209441478664345)
,p_event_id=>wwv_flow_imp.id(9209287220664344)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161trinti \012Fra\0161\0105?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9209490706664346)
,p_event_id=>wwv_flow_imp.id(9209287220664344)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'DELETE FROM v_vehicle_models WHERE nid = :P34_NID;'
,p_attribute_02=>'P34_NID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9209638748664347)
,p_event_id=>wwv_flow_imp.id(9209287220664344)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28953836034303682)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9209709928664348)
,p_event_id=>wwv_flow_imp.id(9209287220664344)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:33:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9209819072664349)
,p_name=>'Update'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28958662045303686)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9209883199664350)
,p_event_id=>wwv_flow_imp.id(9209819072664349)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P34_NCARID IS NULL OR :P34_SNAME IS NULL THEN',
'        :P34_FLAG :=1;',
'    ELSE    ',
'        update v_vehicle_models',
'        set sname = :P34_SNAME,',
'            ncar_id = :P34_NCARID',
'        where nid = :P34_NID;',
'        :P34_FLAG :=0;',
'    END IF;',
'    EXCEPTION WHEN OTHERS THEN',
'        :P34_FLAG := 2;',
'END;    '))
,p_attribute_02=>'P34_NID,P34_SNAME,P34_NCARID'
,p_attribute_03=>'P34_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9210069102664351)
,p_event_id=>wwv_flow_imp.id(9209819072664349)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai atnaujintas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47497274758967354)
,p_event_id=>wwv_flow_imp.id(9209819072664349)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Pasirinkite automobilio mark\0119 ir \012Fveskite pavadinim\0105!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70355894020077334)
,p_event_id=>wwv_flow_imp.id(9209819072664349)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Evestas automobilio modelis jau egzistuoja sistemoje!')
,p_attribute_02=>'Klaida!'
,p_attribute_03=>'danger'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_FLAG'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70355634649077331)
,p_event_id=>wwv_flow_imp.id(9209819072664349)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9210424129664355)
,p_name=>'Insert'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(28959077595303686)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9210611617664357)
,p_event_id=>wwv_flow_imp.id(9210424129664355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P34_NCARID IS NULL OR :P34_SNAME IS NULL THEN',
'        :P34_FLAG :=1;',
'    ELSE  ',
'        insert into v_vehicle_models(ncar_id, sname)',
'        values(:P34_NCARID, UPPER(:P34_SNAME));',
'        :P34_FLAG :=0;',
'    END IF;',
'    EXCEPTION WHEN OTHERS THEN',
'        :P34_FLAG :=2;',
'END;  '))
,p_attribute_02=>'P34_SNAME,P34_NCARID'
,p_attribute_03=>'P34_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9210739790664358)
,p_event_id=>wwv_flow_imp.id(9210424129664355)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai sukurtas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47497138558967353)
,p_event_id=>wwv_flow_imp.id(9210424129664355)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Pasirinkite automobilio mark\0119 ir \012Fveskite pavadinim\0105!')
,p_attribute_03=>'warning'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70356274574077338)
,p_event_id=>wwv_flow_imp.id(9210424129664355)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Evestas automobilio modelis jau egzistuoja sistemoje!')
,p_attribute_02=>'Klaida!'
,p_attribute_03=>'danger'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_FLAG'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70356045712077335)
,p_event_id=>wwv_flow_imp.id(9210424129664355)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P34_FLAG,P34_NCARID,P34_SNAME,P34_NID'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70355276360077328)
,p_event_id=>wwv_flow_imp.id(9210424129664355)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P34_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28959848551303687)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(28953836034303682)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Autoobilio Modelis'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28960275398303687)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_is_stateful_y_n=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28959480282303686)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(28953836034303682)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Autoobilio Modelis'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

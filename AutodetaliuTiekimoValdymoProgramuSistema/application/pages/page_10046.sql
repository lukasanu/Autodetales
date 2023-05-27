prompt --application/pages/page_10046
begin
--   Manifest
--     PAGE: 10046
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
 p_id=>10046
,p_name=>unistr('Sistemos Vartotojo K\016Brimas')
,p_alias=>'SISTEMOS-VARTOTOJAS'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Sistemos Vartotojo K\016Brimas')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'function viewNewPassword()',
'{',
'  var newPasswordInput = document.getElementById(''P10046_PASSWORD'');',
'  var passStatus = document.getElementById(''pass-status'');',
'',
'  if (newPasswordInput.type == ''password''){',
'    newPasswordInput.type=''text'';',
'    passStatus.className=''fa fa-eye-slash field-icon'';',
'    ',
'  }',
'  else{',
'    newPasswordInput.type=''password'';',
'    passStatus.className=''fa fa-eye field-icon'';',
'  }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.field-icon {',
'    right : 20px;',
'    margin-left: -15px;',
'    margin-top: 5px;',
'    position: relative;',
'    z-index: 2;',
'    cursor: pointer;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230509170336'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11389230995375792)
,p_plug_name=>'Sistemos Naudotojas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9626611630517882)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select workspace_id, user_name, first_name, LAST_NAME, is_admin from APEX_WORKSPACE_APEX_USERS;'
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11393157742375801)
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
 p_id=>wwv_flow_imp.id(11393597088375801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11393157742375801)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11395958773375806)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11393157742375801)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P10046_WORKSPACE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9946142942691939)
,p_name=>'P10046_PASSWORD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_item_source_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_prompt=>unistr('Slapta\017Eodis')
,p_post_element_text=>'<i id="pass-status" class="fa fa-eye field-icon" aria-hidden="true" onClick="viewNewPassword()"></i>'
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11389692867375794)
,p_name=>'P10046_WORKSPACE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_item_source_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_source=>'WORKSPACE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11390041268375796)
,p_name=>'P10046_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_item_source_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_prompt=>'Vartotojo vardas'
,p_source=>'USER_NAME'
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
 p_id=>wwv_flow_imp.id(11390401435375798)
,p_name=>'P10046_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_item_source_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_prompt=>'Vardas'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
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
 p_id=>wwv_flow_imp.id(11390879968375798)
,p_name=>'P10046_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_item_source_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_prompt=>unistr('Pavard\0117')
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
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
 p_id=>wwv_flow_imp.id(11391215654375799)
,p_name=>'P10046_IS_ADMIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_item_source_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_prompt=>unistr('Rol\0117')
,p_source=>'IS_ADMIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Administratorius;1,Paprastas vartotojas;0'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46433765556505766)
,p_name=>'P10046_FLAG'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_item_source_plug_id=>wwv_flow_imp.id(11389230995375792)
,p_source=>'WORKSPACE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11393674127375801)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11393597088375801)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12025431373599030)
,p_event_id=>wwv_flow_imp.id(11393674127375801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10046_USER_NAME,P10046_WORKSPACE_ID,P10046_FIRST_NAME,P10046_LAST_NAME,P10046_PASSWORD,P10046_IS_ADMIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11394403161375803)
,p_event_id=>wwv_flow_imp.id(11393674127375801)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:10045:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9945960656691937)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11395958773375806)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9946032440691938)
,p_event_id=>wwv_flow_imp.id(9945960656691937)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--DECLARE',
'--n_role_id number;',
'--n_app_id number;',
'--BEGIN',
'--select application_id ',
'--into n_app_id',
'--from apex_applications where alias = ''DETALIU-TIEKIMAS'';',
'--',
'--IF :P10046_IS_ADMIN = ''ADMIN:CREATE:EDIT'' THEN',
'--select role_id ',
'--into n_role_id',
'--from APEX_APPL_ACL_ROLES',
'--where role_name = ''Contributor'';',
'--ELSE ',
'--select role_id ',
'--into n_role_id',
'--from APEX_APPL_ACL_ROLES',
'--where role_name = ''Reader'';',
'--END IF;',
'--',
'--    APEX_UTIL.CREATE_USER(',
'--        p_user_name       => :P10046_USER_NAME,',
'--        p_first_name      => :P10046_FIRST_NAME,',
'--        p_last_name       => :P10046_LAST_NAME,',
'--        p_web_password    => :P10046_PASSWORD,',
'--        p_developer_privs => :P10046_IS_ADMIN,',
'--        p_change_password_on_first_use  => ''N'');',
'--',
'--        APEX_ACL.ADD_USER_ROLE (',
'--        p_application_id => n_app_id,',
'--        p_user_name      => :P10046_USER_NAME,',
'--        p_role_id        => n_role_id );',
'--END;',
'DECLARE',
'n_role_id number;',
'BEGIN',
'    IF :P10046_USER_NAME IS NULL OR :P10046_FIRST_NAME IS NULL OR :P10046_LAST_NAME IS NULL OR :P10046_PASSWORD IS NULL OR :P10046_IS_ADMIN IS NULL THEN',
'        :P10046_FLAG := 1;',
'    ELSE ',
'        IF :P10046_IS_ADMIN = 1 THEN',
'            select role_id ',
'            into n_role_id',
'            from APEX_APPL_ACL_ROLES',
'            where role_name = ''Contributor''',
'            and application_id = v(''APP_ID'');',
'        ELSE ',
'            select role_id ',
'            into n_role_id',
'            from APEX_APPL_ACL_ROLES',
'            where role_name = ''Reader''',
'            and application_id = v(''APP_ID'');',
'        END IF;',
'            insert into v_users (user_name, first_name, last_name, password, isadmin, group_id)',
'            values (upper(:P10046_USER_NAME), :P10046_FIRST_NAME, :P10046_LAST_NAME, :P10046_PASSWORD, :P10046_IS_ADMIN, 1);',
'            APEX_ACL.ADD_USER_ROLE (',
'            p_application_id => v(''APP_ID''),',
'            p_user_name      => :P10046_USER_NAME,',
'            p_role_id        => n_role_id );',
'        :P10046_FLAG := 0;',
'    END IF;     ',
'END;'))
,p_attribute_02=>'P10046_USER_NAME,P10046_PASSWORD,P10046_FIRST_NAME,P10046_LAST_NAME,P10046_IS_ADMIN'
,p_attribute_03=>'P10046_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9946363767691941)
,p_event_id=>wwv_flow_imp.id(9945960656691937)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Naudotojas sukurtas!'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P10046_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46433656634505765)
,p_event_id=>wwv_flow_imp.id(9945960656691937)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('U\017Epildykite visus laukelius!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P10046_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9946591492691943)
,p_event_id=>wwv_flow_imp.id(9945960656691937)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10046_USER_NAME,P10046_WORKSPACE_ID,P10046_FIRST_NAME,P10046_LAST_NAME,P10046_PASSWORD,P10046_IS_ADMIN'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P10046_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9946488299691942)
,p_event_id=>wwv_flow_imp.id(9945960656691937)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:10045:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P10046_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11396774090375807)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11389230995375792)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Sistemos Naudotojas'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Naudotojas sukurtas!'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11397148837375807)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Naudotojas sukurtas!'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11396345175375807)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11389230995375792)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Sistemos Naudotojas'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

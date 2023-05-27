prompt --application/pages/page_09998
begin
--   Manifest
--     PAGE: 09998
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
 p_id=>9998
,p_name=>'Registration Page'
,p_alias=>'REGISTRATION-PAGE'
,p_step_title=>'Registracija'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function viewNewPassword()',
'{',
'  var newPasswordInput = document.getElementById(''P9998_PASSWORD'');',
'  var passStatus = document.getElementById(''pass-status'');',
'  if (newPasswordInput.type== ''password''){',
'    newPasswordInput.type=''text'';',
'    passStatus.className=''fa fa-eye-slash field-icon'';',
'    ',
'  }',
'  else{',
'    newPasswordInput.type=''password'';',
'    passStatus.className=''fa fa-eye field-icon'';',
'  }',
'}',
'',
'function viewConfirmPassword()',
'{',
'    var confirmPasswordInput = document.getElementById(''P9998_CONFIRM_PASSWORD'');',
'    var passStatus = document.getElementById(''pass-status-confirm'');',
'    if (confirmPasswordInput.type== ''password''){',
'    confirmPasswordInput.type=''text'';',
'    passStatus.className=''fa fa-eye-slash field-icon'';',
'    ',
'  }',
'  else{',
'    confirmPasswordInput.type=''password'';',
'    passStatus.className=''fa fa-eye field-icon'';',
'  }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.field-icon {',
'    right : 20px;',
'    margin-left: -10px;',
'    margin-top: 15px;',
'    position: relative;',
'    z-index: 2;',
'}'))
,p_step_template=>wwv_flow_imp.id(9606727590517857)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'16'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20220309143312'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27583395161412418)
,p_plug_name=>'Registracija'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653732138517904)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46904816798385878)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(27583395161412418)
,p_button_name=>'REGISTER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registruotis'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47048514928634259)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(27583395161412418)
,p_button_name=>'LOGIN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>'Prisijungti'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46903992256385802)
,p_name=>'P9998_PASSWORD'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(27583395161412418)
,p_prompt=>unistr('Slapta\017Eodis')
,p_post_element_text=>'<i id="pass-status" class="fa fa-eye field-icon" aria-hidden="true" onClick="viewNewPassword()"></i>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46904390324385806)
,p_name=>'P9998_USERNAME'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(27583395161412418)
,p_prompt=>'Vartotojo vardas'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47049195645634266)
,p_name=>'P9998_FLAG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(27583395161412418)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47049443097634269)
,p_name=>'P9998_CONFIRM_PASSWORD'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(27583395161412418)
,p_prompt=>unistr('Pakartoti slapta\017Eod\012F')
,p_post_element_text=>'<i id="pass-status-confirm" class="fa fa-eye field-icon" aria-hidden="true" onClick="viewConfirmPassword()"></i>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47049538121634270)
,p_name=>'P9998_LAST_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(27583395161412418)
,p_prompt=>unistr('Pavard\0117')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47049672436634271)
,p_name=>'P9998_FIRST_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(27583395161412418)
,p_prompt=>'Vardas'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47049384648634268)
,p_name=>'Register'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46904816798385878)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47049265417634267)
,p_event_id=>wwv_flow_imp.id(47049384648634268)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P9998_USERNAME IS NULL OR :P9998_FIRST_NAME IS NULL OR :P9998_LAST_NAME IS NULL OR :P9998_PASSWORD IS NULL OR :P9998_CONFIRM_PASSWORD IS NULL OR :P9998_PASSWORD != :P9998_CONFIRM_PASSWORD THEN',
'    :P9998_FLAG := 1;',
'ELSE   ',
'    register_user(:P9998_USERNAME, :P9998_FIRST_NAME, :P9998_LAST_NAME, :P9998_PASSWORD, :P9998_FLAG);',
'    :P9998_FLAG := 0;',
'END IF;    ',
'end;'))
,p_attribute_02=>'P9998_FIRST_NAME,P9998_LAST_NAME,P9998_USERNAME,P9998_PASSWORD,P9998_CONFIRM_PASSWORD,P9998_FLAG'
,p_attribute_03=>'P9998_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47049059563634265)
,p_event_id=>wwv_flow_imp.id(47049384648634268)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Vartotojas s\0117kmingai u\017Eregistruotas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P9998_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47048665548634261)
,p_event_id=>wwv_flow_imp.id(47049384648634268)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('U\017Epildykite visus laukelius ir patikrinkite ar atitinka slapta\017Eod\017Eiai!')
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P9998_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47048831991634263)
,p_event_id=>wwv_flow_imp.id(47049384648634268)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27583395161412418)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P9998_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47048817127634262)
,p_event_id=>wwv_flow_imp.id(47049384648634268)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:9999:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P9998_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46901963683385790)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9998_USERNAME),',
'    p_consent  => :P9998_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46902363852385791)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9998_USERNAME,',
'    p_password => :P9998_PASSWORD );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46901141360385789)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(46901630015385790)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9998_USERNAME := apex_authentication.get_login_username_cookie;',
':P9998_REMEMBER := case when :P9998_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/

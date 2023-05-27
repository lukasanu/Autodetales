prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_name=>unistr('Keisti slapta\017Eod\012F')
,p_alias=>unistr('KEISTI-SLAPTA\017DOD\012E')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Keisti slapta\017Eod\012F')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function viewNewPassword()',
'{',
'  var newPasswordInput = document.getElementById(''P22_NEW_PASSWORD'');',
'  var passStatus = document.getElementById(''pass-status-new'');',
'',
'  if (newPasswordInput.type == ''password''){',
'    newPasswordInput.type=''text'';',
'    passStatus.className=''fa fa-eye-slash field-icon1'';',
'    ',
'  }',
'  else{',
'    newPasswordInput.type=''password'';',
'    passStatus.className=''fa fa-eye field-icon1'';',
'  }',
'}',
'',
'function viewOldPassword()',
'{',
'  var oldPasswordInput = document.getElementById(''P22_OLD_PASSWORD'');',
'  var passStatus = document.getElementById(''pass-status-old'');',
'',
'  if (oldPasswordInput.type == ''password''){',
'    oldPasswordInput.type=''text'';',
'    passStatus.className=''fa fa-eye-slash field-icon2'';',
'    ',
'  }',
'  else{',
'    oldPasswordInput.type=''password'';',
'    passStatus.className=''fa fa-eye field-icon2'';',
'  }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.field-icon1 {',
'    right : 20px;',
'    margin-left: -10px;',
'    margin-top: 5px;',
'    position: relative;',
'    z-index: 2;',
'    cursor: pointer;',
'}',
'',
'.field-icon2 {',
'    right : 20px;',
'    margin-left: -10px;',
'    margin-top: 5px;',
'    position: relative;',
'    z-index: 2;',
'    cursor: pointer;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20220309150300'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11441149576887605)
,p_plug_name=>unistr('\012Eveskite nauj\0105 slapta\017Eod\012F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11441451977887608)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11441149576887605)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Keisti'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11441366959887607)
,p_name=>'P22_NEW_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11441149576887605)
,p_prompt=>unistr('Naujas Slapta\017Eodis')
,p_post_element_text=>'<i id="pass-status-new" class="fa fa-eye field-icon1" aria-hidden="true" onClick="viewNewPassword()"></i>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47048029087634254)
,p_name=>'P22_OLD_PASSWORD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11441149576887605)
,p_prompt=>unistr('Naujas Slapta\017Eodis')
,p_post_element_text=>'<i id="pass-status-old" class="fa fa-eye field-icon1" aria-hidden="true" onClick="viewOldPassword()"></i>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47050071694634275)
,p_name=>'P22_FLAG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11441149576887605)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11441542237887609)
,p_name=>'Change Password'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11441451977887608)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11441627386887610)
,p_event_id=>wwv_flow_imp.id(11441542237887609)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'sl_password varchar2(100);',
'BEGIN',
'SELECT password',
'INTO sl_password ',
'FROM users',
'WHERE user_name = :APP_USER;',
'',
'IF :P22_NEW_PASSWORD IS NULL OR :P22_OLD_PASSWORD IS NULL THEN',
'    :P22_FLAG := 3; ',
'ELSIF sl_password != hash_password(:APP_USER, :P22_OLD_PASSWORD) THEN',
'    :P22_FLAG := 2;',
'ELSIF LENGTH(:P22_NEW_PASSWORD) < 7 THEN',
'    :P22_FLAG := 1;   ',
'ELSE',
'    change_password(:APP_USER, :P22_NEW_PASSWORD);',
'    :P22_FLAG := 0;',
'END IF;',
'END;'))
,p_attribute_02=>'P22_NEW_PASSWORD,P22_OLD_PASSWORD'
,p_attribute_03=>'P22_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47047769475634252)
,p_event_id=>wwv_flow_imp.id(11441542237887609)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Eveskite sen\0105 ir nauj\0105 slapta\017Eod\012F!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P22_FLAG'
,p_client_condition_expression=>'3'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11441835804887612)
,p_event_id=>wwv_flow_imp.id(11441542237887609)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Slapta\017Eodis s\0117kmingai pakeistas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P22_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47050006423634274)
,p_event_id=>wwv_flow_imp.id(11441542237887609)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Slapta\017Eodis turi b\016Bti sudarytas i\0161 ma\017Eiausiai 8 simboli\0173!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P22_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47047862211634253)
,p_event_id=>wwv_flow_imp.id(11441542237887609)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Neteisingas senas slapta\017Eodis!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P22_FLAG'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11442112746887615)
,p_event_id=>wwv_flow_imp.id(11441542237887609)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11441149576887605)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P22_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11442098692887614)
,p_event_id=>wwv_flow_imp.id(11441542237887609)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_client_condition_type=>'NOT_IN_LIST'
,p_client_condition_element=>'P22_FLAG'
,p_client_condition_expression=>'1, 2, 3'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_10048
begin
--   Manifest
--     PAGE: 10048
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
 p_id=>10048
,p_name=>unistr('Vartotojo Duomen\0173 Redagavimas')
,p_alias=>unistr('MODIFIKUOTI-VARTOTOJ\0104')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Vartotojo Duomen\0173 Redagavimas')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230502090515'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12022785684599003)
,p_plug_name=>'Vartotojo duomenys'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>'select * from v_users where id = :P10048_ID'
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P10048_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12023602781599012)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(46434557624505774)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161trinti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12023442889599010)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161saugoti')
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4624223798366005)
,p_name=>'P10048_ISSUSPENDED'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_item_source_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_prompt=>'Neaktyvus'
,p_source=>'ISSUSPENDED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12023088026599006)
,p_name=>'P10048_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_item_source_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_prompt=>'Vartotojo Vardas'
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12023168773599007)
,p_name=>'P10048_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_item_source_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_prompt=>'Vardas'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(12023235794599008)
,p_name=>'P10048_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_item_source_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_prompt=>unistr('Pavard\0117')
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(46434809261505776)
,p_name=>'P10048_FLAG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_item_source_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46442657239665328)
,p_name=>'P10048_ISADMIN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_item_source_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_prompt=>unistr('Rol\0117')
,p_source=>'ISADMIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Administratorius;1,Paprastas Vartotojas;0'
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
 p_id=>wwv_flow_imp.id(46442803917665329)
,p_name=>'P10048_PASSWORD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_item_source_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_prompt=>unistr('Slapta\017Eodis')
,p_source=>'PASSWORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46442854219665330)
,p_name=>'P10048_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_item_source_plug_id=>wwv_flow_imp.id(12022785684599003)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12023995467599015)
,p_name=>'Close '
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12023602781599012)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12024033783599016)
,p_event_id=>wwv_flow_imp.id(12023995467599015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:10045:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12024188464599017)
,p_name=>'Save'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12023442889599010)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12024345527599019)
,p_event_id=>wwv_flow_imp.id(12024188464599017)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--DECLARE',
'--    s_role_id VARCHAR2(200);',
'--BEGIN',
'--    IF :P10048_IS_ADMIN = ''ADMIN:CREATE:EDIT'' THEN',
'--        s_role_id := ''CONTRIBUTOR'';',
'--    ELSE ',
'--        s_role_id := ''READER'';',
'--    END IF;',
'--',
'--    APEX_UTIL.SET_FIRST_NAME (',
'--        p_userid     => APEX_UTIL.GET_CURRENT_USER_ID,',
'--        p_first_name => :P10048_FIRST_NAME);',
'--',
'--    APEX_UTIL.SET_LAST_NAME(',
'--        p_userid       => APEX_UTIL.GET_CURRENT_USER_ID,',
'--        p_last_name   => :P10048_LAST_NAME);',
'--',
'--    APEX_ACL.REPLACE_USER_ROLES (',
'--        p_application_id  => 103,',
'--        p_user_name       => :P10048_USER_NAME,',
'--        p_role_static_ids => wwv_flow_t_varchar2(s_role_id));',
'--END;',
'',
'DECLARE',
'n_role_id number;',
'BEGIN',
'    IF :P10048_USER_NAME IS NULL OR :P10048_FIRST_NAME IS NULL OR :P10048_LAST_NAME IS NULL OR :P10048_PASSWORD IS NULL OR :P10048_ISADMIN IS NULL THEN',
'        :P10048_FLAG := 1;',
'    ELSE ',
'        IF :P10048_ISADMIN = 1 THEN',
'            select role_id ',
'            into n_role_id',
'            from APEX_APPL_ACL_ROLES',
'            where role_name = ''Contributor'';',
'        ELSE ',
'            select role_id ',
'            into n_role_id',
'            from APEX_APPL_ACL_ROLES',
'            where role_name = ''Reader'';',
'        END IF;',
'            update v_users set',
'            user_name = :P10048_USER_NAME,',
'            first_name = :P10048_FIRST_NAME,',
'            last_name = :P10048_LAST_NAME,',
'            isadmin = :P10048_ISADMIN,',
'            issuspended = :P10048_ISSUSPENDED',
'            where id= :P10048_ID;',
'            change_password(upper(:P10048_USER_NAME), :P10048_PASSWORD);',
'            APEX_ACL.ADD_USER_ROLE (',
'            p_application_id => v(''APP_ID''),',
'            p_user_name      => :P10048_USER_NAME,',
'            p_role_id        => n_role_id );',
'            :P10048_FLAG := 0;',
'    END IF;     ',
'END;'))
,p_attribute_02=>'P10048_ID,P10048_USER_NAME,P10048_FIRST_NAME,P10048_LAST_NAME,P10048_PASSWORD,P10048_ISADMIN,P10048_ISSUSPENDED'
,p_attribute_03=>'P10048_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12024806996599024)
,p_event_id=>wwv_flow_imp.id(12024188464599017)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12022785684599003)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P10048_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12024474932599020)
,p_event_id=>wwv_flow_imp.id(12024188464599017)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Vartotojo duomenys s\0117kmingai atnaujinti!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P10048_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46434660592505775)
,p_event_id=>wwv_flow_imp.id(12024188464599017)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('U\017Epildykite visus laukelius!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P10048_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12024541110599021)
,p_event_id=>wwv_flow_imp.id(12024188464599017)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:10045:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P10048_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46434509709505773)
,p_name=>'Delete'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(46434557624505774)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46434390254505772)
,p_event_id=>wwv_flow_imp.id(46434509709505773)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161trinti vartotoj\0105?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46434292307505771)
,p_event_id=>wwv_flow_imp.id(46434509709505773)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from v_users',
'where id = :P10048_ID;'))
,p_attribute_02=>'P10048_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46434053471505769)
,p_event_id=>wwv_flow_imp.id(46434509709505773)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12022785684599003)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P10048_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46434200938505770)
,p_event_id=>wwv_flow_imp.id(46434509709505773)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:10045:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P10048_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12022873298599004)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12022785684599003)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Modifikuoti Vartotoj\0105')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/logic/application_processes/show_app_msg
begin
--   Manifest
--     APPLICATION PROCESS: show_app_msg
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(15511326870084074)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'show_app_msg'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_msg varchar2(1000);',
'    v_js_str varchar2(1000);',
'begin',
'  v_js_str := ''<script> apex.message.alert("#MSG#"); </script>'';',
'',
'  -- save to local',
'  v_msg := apex_util.get_session_state(',
'        p_item => ''APP_MSG''',
'  );',
'',
'  apex_debug.info(',
'        p_message => ''Msg Value: %s''',
'      , p0 => v_msg',
'  );',
'',
'  -- clear the application item',
'  apex_util.set_session_state(',
'        p_name => ''APP_MSG''',
'      , p_value => ''''',
'  );',
'',
'  -- make the js code.',
'  v_js_str := replace(v_js_str, ''#MSG#'', v_msg);',
'  ',
'  apex_debug.info(',
'        p_message => ''JS code: %s''',
'      , p0 => v_js_str',
'  );',
'  -- response the js code to the browser.',
'  if (v_msg is not null) then',
'    htp.p(v_js_str);',
'  end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/

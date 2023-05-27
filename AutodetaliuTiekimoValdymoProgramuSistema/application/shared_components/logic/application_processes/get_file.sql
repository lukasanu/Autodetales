prompt --application/shared_components/logic/application_processes/get_file
begin
--   Manifest
--     APPLICATION PROCESS: GET_FILE
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
 p_id=>wwv_flow_imp.id(68315214808230496)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_FILE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    get_file(:FILE_ID);',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'USER_IS_NOT_PUBLIC_USER'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_imp.component_end;
end;
/

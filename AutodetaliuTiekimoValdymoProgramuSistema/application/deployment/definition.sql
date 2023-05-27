prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(10794071111281500)
);
wwv_flow_imp.component_end;
end;
/

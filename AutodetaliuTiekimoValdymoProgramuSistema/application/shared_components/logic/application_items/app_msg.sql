prompt --application/shared_components/logic/application_items/app_msg
begin
--   Manifest
--     APPLICATION ITEM: APP_MSG
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(15511675503094272)
,p_name=>'APP_MSG'
,p_protection_level=>'N'
,p_escape_on_http_output=>'N'
);
wwv_flow_imp.component_end;
end;
/

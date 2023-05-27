prompt --application/shared_components/security/authentications/custom_application_authentication
begin
--   Manifest
--     AUTHENTICATION: Custom Application Authentication
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(46926412566683938)
,p_name=>'Custom Application Authentication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'authenticate_user'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/

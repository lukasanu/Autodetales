prompt --application/create_application
begin
--   Manifest
--     FLOW: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DETALES')
,p_name=>nvl(wwv_flow_application_install.get_application_name,unistr('Detali\0173 tiekimas'))
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'DETALIU-TIEKIMAS100101')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'5786AA602DA3F0C0278391021DA9FA06FD3AE1A295D76D39B849EC6D33F75561'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'lt'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2021.05.05.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_imp.id(46926412566683938)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>unistr('Detali\0173 tiekimas')
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_referrer_policy=>'strict-origin-when-cross-origin'
,p_runtime_api_usage=>'T:O:W'
,p_security_scheme=>wwv_flow_imp.id(9744514754518115)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_tokenize_row_search=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>unistr('Detali\0173 tiekimas')
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20230510064804'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>25
,p_print_server_type=>'NATIVE'
,p_is_pwa=>'N'
);
wwv_flow_imp.component_end;
end;
/

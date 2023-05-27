prompt --application/shared_components/navigation/lists/email_reporting
begin
--   Manifest
--     LIST: EMAIL Reporting
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10705431200000297)
,p_name=>'EMAIL Reporting'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(10694258577000234)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10705817041000299)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'EMAIL Reporting'
,p_list_item_link_target=>'f?p=&APP_ID.:10070:&SESSION.::&DEBUG.:10070:::'
,p_list_item_icon=>'fa-area-chart'
,p_list_text_01=>'Report of all EMAIL queued to be sent and those already sent'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

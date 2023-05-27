prompt --application/shared_components/user_interface/templates/list/list_view
begin
--   Manifest
--     REGION TEMPLATE: LIST_VIEW
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_shared.create_list_template(
 p_id=>wwv_flow_imp.id(8191464196718558)
,p_list_template_name=>'List View'
,p_internal_name=>'LIST_VIEW'
,p_theme_id=>42
,p_theme_class_id=>5
,p_list_template_before_rows=>' '
,p_list_template_after_rows=>' '
);
wwv_flow_imp.component_end;
end;
/

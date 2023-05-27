prompt --application/shared_components/user_interface/lovs/surcharge_groups
begin
--   Manifest
--     SURCHARGE_GROUPS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(25801376844179871)
,p_lov_name=>'SURCHARGE_GROUPS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'SURCHARGE_GROUP'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_group_column_name=>'ID'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/

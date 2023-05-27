prompt --application/shared_components/user_interface/lovs/v_companies_scompany_name
begin
--   Manifest
--     V_COMPANIES.SCOMPANY_NAME
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
 p_id=>wwv_flow_imp.id(69440587866896576)
,p_lov_name=>'V_COMPANIES.SCOMPANY_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'V_COMPANIES'
,p_return_column_name=>'NID'
,p_display_column_name=>'SCOMPANY_NAME'
,p_default_sort_column_name=>'SCOMPANY_NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/

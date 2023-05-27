prompt --application/shared_components/user_interface/lovs/v_orders_s_id
begin
--   Manifest
--     V_ORDERS.S_ID
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
 p_id=>wwv_flow_imp.id(69441331082896579)
,p_lov_name=>'V_ORDERS.S_ID'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'V_ORDERS'
,p_return_column_name=>'NID'
,p_display_column_name=>'S_ID'
,p_default_sort_column_name=>'S_ID'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/

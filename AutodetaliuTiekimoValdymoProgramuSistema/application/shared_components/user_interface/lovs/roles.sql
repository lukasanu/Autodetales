prompt --application/shared_components/user_interface/lovs/roles
begin
--   Manifest
--     ROLES
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
 p_id=>wwv_flow_imp.id(12126695124140407)
,p_lov_name=>'ROLES'
,p_lov_query=>'.'||wwv_flow_imp.id(12126695124140407)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(12126929907140407)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Administratorius'
,p_lov_return_value=>'Administrator'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(12127335143140410)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Paprastas vartotojas'
,p_lov_return_value=>'Reader'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(12295301956170121)
,p_lov_disp_sequence=>12
,p_lov_disp_value=>'Administratorius'
,p_lov_return_value=>'Contributor'
);
wwv_flow_imp.component_end;
end;
/

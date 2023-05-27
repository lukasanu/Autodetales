prompt --application/shared_components/legacy_data_loads/company_ext
begin
--   Manifest
--     COMPANY_EXT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(16796538679826090)
,p_name=>'Data_loading_company'
,p_owner=>'#OWNER#'
,p_table_name=>'COMPANY_EXT'
,p_unique_column_1=>'COMPANY_NAME'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_imp.component_end;
end;
/

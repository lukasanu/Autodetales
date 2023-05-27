prompt --application/shared_components/logic/application_items/g_imported_count
begin
--   Manifest
--     APPLICATION ITEM: G_IMPORTED_COUNT
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
 p_id=>wwv_flow_imp.id(47662951998371578)
,p_name=>'G_IMPORTED_COUNT'
,p_protection_level=>'N'
,p_item_comment=>'Variable for load animation in excel imports'
);
wwv_flow_imp.component_end;
end;
/

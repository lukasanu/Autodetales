prompt --application/shared_components/logic/application_items/photo_id
begin
--   Manifest
--     APPLICATION ITEM: PHOTO_ID
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
 p_id=>wwv_flow_imp.id(68132052164486026)
,p_name=>'PHOTO_ID'
,p_protection_level=>'N'
);
wwv_flow_imp.component_end;
end;
/

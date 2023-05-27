prompt --application/pages/page_10000
begin
--   Manifest
--     PAGE: 10000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>'Administracija'
,p_alias=>'ADMIN'
,p_step_title=>'Administracija'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9746325644518128)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(9744433076518115)
,p_deep_linking=>'N'
,p_page_component_map=>'11'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230502085748'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9902873582521143)
,p_plug_name=>'Administracija'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(9664461405517910)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9910926167521150)
,p_plug_name=>'Column 2'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(9626840424517882)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11696140184418901)
,p_plug_name=>'Sistemos vartotojai'
,p_parent_plug_id=>wwv_flow_imp.id(9910926167521150)
,p_icon_css_classes=>'fa-user'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11696264582418902)
,p_name=>'Redirect 10045'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11696140184418901)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11696397866418903)
,p_event_id=>wwv_flow_imp.id(11696264582418902)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:10045:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12026082538599036)
,p_name=>'Cursor Enters'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11696140184418901)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12026170070599037)
,p_event_id=>wwv_flow_imp.id(12026082538599036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "pointer");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12026246735599038)
,p_name=>'Cursor Leaves'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11696140184418901)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseleave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12026316951599039)
,p_event_id=>wwv_flow_imp.id(12026246735599038)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "default");'
);
wwv_flow_imp.component_end;
end;
/

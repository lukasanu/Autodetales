prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_name=>unistr('U\017Eklausos ir u\017Esakymai')
,p_alias=>unistr('U\017DKLAUSOS-IR-U\017DSAKYMAI')
,p_step_title=>unistr('U\017Eklausos ir u\017Esakymai')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230509132041'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47233704900879543)
,p_plug_name=>unistr('U\017Eklausos')
,p_icon_css_classes=>'fa-file-wrench'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47233795984879544)
,p_plug_name=>unistr('U\017Esakymai')
,p_icon_css_classes=>'fa-file-check'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47233584576879542)
,p_name=>'Redirect 1'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47233704900879543)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47233521788879541)
,p_event_id=>wwv_flow_imp.id(47233584576879542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:60:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47233414264879540)
,p_name=>'Pointer 1'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47233704900879543)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47233280153879539)
,p_event_id=>wwv_flow_imp.id(47233414264879540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "pointer");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47233195990879538)
,p_name=>'Default 1'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47233704900879543)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseleave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47233079347879537)
,p_event_id=>wwv_flow_imp.id(47233195990879538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "default");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47232994993879536)
,p_name=>'Redirect 2'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47233795984879544)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47232407234879530)
,p_event_id=>wwv_flow_imp.id(47232994993879536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:50:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47232796800879534)
,p_name=>'Pointer 2'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47233795984879544)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47232264002879529)
,p_event_id=>wwv_flow_imp.id(47232796800879534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "pointer");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47232531967879532)
,p_name=>'Default 2'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47233795984879544)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseleave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47232138411879528)
,p_event_id=>wwv_flow_imp.id(47232531967879532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "default");'
);
wwv_flow_imp.component_end;
end;
/

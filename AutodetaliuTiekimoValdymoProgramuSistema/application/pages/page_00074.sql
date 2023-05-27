prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_name=>unistr('Sand\0117lio pagrindinis')
,p_alias=>unistr('SAND\0116LIO-PAGRINDINIS')
,p_step_title=>unistr('Sand\0117lio pagrindinis')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230418110523'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62728306484192386)
,p_plug_name=>unistr('Perteklin\0117s detal\0117s')
,p_icon_css_classes=>'fa-tools'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(64628486937926889)
,p_plug_name=>unistr('Sand\0117lis')
,p_icon_css_classes=>'fa-braille'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68733395635615763)
,p_plug_name=>unistr('Sand\0117lio sekcijos')
,p_icon_css_classes=>'fa-archive'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68498351831616397)
,p_name=>'Redirect 2_1'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(64628486937926889)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68497794593616396)
,p_event_id=>wwv_flow_imp.id(68498351831616397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:24:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68492898073616394)
,p_name=>'Redirect 2_1_1_1'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(62728306484192386)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68492457562616394)
,p_event_id=>wwv_flow_imp.id(68492898073616394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:66:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68733329926615762)
,p_name=>'Redirect 2_1_1_1_1'
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(68733395635615763)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68733214702615761)
,p_event_id=>wwv_flow_imp.id(68733329926615762)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:76:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68497438635616396)
,p_name=>'Pointer 2_1'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(64628486937926889)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68496911220616396)
,p_event_id=>wwv_flow_imp.id(68497438635616396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "pointer");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68492065779616394)
,p_name=>'Pointer 2_1_1_1'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(62728306484192386)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68491569083616394)
,p_event_id=>wwv_flow_imp.id(68492065779616394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "pointer");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68733080495615760)
,p_name=>'Pointer 2_1_1_1_1'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(68733395635615763)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68733024111615759)
,p_event_id=>wwv_flow_imp.id(68733080495615760)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "pointer");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68496499582616396)
,p_name=>'Default 2_1'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(64628486937926889)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseleave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68495987078616396)
,p_event_id=>wwv_flow_imp.id(68496499582616396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "default");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68491151885616394)
,p_name=>'Default 2_1_1_1'
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(62728306484192386)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseleave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68490633104616394)
,p_event_id=>wwv_flow_imp.id(68491151885616394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "default");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68732906752615758)
,p_name=>'Default 2_1_1_1_1'
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(68733395635615763)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseleave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68732788722615757)
,p_event_id=>wwv_flow_imp.id(68732906752615758)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "default");'
);
wwv_flow_imp.component_end;
end;
/

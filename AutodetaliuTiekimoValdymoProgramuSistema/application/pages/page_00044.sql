prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_name=>unistr('Klientai / Tiek\0117jai ')
,p_alias=>'KLIENTAI-TIEKEJAI'
,p_step_title=>unistr('Klientai / Tiek\0117jai ')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230502090750'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7887992474669069)
,p_plug_name=>unistr('Tiek\0117jai')
,p_icon_css_classes=>'fa-address-card-o'
,p_region_template_options=>'#DEFAULT#:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9041420942156626)
,p_plug_name=>unistr('Kainora\0161\010Diai')
,p_icon_css_classes=>'fa-download'
,p_region_template_options=>'#DEFAULT#:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_imp.id(9744433076518115)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47235779962879564)
,p_plug_name=>'Klientai'
,p_icon_css_classes=>'fa-address-card'
,p_region_template_options=>'#DEFAULT#:t-Form--xlarge'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7888136310669070)
,p_name=>'Redirect 2'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7887992474669069)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7888206664669071)
,p_event_id=>wwv_flow_imp.id(7888136310669070)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:16:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9041535369156627)
,p_name=>'Redirecr 3'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9041420942156626)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9041621322156628)
,p_event_id=>wwv_flow_imp.id(9041535369156627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:36:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7888300901669072)
,p_name=>'Pointer 2'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7887992474669069)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9041095107156623)
,p_event_id=>wwv_flow_imp.id(7888300901669072)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "pointer");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9041731530156629)
,p_name=>'Pointer 3'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9041420942156626)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9041802079156630)
,p_event_id=>wwv_flow_imp.id(9041731530156629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "pointer");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9041247869156624)
,p_name=>'Default 2'
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7887992474669069)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseleave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9041352107156625)
,p_event_id=>wwv_flow_imp.id(9041247869156624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "default");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9041885088156631)
,p_name=>'Default 3'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(9041420942156626)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseleave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9042052004156632)
,p_event_id=>wwv_flow_imp.id(9041885088156631)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "default");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47235675113879563)
,p_name=>'Redirect 1'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47235779962879564)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47234917392879555)
,p_event_id=>wwv_flow_imp.id(47235675113879563)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:2:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47234812084879554)
,p_name=>'Pointer 1'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47235779962879564)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseenter'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47234593624879552)
,p_event_id=>wwv_flow_imp.id(47234812084879554)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "pointer");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47234432103879551)
,p_name=>'Default 1'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(47235779962879564)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mouseleave'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47234240150879549)
,p_event_id=>wwv_flow_imp.id(47234432103879551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("body").css("cursor", "default");'
);
wwv_flow_imp.component_end;
end;
/

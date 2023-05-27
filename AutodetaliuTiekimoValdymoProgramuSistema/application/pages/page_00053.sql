prompt --application/pages/page_00053
begin
--   Manifest
--     PAGE: 00053
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
 p_id=>53
,p_name=>'Nuotraukos'
,p_alias=>'NUOTRAUKOS'
,p_page_mode=>'MODAL'
,p_step_title=>'Nuotraukos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var rightBtn = document.getElementsByClassName(''glyphicon-chevron-right'')[0],',
'    leftBtn = document.getElementsByClassName(''glyphicon-chevron-left'')[0];',
'document.onkeydown = checkKey;',
'',
'function checkKey(e) {',
'',
'    e = e || window.event;',
'',
'   if (e.keyCode == ''37'') {',
'       leftBtn.click();',
'    }',
'    else if (e.keyCode == ''39'') {',
'       rightBtn.click();',
'    }',
'',
'}',
'',
'    var zoom = 1,',
'        zoomStep = 0.2;',
'	const zoomElement = document.querySelector("div > div.item.active"),',
'          resetBtn = document.getElementById("resetBtn");',
'',
'	document.addEventListener("wheel", function(e) {',
'		if (e.deltaY < 0) {',
'			zoom += zoomStep;',
'      		zoomElement.style.transform = "scale(" + zoom + ")";',
'		} else {',
'			if (zoom > 1) {',
'        		zoom -= zoomStep;',
'        		zoomElement.style.transform = "scale(" + zoom + ")";',
'      		}',
'		}',
'	});',
'',
'	resetBtn.addEventListener("click", function() {',
'		zoomElement.style.top = "0px";',
'    	zoomElement.style.left = "0px";',
'		zoomElement.style.transform = "scale(1)";',
'		zoom = 1;',
'	});',
'	',
'	let x = 0;',
'	let y = 0;',
'',
'	const mouseDownHandler = function (e) {',
'		e.preventDefault();',
'		',
'		x = e.clientX;',
'		y = e.clientY;',
'',
'		document.addEventListener(''mousemove'', mouseMoveHandler);',
'		document.addEventListener(''mouseup'', mouseUpHandler);',
'	};',
'',
'	const mouseMoveHandler = function (e) {',
'		const dx = e.clientX - x;',
'		const dy = e.clientY - y;',
'		zoomElement.style.top = `${zoomElement.offsetTop + dy}px`;',
'		zoomElement.style.left = `${zoomElement.offsetLeft + dx}px`;',
'',
'		x = e.clientX;',
'		y = e.clientY;',
'	};',
'',
'	const mouseUpHandler = function () {',
'		document.removeEventListener(''mousemove'', mouseMoveHandler);',
'		document.removeEventListener(''mouseup'', mouseUpHandler);',
'	};',
'',
'	zoomElement.addEventListener(''mousedown'', mouseDownHandler);'))
,p_inline_css=>' '
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'800'
,p_dialog_width=>'1000'
,p_dialog_chained=>'N'
,p_page_component_map=>'17'
,p_last_updated_by=>'OST'
,p_last_upd_yyyymmddhh24miss=>'20230420101859'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68204789160691045)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9626611630517882)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select rownum,',
'    ''https://dev.detaliutiekimas.lt/ords/dev/path/pictures/'' || nid as link',
'     FROM  v_photos ',
'    where npart_id = :P53_ID '))
,p_plug_source_type=>'PLUGIN_ORCLKING.BOOTSTRAP.CAROUSEL.EXTENSION'
,p_ajax_items_to_submit=>'P53_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>unistr('Nuotrauk\0173 nerasta')
,p_attribute_01=>'650'
,p_attribute_02=>'925'
,p_attribute_03=>'Y'
,p_attribute_04=>'0'
,p_attribute_05=>'5'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7885699628669046)
,p_button_sequence=>30
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161trinti')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68204217381691039)
,p_button_sequence=>40
,p_button_name=>'RESET'
,p_button_static_id=>'resetBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9716842139517978)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Atstatyti'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7884290284669032)
,p_name=>'P53_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7885619969669045)
,p_name=>'P53_FILENAMES'
,p_item_sequence=>10
,p_prompt=>'Nuotraukos pavadinimas'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  sfile_name d, ',
'        nid r',
'        from v_photos ',
'        where npart_id=:P53_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_colspan=>10
,p_grid_column_css_classes=>'z-index:-1'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#:margin-left-sm'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7885800407669047)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7885699628669046)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7885949216669048)
,p_event_id=>wwv_flow_imp.id(7885800407669047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161trinti pasirinkt\0105 nuotrauk\0105?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7886062279669049)
,p_event_id=>wwv_flow_imp.id(7885800407669047)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE ',
'FROM v_photos ',
'WHERE nid = :P53_FILENAMES;'))
,p_attribute_02=>'P53_FILENAMES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7886197366669051)
,p_event_id=>wwv_flow_imp.id(7885800407669047)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P53_FILENAMES'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68203668992691033)
,p_event_id=>wwv_flow_imp.id(7885800407669047)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68204789160691045)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68204618747691043)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(68204789160691045)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68204094667691038)
,p_event_id=>wwv_flow_imp.id(68204618747691043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    var zoom = 1,',
'        zoomStep = 0.2;',
'	const zoomElement = document.querySelector("div > div.item.active"),',
'          resetBtn = document.getElementById("resetBtn");',
'',
'	document.addEventListener("wheel", function(e) {',
'		if (e.deltaY < 0) {',
'			zoom += zoomStep;',
'      		zoomElement.style.transform = "scale(" + zoom + ")";',
'		} else {',
'			if (zoom > 1) {',
'        		zoom -= zoomStep;',
'        		zoomElement.style.transform = "scale(" + zoom + ")";',
'      		}',
'		}',
'	});',
'',
'	resetBtn.addEventListener("click", function() {',
'		zoomElement.style.top = "0px";',
'    	zoomElement.style.left = "0px";',
'		zoomElement.style.transform = "scale(1)";',
'		zoom = 1;',
'	});',
'	',
'	let x = 0;',
'	let y = 0;',
'',
'	const mouseDownHandler = function (e) {',
'		e.preventDefault();',
'		',
'		x = e.clientX;',
'		y = e.clientY;',
'',
'		document.addEventListener(''mousemove'', mouseMoveHandler);',
'		document.addEventListener(''mouseup'', mouseUpHandler);',
'	};',
'',
'	const mouseMoveHandler = function (e) {',
'		const dx = e.clientX - x;',
'		const dy = e.clientY - y;',
'		zoomElement.style.top = `${zoomElement.offsetTop + dy}px`;',
'		zoomElement.style.left = `${zoomElement.offsetLeft + dx}px`;',
'',
'		x = e.clientX;',
'		y = e.clientY;',
'	};',
'',
'	const mouseUpHandler = function () {',
'		document.removeEventListener(''mousemove'', mouseMoveHandler);',
'		document.removeEventListener(''mouseup'', mouseUpHandler);',
'	};',
'',
'	zoomElement.addEventListener(''mousedown'', mouseDownHandler);'))
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select rownum,',
'    ''https://dev.detaliutiekimas.lt/ords/dev/path/pictures/'' || nid as link',
'     FROM  v_photos ',
'    where npart_id = :P53_ID '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68204477750691042)
,p_event_id=>wwv_flow_imp.id(68204618747691043)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P53_FILENAMES'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'document.querySelector(" div > div.item.active > img").getAttribute(''src'').substring((document.querySelector(" div > div.item.active > img").getAttribute(''src'')).lastIndexOf("/")+1)'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select rownum,',
'    ''https://dev.detaliutiekimas.lt/ords/dev/path/pictures/'' || nid as link',
'     FROM  v_photos ',
'    where npart_id = :P53_ID '))
);
wwv_flow_imp.component_end;
end;
/

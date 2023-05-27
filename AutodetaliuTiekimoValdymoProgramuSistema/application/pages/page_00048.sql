prompt --application/pages/page_00048
begin
--   Manifest
--     PAGE: 00048
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
 p_id=>48
,p_name=>'Importavimo tikrinimo rezulatai'
,p_alias=>'IMPORTAVIMO-TIKRINIMO-REZULATAI'
,p_page_mode=>'MODAL'
,p_step_title=>'Importavimo tikrinimo rezulatai'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230509132215'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47570228684525188)
,p_plug_name=>'Importavimo tikrinimo rezulatai'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>'select * from v_suppliers_parts_log where NIMPORT_ID = :P48_NID'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Importavimo tikrinimo rezulatai'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(47570055219525188)
,p_name=>'Importavimo tikrinimo rezulatai'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>unistr('Ie\0161koti')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'DEV'
,p_internal_uid=>17171576270754989
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47569669222525186)
,p_db_column_name=>'NID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Nid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47569322644525185)
,p_db_column_name=>'NIMPORT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Nimport Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47568928580525185)
,p_db_column_name=>'NROW_NUMBER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('Eilut\0117s numeris')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47568484212525184)
,p_db_column_name=>'SMESSAGE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('Prane\0161imas')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47568121246525184)
,p_db_column_name=>'DTCREATED_AT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('Suk\016Brimo data')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(47565239405510387)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'171764'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NID:NIMPORT_ID:NROW_NUMBER:SMESSAGE:DTCREATED_AT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48585656468976429)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(47570228684525188)
,p_button_name=>'Decline'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('Nepriimti kainora\0161\010Dio')
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select * from v_price_list_imports where nid = :P48_NID and napproved is null and NIMPORT_STARTED = 0 AND nhaserrors is not null'
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'t-Button--danger'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(48585548595976428)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(47570228684525188)
,p_button_name=>'Accept'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('Priimti kainora\0161t\012F')
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'select * from v_price_list_imports where nid = :P48_NID and napproved is null and NIMPORT_STARTED = 0 and nhaserrors = 0'
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'t-Button--success'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48585777391976430)
,p_name=>'P48_NID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47570228684525188)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47529729461367551)
,p_name=>'Delete logs and import data'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48585656468976429)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47529607230367550)
,p_event_id=>wwv_flow_imp.id(47529729461367551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from v_suppliers_parts_log where nimport_id = :P48_NID;',
'delete from apex_application_temp_files where id = (select nfile_id from v_price_list_imports where nid = :P48_NID);',
'delete from v_price_list_imports where nid = :P48_NID;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47529500296367549)
,p_event_id=>wwv_flow_imp.id(47529729461367551)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47529095425367545)
,p_event_id=>wwv_flow_imp.id(47529729461367551)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:36:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47528098351367535)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(48585548595976428)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47306902441714357)
,p_event_id=>wwv_flow_imp.id(47528098351367535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48585548595976428)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47528020681367534)
,p_event_id=>wwv_flow_imp.id(47528098351367535)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_job VARCHAR2(4000);',
'il_car_id NUMBER;',
'il_supplier_id NUMBER;',
'il_order_type_id NUMBER;',
'sl_filename     VARCHAR2(254);',
'BEGIN',
'',
'    SELECT ncar_id, nsupplier_id, norder_type_id',
'    into il_car_id,il_supplier_id,il_order_type_id',
'    from v_price_list_imports',
'    where nid = :P48_NID;',
'',
'    UPDATE v_price_list_imports set NIMPORT_STARTED = 1 where nid = :P48_NID;',
'',
'    SELECT filename',
'    INTO sl_filename',
'    FROM   apex_application_temp_files      wwv',
'          ,v_price_list_imports  pli',
'    WHERE  wwv.id = pli.nfile_id',
'    AND    pli.nid = :P48_NID;',
'',
'    l_job := dbms_scheduler.generate_job_name(prefix => ''IMPORTDATA'');',
'    dbms_scheduler.create_job(job_name              => l_job',
'                             ,job_type              => ''STORED_PROCEDURE''',
'                             ,job_action            => ''price_list_parser.parse_data''',
'                             ,number_of_arguments   => 8',
'                             ,comments              => ''Price list is going to be inserted''',
'                             ,enabled               => FALSE',
'                             ,auto_drop             => FALSE);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 1',
'                                         ,argument_value      => sl_filename);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 2',
'                                         ,argument_value      => il_car_id);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 3',
'                                         ,argument_value      => il_order_type_id);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 4',
'                                         ,argument_value      => il_supplier_id);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 5',
'                                         ,argument_value      => NULL);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 6',
'                                         ,argument_value      => :P48_NID);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 7',
'                                         ,argument_value      => 1);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 8',
'                                         ,argument_value      => 0);                                     ',
'    ',
'    DBMS_SCHEDULER.RUN_JOB(',
'    JOB_NAME            => l_job,',
'    USE_CURRENT_SESSION => TRUE);',
'',
'    end;'))
,p_attribute_02=>'P48_NID'
,p_attribute_03=>'P48_NID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47308196541714370)
,p_event_id=>wwv_flow_imp.id(47528098351367535)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Duomenys importuojasi! Gali tekti palaukti!'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47527898914367533)
,p_event_id=>wwv_flow_imp.id(47528098351367535)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:36:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47307116146714359)
,p_name=>'New_1'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select * from v_suppliers_parts_log where nimport_id = :P48_NID and NROW_NUMBER > 0 '
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47307011533714358)
,p_event_id=>wwv_flow_imp.id(47307116146714359)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(48585548595976428)
);
wwv_flow_imp.component_end;
end;
/

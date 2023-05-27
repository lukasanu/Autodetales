prompt --application/pages/page_00076
begin
--   Manifest
--     PAGE: 00076
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
 p_id=>76
,p_name=>unistr('Sand\0117lio sekcijos')
,p_alias=>unistr('SAND\0116LIO-SEKCIJOS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Sand\0117lio sekcijos')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'500'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230418111528'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27259142005264501)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'V_STORAGE_PLACES'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'sname'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Report 1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(27259544972264501)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>unistr('N\0117ra \012Fra\0161\0173 atitinkan\010Di\0173 u\017Eklaus\0105.')
,p_search_button_label=>unistr('Ie\0161koti')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:RP,:P77_NID:#NID##ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'DEV'
,p_internal_uid=>102209221164509379
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68401965051451943)
,p_db_column_name=>'NID'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Nid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68401485810451943)
,p_db_column_name=>'SNAME'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>'Pavadinimas'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68733493000615764)
,p_db_column_name=>'DTCREATED_AT'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Dtcreated At'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27264194364272119)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'207171'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SNAME:'
,p_sort_column_1=>'NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68400806367451940)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(27259142005264501)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Kurti'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.:13::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68400377355451934)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(27259142005264501)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68400057446451933)
,p_event_id=>wwv_flow_imp.id(68400377355451934)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27259142005264501)
);
wwv_flow_imp.component_end;
end;
/

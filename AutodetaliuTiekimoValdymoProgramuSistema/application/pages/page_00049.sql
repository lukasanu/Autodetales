prompt --application/pages/page_00049
begin
--   Manifest
--     PAGE: 00049
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
 p_id=>49
,p_name=>unistr('Konfig\016Bracijos')
,p_alias=>unistr('KONFIG\016ARACIJOS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Konfig\016Bracijos')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20220608092731'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45419714202470485)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'V_SFTP_CONFIGURATION'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(45419307936470485)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>unistr('Ie\0161koti')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:RP,:P56_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'DEV'
,p_internal_uid=>19322323553809692
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45419176559470475)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46433327025505761)
,p_db_column_name=>'VEHICLE_BRAND'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>unistr('Automobilio Mark\0117')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46433136586505760)
,p_db_column_name=>'SUPPLIER'
,p_display_order=>28
,p_column_identifier=>'J'
,p_column_label=>unistr('Tiek\0117jas')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46433115944505759)
,p_db_column_name=>'ORDER_TYPE'
,p_display_order=>38
,p_column_identifier=>'K'
,p_column_label=>unistr('U\017Esakymo Tipas')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45417598768470471)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>48
,p_column_identifier=>'E'
,p_column_label=>'Failo Pavadinimas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(64536231990424350)
,p_db_column_name=>'SDIRECTORY'
,p_display_order=>56
,p_column_identifier=>'L'
,p_column_label=>'Direktorija'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(45410006260394348)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'193317'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:VEHICLE_BRAND:SUPPLIER:ORDER_TYPE:FILE_NAME'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45415020268470469)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(45419714202470485)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Kurti Konfig\016Bracij\0105')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:56::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45415940319470470)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(45419714202470485)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45415475933470469)
,p_event_id=>wwv_flow_imp.id(45415940319470470)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45419714202470485)
);
wwv_flow_imp.component_end;
end;
/

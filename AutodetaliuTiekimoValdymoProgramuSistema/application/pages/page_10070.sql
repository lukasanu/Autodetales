prompt --application/pages/page_10070
begin
--   Manifest
--     PAGE: 10070
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
 p_id=>10070
,p_name=>'EMAIL Reporting'
,p_alias=>'EMAIL-REPORTING'
,p_page_mode=>'MODAL'
,p_step_title=>'EMAIL Reporting'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9746325644518128)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_patch=>wwv_flow_imp.id(10694258577000234)
,p_protection_level=>'C'
,p_help_text=>'<p>This report shows all EMAIL queued to be sent and those already sent.</p>'
,p_page_component_map=>'18'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20210506112240'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10694573246000253)
,p_plug_name=>'EMAIL Reporting'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_lang.message(''APEX.FEATURE.EMAIL_REPORTING.QUEUED'') mail_status,',
'       ID,',
'       mail_to,',
'       mail_from,',
'       mail_replyto,',
'       mail_subj,',
'       mail_cc,',
'       mail_bcc,',
'       mail_send_count,',
'       mail_send_error,',
'       last_updated_by,',
'       last_updated_on,',
'       mail_message_created, ',
'       lower(mail_message_created_by) message_created_by,',
'       app_id,',
'       dbms_lob.getlength(mail_body) text_body_size,',
'       dbms_lob.getlength(mail_body_html) html_body_size,',
'       null send_begin,',
'       null send_end,',
'       null mail_attachment_count,',
'       null mail_attachment_size',
'  from apex_mail_queue',
'union',
'select apex_lang.message(''APEX.FEATURE.EMAIL_REPORTING.SENT'') mail_status,',
'       mail_id ID,',
'       mail_to,',
'       mail_from,',
'       mail_replyto,',
'       mail_subj,',
'       mail_cc,',
'       mail_bcc,',
'       null mail_send_count,',
'       mail_send_error,',
'       null last_updated_by,',
'       last_updated_on,',
'       mail_message_created,',
'       null message_created_by,',
'       app_id,',
'       mail_body_size text_body_size,',
'       mail_body_html_size html_body_size,',
'       mail_message_send_begin send_begin,',
'       mail_message_send_end   send_end,',
'       mail_attachment_count,',
'       mail_attachment_size',
'  from apex_mail_log'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'EMAIL Reporting'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10695434705000260)
,p_name=>'EMAIL Reporting'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEV'
,p_internal_uid=>10695434705000260
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10695527357000272)
,p_db_column_name=>'MAIL_STATUS'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10695946060000279)
,p_db_column_name=>'ID'
,p_display_order=>11
,p_column_identifier=>'B'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10696347329000279)
,p_db_column_name=>'MAIL_TO'
,p_display_order=>21
,p_column_identifier=>'C'
,p_column_label=>'To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10696742673000280)
,p_db_column_name=>'MAIL_FROM'
,p_display_order=>31
,p_column_identifier=>'D'
,p_column_label=>'From'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10697133269000280)
,p_db_column_name=>'MAIL_REPLYTO'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>'Reply To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10697579992000280)
,p_db_column_name=>'MAIL_SUBJ'
,p_display_order=>51
,p_column_identifier=>'F'
,p_column_label=>'Subject'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10697975325000281)
,p_db_column_name=>'MAIL_CC'
,p_display_order=>61
,p_column_identifier=>'G'
,p_column_label=>'CC'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10698351056000281)
,p_db_column_name=>'MAIL_BCC'
,p_display_order=>71
,p_column_identifier=>'H'
,p_column_label=>'BCC'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10698735946000282)
,p_db_column_name=>'MAIL_SEND_COUNT'
,p_display_order=>81
,p_column_identifier=>'I'
,p_column_label=>'Send Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10699179645000282)
,p_db_column_name=>'MAIL_SEND_ERROR'
,p_display_order=>91
,p_column_identifier=>'J'
,p_column_label=>'Send Error'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10699517142000283)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>101
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10699989101000283)
,p_db_column_name=>'LAST_UPDATED_ON'
,p_display_order=>111
,p_column_identifier=>'L'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10700334468000283)
,p_db_column_name=>'MAIL_MESSAGE_CREATED'
,p_display_order=>121
,p_column_identifier=>'M'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10700726833000284)
,p_db_column_name=>'MESSAGE_CREATED_BY'
,p_display_order=>131
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10701110809000284)
,p_db_column_name=>'APP_ID'
,p_display_order=>141
,p_column_identifier=>'O'
,p_column_label=>'Application ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10701503768000285)
,p_db_column_name=>'TEXT_BODY_SIZE'
,p_display_order=>151
,p_column_identifier=>'P'
,p_column_label=>'Text Body Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10701983322000285)
,p_db_column_name=>'HTML_BODY_SIZE'
,p_display_order=>161
,p_column_identifier=>'Q'
,p_column_label=>'HTML Body Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10702392735000286)
,p_db_column_name=>'SEND_BEGIN'
,p_display_order=>171
,p_column_identifier=>'R'
,p_column_label=>'Send Begin'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10702754363000286)
,p_db_column_name=>'SEND_END'
,p_display_order=>171
,p_column_identifier=>'S'
,p_column_label=>'Send End'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10703113520000286)
,p_db_column_name=>'MAIL_ATTACHMENT_COUNT'
,p_display_order=>181
,p_column_identifier=>'T'
,p_column_label=>'Attachment Count'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10703558086000287)
,p_db_column_name=>'MAIL_ATTACHMENT_SIZE'
,p_display_order=>191
,p_column_identifier=>'U'
,p_column_label=>'Attachment Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10704239656000289)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'107043'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MAIL_STATUS:MAIL_TO:MAIL_FROM:MAIL_SUBJ:MAIL_SEND_COUNT:MAIL_SEND_ERROR:MAIL_MESSAGE_CREATED:MESSAGE_CREATED_BY:APP_ID:HTML_BODY_SIZE'
,p_sort_column_1=>'MAIL_MESSAGE_CREATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10705116201000293)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10694573246000253)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9717674682517982)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.,RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp.component_end;
end;
/

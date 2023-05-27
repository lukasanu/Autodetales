prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_name=>unistr('Tiek\0117jai')
,p_alias=>unistr('TIEK\0116JAI')
,p_step_title=>unistr('Tiek\0117jai')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230502063317'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27234755396215893)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select nid as ID, ntype as TYPE, scompany_name as COMPANY_NAME, semail as EMAIL, sphone as PHONE, swebsite as WEBSITE, scompany_address as COMPANY_ADDRESS, sshipping_address as SHIPPING_ADDRESS, szip as ZIP, scompany_code as COMPANY_CODE, stax_code a'
||'s TAX_CODE, ndo_payment_delay as DO_PAYMENT_DELAY, npayment_delay_in_days as PAYMENT_DELAY_IN_DAYS, scontract_number as CONTRACT_NUMBER, ncontacts as CONTACTS, ncountry_id as COUNTRY_ID, ncity_id as CITY_ID from v_suppliers_info where nid != -1 order'
||unistr(' by TRIM(regexp_replace(company_name, q''([":'':\201C:\201D:\201E:,])'', ''''))')
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Report 1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(27235149251215893)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>unistr('N\0117ra \012Fra\0161\0173 atitinkan\010Di\0173 u\017Eklaus\0105.')
,p_search_button_label=>unistr('Ie\0161koti')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,9:P9_NID,P9_NTYPE:#ID#,1'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'DEV'
,p_internal_uid=>27235149251215893
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13870991563221335)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13871332646221335)
,p_db_column_name=>'TYPE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'TYPE'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13871794244221336)
,p_db_column_name=>'COMPANY_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('Tiek\0117jas')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13872116180221336)
,p_db_column_name=>'EMAIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('El. pa\0161tas')
,p_column_html_expression=>'<span style="display:block;width:220px;">#EMAIL#</span>'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13872596383221336)
,p_db_column_name=>'PHONE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Tel. nr.'
,p_column_html_expression=>'<span style="display:block;width:90px;">#PHONE#</span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13872967935221336)
,p_db_column_name=>'WEBSITE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'El. puslapis'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(71909938700685156)
,p_db_column_name=>'COMPANY_ADDRESS'
,p_display_order=>18
,p_column_identifier=>'AD'
,p_column_label=>unistr('\012Emon\0117s adresas')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13874557043221337)
,p_db_column_name=>'SHIPPING_ADDRESS'
,p_display_order=>28
,p_column_identifier=>'L'
,p_column_label=>'Siuntimo adresas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13874947477221338)
,p_db_column_name=>'ZIP'
,p_display_order=>38
,p_column_identifier=>'M'
,p_column_label=>unistr('Pa\0161to kodas')
,p_column_html_expression=>'<span style="display:block;width:60px;">#ZIP#</span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13875700437221338)
,p_db_column_name=>'COMPANY_CODE'
,p_display_order=>48
,p_column_identifier=>'P'
,p_column_label=>unistr('\012Emon\0117s kodas')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13876147737221338)
,p_db_column_name=>'TAX_CODE'
,p_display_order=>58
,p_column_identifier=>'Q'
,p_column_label=>unistr('PVM mok\0117tojo kodas')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13853122791296443)
,p_db_column_name=>'DO_PAYMENT_DELAY'
,p_display_order=>68
,p_column_identifier=>'T'
,p_column_label=>'DO_PAYMENT_DELAY'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13853258543296444)
,p_db_column_name=>'PAYMENT_DELAY_IN_DAYS'
,p_display_order=>78
,p_column_identifier=>'U'
,p_column_label=>unistr('Mok\0117jimo atid\0117jimas (dienomis)')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15487236535775705)
,p_db_column_name=>'CONTRACT_NUMBER'
,p_display_order=>88
,p_column_identifier=>'V'
,p_column_label=>'Sutarties numeris'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(324602456910247)
,p_db_column_name=>'CONTACTS'
,p_display_order=>98
,p_column_identifier=>'AA'
,p_column_label=>'Kontaktai'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_COMPANYID:#ID#'
,p_column_linktext=>'#CONTACTS#'
,p_column_link_attr=>'<span style="display:block;width:100px;"</span'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(324757247910248)
,p_db_column_name=>'COUNTRY_ID'
,p_display_order=>108
,p_column_identifier=>'AB'
,p_column_label=>'Country Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(324777125910249)
,p_db_column_name=>'CITY_ID'
,p_display_order=>118
,p_column_identifier=>'AC'
,p_column_label=>'City Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(27252512231237416)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'138769'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COMPANY_NAME:EMAIL:PHONE:WEBSITE:COMPANY_ADDRESS:SHIPPING_ADDRESS:ZIP:COMPANY_CODE:TAX_CODE:CONTRACT_NUMBER:PAYMENT_DELAY_IN_DAYS:CONTACTS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27243895766215901)
,p_plug_name=>unistr('Tiek\0117jai')
,p_icon_css_classes=>'fa-address-card-o'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13877387087221343)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(27234755396215893)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Kurti'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13878086470221350)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(27234755396215893)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13878597792221351)
,p_event_id=>wwv_flow_imp.id(13878086470221350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(27234755396215893)
);
wwv_flow_imp.component_end;
end;
/

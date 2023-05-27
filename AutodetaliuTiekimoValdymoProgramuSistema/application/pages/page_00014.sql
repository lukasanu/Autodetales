prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>unistr('Antkainiai pagal grup\0119')
,p_alias=>unistr('ANTKAINIAI-PAGAL-GRUP\0118')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Antkainiai pagal grup\0119')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'th#LINK,',
'td[headers=LINK]',
'{',
'  width:20px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20220502073354'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21325241378705781)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sbg.ID,',
'       cm.NAME as VEHICLE_BRANDS, ',
'       ot.NAME as ORDER_TYPES,',
'       sg.NAME as SURCHARGE_GROUP,',
'       sbg.PRICE || ''%'' as value',
'  from SURCHARGE_BY_GROUP sbg, VEHICLE_BRANDS cm, ORDER_TYPES ot, SURCHARGE_GROUP sg',
'  where cm.ID = sbg.CAR_MODEL_ID',
'  and ot.ID = sbg.ORDER_TYPE_ID',
'  and sg.ID = sbg.SURCHARGE_GROUP_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Report 1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(21325641491705782)
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
,p_detail_link=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP:P15_NID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'DEV'
,p_internal_uid=>21325641491705782
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(21325749478705782)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20630566732083125)
,p_db_column_name=>'VEHICLE_BRANDS'
,p_display_order=>11
,p_column_identifier=>'F'
,p_column_label=>unistr('Automobilio mark\0117')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20630694830083126)
,p_db_column_name=>'ORDER_TYPES'
,p_display_order=>21
,p_column_identifier=>'G'
,p_column_label=>unistr('U\017Esakymo tipas')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20630711093083127)
,p_db_column_name=>'SURCHARGE_GROUP'
,p_display_order=>31
,p_column_identifier=>'H'
,p_column_label=>unistr('Antkaini\0173 grup\0117')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(20630867058083128)
,p_db_column_name=>'VALUE'
,p_display_order=>41
,p_column_identifier=>'I'
,p_column_label=>'Antkainis'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(21337114476776200)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'213372'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:VEHICLE_BRANDS:ORDER_TYPES:SURCHARGE_GROUP:VALUE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21328758931705784)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(21325241378705781)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Kurti'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21327778001705783)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(21325241378705781)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21328256606705783)
,p_event_id=>wwv_flow_imp.id(21327778001705783)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21325241378705781)
);
wwv_flow_imp.component_end;
end;
/

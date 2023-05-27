prompt --application/pages/page_00065
begin
--   Manifest
--     PAGE: 00065
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
 p_id=>65
,p_name=>unistr('Kainora\0161\010Di\0173 sujungimas')
,p_alias=>unistr('KAINORA\0160\010CI\0172-SUJUNGIMAS')
,p_step_title=>unistr('Kainora\0161\010Di\0173 sujungimas')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230328094814'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69787418376052851)
,p_plug_name=>unistr('Kainora\0161\010Di\0173 sujungimas')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69650006332507859)
,p_plug_name=>unistr('Kainora\0161\010Di\0173 sujungimas')
,p_parent_plug_id=>wwv_flow_imp.id(69787418376052851)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'    ssp',
'    AS',
'        (SELECT scode',
'               ,sname',
'               ,ssp.schild_code',
'               ,ssp.nprice',
'               ,ssp.nqnt',
'               ,ssp.nprice',
'                * get_surcharge(:P65_CLIENT_ID',
'                               ,vpl.ncar_id',
'                               ,vpl.norder_type_id)    AS min_price',
'         FROM   v_storage_suppliers_parts  ssp',
'               ,v_price_list_imports       vpl',
'         WHERE  1 = 1',
'         AND    ssp.ncar_id = vpl.ncar_id',
'         AND    ssp.norder_type_id = vpl.norder_type_id',
'         AND    ssp.nsupplier_id = vpl.nsupplier_id',
'         AND    vpl.nid IN (SELECT nid',
'                     FROM   v_price_list_imports',
'                     WHERE  nmerge_bool = 1)',
'         AND    vpl.napproved = 1',
'         AND    vpl.nhaserrors = 0),',
'    smin',
'    AS',
'        (SELECT   MIN(min_price)     AS min_price',
'                 ,scode',
'         FROM     ssp',
'         GROUP BY scode)',
'SELECT   ssp.scode as "Code"',
'        ,ssp.schild_code as "Replacement"',
'        ,ssp.sname as "Title"',
'        ,ssp.nqnt as "Minimal quantity"',
'        ,TO_CHAR(ssp.nprice',
'                ,''fm99999990.90'')     as "Price EUR"',
'        ,TO_CHAR(smin.min_price',
'                ,''fm99999990.90'')    AS min_nprice',
'FROM     ssp',
'        ,smin',
'WHERE    ssp.scode = smin.scode',
'AND      ssp.min_price = smin.min_price',
'ORDER BY 1;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Sujungtas'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(69649939655507859)
,p_name=>unistr('Kainora\0161\010Di\0173 sujungimas')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'LAN'
,p_internal_uid=>5299736536737019
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69649488722507853)
,p_db_column_name=>'Code'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69649112361507851)
,p_db_column_name=>'Replacement'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Replacement'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69648769754507851)
,p_db_column_name=>'Title'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Title'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69648360417507851)
,p_db_column_name=>'Minimal quantity'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Minimal Quantity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69786933373052846)
,p_db_column_name=>'Price EUR'
,p_display_order=>25
,p_column_identifier=>'I'
,p_column_label=>'Price Eur'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69647358154502522)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'53024'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Code:Replacement:Title:Minimal quantity:Price EUR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69454457838926548)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69650006332507859)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Gr\012F\017Eti')
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69787355697052850)
,p_name=>'P65_CLIENT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69787418376052851)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/

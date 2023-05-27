prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
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
 p_id=>66
,p_name=>unistr('Perteklin\0117s detal\0117s')
,p_alias=>unistr('PERTEKLIN\0116S-DETAL\0116S')
,p_step_title=>unistr('Perteklin\0117s detal\0117s')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'span.remark-wrap { ',
'    display:inline-block; ',
'    width:150px; ',
'    max-height: 5em;',
'    line-height: 1.5em;',
'    text-overflow: ellipsis;',
'    word-wrap: break-word;',
'    overflow: auto;',
'    } '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230502101941'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8436619810341485)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nid as nid',
'      ,spart_code as spart_code',
'      ,svehicle_brand as svehicle_brand',
'      ,nqnt as nqnt',
'      ,ncar_id as ncar_id',
'      ,nprice as nprice',
'      ,scomment as scomment',
'      ,dtcreated_at as dtcreated_at',
'      ,sstatus as status',
'      ,scompany_name as scompany',
'      ,sis_accounted as is_accounted',
'FROM   v_oversupplied_parts_info'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Report 1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8437032488341485)
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
,p_detail_link=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:RP,:P69_NID:#NID##ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'DEV'
,p_internal_uid=>83386708680586363
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69173359794820869)
,p_db_column_name=>'NID'
,p_display_order=>10
,p_column_identifier=>'AU'
,p_column_label=>'Nid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69173267011820868)
,p_db_column_name=>'SPART_CODE'
,p_display_order=>20
,p_column_identifier=>'AV'
,p_column_label=>unistr('Detal\0117s kodas')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69173164342820867)
,p_db_column_name=>'SVEHICLE_BRAND'
,p_display_order=>30
,p_column_identifier=>'AW'
,p_column_label=>unistr('Automobilio mark\0117')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69172988078820866)
,p_db_column_name=>'NQNT'
,p_display_order=>40
,p_column_identifier=>'AX'
,p_column_label=>'Kiekis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69172957816820865)
,p_db_column_name=>'NCAR_ID'
,p_display_order=>50
,p_column_identifier=>'AY'
,p_column_label=>'Ncar Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69172835977820864)
,p_db_column_name=>'NPRICE'
,p_display_order=>60
,p_column_identifier=>'AZ'
,p_column_label=>'Kaina'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69172710412820863)
,p_db_column_name=>'SCOMMENT'
,p_display_order=>70
,p_column_identifier=>'BA'
,p_column_label=>'Komentaras'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69172606368820862)
,p_db_column_name=>'DTCREATED_AT'
,p_display_order=>80
,p_column_identifier=>'BB'
,p_column_label=>unistr('Suk\016Brimo data')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69120118465959446)
,p_db_column_name=>'STATUS'
,p_display_order=>90
,p_column_identifier=>'BC'
,p_column_label=>'Statusas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69119880831959444)
,p_db_column_name=>'SCOMPANY'
,p_display_order=>100
,p_column_identifier=>'BD'
,p_column_label=>unistr('Tiek\0117jas')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68732021366615749)
,p_db_column_name=>'IS_ACCOUNTED'
,p_display_order=>110
,p_column_identifier=>'BE'
,p_column_label=>unistr('Ar yra s\0105sk.')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8443032088342229)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'342598'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SPART_CODE:SVEHICLE_BRAND:SCOMPANY:NQNT:NPRICE:STATUS:SCOMMENT:DTCREATED_AT:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41301991015126458)
,p_plug_name=>unistr('Perteklin\0117s detal\0117s')
,p_icon_css_classes=>'fa-package'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4624318381366006)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8436619810341485)
,p_button_name=>'Create'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
);
wwv_flow_imp.component_end;
end;
/

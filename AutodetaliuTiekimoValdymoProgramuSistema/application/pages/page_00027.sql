prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_name=>unistr('Antkaini\0173 Grup\0117s')
,p_alias=>unistr('ANTKAINI\0172-GRUP\0116S1')
,p_step_title=>unistr('Antkaini\0173 Grup\0117s')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20210830132730'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22514116772535076)
,p_plug_name=>unistr('Antkaini\0173 Grup\0117s')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct sg.NAME, ot.NAME || '' ('' || c.COMPANY_NAME || '')'', c.COMPANY_NAME',
'from SURCHARGE_GROUP sg, ORDER_TYPES ot, COMPANIES c',
'where c.ID = ot.SUPPLIER_ID',
'order by c.COMPANY_NAME;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>unistr('Antkaini\0173 Grup\0117s')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22514235214535076)
,p_name=>unistr('Antkaini\0173 Grup\0117s')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>unistr('N\0117ra \012Fra\0161\0173 atitinkan\010Di\0173 u\017Eklaus\0105.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEV'
,p_internal_uid=>22514235214535076
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22514676222535081)
,p_db_column_name=>'NAME'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'NAME'
,p_column_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:RP,28:P28_GROUPNAME:#NAME#'
,p_column_linktext=>'#NAME#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22508531095416125)
,p_db_column_name=>'OT.NAME||''(''||C.COMPANY_NAME||'')'''
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ot.NAME||&#x27;(&#x27;||c.COMPANY_NAME||&#x27;)&#x27;'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22508638170416126)
,p_db_column_name=>'COMPANY_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'COMPANY_NAME'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22521513596640755)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'225216'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAME:OT.NAME||''(''||C.COMPANY_NAME||'')'':COMPANY_NAME'
);
wwv_flow_imp.component_end;
end;
/

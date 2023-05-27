prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_name=>unistr('Sand\0117lis')
,p_alias=>unistr('SAND\0116LIS')
,p_step_title=>unistr('Sand\0117lis')
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
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230428102237'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2502691135588378)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.nid as id',
'      ,s.spart_name as part_name',
'      ,s.nqnt as qnt',
'      ,s.spart_code as part_code',
'      ,s.svehicle_name as vehicle_name',
'      ,s.svehicle_brand as vehicle_brand',
'      ,s.svehicle_model as vehicle_model',
'      ,s.ncar_id as car_id',
'      ,s.ncar_model_id as car_model_id',
'      ,s.nLENGTH as LENGTH',
'      ,s.nwidth as width',
'      ,s.nheight as height',
'      ,s.nweight as weight',
'      ,s.nvolume as volume',
'      ,s.nprice as price',
'      ,s.sdescription as description',
'      ,s.naccounting_flag as accounting_flag',
'      ,s.soriginal_package         AS soriginal_package',
'      ,s.splace                   as splace',
'      ,s.dtcreated_at',
'     -- ,s.images as images',
'      --,(select count(*) from v_photos where npart_id = s.nid) "count"',
'      ,case (select count(*) from v_photos where npart_id = s.nid)',
'      when 0 then ''Nuotraukos ('' ||(select count(*) from v_photos where npart_id = s.nid) || '')''',
'      else fnc_prepare_url(''f?p=&APP_ID.:53:&APP_SESSION.::::P53_ID:''|| s.nid ||'':'', ''Nuotraukos ('' || (select count(*) from v_photos where npart_id = s.nid) || '')'')',
'      end "image" ',
'FROM   v_storage_parts_info s'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>'Report 1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2503103813588378)
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
,p_detail_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP:P26_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'DEV'
,p_internal_uid=>34253727525280956
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2503254554588379)
,p_db_column_name=>'ID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47496219338967343)
,p_db_column_name=>'PART_NAME'
,p_display_order=>10
,p_column_identifier=>'AJ'
,p_column_label=>'Pavadinimas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68650123861619833)
,p_db_column_name=>'QNT'
,p_display_order=>20
,p_column_identifier=>'AQ'
,p_column_label=>'Kiekis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47496107006967342)
,p_db_column_name=>'PART_CODE'
,p_display_order=>30
,p_column_identifier=>'AK'
,p_column_label=>'Kodas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68649890853619831)
,p_db_column_name=>'VEHICLE_BRAND'
,p_display_order=>40
,p_column_identifier=>'AR'
,p_column_label=>unistr('Mark\0117')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68649772946619830)
,p_db_column_name=>'VEHICLE_MODEL'
,p_display_order=>50
,p_column_identifier=>'AS'
,p_column_label=>'Modelis'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47496002485967341)
,p_db_column_name=>'VEHICLE_NAME'
,p_display_order=>60
,p_column_identifier=>'AL'
,p_column_label=>'Automobilis'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9042202816156634)
,p_db_column_name=>'LENGTH'
,p_display_order=>70
,p_column_identifier=>'AA'
,p_column_label=>'Ilgis (m)'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9042359746156635)
,p_db_column_name=>'WIDTH'
,p_display_order=>80
,p_column_identifier=>'AB'
,p_column_label=>'Plotis (m)'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9042467536156636)
,p_db_column_name=>'HEIGHT'
,p_display_order=>90
,p_column_identifier=>'AC'
,p_column_label=>unistr('Auk\0161tis (m)')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9042653912156638)
,p_db_column_name=>'VOLUME'
,p_display_order=>100
,p_column_identifier=>'AE'
,p_column_label=>unistr('T\016Bris (m\00B3)')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(9042526566156637)
,p_db_column_name=>'WEIGHT'
,p_display_order=>110
,p_column_identifier=>'AD'
,p_column_label=>'Svoris (kg)'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7846952488434055)
,p_db_column_name=>'PRICE'
,p_display_order=>120
,p_column_identifier=>'AF'
,p_column_label=>unistr('Kaina (\20AC)')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47495683544967338)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>130
,p_column_identifier=>'AM'
,p_column_label=>'Komentaras'
,p_column_html_expression=>'<span class="remark-wrap">#DESCRIPTION#</span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68732328212615752)
,p_db_column_name=>'SORIGINAL_PACKAGE'
,p_display_order=>140
,p_column_identifier=>'AU'
,p_column_label=>unistr('Org. pakuot\0117?')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(47495576305967337)
,p_db_column_name=>'ACCOUNTING_FLAG'
,p_display_order=>150
,p_column_identifier=>'AN'
,p_column_label=>'Aps. Sistemoje'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68650355940619835)
,p_db_column_name=>'CAR_ID'
,p_display_order=>170
,p_column_identifier=>'AO'
,p_column_label=>'Car Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68650172148619834)
,p_db_column_name=>'CAR_MODEL_ID'
,p_display_order=>180
,p_column_identifier=>'AP'
,p_column_label=>'Car Model Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69118733462959432)
,p_db_column_name=>'SPLACE'
,p_display_order=>190
,p_column_identifier=>'AV'
,p_column_label=>unistr('Sand\0117lio sekcija')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68204346640691040)
,p_db_column_name=>'image'
,p_display_order=>210
,p_column_identifier=>'AX'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68732138401615750)
,p_db_column_name=>'DTCREATED_AT'
,p_display_order=>220
,p_column_identifier=>'AY'
,p_column_label=>unistr('Suk\016Brimo data')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2509103413589122)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'342598'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PART_NAME:PART_CODE:QNT:VEHICLE_BRAND:VEHICLE_MODEL:LENGTH:WIDTH:HEIGHT:VOLUME:WEIGHT:PRICE:SPLACE:DESCRIPTION:SORIGINAL_PACKAGE:ACCOUNTING_FLAG:image'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47235919689879565)
,p_plug_name=>unistr('Sand\0117lis')
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
 p_id=>wwv_flow_imp.id(2508702876588393)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2502691135588378)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Kurti'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26'
);
wwv_flow_imp.component_end;
end;
/

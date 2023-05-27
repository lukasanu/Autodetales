prompt --application/pages/page_00068
begin
--   Manifest
--     PAGE: 00068
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
 p_id=>68
,p_name=>unistr('Lydra\0161\010Di\0173 \012Fk\0117limas')
,p_alias=>unistr('LYDRA\0160\010CI\0172-\012EK\0116LIMAS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Lydra\0161\010Di\0173 \012Fk\0117limas')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'OST'
,p_last_upd_yyyymmddhh24miss=>'20230501175726'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67749802391509362)
,p_plug_name=>'Duomenys Surinkimui XML'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- select line_number,  col001, col002, col003',
'--   from apex_application_temp_files f, ',
'--        table( apex_data_parser.parse(',
'--                   p_content                     => f.blob_content,',
'--                   p_add_headers_row             => ''Y'',',
'--                   --',
'--                   p_row_selector                => ''/DOCUMENT/ROWSET/ROW'',',
'--                   --',
'--                   p_store_profile_to_collection => ''FILE_PARSER_COLLECTION'',',
'--                   p_file_name                   => f.filename ) ) p',
'--  where f.name = (select  filename',
'--     FROM   apex_application_temp_files);',
'select  rownum, mime_type, filename, blob_content FROM   apex_application_temp_files'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P68_FILE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P68_NID'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Duomenys Surinkimui XML'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(67685567790643376)
,p_name=>'ROWNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWNUM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rownum'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(67685604932643377)
,p_name=>'BLOB_CONTENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BLOB_CONTENT'
,p_data_type=>'BLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Blob Content'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(67746454161509328)
,p_name=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILENAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Filename'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>400
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(67746565431509329)
,p_name=>'MIME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIME_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Mime Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(67749584920509360)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>10
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(67749746087509361)
,p_internal_uid=>7199930104735517
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(67717849911050165)
,p_interactive_grid_id=>wwv_flow_imp.id(67749746087509361)
,p_static_id=>'72319'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(67717639643050164)
,p_report_id=>wwv_flow_imp.id(67717849911050165)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67669616990639083)
,p_view_id=>wwv_flow_imp.id(67717639643050164)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(67685567790643376)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67676338810643139)
,p_view_id=>wwv_flow_imp.id(67717639643050164)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(67685604932643377)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67677764970643142)
,p_view_id=>wwv_flow_imp.id(67717639643050164)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(67746454161509328)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67679116596643145)
,p_view_id=>wwv_flow_imp.id(67717639643050164)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(67746565431509329)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67717130297050159)
,p_view_id=>wwv_flow_imp.id(67717639643050164)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(67749584920509360)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68598966819563767)
,p_plug_name=>'Duomenys Keitimui'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ocd.nid, ocd.SPART_CODE, ocd.NQNT, o.s_id from V_ORDER_CONFIRMATIONS_DETAILS ocd, v_orders o',
'where ocd.nconfirmation_id = :P68_NID',
'and o.nid(+) = ocd.norder_id'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P68_NID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P68_NID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Duomenys Keitimui'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(68320305887261628)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(68598120690563759)
,p_name=>'ORDER_SID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'S_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Rasta U\017Esakyme')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(68598203824563760)
,p_name=>'KIEKIAI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NQNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Kiekiai'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(68598356317563761)
,p_name=>'KODAI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SPART_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Kodai'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(68598450943563762)
,p_name=>'NID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(68598818255563766)
,p_internal_uid=>6350857936681112
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(68583570953394313)
,p_interactive_grid_id=>wwv_flow_imp.id(68598818255563766)
,p_static_id=>'63662'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(68583317184394312)
,p_report_id=>wwv_flow_imp.id(68583570953394313)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68202023965690835)
,p_view_id=>wwv_flow_imp.id(68583317184394312)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(68320305887261628)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68580146063394303)
,p_view_id=>wwv_flow_imp.id(68583317184394312)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(68598120690563759)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68581008694394306)
,p_view_id=>wwv_flow_imp.id(68583317184394312)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(68598203824563760)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68581956639394308)
,p_view_id=>wwv_flow_imp.id(68583317184394312)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(68598356317563761)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68582778872394310)
,p_view_id=>wwv_flow_imp.id(68583317184394312)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(68598450943563762)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69436758634896573)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9629970051517884)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69442607494896584)
,p_plug_name=>unistr('Lydra\0161\010Di\0173 \012Fk\0117limas')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9626611630517882)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select oc.NID,',
'       oc.S_ID,',
'       oc.NSUPPLIER_ID,',
'       oc.DTPREPARATION,',
'       LISTAGG(ocd.SPART_CODE, chr(10)) WITHIN GROUP (ORDER BY ocd.nid) "PARTS",',
'       LISTAGG(ocd.NQNT, chr(10)) WITHIN GROUP (ORDER BY ocd.nid) "PART_QNT"',
'  from V_ORDER_CONFIRMATIONS oc, V_ORDER_CONFIRMATIONS_details ocd',
'  where ocd.nconfirmation_id(+) = oc.nid',
'  group by oc.nid, oc.S_ID,  oc.NSUPPLIER_ID, oc.DTPREPARATION'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68324971951261674)
,p_plug_name=>'Failai'
,p_region_name=>'reportFiles'
,p_parent_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>unistr('select nid, sfilename, ''<a href="f?p=&APP_ID.:1:&APP_SESSION.:APPLICATION_PROCESS=GET_FILE:::FILE_ID:''||nid||''" class="download fa fa-download" aria-hidden="true" title="Atsisi\0173sti"></a>'' as link, null as "delete" from V_ORDER_CONFIRMATIONS_FILES whe')
||'re nconfirmation_id = :P68_NID'
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P68_NID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P68_NID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Failai'
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
 p_id=>wwv_flow_imp.id(68320880431261634)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'OST'
,p_internal_uid=>6628795760983244
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68320783485261633)
,p_db_column_name=>'NID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68320752945261632)
,p_db_column_name=>'SFILENAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Failo pavadinimas'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68320597395261631)
,p_db_column_name=>'LINK'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'&nbsp'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(68320511155261630)
,p_db_column_name=>'delete'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'&nbsp'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'<span class="delete t-Icon fa fa-trash-o" aria-hidden="true"></span>'
,p_column_link_attr=>'id="#NID#" class="delete"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(68211037067740546)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'67387'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NID:SFILENAME:LINK:delete'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69456147584926565)
,p_plug_name=>'DuomenysSutikrinimui'
,p_region_name=>'dataGrid'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'            partcodes',
'            AS',
'                (SELECT     ROWNUM         AS cnt',
'                           ,REPLACE(TRIM(REGEXP_SUBSTR(:P68_PARTS',
'                                                      ,''^.*$''',
'                                                      ,1',
'                                                      ,ROWNUM',
'                                                      ,''m''))',
'                                   ,CHR(13)',
'                                   ,'''')    part_code',
'                 FROM       DUAL',
'                 CONNECT BY ROWNUM <= LENGTH(REGEXP_REPLACE(REGEXP_REPLACE(:P68_PARTS',
'                                                                          ,''^.*$''',
'                                                                          ,''1''',
'                                                                          ,1',
'                                                                          ,0',
'                                                                          ,''m'')',
'                                                           ,''\s''',
'                                                           ,''''))),',
'            partqnt',
'            AS',
'                (SELECT     ROWNUM                      AS cnt',
'                           ,TRIM(REGEXP_SUBSTR(:P68_PART_QNT',
'                                              ,''^.*$''',
'                                              ,1',
'                                              ,ROWNUM',
'                                              ,''m''))    part_qnt',
'                 FROM       DUAL',
'                 CONNECT BY ROWNUM <= LENGTH(REGEXP_REPLACE(REGEXP_REPLACE(:P68_PART_QNT',
'                                                                          ,''^.*$''',
'                                                                          ,''1''',
'                                                                          ,1',
'                                                                          ,0',
'                                                                          ,''m'')',
'                                                           ,''\s''',
'                                                           ,''''))),',
'            cmax',
'            AS',
'                (SELECT     LEVEL     AS cnt',
'                 FROM       DUAL',
'                 CONNECT BY LEVEL <= (SELECT MAX(cnt)',
'                                      FROM   (',
'                                                 SELECT cnt FROM partcodes',
'                                                 UNION',
'                                                 SELECT cnt FROM partqnt',
'                                             ))),                ',
'            full_data',
'            AS',
'                (SELECT   CASE',
'                              WHEN LENGTH(REPLACE(TRIM(pc.part_code)',
'                                                 ,CHR(13)',
'                                                 ,'''')) < 3 THEN',
'                                  SUBSTR(REPLACE(REPLACE(TRIM(pc.part_code)',
'                                                        ,CHR(13)',
'                                                        ,'''')',
'                                                ,''-''',
'                                                ,NULL)',
'                                        ,0',
'                                        ,30)',
'                              ELSE',
'                                  SUBSTR(TRIM(pc.part_code)',
'                                        ,0',
'                                        ,30)',
'                          END AS KODAI',
'                         ,NVL(DECODE(validate_conversion(TRIM(REPLACE(pq.part_qnt',
'                                                                     ,CHR(13)',
'                                                                     ,'''')) AS NUMBER)',
'                                    ,1, REPLACE(pq.part_qnt',
'                                               ,CHR(13)',
'                                               ,'''')',
'                                    ,1)',
'                             ,1) AS KIEKIAI',
'                         ,rownum as nid',
'                 FROM     partcodes  pc',
'                         ,partqnt    pq',
'                         ,cmax',
'                 WHERE    cmax.cnt = pc.cnt(+)',
'                 AND      cmax.cnt = pq.cnt(+)',
'                 ORDER BY cmax.cnt ASC)',
'        (SELECT * FROM full_data);'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P68_PART_QNT,P68_PARTS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P68_NID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'DuomenysSutikrinimui'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69454670454926550)
,p_name=>'NID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69455823494926562)
,p_name=>'KIEKIAI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KIEKIAI'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Kiekiai'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69455966279926563)
,p_name=>'KODAI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KODAI'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Kodai'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>120
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(69456031784926564)
,p_internal_uid=>5493644407318314
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(69400027970235617)
,p_interactive_grid_id=>wwv_flow_imp.id(69456031784926564)
,p_static_id=>'55497'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(69399849949235617)
,p_report_id=>wwv_flow_imp.id(69400027970235617)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69383978090163300)
,p_view_id=>wwv_flow_imp.id(69399849949235617)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(69454670454926550)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69398380805235611)
,p_view_id=>wwv_flow_imp.id(69399849949235617)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(69455823494926562)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69399294696235614)
,p_view_id=>wwv_flow_imp.id(69399849949235617)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(69455966279926563)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69436277520896573)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69436758634896573)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68986629537110929)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69436758634896573)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161trinti')
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_confirm_message=>unistr('Ar tikrai norite i\0161trinti lydra\0161t\012F?')
,p_button_condition=>'P68_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69434173393896571)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(69436758634896573)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P68_NID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(67750830912509372)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69436758634896573)
,p_button_name=>'Load'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('U\017Ekrauti XML')
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P68_NID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68207125123691068)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(69436758634896573)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161saugoti')
,p_button_position=>'NEXT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P68_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(68990056872110963)
,p_branch_name=>'Close dialog'
,p_branch_action=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:RR,67::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(69434173393896571)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(67750377544509368)
,p_branch_name=>'Close dialog'
,p_branch_action=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:RR,67::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(68986629537110929)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68203112147691028)
,p_name=>'P68_FILE_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_item_default=>'1'
,p_prompt=>'Failo tipas'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:XML;0,Kiti;1'
,p_display_when=>'P68_NID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68322826540261653)
,p_name=>'P68_FILE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68370431290177870)
,p_name=>'P68_PARTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_item_source_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_prompt=>unistr('Detali\0173 kodai')
,p_source=>'PARTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>5
,p_display_when=>'P68_NID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_imp.id(9716637229517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68988098582110944)
,p_name=>'P68_COUNT_QNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68988407640110947)
,p_name=>'P68_COUNT_CODES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69440075496896575)
,p_name=>'P68_DTPREPARATION'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_item_source_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_prompt=>unistr('Lydra\0161\010Dio data')
,p_format_mask=>'YYYY-MM-DD'
,p_source=>'DTPREPARATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'NATIVE'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69440755576896576)
,p_name=>'P68_NSUPPLIER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_item_source_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_prompt=>unistr('Tiek\0117jas')
,p_source=>'NSUPPLIER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'V_COMPANIES.SCOMPANY_NAME'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69441870101896581)
,p_name=>'P68_S_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_item_source_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_prompt=>unistr('Lydra\0161\010Dio numeris')
,p_source=>'S_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69442223437896584)
,p_name=>'P68_NID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_item_source_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_source=>'NID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69456408432926568)
,p_name=>'P68_FILE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Failas'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
,p_attribute_10=>'Y'
,p_attribute_12=>'DROPZONE_INLINE'
,p_attribute_13=>unistr('Lydra\0161\010Dio failas')
,p_attribute_14=>unistr('Tempkite arba pasirinkite failus \010Dia')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69456639599926570)
,p_name=>'P68_PART_QNT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_item_source_plug_id=>wwv_flow_imp.id(69442607494896584)
,p_prompt=>unistr('Detali\0173 kiekiai')
,p_source=>'PART_QNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_display_when=>'P68_NID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_imp.id(9716637229517977)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(68989844064110961)
,p_validation_name=>'SID'
,p_validation_sequence=>10
,p_validation=>'P68_S_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\012Eveskite pavadinim\0105')
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(69434173393896571)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(68989910890110962)
,p_validation_name=>'Supplier'
,p_validation_sequence=>20
,p_validation=>'P68_NSUPPLIER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Pasirinkite tiek\0117j\0105')
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(69434173393896571)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(68989759855110960)
,p_validation_name=>'Date'
,p_validation_sequence=>30
,p_validation=>'P68_DTPREPARATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\012Eveskite dat\0105')
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(69434173393896571)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(68989675816110959)
,p_validation_name=>'File'
,p_validation_sequence=>40
,p_validation=>'P68_FILE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Pasirinkite fail\0105')
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(69434173393896571)
,p_associated_item=>wwv_flow_imp.id(69456408432926568)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(68989519676110958)
,p_validation_name=>'Codes'
,p_validation_sequence=>50
,p_validation=>'P68_PARTS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\012Eveskite detali\0173 kodus')
,p_always_execute=>'Y'
,p_validation_condition=>'P68_NID'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_when_button_pressed=>wwv_flow_imp.id(69434173393896571)
,p_associated_item=>wwv_flow_imp.id(68370431290177870)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(68325106679261676)
,p_validation_name=>'Quantity'
,p_validation_sequence=>60
,p_validation=>'P68_PART_QNT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\012Eveskite detali\0173 kiekius')
,p_always_execute=>'Y'
,p_validation_condition=>'P68_NID'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_when_button_pressed=>wwv_flow_imp.id(69434173393896571)
,p_associated_item=>wwv_flow_imp.id(69456639599926570)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69436255801896573)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69436277520896573)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69435468793896572)
,p_event_id=>wwv_flow_imp.id(69436255801896573)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68988317188110946)
,p_name=>'Count Codes'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P68_PARTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68988189608110945)
,p_event_id=>wwv_flow_imp.id(68988317188110946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_COUNT_CODES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'  SELECT nvl(length(regexp_replace(regexp_replace(:P68_PARTS,''^.*$'',''1'',1,0,''m''),''\s'','''')),0) FROM DUAL;'
,p_attribute_07=>'P68_PARTS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68987607118110939)
,p_event_id=>wwv_flow_imp.id(68988317188110946)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_PARTS'
,p_attribute_01=>unistr('$("label[for=''P68_PARTS'']").text("Detali\0173 kodai: "+ $v("P68_COUNT_CODES"));')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69455751285926561)
,p_name=>'Refresh IG'
,p_event_sequence=>21
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P68_PARTS'
,p_condition_element=>'P68_PARTS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69455282270926557)
,p_event_id=>wwv_flow_imp.id(69455751285926561)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69456147584926565)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69455598623926560)
,p_event_id=>wwv_flow_imp.id(69455751285926561)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69456147584926565)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69455142553926555)
,p_event_id=>wwv_flow_imp.id(69455751285926561)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69456147584926565)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68990934017110972)
,p_name=>'Submit Craete'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69434173393896571)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68991468472110977)
,p_event_id=>wwv_flow_imp.id(68990934017110972)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// var table = document.querySelector(''#dataGrid_ig_grid_vc > div.a-GV-bdy > div.a-GV-w-scroll > table'');',
'// for (var i = 1, row; row = table.rows[i]; i++) {',
'//     row.setAttribute(''class'', ''is-updated'');',
'//     row.querySelector(''td:nth-child(2)'').setAttribute(''class'', ''is-changed'');',
'//     row.querySelector(''td:nth-child(3)'').setAttribute(''class'', ''is-changed'');',
'    ',
'// }',
'',
'var model = apex.region("dataGrid").widget().interactiveGrid("getViews", "grid").model;',
'var codes = [];//$v(document.getElementById(''P68_PARTS'')).split(''\n'');',
'var qnt = [];//$v(document.getElementById(''P68_PART_QNT'')).split(''\n'');',
'var i = 0;',
'var j = 0;',
'',
'model.forEach(function(r) {',
'        codes[i] = model.getValue(r, "KODAI",);',
'        qnt[i] = model.getValue(r, "KIEKIAI");',
'        i = i + 1;',
'});',
'',
'',
'model.forEach(function(r) {',
'        model.setValue(r, "KODAI", codes[j] + '' '');',
'        model.setValue(r, "KIEKIAI", qnt[j] + '' '' );',
'        j = j + 1;',
'});',
'',
'//apex.submit(''SAVEDATA1'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68990515862110968)
,p_event_id=>wwv_flow_imp.id(68990934017110972)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'CREATE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68987984931110943)
,p_name=>'Count QNT'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P68_PART_QNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68987881331110942)
,p_event_id=>wwv_flow_imp.id(68987984931110943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_COUNT_QNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'  SELECT nvl(length(regexp_replace(regexp_replace(:P68_PART_QNT,''^.*$'',''1'',1,0,''m''),''\s'','''')),0) FROM DUAL;'
,p_attribute_07=>'P68_PART_QNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68987825055110941)
,p_event_id=>wwv_flow_imp.id(68987984931110943)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_PART_QNT'
,p_attribute_01=>unistr('$("label[for=''P68_PART_QNT'']").text("Detali\0173 kodai: "+ $v("P68_COUNT_QNT"));')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69455488642926559)
,p_name=>'Refresh IG2'
,p_event_sequence=>61
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P68_PART_QNT'
,p_condition_element=>'P68_PART_QNT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69455211925926556)
,p_event_id=>wwv_flow_imp.id(69455488642926559)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69456147584926565)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69455445171926558)
,p_event_id=>wwv_flow_imp.id(69455488642926559)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69456147584926565)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69454977008926554)
,p_event_id=>wwv_flow_imp.id(69455488642926559)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69456147584926565)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68991319211110976)
,p_event_id=>wwv_flow_imp.id(69455488642926559)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var table = document.querySelector(''#dataGrid_ig_grid_vc > div.a-GV-bdy > div.a-GV-w-scroll > table'');',
'for (var i = 1, row; row = table.rows[i]; i++) {',
'    row.setAttribute(''class'', ''is-updated'');',
'    row.querySelector(''td:nth-child(2)'').setAttribute(''class'', ''is-changed'');',
'    row.querySelector(''td:nth-child(3)'').setAttribute(''class'', ''is-changed'');',
'    ',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68323045705261655)
,p_name=>'Delete file'
,p_event_sequence=>71
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68322912444261654)
,p_event_id=>wwv_flow_imp.id(68323045705261655)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_FILE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68322732457261652)
,p_event_id=>wwv_flow_imp.id(68323045705261655)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from V_ORDER_CONFIRMATIONS_FILES where nid = :P68_FILE_ID;'
,p_attribute_02=>'P68_FILE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68320455204261629)
,p_event_id=>wwv_flow_imp.id(68323045705261655)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(68324971951261674)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68207563662691072)
,p_name=>'New'
,p_event_sequence=>91
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(68598966819563767)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68207284030691070)
,p_event_id=>wwv_flow_imp.id(68207563662691072)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''[data-action="edit"]'').hide();',
unistr('document.querySelector(''#R6350709372681111_ig_toolbar > div.a-Toolbar-groupContainer.a-Toolbar-groupContainer--start > div:nth-child(6) > button > span'').innerHTML = ''Prid\0117ti eilut\0119''')))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68207065114691067)
,p_name=>'Submit Save'
,p_event_sequence=>101
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(68207125123691068)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68206935268691066)
,p_event_id=>wwv_flow_imp.id(68207065114691067)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_01=>'SAVE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68205537739691052)
,p_name=>'Hide'
,p_event_sequence=>111
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68205408194691051)
,p_event_id=>wwv_flow_imp.id(68205537739691052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''[data-action="edit"]'').hide();',
'document.querySelector(''#R6350709372681111_ig_toolbar > div.a-Toolbar-groupContainer.a-Toolbar-groupContainer--start > div:nth-child(6) > button > span'').innerHTML = ''Prideti eilute'''))
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P68_NID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67749072888509354)
,p_name=>'New_1'
,p_event_sequence=>121
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P68_FILE_TYPE'
,p_condition_element=>'P68_FILE_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67748072248509344)
,p_event_id=>wwv_flow_imp.id(67749072888509354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67749802391509362)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67747876566509343)
,p_event_id=>wwv_flow_imp.id(67749072888509354)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_PARTS,P68_PART_QNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67747866010509342)
,p_event_id=>wwv_flow_imp.id(67749072888509354)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69456147584926565)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(67748856451509352)
,p_name=>'New_1_1'
,p_event_sequence=>131
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P68_FILE_TYPE'
,p_condition_element=>'P68_FILE_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67748481545509349)
,p_event_id=>wwv_flow_imp.id(67748856451509352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(69456147584926565)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67748420708509348)
,p_event_id=>wwv_flow_imp.id(67748856451509352)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_PARTS,P68_PART_QNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(67748712351509351)
,p_event_id=>wwv_flow_imp.id(67748856451509352)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(67749802391509362)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69454688734926551)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'n_file_name varchar2(100);',
'BEGIN',
'    INSERT INTO v_order_confirmations(nid',
'                                     ,s_id',
'                                     ,nsupplier_id',
'                                     ,dtpreparation)',
'    VALUES      ( SEQ_V_ORDER_CONFIRMATIONS.nextval',
'                , :P68_S_ID',
'                , :P68_NSUPPLIER_ID',
'                , :P68_DTPREPARATION) RETURN nid into :P68_NID;',
'                ',
'    COMMIT;',
'    ',
'    for x in (select  mime_type, filename, blob_content FROM   apex_application_temp_files)',
'    loop',
'        insert into V_ORDER_CONFIRMATIONS_FILES(NCONFIRMATION_ID, MIME_TYPE, SFILENAME, BLOB_CONTENT)',
'        values (:P68_NID, x.mime_type, x.filename, x.blob_content);',
'    end loop;',
'',
'    DELETE FROM apex_application_temp_files;',
'commit;',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'    DELETE FROM apex_application_temp_files;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69434173393896571)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(67750365996509367)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'n_file_name varchar2(100);',
'BEGIN',
'    INSERT INTO v_order_confirmations(nid',
'                                     ,s_id',
'                                     ,nsupplier_id',
'                                     ,dtpreparation)',
'    VALUES      ( SEQ_V_ORDER_CONFIRMATIONS.nextval',
'                , :P68_S_ID',
'                , :P68_NSUPPLIER_ID',
'                , :P68_DTPREPARATION) RETURN nid into :P68_NID;',
'                ',
'    COMMIT;',
'    ',
'    for x in (select  mime_type, filename, blob_content FROM   apex_application_temp_files)',
'    loop',
'        insert into V_ORDER_CONFIRMATIONS_FILES(NCONFIRMATION_ID, MIME_TYPE, SFILENAME, BLOB_CONTENT)',
'        values (:P68_NID, x.mime_type, x.filename, x.blob_content);',
'    end loop;',
'',
'',
'INSERT INTO v_order_confirmations_details(nconfirmation_id',
'                                                 ,spart_code',
'                                                 ,nqnt',
'                                                 ,norder_id)',
'select :P68_NID,  p.col001, p.col002, null',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                  p_content                     => f.blob_content,',
'                  p_add_headers_row             => ''N'',',
'                  p_row_selector                => ''/ROWSET/ROW'',',
'                  p_store_profile_to_collection => ''FILE_PARSER_COLLECTION'')) p ;',
'                --   p_file_name                   => f.filename ) ) p',
'--  where f.name = (select  filename',
'--     FROM   apex_application_temp_files);',
'    ',
'    DELETE FROM apex_application_temp_files;',
' end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(67750830912509372)
,p_process_success_message=>'aaaaaa'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68207182604691069)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    update v_order_confirmations',
'    set s_id = :P68_S_ID,',
'    nsupplier_id = :P68_NSUPPLIER_ID,',
'    dtpreparation = :P68_DTPREPARATION',
'    where nid = :P68_NID;    ',
'    COMMIT;',
'    ',
'    for x in (select  mime_type, filename, blob_content FROM   apex_application_temp_files)',
'    loop',
'        insert into V_ORDER_CONFIRMATIONS_FILES(NCONFIRMATION_ID, MIME_TYPE, SFILENAME, BLOB_CONTENT)',
'        values (:P68_NID, x.mime_type, x.filename, x.blob_content);',
'    end loop;',
'    DELETE FROM apex_application_temp_files;',
'commit;',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'    DELETE FROM apex_application_temp_files;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(68207125123691068)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69453378376926538)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(69456147584926565)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    n_order_id number;',
'BEGIN',
'    case :APEX$ROW_STATUS  ',
'     when ''I'' then ',
'        select o.nid ',
'        into n_order_id',
'        from v_orders o, v_order_details od ',
'        where od.norder_id = o.nid ',
'        and od.nsupplier_id = :P68_NSUPPLIER_ID',
'        and upper(trim(od.spart_code)) = upper(trim(:KODAI))',
'        and nvl(od.nqnt_confirmed, 0) != od.nqnt',
'        order by o.dtcreated_at',
'        fetch first row only;',
'',
'        INSERT INTO v_order_confirmations_details(nconfirmation_id',
'                                                 ,spart_code',
'                                                 ,nqnt',
'                                                 ,norder_id)',
'        VALUES      ( :P68_NID',
'                    , :KODAI',
'                    , :KIEKIAI',
'                    , n_order_id);',
'',
'                     ',
'        update v_order_details',
'        set nqnt_confirmed = nqnt_confirmed + :KIEKIAI',
'        where norder_id =  n_order_id',
'        and nsupplier_id = :P68_NSUPPLIER_ID',
'        and spart_code =  trim(:KODAI);                  ',
'     when ''U'' then  ',
'',
'        select o.nid ',
'        into n_order_id',
'        from v_orders o, v_order_details od ',
'        where od.norder_id = o.nid ',
'        and od.nsupplier_id = :P68_NSUPPLIER_ID',
'        and upper(trim(od.spart_code)) = upper(trim(:KODAI))',
'        and nvl(od.nqnt_confirmed, 0) != od.nqnt',
'        order by o.dtcreated_at',
'        fetch first row only;',
'',
'        INSERT INTO v_order_confirmations_details(nconfirmation_id',
'                                                 ,spart_code',
'                                                 ,nqnt',
'                                                 ,norder_id)',
'        VALUES      (:P68_NID',
'                    ,:KODAI',
'                    ,:KIEKIAI',
'                    ,n_order_id);',
'                    ',
'        update v_order_details',
'        set nqnt_confirmed = nqnt_confirmed + :KIEKIAI',
'        where norder_id =  n_order_id',
'        and nsupplier_id = :P68_NSUPPLIER_ID',
'        and spart_code =  trim(:KODAI);        ',
'     end case;      ',
'exception when NO_DATA_FOUND then',
'     INSERT INTO v_order_confirmations_details(nconfirmation_id',
'                                                 ,spart_code',
'                                                 ,nqnt',
'                                                 ,norder_id)',
'        VALUES      (:P68_NID',
'                    ,:KODAI',
'                    ,:KIEKIAI',
'                    ,null);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69434173393896571)
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68206519753691062)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(68598966819563767)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Update Details'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'n_order_id number;',
'n_qnt number;',
'BEGIN',
'    case :APEX$ROW_STATUS  ',
'     when ''C'' then ',
'',
'        select o.nid ',
'        into n_order_id',
'        from v_orders o, v_order_details od ',
'        where od.norder_id = o.nid ',
'        and od.nsupplier_id = :P68_NSUPPLIER_ID',
'        and upper(trim(od.spart_code)) = upper(trim(:KODAI))',
'        and nvl(od.nqnt_confirmed, 0) != od.nqnt',
'        order by o.dtcreated_at',
'        fetch first row only;',
'',
'        INSERT INTO v_order_confirmations_details(nconfirmation_id',
'                                                 ,spart_code',
'                                                 ,nqnt',
'                                                 ,norder_id)',
'        VALUES      ( :P68_NID',
'                    , :KODAI',
'                    , :KIEKIAI',
'                    , n_order_id);',
'',
'        update v_order_details',
'        set nqnt_confirmed = nqnt_confirmed + :KIEKIAI',
'        where norder_id =  n_order_id',
'        and nsupplier_id = :P68_NSUPPLIER_ID',
'        and spart_code =  trim(:KODAI);             ',
'     when ''U'' then  ',
'        select o.nid ',
'        into n_order_id',
'        from v_orders o, v_order_details od ',
'        where od.norder_id = o.nid ',
'        and od.nsupplier_id = :P68_NSUPPLIER_ID',
'        and upper(trim(od.spart_code)) = upper(trim(:KODAI))',
'        and nvl(od.nqnt_confirmed, 0) != od.nqnt',
'        order by o.dtcreated_at',
'        fetch first row only;',
'',
'        select nqnt',
'        into n_qnt',
'        from v_order_confirmations_details',
'        where nid = :NID;',
'',
'        update v_order_details',
'        set nqnt_confirmed = nqnt_confirmed - n_qnt',
'        where norder_id =  n_order_id',
'        and nsupplier_id = :P68_NSUPPLIER_ID',
'        and spart_code =  trim(:KODAI); ',
'',
'        update v_order_confirmations_details',
'        set spart_code = :KODAI,',
'        nqnt = :KIEKIAI,',
'        norder_id = n_order_id',
'        where nid = :NID;   ',
'',
'        update v_order_details',
'        set nqnt_confirmed = nqnt_confirmed + :KIEKIAI',
'        where norder_id =  n_order_id',
'        and nsupplier_id = :P68_NSUPPLIER_ID',
'        and spart_code =  trim(:KODAI);',
'     when ''D'' then ',
'        select norder_id ',
'        into n_order_id',
'        from  v_order_confirmations_details',
'        where nid = :NID;  ',
'',
'        update v_order_details',
'        set nqnt_confirmed = nqnt_confirmed - :KIEKIAI',
'        where norder_id =  n_order_id',
'        and nsupplier_id = :P68_NSUPPLIER_ID',
'        and spart_code =  trim(:KODAI); ',
'',
'        delete from v_order_confirmations_details',
'        where nid = :NID;  ',
'    else null;                                    ',
'     end case;                         ',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(68207125123691068)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68986555037110928)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   delete from  v_order_confirmations_details where nconfirmation_id = :P68_NID;',
'   delete from  v_order_confirmations_files where nconfirmation_id = :P68_NID;',
'   delete from  v_order_confirmations where nid = :P68_NID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(68986629537110929)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68203223190691029)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(69442607494896584)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize'
);
wwv_flow_imp.component_end;
end;
/

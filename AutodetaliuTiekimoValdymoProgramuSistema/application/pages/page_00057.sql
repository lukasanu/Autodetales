prompt --application/pages/page_00057
begin
--   Manifest
--     PAGE: 00057
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
 p_id=>57
,p_name=>unistr('U\017Esakymas')
,p_alias=>unistr('U\017DSAKYMAS')
,p_step_title=>unistr('U\017Esakymas')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var gThis;',
'function irRowhighLight( pThis ){',
'  $(''td'').removeClass(''currentrow'');',
'  var v_row = $(pThis).parent().next().html();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.onload = function () {',
'    var ids = document.getElementsByClassName("t-Report-cell NUMBER");',
'    for (var i = 0; i < ids.length; i++) {',
'        ids[i].style.display = "none";',
'}}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-Toolbar-radioGroup, .a-Toolbar-toggleButton {',
'display: none !important;',
'}',
'',
'classMargin{',
'    margin-left: 20px !important;',
'}',
'',
'#progressbar {',
'    text-align: center;',
'    background-color: #FFFFFF;',
'    position: relative;',
'    width: 120px;',
'    border: 1px solid black;',
'}',
'',
'#progressbar>div {',
'    background-color: #8cd98c;',
'    height: 15px;',
'}',
'',
'.progress-label {',
'    font-size: .9em;',
'    position: absolute;',
'    margin: 0;',
'    left: 0;',
'    right: 0;',
'    top: 50%;',
'    transform: translateY(-50%);',
'    color: black;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230502114505'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45287178224878542)
,p_plug_name=>unistr('U\017Eklausos Informacija')
,p_region_name=>'info_cr'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding:margin-left-sm:margin-right-sm'
,p_plug_template=>wwv_flow_imp.id(9631973906517885)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select null from dual;'
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45287314007878543)
,p_plug_name=>unistr('U\017Esakymas')
,p_icon_css_classes=>'fa-file-check'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45290304523878573)
,p_plug_name=>unistr('Prek\0117s')
,p_region_name=>'parts_cr'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nid                                                                                                                                        AS id',
'      ,spart_name                                                                                                                                 AS part_name',
'      ,spart_code                                                                                                                                 AS part_code',
'      ,spart_comment                                                                                                                              AS scomment',
'      ,',
'                  ''<div id="progressbar"><div style="width:''',
'               || ROUND(nqnt_retrieved / nqnt * 100)',
'               || ''%;"><p class="progress-label"><strong>''',
'               || ROUND(nqnt_retrieved / nqnt * 100)',
'               || ''%</strong></p></div>',
'</div>''',
'               || nqnt_retrieved',
'               || ''/''',
'               || nqnt                                                                                                                                    AS kiekis',
'      ,nqnt                                                                                                                                       AS nqnt',
'      ,(SELECT SUM(nqnt)',
'        FROM   v_order_details',
'        WHERE  norder_id = :p57_id)                                                                                                               AS sum_qnt',
'      ,(SELECT SUM(nprice * nqnt)',
'        FROM   v_order_details',
'        WHERE  norder_id = :p57_id)                                                                                                               AS sum_wo_tax',
'      ,(SELECT SUM(nprice * nqnt * 1.21)',
'        FROM   v_order_details',
'        WHERE  norder_id = :p57_id)                                                                                                               AS sum_tax',
'      ,nprice as nour_price',
'      ,ssupplier                                                                                                                                  AS supplier',
'      ,nprice_wo_tax_all                                                                                                                          AS price_wo_tax_all',
'      ,nprice_with_tax                                                                                                                            AS price_with_tax',
'      ,sstatus                                                                                                                                    AS sstatus',
'      ,nstatus_id                                                                                                                                 AS nstatus_id',
'      ,ninovice_count                                                                                                                             AS ninovice_count',
'      ,   DECODE(nprice_changed',
'                ,1, ''<span aria-hidden="true" class="fa fa-money fa-lg" style="color: green" title="'' || nprice_changed_desc || ''"></span>''',
'                ,'''')',
'       || DECODE(ncode_changed',
'                ,1, ''<span aria-hidden="true" class="fa fa-refresh fa-lg" style="color: orange" title="'' || ncode_changed_desc || ''"></span>''',
'                ,'''')',
'       || DECODE(nshipment_delayed',
'                ,1, ''<span aria-hidden="true" class="fa fa-truck fa-lg" style="color: blue" title="'' || nshipment_delayed_desc || ''"></span>''',
'                ,'''')',
'       || DECODE(nadditional_comment',
'                ,1, ''<span aria-hidden="true" class="fa fa-commenting fa-lg" style="color: brown" title="'' || nadditional_comment_desc || ''"></span>''',
'                ,'''')',
unistr('       || DECODE(nstatus_id, 18, ''<span aria-hidden="true" class="fa fa-minus-circle fa-lg" style="color: red" title="At\0161aukta"></span>'', '''')    AS icon,'),
'       nvl(nqnt_confirmed, 0) || ''/'' || nqnt as nqnt_confirmed',
'FROM   v_order_details_info',
'WHERE  (norder_id = :p57_id',
'AND     nsupplier_id = :p57_supplier',
'AND     :p57_supplier != 0)',
'OR     (norder_id = :p57_id',
'AND     :p57_supplier = 0)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P57_ID,P57_SUPPLIER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Prek\0117s')
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
,p_required_patch=>wwv_flow_imp.id(10694258577000234)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(68311723139210453)
,p_name=>'NOUR_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOUR_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Savikaina'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
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
 p_id=>wwv_flow_imp.id(68313036308210466)
,p_name=>'NINOVICE_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NINOVICE_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('I\0161ra\0161yta s\0105skait\0173')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
,p_value_alignment=>'CENTER'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 0 || ''/'' || :NQNT d, 0 r',
'from dual',
'UNION',
'SELECT     LEVEL || ''/'' || :NQNT d, LEVEL r',
'FROM       DUAL',
'CONNECT BY LEVEL <= (SELECT nqnt',
'                     FROM   v_order_details',
'                     WHERE  nid = :ID)'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'ID,NQNT'
,p_ajax_items_to_submit=>'ID,NQNT'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_static_id=>'NINOVICE_COUNT'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69118865734959433)
,p_name=>'NQNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NQNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69174066231820876)
,p_name=>'KIEKIS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KIEKIS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Kiekis'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'CENTER'
,p_stretch=>'N'
,p_attribute_05=>'HTML'
,p_link_target=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.::P75_CODE,P75_NID,P75_NQNT,P75_SUPPLIER:&PART_CODE.,&ID.,&NQNT.,&SUPPLIER.'
,p_link_text=>'&KIEKIS.'
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
 p_id=>wwv_flow_imp.id(69606761918247043)
,p_name=>'ICON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Pasikeitimai'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69789042534052867)
,p_name=>'EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.::P64_NID,P64_ORDER_ID:&ID.,&P57_ID.'
,p_link_text=>unistr('<span aria-label="Per\017Ei\016Br\0117ti"><span class="fa fa-edit" aria-hidden="true" title="Per\017Ei\016Br\0117ti \012Fra\0161us"></span></span>')
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70697647038690657)
,p_name=>'SUM_TAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_TAX'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70697723908690658)
,p_name=>'SUM_WO_TAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_WO_TAX'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70697852341690659)
,p_name=>'SUM_QNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUM_QNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(71073447220555372)
,p_name=>'SCOMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCOMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Komentaras'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>254
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
 p_id=>wwv_flow_imp.id(71331501083107155)
,p_name=>'SSTATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SSTATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(71332344384107163)
,p_name=>'NSTATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NSTATUS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Statusas'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select sname d, nid r from v_statuses where ntype = 3 ORDER BY NID ASC'
,p_lov_display_extra=>false
,p_lov_display_null=>false
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
,p_is_primary_key=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(71332478233107165)
,p_name=>'PRICE_WITH_TAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE_WITH_TAX'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Kaina su PVM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(71332612907107166)
,p_name=>'PRICE_WO_TAX_ALL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE_WO_TAX_ALL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Kaina be PVM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(71332766359107167)
,p_name=>'SUPPLIER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPPLIER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('Tiek\0117jas')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(71332961014107169)
,p_name=>'PART_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PART_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('Detal\0117s kodas')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(71333036064107170)
,p_name=>'PART_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PART_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('Detal\0117s pavadinimas')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
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
 p_id=>wwv_flow_imp.id(71333148274107171)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_static_id=>'ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(71333179679107172)
,p_internal_uid=>3616496513137706
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>true
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_FIELD:ACTIONS_MENU:SAVE'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'    config.initActions = function(actions) {',
'',
unistr('        actions.lookup("save").label = "I\0161saugoti"'),
'',
'    };',
'',
'    return config;',
'',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(71314921899134927)
,p_interactive_grid_id=>wwv_flow_imp.id(71333179679107172)
,p_static_id=>'36348'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(71314729972134926)
,p_report_id=>wwv_flow_imp.id(71314921899134927)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(67999365225118431)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(68311723139210453)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68165303180554781)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(68313036308210466)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68466160237424604)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(69118865734959433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69155876993785991)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(69174066231820876)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69548278599859199)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(69606761918247043)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69690052751681694)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(69789042534052867)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>56
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(70626665853885204)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(70697647038690657)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(70627561660885206)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(70697723908690658)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(70628426524885209)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(70697852341690659)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71049814749453618)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(71073447220555372)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71273004291644798)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(71331501083107155)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71307030555134898)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(71332344384107163)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71308785722134903)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(71332478233107165)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71309728654134905)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(71332612907107166)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71310578765134908)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(71332766359107167)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71312419583134913)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(71332961014107169)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71313289960134916)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(71333036064107170)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71314181275134922)
,p_view_id=>wwv_flow_imp.id(71314729972134926)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(71333148274107171)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70207164878720253)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_button_name=>'CANCEL_ORDER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--gapRight:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti u\017Esakym\0105')
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P57_ORDER_STATUS_ID != 11'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45216462847093872)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--gapLeft:t-Button--padRight:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161trinti u\017Esakym\0105')
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P57_ORDER_STATUS_ID = 4 and (SELECT COUNT(*) from v_order_details where norder_id = :P57_ID and nstatus_id != 12) = 0'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70699500491690676)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--padRight:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('U\017Esakyti')
,p_button_redirect_url=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.::P62_ORDER_ID,P62_SUPPLIER,P62_BRAND,P62_VIN:&P57_ID.,&P57_SUPPLIER.,&P57_VEHICLE_BRAND.,&P57_VIN.'
,p_button_condition=>':P57_ORDER_STATUS_ID != 11'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45216594947093873)
,p_name=>'P57_ID1'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_item_source_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_source=>'NULL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45286025700878530)
,p_name=>'P57_SID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_prompt=>'ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45286088720878531)
,p_name=>'P57_VIN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_prompt=>'VIN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45286210520878532)
,p_name=>'P57_VEHICLE_MODEL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_prompt=>'Automobilio Modelis'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45286256580878533)
,p_name=>'P57_VEHICLE_BRAND'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_prompt=>unistr('Automobilio Mark\0117')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45286417762878534)
,p_name=>'P57_CLIENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_prompt=>'Klientas'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45290120581878571)
,p_name=>'P57_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45290304523878573)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63602547401356059)
,p_name=>'P57_SUPPLIER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_prompt=>unistr('Tiek\0117jas')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT    od.ssupplier',
'                || '' (''',
'                || (SELECT COUNT(*)',
'                    FROM   v_order_details',
'                    WHERE  norder_id = :p57_id',
'                    AND    nsupplier_id = od.nsupplier_id)',
'                || '') ''',
'               ,od.nsupplier_id',
'FROM   v_order_details_info od',
'WHERE  norder_id = :p57_id'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Visi'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69123017835959475)
,p_name=>'P57_CAR_MODEL_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_source=>'SELECT NID FROM V_VEHICLE_BRANDS WHERE SNAME = :P57_CAR_ID;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69123142324959476)
,p_name=>'P57_CAR_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_source=>'SELECT NID FROM V_VEHICLE_BRANDS WHERE SNAME = :P57_VEHICLE_BRAND;'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69123223095959477)
,p_name=>'P57_ORDER_STATUS_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_use_cache_before_default=>'NO'
,p_source=>'select vo.nstatus_id from v_orders_info vo where vo.nid = :P57_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71070611918555344)
,p_name=>'P57_SCOMMENT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Komentaras'
,p_source=>'select vo.scomment from v_orders vo where vo.nid = :P57_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>480
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71333615826107176)
,p_name=>'P57_ORDER_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45287178224878542)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Statusas'
,p_source=>'select vo.sstatus from v_orders_info vo where vo.nid = :P57_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45216414373093871)
,p_name=>'Delete'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45216462847093872)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70206870302720250)
,p_event_id=>wwv_flow_imp.id(45216414373093871)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161trinti u\017Esakym\0105?')
,p_attribute_02=>unistr('I\0161trinti u\017Esakym\0105')
,p_attribute_03=>'warning'
,p_attribute_06=>'Patvirtinti'
,p_attribute_07=>unistr('Gr\012F\017Eti')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70699176397690673)
,p_event_id=>wwv_flow_imp.id(45216414373093871)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update v_orders set nhidden = 1 where nid = :P57_ID;',
'',
'update v_order_details set nstatus_id = 18 where norder_id = :P57_ID;',
''))
,p_attribute_02=>'P57_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70699128176690672)
,p_event_id=>wwv_flow_imp.id(45216414373093871)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:50:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(63602416752356058)
,p_name=>'Refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P57_SUPPLIER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63602345542356057)
,p_event_id=>wwv_flow_imp.id(63602416752356058)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45290304523878573)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70697311938690654)
,p_event_id=>wwv_flow_imp.id(63602416752356058)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45290304523878573)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71070498762555343)
,p_name=>'New_2'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P57_SCOMMENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71070419911555342)
,p_event_id=>wwv_flow_imp.id(71070498762555343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'UPDATE V_ORDERS SET SCOMMENT = :P57_SCOMMENT WHERE NID = :P57_ID;'
,p_attribute_02=>'P57_SCOMMENT,P57_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71070323473555341)
,p_event_id=>wwv_flow_imp.id(71070498762555343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70207019305720252)
,p_name=>'New_1'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70207164878720253)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70206932533720251)
,p_event_id=>wwv_flow_imp.id(70207019305720252)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite at\0161aukti \0161\012F u\017Esakym\0105? ')
,p_attribute_02=>unistr('U\017Esakymo at\0161aukimas')
,p_attribute_03=>'warning'
,p_attribute_06=>'Patvirtinti'
,p_attribute_07=>unistr('Gr\012F\017Eti')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70206720108720249)
,p_event_id=>wwv_flow_imp.id(70207019305720252)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'UPDATE V_ORDERS SET NSTATUS_ID = 11 WHERE NID = :P57_ID;',
'',
'BEGIN',
'FOR x in (SELECT * from v_order_details where nstatus_id > 15 and norder_id = :P57_ID AND NQNT_RETRIEVED != 0)',
'LOOP',
'INSERT INTO v_storage_parts(sname',
'                           ,scode',
'                           ,ncar_id',
'                           ,ncar_model_id',
'                           ,nprice',
'                           ,nqnt)',
'                VALUES     (x.spart_name',
'                           ,x.spart_code',
'                           ,:P57_CAR_ID',
'                           ,:P57_CAR_MODEL_ID',
'                           ,x.nprice',
'                           ,x.nqnt_retrieved);',
'END LOOP;',
'EXCEPTION WHEN OTHERS THEN ',
'NULL;',
'END;',
'',
'UPDATE V_ORDER_DETAILS SET NSTATUS_ID = 18, NQNT_RETRIEVED = 0 WHERE NORDER_ID = :P57_ID;',
'',
'END;'))
,p_attribute_02=>'P57_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70206612849720248)
,p_event_id=>wwv_flow_imp.id(70207019305720252)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68734165582615770)
,p_name=>'New'
,p_event_sequence=>80
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68734010255615769)
,p_event_id=>wwv_flow_imp.id(68734165582615770)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45290304523878573)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(71332039165107160)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(45290304523878573)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Prek\0117s - Save Interactive Grid Data')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    ',
'    CASE :apex$row_status',
'        WHEN ''U'' THEN',
'            UPDATE V_ORDER_DETAILS SET NSTATUS_ID = :nstatus_id, spart_comment = :scomment, ninovice_count = :ninovice_count where nid = :id;',
'        WHEN ''C'' THEN',
'            null;',
'    END CASE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Klaida!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('I\0161saugota!')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45286518260878535)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(45287178224878542)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Suformuota U\017Eklausa')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

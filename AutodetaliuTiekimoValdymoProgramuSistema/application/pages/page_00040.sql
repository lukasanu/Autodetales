prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_name=>unistr('U\017Eklaus\0173 formavimas')
,p_alias=>unistr('U\017DKLAUSOS1')
,p_step_title=>unistr('U\017Eklaus\0173 formavimas')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var gThis;',
'function irRowhighLight( pThis ){',
'  $(''td'').removeClass(''currentrow'');',
'  $(pThis).parent().parent().children().addClass(''currentrow'') ;  ',
'  var v_row = $(pThis).parent().next().html();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.onload = function () {',
'    var ids = document.getElementsByClassName("t-Report-cell NUMBER");',
'    for (var i = 0; i < ids.length; i++) {',
'        ids[i].style.display = "none";',
'}}',
'',
'$("#report tr:last div[class=apex-item-single-checkbox]").hide();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'td {',
'  text-align: center;',
'}',
'.width-120px{',
'    width: 120px;',
'    display: inline-block2',
'}',
'',
'.width-150px{',
'    width: 150px;',
'    display: inline-block;',
'}',
'',
'.width-140px{',
'    width: 140px;',
'    display: inline-block;',
'}',
'',
'.width-130px{',
'    width: 130px;',
'    display: inline-block;',
'}',
'',
'.width-110px{',
'    width: 110px;',
'    display: inline-block;',
'}',
'',
'.width-100px{',
'    width: 100px;',
'    display: inline-block;',
'}',
'.currentrow',
'{ ',
'background-color: #80d775 !important;',
'}',
'',
'.selected_row{',
'background-color: #80d775 !important;',
'}',
'',
'#P40_PART_NAMES_LABEL,  #P40_PART_CODES_LABEL, #P40_PART_QNT_LABEL, #P40_COMMENTS_LABEL{',
'    margin-top: -35px;',
'    position: absolute;',
'    top: 0;',
'    left: 0;',
'    z-index: 2;',
'    pointer-events: none;',
'    text-align: left;',
'    line-height: 3.5rem;',
'    white-space: nowrap;',
'    padding: 0 0.8rem;',
'    font-size: 1.4rem;',
'    transition: .2s ease;',
'}',
'#P40_PART_NAMES_CONTAINER,  #P40_PART_CODES_CONTAINER, #P40_PART_QNT_CONTAINER, #P40_COMMENTS_CONTAINER{',
'    padding-top: 35px;',
'}',
'',
'#P40_PART_NAMES, #P40_PART_CODES, #P40_PART_QNT, #P40_COMMENTS{',
'    padding-top: 8px;',
'}',
'',
'.selectedItem{',
'    background-color: #3BAA2C;',
'    color: #fff;',
'}',
'',
'',
'td:has(a.notOrdered) {',
'    background-color: #ff8080 !important; ',
'    color: black !important;',
'    }',
'',
'',
'td:has(a.ordered) {',
'    background-color: #ffff80 !important; ',
'    color: black !important;',
'    }',
'',
'td:has(a.arived) {',
'    background-color: #8cd98c !important; ',
'    color: black !important;',
'    }',
'',
' a.ordered, a.notOrdered, a.arived{',
'      color: black !important;',
' }   '))
,p_page_template_options=>'#DEFAULT#'
,p_browser_cache=>'N'
,p_page_component_map=>'21'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230509172643'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11609118564476486)
,p_plug_name=>unistr('U\017Eklausa')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12183761690080397)
,p_plug_name=>unistr('U\017Eklausas')
,p_region_name=>'report'
,p_parent_plug_id=>wwv_flow_imp.id(11609118564476486)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWNUM as seq ',
'      ,nid as id',
'      ,norder_id as order_id',
'      ,spart_name as part_name',
'      ,spart_code as part_code',
'      ,spart_comment as part_comment',
'      ,nqnt as qnt',
'      ,ssupplier as supplier',
'      ,sorder_type as order_type',
'      ,sour_price_wo_tax as our_price_wo_tax',
'      ,sprice_wo_tax as price_wo_tax',
'      ,sprice_wo_tax_all as price_wo_tax_all',
'      ,sprice_with_tax as price_with_tax',
'      ,nsurcharge as nsurcharge',
'      ,NULL delet',
'      ,selected as SELECTED',
'      ,utl_i18n.unescape_reference(sorder_id) AS sorder_id',
'FROM   v_order_details_prep_info',
'WHERE  norder_id = :P40_ORDER_ID',
'UNION',
'SELECT null as seq',
'      ,null',
'      ,null',
unistr('      ,''I\0161 viso'''),
'      ,null',
'      ,null',
'      ,SUM(nqnt)',
'      ,null',
'      ,null',
'      ,to_char(SUM(to_number(sour_price_wo_tax)))',
'      ,to_char(SUM(to_number(sprice_wo_tax)))',
'      ,to_char(SUM(to_number(sprice_wo_tax_all)))',
'      ,to_char(SUM(to_number(sprice_with_tax)))',
'      ,null',
'      ,NULL',
'      ,-1',
'      ,NULL',
'FROM   v_order_details_prep_info',
'WHERE  norder_id = :P40_ORDER_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P40_ORDER_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('U\017Eklausas')
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
,p_plug_customized=>'1'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15599381238388877)
,p_name=>'PART_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PART_COMMENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Komentaras'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(19668556111813170)
,p_name=>'DELET'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELET'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:void(null);'
,p_link_text=>'<span class="t-Icon fa fa-trash-o" aria-hidden="true"></span>'
,p_link_attributes=>unistr('id=''&ID.''  class="delete t-Button t-Button--danger t-Button--simple  t-Button--small" title="I\0161trinti"')
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19669236280813177)
,p_name=>'QNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Kiekis'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>254
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19865911028262529)
,p_name=>'CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PART_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Detal\0117s kodas')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(19866012705262530)
,p_name=>'PART_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PART_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pavadinimas'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(19866032478262531)
,p_name=>'ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19866172066262532)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'checkbox_id'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(21276544562564565)
,p_name=>'SELECT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:void(null);'
,p_link_text=>'<span class="fa fa-accordion"></span><span class="CODE" style="display:none">&CODE.</span>'
,p_link_attributes=>'id=''&ID.'' data=''&CODE.'' class="parts"'
,p_use_as_row_header=>false
,p_enable_hide=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47236337849879570)
,p_name=>'PRICE_WITH_TAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE_WITH_TAX'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Suma su PVM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47236444356879571)
,p_name=>'PRICE_WO_TAX_ALL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE_WO_TAX_ALL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Suma be PVM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>40
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47236585180879572)
,p_name=>'PRICE_WO_TAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE_WO_TAX'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Kaina be PVM'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_link_target=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.::P71_NID,P71_SUPPLIER:&ID.,&SUPPLIER.'
,p_link_text=>'&PRICE_WO_TAX.'
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
 p_id=>wwv_flow_imp.id(47236636799879573)
,p_name=>'OUR_PRICE_WO_TAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUR_PRICE_WO_TAX'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Savikaina'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.::P70_NID,P70_SUPPLIER:&ID.,&SUPPLIER.'
,p_link_text=>'&OUR_PRICE_WO_TAX.'
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
 p_id=>wwv_flow_imp.id(47236797393879574)
,p_name=>'ORDER_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('U\017Esakymo tipas')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(47236835726879575)
,p_name=>'SUPPLIER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPPLIER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('Tiek\0117jas')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
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
 p_id=>wwv_flow_imp.id(68650459448619836)
,p_name=>'SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nr.'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attribute_03=>'center'
,p_attribute_04=>'text'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>true
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(69170630121820842)
,p_name=>'NSURCHARGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NSURCHARGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Antkainis'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attribute_05=>'HTML'
,p_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::P72_NID,P72_SUPPLIER:&ID.,&SUPPLIER.'
,p_link_text=>'&NSURCHARGE.'
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
 p_id=>wwv_flow_imp.id(69770836616329640)
,p_name=>'SORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORDER_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>unistr('Priskirta u\017Esakymui')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
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
,p_escape_on_http_output=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(70567565168104869)
,p_name=>'SELECTED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SELECTED'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(21155773435097436)
,p_internal_uid=>10594850276595142
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>unistr('Nersta \012Fra\0161\0173!')
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_FIELD:ACTIONS_MENU'
,p_add_button_label=>unistr('Prid\0117ti eilut\0119')
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
 p_id=>wwv_flow_imp.id(21111021503052515)
,p_interactive_grid_id=>wwv_flow_imp.id(21155773435097436)
,p_static_id=>'106397'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(21110806258052515)
,p_report_id=>wwv_flow_imp.id(21111021503052515)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15593047697388740)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(15599381238388877)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>209.188
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19652478792812992)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(19668556111813170)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59.328
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19658821099813007)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(19669236280813177)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78.18799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19660605697813011)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(19865911028262529)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19661515410813014)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(19866012705262530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19662396465813016)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(19866032478262531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19663312275813019)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(19866172066262532)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(20883718631030909)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(21276544562564565)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>46
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47222310918669910)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(47236337849879570)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125.89059999999995
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47223202347669913)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(47236444356879571)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47224128937669915)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(47236585180879572)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47225001522669918)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(47236636799879573)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47225910411669923)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(47236797393879574)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(47226785207669927)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(47236835726879575)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(63730312145120490)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(68650459448619836)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>54
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(68927573853474851)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(69170630121820842)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82.047
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(69517711161195602)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(69770836616329640)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133.031
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(70498688664763510)
,p_view_id=>wwv_flow_imp.id(21110806258052515)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(70567565168104869)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>51.016000000000005
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11986624030558065)
,p_plug_name=>unistr('U\017Eklausos informacija')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.nid as id,',
'       v.sclient as clients,',
'       v.svehicle_brand as vehicle_brand,',
'       v.svehicle_model as vehicle_models,',
'       v.svin as vin',
'       ,(select scompany_comment from v_clients_info where nid = v.nclient_id) as scomment',
'FROM v_ORDERS_PREP_INFO v'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12053357392690079)
,p_plug_name=>unistr('Detali\0173 prid\0117jimas')
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9632959243517886)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>'select null from dual;'
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21273206876564531)
,p_plug_name=>unistr('U\017Esakymo filtravimas')
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9632959243517886)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>'select null from dual;'
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19666651435813151)
,p_plug_name=>'Filtrai'
,p_parent_plug_id=>wwv_flow_imp.id(21273206876564531)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19869420981262564)
,p_plug_name=>'Filtrai'
,p_parent_plug_id=>wwv_flow_imp.id(21273206876564531)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH',
'    cheapest_option',
'    AS',
'        (SELECT   MIN(ssp.nprice) * NVL(to_number(replace(nqnt,CHR(13),'''')), 1)     AS price',
'                 ,od.spart_code',
'         FROM     v_order_details_prep_info     od',
'                 ,v_storage_suppliers_parts_info ssp',
'                 ,v_price_list_imports  pli',
'         WHERE    od.norder_id = :P40_ORDER_ID',
'         AND      od.spart_code = ssp.scode',
'         AND    (pli.norder_type_id = ssp.norder_type_id OR ssp.norder_type_id = -1)',
'         AND    (pli.nsupplier_id = ssp.nsupplier_id  OR ssp.norder_type_id = -1)',
'         AND    pli.ncar_id = ssp.ncar_id',
'         AND    pli.napproved = 1',
'         AND    pli.nhaserrors = 0',
'         AND    pli.nimport_started = 1',
'         AND    pli.ncar_id = (SELECT ncar_id',
'                              FROM   v_orders_prep_info',
'                              WHERE  nid = od.norder_id)',
'         GROUP BY spart_code',
'                 ,nqnt),',
'    option_by_suppliers',
'    AS',
'        (SELECT DISTINCT ssp.nprice * nvl(to_number(replace(odp.nqnt,CHR(13),'''')), 1)       price',
'                        ,ssp.scode',
'                        ,(SELECT scompany_name',
'                          FROM   v_companies',
'                          WHERE  nid = ssp.nsupplier_id',
'                          AND    nTYPE = 1)    supplier',
'                        ,ssp.nsupplier_id',
'                        ,odp.norder_id',
'                        ,(select ot.sname || '' ('' || ot.ndelivery_days || '' d.)'' from v_order_types ot where ssp.norder_type_id = ot.nid) Order_Type',
'                        ,ssp.norder_type_id order_type_id',
'         FROM   v_storage_suppliers_parts_info  ssp',
'               ,v_order_details_prep_info       odp',
'               ,v_price_list_imports  pli',
'         WHERE    odp.norder_id = :P40_ORDER_ID',
'         AND      odp.spart_code = ssp.scode',
'         AND    (pli.norder_type_id = ssp.norder_type_id OR ssp.norder_type_id = -1)',
'         AND    (pli.nsupplier_id = ssp.nsupplier_id  OR ssp.norder_type_id = -1)',
'         AND    pli.ncar_id = ssp.ncar_id',
'         AND    pli.napproved = 1',
'         AND    pli.nhaserrors = 0',
'         AND    pli.nimport_started = 1',
'         AND    pli.ncar_id = (SELECT ncar_id',
'                              FROM   v_orders_prep_info',
'                              WHERE  nid = odp.norder_id)),',
'    detales',
'    AS',
'        (SELECT spart_code, nqnt',
'         FROM   v_order_details_prep_info',
'         WHERE  norder_id = :P40_ORDER_ID),',
'    FASTEST_DELIVERY_OPTION',
'    AS',
'        (SELECT DISTINCT vssp.nprice * NVL(replace(detales.nqnt,CHR(13),''''), 1)     AS price',
'                        ,vssp.scode',
'                        ,ot.ndelivery_days',
'         FROM   v_order_types                ot',
'               ,v_storage_suppliers_parts_info  vssp',
'               ,v_price_list_imports  pli',
'               ,detales',
'         WHERE  ot.nid = vssp.norder_type_id',
'         AND    vssp.scode = detales.spart_code',
'         AND    (pli.norder_type_id = vssp.norder_type_id OR vssp.norder_type_id = -1)',
'         AND    (pli.nsupplier_id = vssp.nsupplier_id  OR vssp.norder_type_id = -1)',
'         AND    pli.ncar_id = vssp.ncar_id',
'         AND    pli.napproved = 1',
'         AND    pli.nhaserrors = 0',
'         AND    pli.nimport_started = 1',
'         AND    pli.ncar_id = (SELECT ncar_id',
'                              FROM   v_orders_prep_info',
'                              WHERE  nid = :P40_ORDER_ID)',
'         AND    ndelivery_days = (SELECT MIN(ot.ndelivery_days)',
'                                  FROM   v_order_types                ot',
'                                        ,v_storage_suppliers_parts  vssp',
'                                  WHERE  ot.nid = vssp.norder_type_id',
'                                  AND    vssp.scode = detales.spart_code)',
'         AND    vssp.nprice = (SELECT MIN(nprice)',
'                              FROM   v_storage_suppliers_parts, v_order_types oty',
'                              WHERE  scode = vssp.scode',
'                              AND    norder_type_id = oty.nid',
'                              AND    ot.ndelivery_days = oty.ndelivery_days))',
'SELECT TO_CHAR(ROUND(SUM(nprice * NVL(to_number(replace(nqnt,CHR(13),'''')), 1))',
'                    ,2)',
'              ,''FM999999999999990D00'')    suma',
'      ,to_char(COUNT(nprice))                       kiekis',
unistr('      ,''Dabartin\0117 parinktis''                 tiekejas'),
'      ,-2                                 id',
'      ,NULL',
'      ,''Nenustatyta''                      OrderType ',
'      ,-2                                 order_type_id',
'FROM   v_order_details_prep_info',
'WHERE  norder_id = :P40_ORDER_ID',
'UNION ALL',
'SELECT TO_CHAR(ROUND(SUM(price)',
'                    ,2)',
'              ,''FM999999999999990D00'')    suma',
'      ,to_char(COUNT(price))                       kiekis',
unistr('      ,''Pigiausios detal\0117s''               tiekejas'),
'      ,-4                                 id',
'      ,NULL',
'      ,''Nenustatyta''                      OrderType    ',
'      ,-2                                 order_type_id',
'FROM   cheapest_option',
'UNION ALL',
'SELECT TO_CHAR(ROUND(SUM(price)',
'                    ,2)',
'              ,''FM999999999999990D00'')    suma',
'      ,to_char(COUNT(price))              kiekis',
unistr('      ,''Grei\010Diausias pristatymas''         tiekejas'),
'      ,-5                                 id',
'      ,NULL',
'      ,MAX(ndelivery_days) || '' d.''      OrderType    ',
'      ,-2                                 order_type_id',
'FROM   FASTEST_DELIVERY_OPTION',
'UNION ALL',
'SELECT   TO_CHAR(ROUND(SUM(price)',
'                      ,2)',
'                ,''FM999999999999990D00'')    suma',
'        ,to_char(COUNT(price))        || ''/'' || (select to_char(count(*)) from v_order_details_prep_info where norder_id = :P40_ORDER_ID)            kiekis',
'        ,supplier                           tiekejas',
'        ,nsupplier_id                        id',
'        ,NULL',
'        ,Order_Type',
'        ,order_type_id                      order_type_id',
'FROM     option_by_suppliers',
'WHERE    norder_id = :P40_ORDER_ID',
'GROUP BY nsupplier_id',
'        ,supplier',
'        ,Order_Type',
'        ,order_type_id',
'HAVING  NVL(:P40_DELIVERYDAYS,1) >= NVL2(:P40_DELIVERYDAYS,(select ndelivery_days from v_order_types where nid = order_type_id),1)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P40_ORDER_ID,P40_DELIVERYDAYS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'ALWAYS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Filtrai'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19401935224211969)
,p_name=>'ORDER_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_TYPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19594499350235555)
,p_name=>'NULL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NULL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:void(null);'
,p_link_text=>'<span aria-hidden="true" class="t-Icon fa fa-check-square-o"></span>'
,p_link_attributes=>'id=''&SUPPLIER_ID.'' data=''&ORDER_TYPE_ID.''  class="check t-Button t-Button--success t-Button--simple  t-Button--small" title="Pasirinkti &SUPPLIER." onclick=irRowhighLight(this)'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19666909251813153)
,p_name=>'ORDERTYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDERTYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('U\017Esakymo tipas')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>66
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
 p_id=>wwv_flow_imp.id(19666987522813154)
,p_name=>'SUPPLIER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19667092610813155)
,p_name=>'TIEKEJAS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TIEKEJAS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('Tiek\0117jas')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>50
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
 p_id=>wwv_flow_imp.id(19667165991813156)
,p_name=>'KIEKIS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KIEKIS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Kiekis'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>81
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(19667248430813157)
,p_name=>'SUMA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUMA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Kaina'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>19
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(19594996893235560)
,p_internal_uid=>12155626818457018
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(19566881131180328)
,p_interactive_grid_id=>wwv_flow_imp.id(19594996893235560)
,p_static_id=>'121838'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(19566670508180328)
,p_report_id=>wwv_flow_imp.id(19566881131180328)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19377272988258419)
,p_view_id=>wwv_flow_imp.id(19566670508180328)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(19401935224211969)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19494335461043871)
,p_view_id=>wwv_flow_imp.id(19566670508180328)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(19666909251813153)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(19562594225180316)
,p_view_id=>wwv_flow_imp.id(19566670508180328)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(19594499350235555)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31741959020640075)
,p_view_id=>wwv_flow_imp.id(19566670508180328)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(19666987522813154)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31743296934640078)
,p_view_id=>wwv_flow_imp.id(19566670508180328)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(19667092610813155)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31744719561640080)
,p_view_id=>wwv_flow_imp.id(19566670508180328)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(19667165991813156)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31746090922640083)
,p_view_id=>wwv_flow_imp.id(19566670508180328)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(19667248430813157)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47050228546634276)
,p_plug_name=>unistr('U\017Eklaus\0173 formavimas')
,p_icon_css_classes=>'fa-file-wrench'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20016245007605358)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12183761690080397)
,p_button_name=>'DELETE_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconRight:t-Button--stretch:t-Button--gapLeft:t-Button--padRight:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717674682517982)
,p_button_image_alt=>unistr('I\0161trinti visk\0105')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70135960872380868)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12183761690080397)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--iconRight:t-Button--stretch:t-Button--gapLeft:t-Button--padRight:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717674682517982)
,p_button_image_alt=>unistr('I\0161trinti eilut\0119')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20015301457605348)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12183761690080397)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--stretch:t-Button--gapLeft:t-Button--padRight:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717674682517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161saugoti')
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21444147656381062)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12183761690080397)
,p_button_name=>'FORMAT_ORDER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconRight:t-Button--stretch:t-Button--gapLeft:t-Button--padRight:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717674682517982)
,p_button_image_alt=>'Formuoti'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21362693463367276)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(12053357392690079)
,p_button_name=>'ADD_PARTS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Prid\0117ti detales')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21430913681381017)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_button_name=>'CREATE_ORDER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--pill:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Kurti u\017Eklaus\0105')
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'width-130px'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21431256004381018)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_button_name=>'VIEW_ORDERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--pill:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Visos u\017Eklausos')
,p_button_redirect_url=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.::P52_OPENED_ORDER_ID:&P40_ORDER_ID.'
,p_button_css_classes=>'width-130px'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20017261992605368)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_button_name=>'CLEAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>'Valyti'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'width-130px'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70510079467868033)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Spausdinti'
,p_button_redirect_url=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.::P63_ORDER_ID:&P40_ORDER_ID.'
,p_button_css_classes=>'width-130px'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71331292116107153)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_button_name=>'CREATE_CLIENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Sukurti klient\0105')
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'width-130px'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18693679812856354)
,p_name=>'P40_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11609118564476486)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19401764557211967)
,p_name=>'P40_ORDER_TYPE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21273206876564531)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19665327782813138)
,p_name=>'P40_DELIVERYDAYS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19666651435813151)
,p_prompt=>'Pristatymo laikas'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  distinct ndelivery_days d, ',
'        ndelivery_days r ',
'FROM v_order_types ',
'WHERE ndelivery_days IS NOT NULL ',
'ORDER BY ndelivery_days'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19667468867813159)
,p_name=>'P40_SUPPLIER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21273206876564531)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20340956879941273)
,p_name=>'P40_COMMENTS_COUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12053357392690079)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20341063786941274)
,p_name=>'P40_PART_QNT_COUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12053357392690079)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20341183325941275)
,p_name=>'P40_PART_CODES_COUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12053357392690079)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20341275566941276)
,p_name=>'P40_PART_NAMES_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12053357392690079)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20341413757941277)
,p_name=>'P40_COMMENTS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12053357392690079)
,p_prompt=>'Komentarai'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21040646358781628)
,p_name=>'P40_PART_QNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12053357392690079)
,p_prompt=>unistr('Detali\0173 kiekiai')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21040814457781629)
,p_name=>'P40_PART_NAMES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12053357392690079)
,p_prompt=>unistr('Detali\0173 pavadinimai')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21042185994781643)
,p_name=>'P40_PART_ROW_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12183761690080397)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21274205633564541)
,p_name=>'P40_FLAG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(12053357392690079)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21358077703367230)
,p_name=>'P40_DETAILS_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12183761690080397)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21362767762367277)
,p_name=>'P40_PART_CODES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12053357392690079)
,p_prompt=>unistr('Detali\0173 kodai')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21428849375381016)
,p_name=>'P40_VIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_item_source_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_prompt=>'VIN'
,p_source=>'VIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cMaxlength=>17
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21429228054381016)
,p_name=>'P40_VEHICLE_MODELS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_item_source_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_prompt=>'Automobilio modelis'
,p_source=>'VEHICLE_MODELS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'sname ',
'FROM v_vehicle_models ',
'WHERE ncar_id = (SELECT nid ',
'                FROM v_vehicle_brands ',
'                WHERE sname = :P40_VEHICLE_BRANDS)',
'ORDER BY 1                '))
,p_lov_cascade_parent_items=>'P40_VEHICLE_BRANDS'
,p_ajax_items_to_submit=>'P40_VEHICLE_BRANDS'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'Y'
,p_attribute_10=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21429631921381016)
,p_name=>'P40_VEHICLE_BRANDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_item_source_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_prompt=>unistr('Automobilio mark\0117')
,p_source=>'VEHICLE_BRAND'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'sname ',
'FROM v_vehicle_brands',
'ORDER BY 1 '))
,p_cSize=>30
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21430055000381016)
,p_name=>'P40_CLIENTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_item_source_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_prompt=>'Klientas'
,p_source=>'CLIENTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'scompany_name ',
'FROM v_clients_info',
'ORDER BY 1'))
,p_cSize=>30
,p_cMaxlength=>50
,p_colspan=>2
,p_grid_column=>1
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21430428677381017)
,p_name=>'P40_ORDER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_item_source_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21433023796381021)
,p_name=>'P40_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12053357392690079)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21434722373381023)
,p_name=>'P40_NULL'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12053357392690079)
,p_item_source_plug_id=>wwv_flow_imp.id(12053357392690079)
,p_source=>'NULL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21438408692381031)
,p_name=>'P40_ROW_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12183761690080397)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69170405385820840)
,p_name=>'P40_NCAR_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nid',
'FROM   v_vehicle_brands',
'WHERE  sname = :p40_vehicle_brands'))
,p_item_default_type=>'SQL_QUERY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nid',
'FROM   v_vehicle_brands',
'WHERE  sname = :p40_vehicle_brands'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69170551830820841)
,p_name=>'P40_NCLIENT_ID'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nid',
'FROM   v_companies',
'WHERE  scompany_name = :P40_CLIENTS'))
,p_item_default_type=>'SQL_QUERY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nid',
'FROM   v_companies',
'WHERE  scompany_name = :P40_CLIENTS'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70354961849077324)
,p_name=>'P40_FLAG_CREATE_ORDER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70566855523104862)
,p_name=>'P40_FLAGUZKLAUSA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12183761690080397)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71069247430555330)
,p_name=>'P40_SID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12183761690080397)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71096173266244634)
,p_name=>'P40_ORDER_PREP_STATUS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Statusas'
,p_source=>'select vo.nstatus_id from v_orders_prep vo where vo.nid = :P40_ORDER_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT SNAME d, nid r FROM V_STATUSES WHERE NTYPE = 1 ORDER BY NID'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_display_when=>'P40_ORDER_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71846574285374465)
,p_name=>'P40_SCOMMENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_item_source_plug_id=>wwv_flow_imp.id(11986624030558065)
,p_prompt=>'Komentaras'
,p_source=>'SCOMMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P40_SCOMMENT'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21421327366380984)
,p_name=>'Part Name Update'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_PART_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21420392931380983)
,p_event_id=>wwv_flow_imp.id(21421327366380984)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_DETAILS_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21420014649380983)
,p_name=>'Hide/Show Disable/Enable Regions'
,p_event_sequence=>80
,p_condition_element=>'P40_ORDER_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17815647985578275)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''[data-action="edit"]'').hide();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17815747797578276)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''[data-action="edit"]'').hide();',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21416931553380982)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12053357392690079)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21418471783380983)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12053357392690079)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21419022236380983)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11609118564476486)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21415987762380981)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12183761690080397)
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21419508302380983)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11609118564476486)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20014877512605344)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21273206876564531)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21417497812380982)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12183761690080397)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20014814316605343)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21273206876564531)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20336695606941230)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'FALSE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(21430913681381017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19401185169211961)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'FALSE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_VIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21273518061564534)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_COMMENTS,P40_PART_NAMES,P40_PART_CODES,P40_PART_QNT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20014306572605338)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(21430913681381017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70132605772380835)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'FALSE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(70510079467868033)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19594244559235553)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_VIN'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70132536905380834)
,p_event_id=>wwv_flow_imp.id(21420014649380983)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(70510079467868033)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21413161569380979)
,p_name=>'Create Order'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21430913681381017)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P40_CLIENTS") != '''' && $v("P40_VEHICLE_BRANDS") != '''''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17814524465578264)
,p_event_id=>wwv_flow_imp.id(21413161569380979)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Eveskite klient\0105, autotmobilio mark\0119 ir model\012F!')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17815554827578274)
,p_event_id=>wwv_flow_imp.id(21413161569380979)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    nl_order_id    NUMBER;',
'    nl_modelcase   NUMBER := 0;',
'BEGIN',
'    :p40_flag_create_order := 0;',
'    :p40_vehicle_models := TRIM( :p40_vehicle_models);',
'',
'    IF validate_order_prep_creation( :p40_clients',
'                                   , :p40_vehicle_brands) = 1 THEN',
'        IF :p40_vehicle_models IS NOT NULL THEN',
'            BEGIN',
'                SELECT 1',
'                INTO   nl_modelcase',
'                FROM   v_vehicle_models vm',
'                WHERE  vm.sname = UPPER( :p40_vehicle_models);',
'            EXCEPTION',
'                WHEN NO_DATA_FOUND THEN',
'                    NULL;',
'            END;',
'',
'            IF nl_modelcase = 0 THEN',
'                INSERT INTO v_vehicle_models(ncar_id',
'                                            ,sname)',
'                VALUES      ((SELECT nid',
'                              FROM   v_vehicle_brands',
'                              WHERE  sname = :p40_vehicle_brands)',
'                            ,UPPER( :p40_vehicle_models));',
'',
'                nl_modelcase := 1;',
'            END IF;',
'        ELSE',
'            nl_modelcase := 1;',
'        END IF;',
'',
'        IF nl_modelcase > 0 THEN',
'            IF :p40_vehicle_models IS NULL THEN',
'                INSERT INTO v_orders_prep(nid',
'                                         ,nclient_id',
'                                         ,ncar_id',
'                                         ,ncar_model_id',
'                                         ,svin',
'                                         ,nuser_id)',
'                    SELECT seq_orders_prep.NEXTVAL',
'                          ,c.nid',
'                          ,vb.nid',
'                          ,NULL',
'                          , :p40_vin',
'                          ,apex_util.get_current_user_id',
'                    FROM   v_companies       c',
'                          ,v_vehicle_brands  vb',
'                    WHERE  c.scompany_name = :p40_clients',
'                    AND    vb.sname = :p40_vehicle_brands;',
'',
'                :p40_flag_create_order := 1;',
'                :p40_order_id := seq_orders_prep.CURRVAL;',
'            ELSE',
'                INSERT INTO v_orders_prep(nid',
'                                         ,nclient_id',
'                                         ,ncar_id',
'                                         ,ncar_model_id',
'                                         ,svin',
'                                         ,nuser_id)',
'                    SELECT seq_orders_prep.NEXTVAL',
'                          ,c.nid',
'                          ,vb.nid',
'                          ,vm.nid',
'                          , :p40_vin',
'                          ,apex_util.get_current_user_id',
'                    FROM   v_companies       c',
'                          ,v_vehicle_brands  vb',
'                          ,v_vehicle_models  vm',
'                    WHERE  c.scompany_name = :p40_clients',
'                    AND    vb.sname = :p40_vehicle_brands',
'                    AND    vm.sname(+) = UPPER( :p40_vehicle_models);',
'',
'                :p40_flag_create_order := 1;',
'                :p40_order_id := seq_orders_prep.CURRVAL;',
'            END IF;',
'        END IF;',
'    ELSE',
'        :p40_flag_create_order := 0;',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :p40_flag_create_order := 0;',
'END;'))
,p_attribute_02=>'P40_VIN,P40_CLIENTS,P40_VEHICLE_BRANDS,P40_VEHICLE_MODELS'
,p_attribute_03=>'P40_ORDER_ID,P40_FLAG_CREATE_ORDER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70354784970077323)
,p_event_id=>wwv_flow_imp.id(21413161569380979)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Blogas kliento arba mark\0117s pasirinkimas!')
,p_attribute_02=>'Klaida'
,p_attribute_03=>'danger'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P40_FLAG_CREATE_ORDER'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17815375849578272)
,p_event_id=>wwv_flow_imp.id(21413161569380979)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12053357392690079)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P40_FLAG_CREATE_ORDER'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17815296784578271)
,p_event_id=>wwv_flow_imp.id(21413161569380979)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11609118564476486)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P40_FLAG_CREATE_ORDER'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17813923928578258)
,p_event_id=>wwv_flow_imp.id(21413161569380979)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12183761690080397)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P40_FLAG_CREATE_ORDER'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17815115128578269)
,p_event_id=>wwv_flow_imp.id(21413161569380979)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21273206876564531)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P40_FLAG_CREATE_ORDER'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17814927723578268)
,p_event_id=>wwv_flow_imp.id(21413161569380979)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_VIN,P40_CLIENTS,P40_VEHICLE_BRANDS,P40_VEHICLE_MODELS'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P40_FLAG_CREATE_ORDER'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17814916675578267)
,p_event_id=>wwv_flow_imp.id(21413161569380979)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(21430913681381017)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P40_FLAG_CREATE_ORDER'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21362595560367275)
,p_name=>'Add Part'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21362693463367276)
,p_condition_element=>'P40_PART_CODES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45152842505531854)
,p_event_id=>wwv_flow_imp.id(21362595560367275)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('U\017Epildykite laukeli\0173 &quot;Detali\0173 kodai&quot;')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45287534731878546)
,p_event_id=>wwv_flow_imp.id(21362595560367275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(21362693463367276)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21362451556367274)
,p_event_id=>wwv_flow_imp.id(21362595560367275)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P40_FLAG := 0;',
'processing_prep_part_data(:P40_PART_CODES, :P40_PART_NAMES, :P40_PART_QNT, :P40_COMMENTS, to_number(:P40_ORDER_ID), :P40_FLAG);'))
,p_attribute_02=>'P40_PART_CODES,P40_PART_NAMES,P40_PART_QNT,P40_COMMENTS,P40_ORDER_ID,P40_FLAGUZKLAUSA'
,p_attribute_03=>'P40_FLAGUZKLAUSA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45153799514531863)
,p_event_id=>wwv_flow_imp.id(21362595560367275)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Pridedant detales i\0161kilo klaida, patikrinkite duomenis!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P40_FLAGUZKLAUSA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21362336953367273)
,p_event_id=>wwv_flow_imp.id(21362595560367275)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12183761690080397)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19593708102235547)
,p_event_id=>wwv_flow_imp.id(21362595560367275)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19869420981262564)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45287496298878545)
,p_event_id=>wwv_flow_imp.id(21362595560367275)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(21362693463367276)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21042630253781648)
,p_name=>'Delete Part'
,p_event_sequence=>120
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.de'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21042567123781647)
,p_event_id=>wwv_flow_imp.id(21042630253781648)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite pa\0161alinti detal\0119?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21042468705781646)
,p_event_id=>wwv_flow_imp.id(21042630253781648)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_ROW_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21042409153781645)
,p_event_id=>wwv_flow_imp.id(21042630253781648)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from v_order_details_prep where nid = :P40_ROW_ID;'
,p_attribute_02=>'P40_ROW_ID,P40_ORDER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21042264034781644)
,p_event_id=>wwv_flow_imp.id(21042630253781648)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12183761690080397)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19593736199235548)
,p_event_id=>wwv_flow_imp.id(21042630253781648)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19869420981262564)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19592642503235537)
,p_name=>'Delete Part 1'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.delete'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19592425860235535)
,p_event_id=>wwv_flow_imp.id(19592642503235537)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_ROW_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19592417899235534)
,p_event_id=>wwv_flow_imp.id(19592642503235537)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("report").widget().interactiveGrid("getActions").invoke("selection-delete");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21042090185781642)
,p_name=>'Update Part'
,p_event_sequence=>140
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.select'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21041936719781641)
,p_event_id=>wwv_flow_imp.id(21042090185781642)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_PART_ROW_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21041110189781632)
,p_event_id=>wwv_flow_imp.id(21042090185781642)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE v_order_details_prep',
'SET    (nprice',
'       ,norder_type_id',
'       ,nsupplier_id',
'       ,nsurcharge) =',
'           (SELECT vss.nprice',
'                  ,vss.norder_type_id',
'                  ,vss.nsupplier_id',
'                  ,(SELECT NVL(get_surcharge(:P40_NCLIENT_ID',
'                                            ,:P40_NCAR_ID',
'                                            ,vss.norder_type_id)',
'                              ,0)',
'                    FROM   dual)',
'            FROM   v_storage_suppliers_parts_info vss',
'            WHERE  vss.nid = :p40_part_row_id)',
'WHERE  nid = :p40_details_id;'))
,p_attribute_02=>'P40_ROW_ID,P40_PART_ROW_ID,P40_DETAILS_ID,P40_NCLIENT_ID,P40_NCAR_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21041006473781631)
,p_event_id=>wwv_flow_imp.id(21042090185781642)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12183761690080397)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19593851342235549)
,p_event_id=>wwv_flow_imp.id(21042090185781642)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19869420981262564)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20340874329941272)
,p_name=>'Count Part Names'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_PART_NAMES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20340737304941271)
,p_event_id=>wwv_flow_imp.id(20340874329941272)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_PART_NAMES_COUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'  SELECT nvl(length(regexp_replace(regexp_replace(:P40_PART_NAMES,''^.*$'',''1'',1,0,''m''),''\s'','''')),0) FROM DUAL;'
,p_attribute_07=>'P40_PART_NAMES'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20339742289941261)
,p_event_id=>wwv_flow_imp.id(20340874329941272)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('$("label[for=''P40_PART_NAMES'']").text("Detali\0173 pavadinimai: "+ $v("P40_PART_NAMES_COUNT"));')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20340711941941270)
,p_name=>'Count Part Codes'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_PART_CODES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20340462256941268)
,p_event_id=>wwv_flow_imp.id(20340711941941270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_PART_CODES_COUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'  SELECT nvl(length(regexp_replace(regexp_replace(:P40_PART_CODES,''^.*$'',''1'',1,0,''m''),''\s'','''')),0) FROM DUAL;'
,p_attribute_07=>'P40_PART_CODES'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20339664819941260)
,p_event_id=>wwv_flow_imp.id(20340711941941270)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('$("label[for=''P40_PART_CODES'']").text("Detali\0173 kodai: "+$v("P40_PART_CODES_COUNT"));')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20340415474941267)
,p_name=>'Part Qnt Count'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_PART_QNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20340164797941265)
,p_event_id=>wwv_flow_imp.id(20340415474941267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_PART_QNT_COUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'  SELECT nvl(length(regexp_replace(regexp_replace(:P40_PART_QNT,''^.*$'',''1'',1,0,''m''),''\s'','''')), 0) FROM DUAL;'
,p_attribute_07=>'P40_PART_QNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20339539620941259)
,p_event_id=>wwv_flow_imp.id(20340415474941267)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('$("label[for=''P40_PART_QNT'']").text("Detali\0173 kiekis: "+$v("P40_PART_QNT_COUNT"));')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20340062276941264)
,p_name=>'Comments Count'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_COMMENTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20339878722941262)
,p_event_id=>wwv_flow_imp.id(20340062276941264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_COMMENTS_COUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'  SELECT nvl(length(regexp_replace(regexp_replace(:P40_COMMENTS,''^.*$'',''1'',1,0,''m''),''\s'','''')), 0) FROM DUAL;'
,p_attribute_07=>'P40_COMMENTS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20339521903941258)
,p_event_id=>wwv_flow_imp.id(20340062276941264)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("label[for=''P40_COMMENTS'']").text("Komentarai: "+$v("P40_COMMENTS_COUNT"));'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20017220588605367)
,p_name=>'Clear'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20017261992605368)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20017074509605366)
,p_event_id=>wwv_flow_imp.id(20017220588605367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_ORDER_ID,P40_CLIENTS,P40_VEHICLE_BRANDS,P40_VEHICLE_MODELS,P40_VIN,P40_ROW_ID,P40_DETAILS_ID,P40_PART_ROW_ID,P40_PART_NAMES,P40_PART_CODES,P40_PART_QNT,P40_COMMENTS,P40_SUPPLIER_ID,P40_ORDER_TYPE_ID,P40_CODE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45153667625531862)
,p_event_id=>wwv_flow_imp.id(20017220588605367)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12183761690080397)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45153554576531861)
,p_event_id=>wwv_flow_imp.id(20017220588605367)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19869420981262564)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20016966911605365)
,p_event_id=>wwv_flow_imp.id(20017220588605367)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12183761690080397)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20016858804605364)
,p_event_id=>wwv_flow_imp.id(20017220588605367)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11609118564476486)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19401113713211960)
,p_event_id=>wwv_flow_imp.id(20017220588605367)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21273206876564531)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19400912173211958)
,p_event_id=>wwv_flow_imp.id(20017220588605367)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12053357392690079)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20016666325605362)
,p_event_id=>wwv_flow_imp.id(20017220588605367)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(21430913681381017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19594165993235552)
,p_event_id=>wwv_flow_imp.id(20017220588605367)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_VIN,P40_CLIENTS,P40_VEHICLE_BRANDS,P40_VEHICLE_MODELS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45153063606531856)
,p_event_id=>wwv_flow_imp.id(20017220588605367)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:40:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20016141030605357)
,p_name=>'Clear parts'
,p_event_sequence=>200
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20016245007605358)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20015902244605354)
,p_event_id=>wwv_flow_imp.id(20016141030605357)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161trinti visas detales?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20016035250605356)
,p_event_id=>wwv_flow_imp.id(20016141030605357)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE ',
'FROM v_order_details_prep  ',
'WHERE norder_id = :P40_ORDER_ID;'))
,p_attribute_02=>'P40_ORDER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20015957707605355)
,p_event_id=>wwv_flow_imp.id(20016141030605357)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12183761690080397)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45154257775531868)
,p_event_id=>wwv_flow_imp.id(20016141030605357)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19869420981262564)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45154227111531867)
,p_event_id=>wwv_flow_imp.id(20016141030605357)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19666651435813151)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20015800188605353)
,p_name=>'Nested report'
,p_event_sequence=>210
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.parts'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20015648300605352)
,p_event_id=>wwv_flow_imp.id(20015800188605353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_DETAILS_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18693599463856353)
,p_event_id=>wwv_flow_imp.id(20015800188605353)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_CODE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.getAttribute("data");'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20015433599605350)
,p_event_id=>wwv_flow_imp.id(20015800188605353)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_PRETIUS_APEX_NESTED_REPORTS'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12183761690080397)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select --ID,',
unistr('    "Detal\0117s pavadinimas", '),
unistr('    "Detal\0117s kodas", '),
unistr('    "Tiek\0117jas", '),
unistr('    "U\017Esakymo tipas", '),
'    "Kaina",',
'case ',
unistr('    when "Tiek\0117jas" != (select c.scompany_name from v_companies c, v_order_details_prep o where o.norder_id = :P40_ORDER_ID and o.spart_code = ''#CODE#'' and c.nid = o.nsupplier_id)'),
'        then',
'             ''<a href="javascript:void(null)" id=''||NID||'' class="t-Icon fa fa-check-square-o select Button t-Button--success t-Button--simple t-Button--small" aria-hidden="true" title="Pasirinkti" ></a>''',
'        else',
'        ''<a style="background-color: rgb(59, 170, 44); color: white;" href="javascript:void(null)" id=''||NID||'' class="t-Icon fa fa-check-square-o select Button t-Button--success t-Button--simple t-Button--small" aria-hidden="true" title="Pasirinkti"'
||' ></a>'' ',
'        end as "&nbsp" ',
'from v_parts_info ',
unistr('where "Detal\0117s kodas" = nvl(trim(''#CODE#''), ''0'')'),
'AND    "NCAR_ID" = (SELECT ncar_id FROM v_orders_prep_info WHERE nid = :P40_ORDER_ID)'))
,p_attribute_02=>'CE:AA:CR'
,p_attribute_03=>'DTDC'
,p_attribute_06=>'#EBEBEB'
,p_attribute_08=>'#c5c5c5'
,p_attribute_09=>'#e3e3e3'
,p_attribute_11=>unistr('Nerasta \012Fra\0161\0173!')
,p_attribute_14=>'SR:SD'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P40_CODE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19807056334912266)
,p_name=>'Hide Edit Button'
,p_event_sequence=>220
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12183761690080397)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'dblclick'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19806932786912265)
,p_event_id=>wwv_flow_imp.id(19807056334912266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''[data-action="edit"]'').hide();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19667709284813161)
,p_name=>'Apply Filter'
,p_event_sequence=>230
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.check'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69120512832959450)
,p_event_id=>wwv_flow_imp.id(19667709284813161)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Naudojant filtrus, rankiniu b\016Bdu \012Fra\0161ytos kainos ir antkainiai bus perra\0161yti.')
,p_attribute_02=>unistr('Ar tikrai norite t\0119sti?')
,p_attribute_03=>'warning'
,p_attribute_06=>'Taip'
,p_attribute_07=>unistr('At\0161aukti')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19667620771813160)
,p_event_id=>wwv_flow_imp.id(19667709284813161)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_SUPPLIER_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19401569786211965)
,p_event_id=>wwv_flow_imp.id(19667709284813161)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_ORDER_TYPE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.getAttribute("data");'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19401502221211964)
,p_event_id=>wwv_flow_imp.id(19667709284813161)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apply_filter(:P40_ORDER_ID, :P40_SUPPLIER_ID, :P40_ORDER_TYPE_ID);',
'--apply_filter(:P40_ORDER_ID, 284, 4);'))
,p_attribute_02=>'P40_ORDER_ID,P40_SUPPLIER_ID,P40_ORDER_TYPE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19401396727211963)
,p_event_id=>wwv_flow_imp.id(19667709284813161)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12183761690080397)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19401323677211962)
,p_event_id=>wwv_flow_imp.id(19667709284813161)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19666651435813151)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45152472647531850)
,p_event_id=>wwv_flow_imp.id(19667709284813161)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19869420981262564)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(63602167270356055)
,p_event_id=>wwv_flow_imp.id(19667709284813161)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''.selected_row'').removeClass (''selected_row'');',
'$(this.triggeringElement).parent().parent().children().addClass (''selected_row'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19402289231211972)
,p_name=>'Hide Edit Button 2'
,p_event_sequence=>240
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12183761690080397)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'selection-add-row'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19402198030211971)
,p_event_id=>wwv_flow_imp.id(19402289231211972)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''[data-action="edit"]'').hide();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19665760222813142)
,p_name=>'Range From'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_RANGEFROM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19665713097813141)
,p_event_id=>wwv_flow_imp.id(19665760222813142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19869420981262564)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19665562766813140)
,p_name=>'Range To'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_RANGETO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19665451626813139)
,p_event_id=>wwv_flow_imp.id(19665562766813140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19869420981262564)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19665243535813137)
,p_name=>'Delivery Days'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_DELIVERYDAYS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19665209062813136)
,p_event_id=>wwv_flow_imp.id(19665243535813137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19869420981262564)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17814345178578262)
,p_name=>'VIN Check'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_VIN'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v("P40_VIN").length == 0 || $v("P40_VIN").length == 17'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17814169019578260)
,p_event_id=>wwv_flow_imp.id(17814345178578262)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Neteisingas VIN!'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17814228497578261)
,p_event_id=>wwv_flow_imp.id(17814345178578262)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(21430913681381017)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17814116771578259)
,p_event_id=>wwv_flow_imp.id(17814345178578262)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(21430913681381017)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47234199303879548)
,p_name=>'Hide Edit Button 1'
,p_event_sequence=>290
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.js-actionButton'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47234057218879547)
,p_event_id=>wwv_flow_imp.id(47234199303879548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''[data-action="edit"]'').hide();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(46430562167505734)
,p_name=>'Format Order'
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21444147656381062)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select * from v_order_details_prep_info where norder_id = :P40_ORDER_ID;'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68312741309210463)
,p_event_id=>wwv_flow_imp.id(46430562167505734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'null;',
'end;'))
,p_attribute_02=>'P40_ORDER_ID'
,p_attribute_03=>'P40_ORDER_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46430496324505733)
,p_event_id=>wwv_flow_imp.id(46430562167505734)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Detali\0173 kainos yra pasikeitusios, lyginant su kainora\0161\010Diais. Ar tikrai norite t\0119sti?')
,p_attribute_03=>'warning'
,p_attribute_06=>'Taip'
,p_attribute_07=>'Ne'
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM   v_order_details_prep vodp',
'WHERE  norder_id = :P40_ORDER_ID',
'AND    vodp.SELECTED = 1',
'AND    vodp.nprice != (SELECT nprice',
'                      FROM   v_storage_suppliers_parts',
'                      WHERE  nsupplier_id = vodp.nsupplier_id',
'                      AND    norder_type_id = vodp.norder_type_id',
'                      AND    scode = vodp.spart_code',
'                      FETCH FIRST ROW ONLY)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(46430411593505732)
,p_event_id=>wwv_flow_imp.id(46430562167505734)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    nl_id     NUMBER;',
'    sl_sid    VARCHAR(100);',
'    nl_flag   NUMBER;',
'    nl_countselected NUMBER;',
'    nl_countall NUMBER;',
'    nl_order_prep_status NUMBER;',
'BEGIN',
'    BEGIN',
'        :P40_FLAGUZKLAUSA := 0;',
'',
'        SELECT COUNT(*)',
'        INTO   nl_flag',
'        FROM   v_order_details_prep',
'        WHERE  norder_id = :P40_ORDER_ID',
'        AND    nsupplier_id IS NOT NULL',
'        AND    norder_type_id IS NOT NULL',
'        AND    selected = 1;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P40_FLAGUZKLAUSA := 1;',
'    END;',
'',
'    IF :P40_FLAGUZKLAUSA = 0 THEN',
'        IF :P40_SID IS NULL THEN',
'            sl_sid := get_sid();',
'',
'            INSERT INTO v_orders(s_id',
'                                ,nclient_id',
'                                ,ncar_id',
'                                ,ncar_model_id',
'                                ,svin',
'                                ,nuser_id)',
'                SELECT sl_sid',
'                      ,nclient_id',
'                      ,ncar_id',
'                      ,ncar_model_id',
'                      ,svin',
'                      ,nuser_id',
'                FROM   v_orders_prep',
'                WHERE  nid = :P40_ORDER_ID;',
'',
'            SELECT nid',
'            INTO   nl_id',
'            FROM   v_orders',
'            WHERE  s_id = sl_sid;',
'        ELSE',
'            SELECT nid',
'            INTO   nl_id',
'            FROM   v_orders',
'            WHERE  s_id = sl_sid;',
'        END IF;',
'',
'        INSERT INTO v_order_details(spart_code',
'                                   ,spart_name',
'                                   ,nqnt',
'                                   ,spart_comment',
'                                   ,nsupplier_id',
'                                   ,norder_type_id',
'                                   ,nprice',
'                                   ,norder_id',
'                                   ,nsurcharge)',
'            SELECT spart_code',
'                  ,spart_name',
'                  ,nqnt',
'                  ,spart_comment',
'                  ,nsupplier_id',
'                  ,norder_type_id',
'                  ,nprice',
'                  ,nl_id',
'                  ,nsurcharge',
'            FROM   v_order_details_prep',
'            WHERE  norder_id = :P40_ORDER_ID',
'            AND    nsupplier_id IS NOT NULL',
'            AND    norder_type_id IS NOT NULL',
'            AND    selected = 1;',
'',
'            UPDATE v_order_details_prep SET sorder_id = sl_sid',
'            WHERE  norder_id = :P40_ORDER_ID',
'            AND    nsupplier_id IS NOT NULL',
'            AND    norder_type_id IS NOT NULL',
'            AND    selected = 1;',
'',
'                BEGIN',
'        :P40_FLAGUZKLAUSA := 0;',
'',
'        SELECT count(*)',
'        INTO   nl_countselected',
'        FROM   v_order_details_prep',
'        WHERE  norder_id = :P40_ORDER_ID',
'        AND    nsupplier_id IS NOT NULL',
'        AND    norder_type_id IS NOT NULL',
'        AND    selected = 1;',
'',
'        SELECT count(*)',
'        INTO   nl_countall',
'        FROM   v_order_details_prep',
'        WHERE  norder_id = :P40_ORDER_ID',
'        AND    nsupplier_id IS NOT NULL',
'        AND    norder_type_id IS NOT NULL;',
'',
'        IF nl_countselected = nl_countall and nl_countall != 0 THEN',
'            nl_order_prep_status := 24;',
'        ELSE ',
'            nl_order_prep_status := 25;',
'        END IF;',
'',
'        UPDATE V_ORDERS_PREP SET NSTATUS_ID = nl_order_prep_status WHERE NID = :P40_ORDER_ID;',
'        ',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            :P40_FLAGUZKLAUSA := 2;',
'    END;',
'',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P40_FLAGUZKLAUSA := 1;',
'END;'))
,p_attribute_02=>'P40_ORDER_ID,P40_SID,P40_FLAGUZKLAUSA'
,p_attribute_03=>'P40_FLAGUZKLAUSA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45287409334878544)
,p_event_id=>wwv_flow_imp.id(46430562167505734)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:50:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P40_FLAGUZKLAUSA'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70566762373104861)
,p_event_id=>wwv_flow_imp.id(46430562167505734)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('N\0117ra pasirinkt\0173 detali\0173!')
,p_attribute_02=>'Klaida!'
,p_attribute_03=>'danger'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P40_FLAGUZKLAUSA'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70566572727104859)
,p_event_id=>wwv_flow_imp.id(46430562167505734)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Sistemos klaida!'
,p_attribute_02=>'Klaida!'
,p_attribute_03=>'danger'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P40_FLAGUZKLAUSA'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70566146984104855)
,p_event_id=>wwv_flow_imp.id(46430562167505734)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_FLAGUZKLAUSA'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(71094347647215130)
,p_name=>'New_1'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_ORDER_PREP_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71093901876215129)
,p_event_id=>wwv_flow_imp.id(71094347647215130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'UPDATE V_ORDERS_PREP SET NSTATUS_ID = :P40_ORDER_PREP_STATUS where nid = :P40_ORDER_ID;'
,p_attribute_02=>'P40_ORDER_ID,P40_ORDER_PREP_STATUS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(71093417245215129)
,p_event_id=>wwv_flow_imp.id(71094347647215130)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70564633491104840)
,p_name=>'New'
,p_event_sequence=>320
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12183761690080397)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|apexbeginrecordedit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70564522519104839)
,p_event_id=>wwv_flow_imp.id(70564633491104840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#report tr:last div[class=apex-item-single-checkbox]").hide();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70135842018380867)
,p_name=>'New_2'
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70135960872380868)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70135740791380866)
,p_event_id=>wwv_flow_imp.id(70135842018380867)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>' apex.region("report").widget().interactiveGrid("getActions").invoke("selection-delete");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70135588730380865)
,p_name=>'New_3'
,p_event_sequence=>340
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12183761690080397)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70135573086380864)
,p_event_id=>wwv_flow_imp.id(70135588730380865)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#report tr:last div[class=apex-item-single-checkbox]").hide();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69169747166820833)
,p_name=>'New_4'
,p_event_sequence=>350
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69169631460820832)
,p_event_id=>wwv_flow_imp.id(69169747166820833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12183761690080397)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19807167656912267)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12183761690080397)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('U\017Eklausa - Save Interactive Grid Data')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'nl_price NUMBER;',
'nl_supplier_id NUMBER;',
'nl_order_type_id NUMBER;',
'nl_exists NUMBER;',
'sl_code VARCHAR2(100);',
'nl_supplier_id_update NUMBER;',
'nl_order_type_id_update NUMBER;',
'nl_changed NUMBER;',
'nl_car_id NUMBER;',
'BEGIN',
'SELECT CASE',
'WHEN EXISTS',
'(SELECT 1',
'FROM v_order_details_prep_info',
'WHERE spart_code = :CODE',
'AND norder_id = :P40_ORDER_ID) THEN',
'1',
'ELSE',
'0',
'END AS rec_exists',
'INTO nl_exists',
'FROM DUAL;',
'',
'SELECT CASE',
'WHEN :CODE = ',
'(SELECT NVL(MAX(spart_code), ''(#####)'')',
'FROM   v_order_details_prep_info',
'WHERE  spart_code = :CODE',
'AND norder_id = :P40_ORDER_ID',
'AND nid = :ID) THEN',
'0',
'ELSE',
'1',
'END AS rec_changed',
'into nl_changed',
'FROM   DUAL;',
'',
'SELECT ncar_id ',
'INTO nl_car_id',
'FROM v_orders_prep_info',
'WHERE nid = :P40_ORDER_ID;',
'',
'CASE :APEX$ROW_STATUS',
'WHEN ''D'' THEN',
'DELETE FROM v_order_details_prep',
'WHERE  nid = :ID;',
'WHEN ''U'' THEN',
'BEGIN',
'SELECT   ssp.nprice',
',ssp.nsupplier_id',
',ssp.norder_type_id',
'INTO     nl_price',
',nl_supplier_id_update',
',nl_order_type_id_update',
'FROM     v_storage_suppliers_parts_info ssp',
'WHERE    ssp.scode = TO_CHAR(:CODE)',
'AND      ssp.ncar_id = nl_car_id  ',
'ORDER BY ssp.scode ASC',
'FETCH    FIRST 1 ROWS ONLY;',
'',
'EXCEPTION',
'WHEN NO_DATA_FOUND THEN',
'NULL;',
'END;',
'IF nl_changed = 0 THEN',
'UPDATE v_order_details_prep',
'SET  spart_name = :PART_NAME',
',nqnt = nvl(:QNT, 1)',
',spart_comment = substr(:PART_COMMENT,1,254)',
',selected = DECODE(:SUPPLIER, null, 0, :SELECTED)',
'WHERE  nid = :id;',
'ELSIF nl_changed = 1 OR nl_exists = 0 THEN',
'UPDATE v_order_details_prep',
'SET  spart_name = :PART_NAME',
',spart_code = :CODE',
',nqnt = nvl(:QNT, 1)',
',spart_comment = substr(:PART_COMMENT,1,254)',
',nprice = nl_price',
',nsupplier_id = nl_supplier_id_update',
',norder_type_id = nl_order_type_id_update',
',selected = DECODE(nl_supplier_id, null, 0, :SELECTED)',
'WHERE  nid = :id;',
'else ',
unistr('apex_error.add_error(p_message            => ''Detal\0117 jau egzistuoja ('' || :CODE || '')'''),
',p_display_location   => apex_error.c_inline_in_notification);  ',
'END IF;                        ',
'WHEN ''C'' THEN',
'BEGIN',
'SELECT   ssp.nprice',
',NVL(ssp.nsupplier_id, -1)',
',NVL(ssp.norder_type_id, -1)',
'INTO     nl_price',
',nl_supplier_id',
',nl_order_type_id',
'FROM     v_storage_suppliers_parts_info ssp',
'WHERE    ssp.scode = TO_CHAR( :CODE)',
'AND      ssp.ncar_id = nl_car_id ',
'ORDER BY ssp.scode ASC',
'FETCH    FIRST 1 ROWS ONLY;',
'EXCEPTION',
'WHEN NO_DATA_FOUND THEN',
'NULL;',
'END;',
'IF nl_exists = 0 THEN',
'INSERT INTO v_order_details_prep(spart_name',
',spart_code',
',nqnt',
',spart_comment',
',nprice',
',nsupplier_id',
',norder_type_id',
',norder_id',
',SELECTED',
',nsurcharge)',
'VALUES      (:PART_NAME',
',:CODE',
',nvl(:QNT, 1)',
',substr(:PART_COMMENT,1,254)',
',nl_price',
',nl_supplier_id',
',nl_order_type_id',
',:P40_ORDER_ID',
',DECODE(nl_supplier_id, null, 0, :SELECTED)',
',(SELECT NVL(get_surcharge(:P40_NCLIENT_ID',
'                           ,:P40_NCAR_ID',
'                           ,nl_order_type_id)',
'                  ,0)',
'        FROM   DUAL));',
'ELSE',
unistr('apex_error.add_error(p_message            => ''Detal\0117 jau egzistuoja ('' || :CODE || '')'''),
',p_display_location   => apex_error.c_inline_in_notification);',
'END IF;',
'END CASE;',
'EXCEPTION',
'WHEN NO_DATA_FOUND THEN',
'NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Klaida!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(20015301457605348)
,p_process_success_message=>unistr('I\0161saugota!')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21432420978381020)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12053357392690079)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form test123'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21431937245381018)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12053357392690079)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form U\017Eklausos')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21425882819381013)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11986624030558065)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form U\017Eklausos1')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

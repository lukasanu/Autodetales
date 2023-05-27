prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_name=>unistr('U\017Esakymai')
,p_alias=>unistr('U\017DSAKYMAI')
,p_step_title=>unistr('U\017Esakymai')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#progressbar {',
'    text-align: center;',
'    background-color: #FFFFFF;',
'    position: relative;',
'    width: 150px;',
'    border: 1px solid;',
'}',
'',
'#progressbar>div {',
'    background-color: #8cd98c;',
'    height: 20px;',
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
'}'))
,p_step_template=>wwv_flow_imp.id(9600808234517825)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230402195052'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45215773607093865)
,p_plug_name=>unistr('U\017Esakymai')
,p_icon_css_classes=>'fa-file-check'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45298041276959318)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(9629970051517884)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45298864116959329)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(45298996390959329)
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'N'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(45298996390959329)
,p_name=>'Search Results'
,p_template=>wwv_flow_imp.id(9655019078517905)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nid                                                                                                                                                  AS id',
'      ,s_id                                                                                                                                                 AS sid',
'      ,sclient                                                                                                                                              AS client',
'      ,svehicle_brand                                                                                                                                       AS vehicle_brand',
'      ,svehicle_model                                                                                                                                       AS vehicle_model',
'      ,svin                                                                                                                                                 AS vin',
'      ,sstatus                                                                                                                                              AS status',
'      ,dtcreation_date + 3 / 24                                                                                                                             AS creation_date',
'      ,CASE',
'           WHEN (SELECT SUM(nqnt_retrieved)',
'                 FROM   v_order_details',
'                 WHERE  norder_id = v_orders_info.nid',
'                 AND    nstatus_id != 18)',
'                    IS NOT NULL THEN',
'               (SELECT    ''<div id="progressbar"><div style="width:''',
'                       || ROUND(SUM(nqnt_retrieved) / SUM(nqnt) * 100)',
'                       || ''%;"><p class="progress-label"><strong>''',
'                       || ROUND(SUM(nqnt_retrieved) / SUM(nqnt) * 100)',
'                       || ''%</strong></p></div>',
'</div>''',
'                       || SUM(nqnt_retrieved)',
'                       || ''/''',
'                       || SUM(nqnt)',
'                FROM   v_order_details',
'                WHERE  norder_id = v_orders_info.nid',
'                AND    nstatus_id != 18)',
'           ELSE',
'               (SELECT    ''<div id="progressbar"><div style="width:''',
'                       || ROUND(SUM(nqnt_retrieved) / SUM(nqnt) * 100)',
'                       || ''%;"><p class="progress-label"><strong>''',
'                       || ROUND(SUM(nqnt_retrieved) / SUM(nqnt) * 100)',
'                       || ''%</strong></p></div>',
'</div>''',
'                       || SUM(nqnt_retrieved)',
'                       || ''/''',
'                       || SUM(nqnt)',
'                FROM   v_order_details',
'                WHERE  norder_id = v_orders_info.nid)',
'       END                                                                                                                                                  AS color',
unistr('      ,   DECODE(nprice_changed_sum, 0, '''', ''<span aria-hidden="true" class="fa fa-money fa-lg" style="color: green" title="Pasikeit\0117 kaina"></span>'')'),
unistr('       || DECODE(ncode_changed_sum, 0, '''', ''<span aria-hidden="true" class="fa fa-refresh fa-lg" style="color: orange" title="Pasikeit\0117 kodas"></span>'')'),
unistr('       || DECODE(nshipment_delayed_sum, 0, '''', ''<span aria-hidden="true" class="fa fa-truck fa-lg" style="color: blue" title="V\0117luoja"></span>'')'),
'       || DECODE(nadditional_comment_sum',
'                ,0, ''''',
'                ,''<span aria-hidden="true" class="fa fa-commenting fa-lg" style="color: brown" title="Papildomas komentaras"></span>'')',
unistr('       || DECODE(natleast_one_declined, 1, ''<span aria-hidden="true" class="fa fa-minus-circle fa-lg" style="color: red" title="At\0161aukta"></span>'', '''')    AS icon'),
'FROM   v_orders_info;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(9677590060517929)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45297005307959304)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45296618724959303)
,p_query_column_id=>2
,p_column_alias=>'SID'
,p_column_display_sequence=>21
,p_column_heading=>'ID'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45296172954959303)
,p_query_column_id=>3
,p_column_alias=>'CLIENT'
,p_column_display_sequence=>31
,p_column_heading=>'Klientas'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45295811127959303)
,p_query_column_id=>4
,p_column_alias=>'VEHICLE_BRAND'
,p_column_display_sequence=>41
,p_column_heading=>unistr('Automobilio Mark\0117')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45295389600959303)
,p_query_column_id=>5
,p_column_alias=>'VEHICLE_MODEL'
,p_column_display_sequence=>51
,p_column_heading=>'Automobilio Modelis'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45294966478959302)
,p_query_column_id=>6
,p_column_alias=>'VIN'
,p_column_display_sequence=>61
,p_column_heading=>'VIN'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45294603971959302)
,p_query_column_id=>7
,p_column_alias=>'STATUS'
,p_column_display_sequence=>101
,p_column_heading=>'Statusas'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71331408390107154)
,p_query_column_id=>8
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>91
,p_column_heading=>unistr('Suk\016Brimo data')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45290340621878574)
,p_query_column_id=>9
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>11
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::P57_ID,P57_CLIENT,P57_SID,P57_VEHICLE_BRAND,P57_VEHICLE_MODEL,P57_VIN:#ID#,#CLIENT#,#SID#,#VEHICLE_BRAND#,#VEHICLE_MODEL#,#VIN#'
,p_column_linktext=>unistr('<span aria-label="Per\017Ei\016Br\0117ti"><span class="fa fa-edit" aria-hidden="true" title="Per\017Ei\016Br\0117ti \012Fra\0161us"></span></span>')
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70207510748720257)
,p_query_column_id=>9
,p_column_alias=>'COLOR'
,p_column_display_sequence=>81
,p_column_heading=>'Progresas'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(69453562319926539)
,p_query_column_id=>10
,p_column_alias=>'ICON'
,p_column_display_sequence=>71
,p_column_heading=>'Pasikeitimai'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45297563553959317)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(45298041276959318)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9717674682517982)
,p_button_image_alt=>unistr('I\0161valyti Filtrus')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RR,50::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45290471225878575)
,p_name=>'P50_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(45298864116959329)
,p_prompt=>'Statusas'
,p_source=>'STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45290540725878576)
,p_name=>'P50_VIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(45298864116959329)
,p_prompt=>'VIN'
,p_source=>'VIN'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45298343675959319)
,p_name=>'P50_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(45298864116959329)
,p_prompt=>unistr('Paie\0161ka')
,p_placeholder=>unistr('Ie\0161koti')
,p_source=>'SID,CLIENT,VEHICLE_BRAND,VEHICLE_MODEL,VIN,STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46429982179505728)
,p_name=>'P50_VEIHICLE_MODEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(45298864116959329)
,p_prompt=>'Automobilio Modelis'
,p_source=>'VEHICLE_MODEL'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46430067869505729)
,p_name=>'P50_VEIHICLE_BRANDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(45298864116959329)
,p_prompt=>unistr('Automobilio Mark\0117')
,p_source=>'VEHICLE_BRAND'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(46430195765505730)
,p_name=>'P50_CLIENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(45298864116959329)
,p_prompt=>'Klientas'
,p_source=>'CLIENT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_show_label=>true
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_toggleable=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70136114658380870)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(45298996390959329)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70136042467380869)
,p_event_id=>wwv_flow_imp.id(70136114658380870)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(45298996390959329)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''td[headers="STATUS"]'').each(function() {',
unistr('   if ( $(this).text() === ''Neu\017Esakyta'' ) {'),
'     $(this).attr(''style'', ''background-color: #ff8080 !important; color: black !important'');',
unistr('   } else if ( $(this).text() === ''U\017Esakymas i\0161si\0173stas tiek\0117jui'' || $(this).text() ===''Dalinai gautas u\017Esakymas i\0161 tiek\0117jo'' ) {'),
'      $(this).attr(''style'', ''background-color: #ffff80 !important; color: black !important'');',
unistr('   } else if ( $(this).text() === ''Gautas u\017Esakymas i\0161 tiek\0117jo'' ) {'),
'      $(this).attr(''style'', ''background-color: #8cd98c !important; color: black !important'');',
unistr('   } else if ( $(this).text() === ''U\017Esakymas at\0161auktas'' ) {'),
'      $(this).attr(''style'', ''background-color: #F15400 !important; color: black !important'');',
'   }',
'});'))
);
wwv_flow_imp.component_end;
end;
/

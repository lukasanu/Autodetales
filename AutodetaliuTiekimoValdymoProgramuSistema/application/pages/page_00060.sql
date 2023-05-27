prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_name=>unistr('U\017Eklausos')
,p_alias=>unistr('U\017DKLAUSOS')
,p_step_title=>unistr('U\017Eklausos')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(9600808234517825)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230216180855'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41374132648180787)
,p_plug_name=>unistr('U\017Eklausos')
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
 p_id=>wwv_flow_imp.id(41456400318046240)
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
 p_id=>wwv_flow_imp.id(41457223158046251)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody:t-Form--large'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(41457355432046251)
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'N'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(41457355432046251)
,p_name=>'Search Results'
,p_template=>wwv_flow_imp.id(9655019078517905)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nid                          AS id',
'      ,sclient                      AS client',
'      ,svehicle_brand               AS vehicle_brand',
'      ,svehicle_model               AS vehicle_model',
'      ,svin                         AS vin',
'      ,sstatus                      AS status',
'      ,dtcreation_date + 3 / 24     AS creation_date',
'FROM   v_orders_prep_info'))
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
 p_id=>wwv_flow_imp.id(71107069777331797)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71106265214331797)
,p_query_column_id=>2
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
 p_id=>wwv_flow_imp.id(71105816157331797)
,p_query_column_id=>3
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
 p_id=>wwv_flow_imp.id(71105450601331797)
,p_query_column_id=>4
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
 p_id=>wwv_flow_imp.id(71104976276331796)
,p_query_column_id=>5
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
 p_id=>wwv_flow_imp.id(71104632504331796)
,p_query_column_id=>6
,p_column_alias=>'STATUS'
,p_column_display_sequence=>81
,p_column_heading=>'Statusas'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71107458165331798)
,p_query_column_id=>7
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>71
,p_column_heading=>unistr('Suk\016Brimo data')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(71104177480331796)
,p_query_column_id=>9
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>11
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::P40_ORDER_ID:#ID###ID#'
,p_column_linktext=>unistr('<span aria-label="Per\017Ei\016Br\0117ti"><span class="fa fa-edit" aria-hidden="true" title="Per\017Ei\016Br\0117ti \012Fra\0161us"></span></span>')
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71331205367107152)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(41456400318046240)
,p_button_name=>'CREATE_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Kurti nauj\0105')
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(71100793682331793)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(41456400318046240)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9717674682517982)
,p_button_image_alt=>unistr('I\0161valyti Filtrus')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:RR,50::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71101557418331793)
,p_name=>'P60_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(41457223158046251)
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
 p_id=>wwv_flow_imp.id(71101888107331793)
,p_name=>'P60_VIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(41457223158046251)
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
 p_id=>wwv_flow_imp.id(71102314517331794)
,p_name=>'P60_VEIHICLE_MODEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(41457223158046251)
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
 p_id=>wwv_flow_imp.id(71102747270331794)
,p_name=>'P60_VEIHICLE_BRANDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(41457223158046251)
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
 p_id=>wwv_flow_imp.id(71103169498331794)
,p_name=>'P60_CLIENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(41457223158046251)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(71103543695331795)
,p_name=>'P60_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41457223158046251)
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
wwv_flow_imp.component_end;
end;
/

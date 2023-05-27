prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_name=>unistr('Kainora\0161\010Diai')
,p_alias=>unistr('KAINORA\0160\010CIAI')
,p_step_title=>unistr('Kainora\0161\010Diai')
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function downloadFile() {',
' apex.storage.setCookie(''DOWNLOAD_STATUS'', ''In Progress'');',
' var lSpinner$ = apex.util.showSpinner();',
' checkDownloadStatus(lSpinner$);',
' apex.submit(''PRICE_LIST_MERGING'', true);',
' ',
'}',
' ',
'function checkDownloadStatus(lSpinner$) {',
' console.log(1);',
'	if (apex.storage.getCookie(''DOWNLOAD_STATUS'') == ''Complete'') {',
'                $(''#apex_wait_overlay,#apex_wait_popup'').remove();',
'                lSpinner$.remove();',
'		return;',
'	} else {',
'		setTimeout(function() { checkDownloadStatus(lSpinner$);}, 1000);',
'	}',
'}'))
,p_step_template=>wwv_flow_imp.id(9600808234517825)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230326185206'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(9437013253152977)
,p_name=>'Search Results'
,p_template=>wwv_flow_imp.id(9655019078517905)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT vpl.nid as nid',
'      ,vpl.svehicle_name as vehicle_name',
'      ,vpl.ssupplier as supplier',
'      ,vpl.sorder_type as order_type',
'      ,vpl.dtexpiration_date as expiration_date',
'      ,vpl.scustom as custom ',
'      ,vpl.sfilename as filename',
'      ,vpl.sstatus as status',
'      ,vpl.scustomstatus as customstatus',
'      ,APEX_ITEM.CHECKBOX(p_idx=>1, p_value=>vpl.nid)',
'FROM   v_price_list_info vpl'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(9677590060517929)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('Nerasta \012Fra\0161\0173')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48588291268976455)
,p_query_column_id=>1
,p_column_alias=>'NID'
,p_column_display_sequence=>101
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9439434467153004)
,p_query_column_id=>2
,p_column_alias=>'VEHICLE_NAME'
,p_column_display_sequence=>61
,p_column_heading=>unistr('Automobilio Mark\0117')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9439820411153004)
,p_query_column_id=>3
,p_column_alias=>'SUPPLIER'
,p_column_display_sequence=>41
,p_column_heading=>unistr('Tiek\0117jas')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9440224612153004)
,p_query_column_id=>4
,p_column_alias=>'ORDER_TYPE'
,p_column_display_sequence=>51
,p_column_heading=>unistr('U\017Esakymo Tipas')
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9440645188153005)
,p_query_column_id=>5
,p_column_alias=>'EXPIRATION_DATE'
,p_column_display_sequence=>71
,p_column_heading=>'Galioja Iki'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9426541835132639)
,p_query_column_id=>6
,p_column_alias=>'CUSTOM'
,p_column_display_sequence=>91
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(9440983084153005)
,p_query_column_id=>7
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>81
,p_column_heading=>'Failo Pavadinimas'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19400602077211955)
,p_query_column_id=>8
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>11
,p_column_heading=>unistr('Per\017Ei\016Br\0117ti duomenis')
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.::P46_NIMPORT_ID:#NID#'
,p_column_linktext=>unistr('<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Per\017Ei\016Br\0117ti \012Fra\0161us"></span></span>')
,p_column_alignment=>'CENTER'
,p_report_column_width=>20
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(47307494284714363)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>111
,p_column_heading=>'Statusas'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(47307180453714360)
,p_query_column_id=>9
,p_column_alias=>'CUSTOMSTATUS'
,p_column_display_sequence=>121
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(48585908817976431)
,p_query_column_id=>9
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>21
,p_column_heading=>unistr('Per\017Ei\016Br\0117ti klaidas')
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::P48_NID:#NID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_link_attr=>'#NID#'
,p_column_alignment=>'CENTER'
,p_report_column_width=>20
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(70208267222720264)
,p_query_column_id=>10
,p_column_alias=>'APEX_ITEM.CHECKBOX(P_IDX=>1,P_VALUE=>VPL.NID)'
,p_column_display_sequence=>131
,p_column_heading=>'Sujungti'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9437150598152977)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(9437013253152977)
,p_attribute_01=>'N'
,p_attribute_06=>'E'
,p_attribute_08=>'#active_facets'
,p_attribute_09=>'N'
,p_attribute_12=>'10000'
,p_attribute_13=>'Y'
,p_attribute_15=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9437959305152990)
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
 p_id=>wwv_flow_imp.id(47232109206879527)
,p_plug_name=>unistr('Kainora\0161\010Diai')
,p_icon_css_classes=>'fa-download'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9627669531517882)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70208493083720267)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9437959305152990)
,p_button_name=>'MERGE_PRICE_LISTS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('Atsi\0173sti sujungtus kainora\0161\010Dius')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9441911860159923)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9437959305152990)
,p_button_name=>'CREATE_FROM_EXCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Importuoti'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:RR,41::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(69787599251052853)
,p_branch_name=>'Go To Page 65'
,p_branch_action=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.::P65_CLIENT_ID:&P36_CLIENT_FOR_MERGING.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9426091029132635)
,p_name=>'P36_SUPPLIER_SEARCH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9437150598152977)
,p_prompt=>unistr('Tiek\0117jas')
,p_source=>'SUPPLIER'
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
 p_id=>wwv_flow_imp.id(9426250255132636)
,p_name=>'P36_EXPIRATION_DATE_SEARCH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9437150598152977)
,p_prompt=>'Galioja Iki'
,p_source=>'CUSTOM'
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
 p_id=>wwv_flow_imp.id(9426303203132637)
,p_name=>'P36_VEHICLE_NAME_SEARCH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9437150598152977)
,p_prompt=>unistr('Automobilio Mark\0117')
,p_source=>'VEHICLE_NAME'
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
 p_id=>wwv_flow_imp.id(9426407040132638)
,p_name=>'P36_ORDER_TYPE_SEARCH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9437150598152977)
,p_prompt=>unistr('U\017Esakymo Tipas')
,p_source=>'ORDER_TYPE'
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
 p_id=>wwv_flow_imp.id(47307304886714361)
,p_name=>'P36_STATUSES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9437150598152977)
,p_prompt=>'Statusai'
,p_source=>'CUSTOMSTATUS'
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
 p_id=>wwv_flow_imp.id(69788622833052863)
,p_name=>'P36_CLIENT_FOR_MERGING'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9437959305152990)
,p_prompt=>'Klientas'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select scompany_name d, nid r from v_clients_info'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70204629578720228)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P36_STOPSPINNER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69789989102052877)
,p_event_id=>wwv_flow_imp.id(70204629578720228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.FOS.SPINNER_ACTIONS'
,p_attribute_01=>'remove-spinner'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69787874041052855)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(70208493083720267)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69787745225052854)
,p_event_id=>wwv_flow_imp.id(69787874041052855)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69788080915052858)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' UPDATE v_price_list_imports set nmerge_bool = 0;',
'',
' COMMIT;',
'',
'FOR i in 1..APEX_APPLICATION.G_F01.count  ',
'LOOP  ',
'  UPDATE v_price_list_imports set nmerge_bool = 1 where nid = APEX_APPLICATION.G_F01(i);  ',
'  COMMIT;',
'END LOOP;  '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

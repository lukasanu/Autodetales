prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_name=>unistr('Antkaini\0173 grup\0117')
,p_alias=>unistr('ANTKAINI\0172-GRUP\0116')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Antkaini\0173 grup\0117')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_imp.id(9612171091517865)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'900'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230129172907'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20692004445445038)
,p_plug_name=>unistr('Antkaini\0173 grup\0117')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9626611630517882)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'V_SURCHARGE_GROUP'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22508531095416125)
,p_plug_name=>'Duomenys'
,p_parent_plug_id=>wwv_flow_imp.id(20692004445445038)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sbg.nid as ID, cm.sname as NAME, sbg.nprice as PRICE, (select ndelivery_days from v_order_types where nid = :P19_ORDERTYPE)',
'from v_VEHICLE_BRANDS cm, v_SURCHARGE_BY_GROUP sbg',
'where sbg.nSURCHARGE_GROUP_ID = :P19_GROUPNAME',
'and sbg.nORDER_TYPE_ID = :P19_ORDERTYPE',
'and cm.nID = sbg.nvehicle_brand_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P19_ORDERTYPE,P19_GROUPNAME'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Duomenys'
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
 p_id=>wwv_flow_imp.id(22923320113352610)
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
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22923494698352611)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_AUTO_COMPLETE'
,p_heading=>'Automobilis'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_is_required=>false
,p_max_length=>30
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT sname FROM v_vehicle_brands'
,p_lov_display_extra=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(22923581561352612)
,p_name=>'PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Antkainis (%)'
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
 p_id=>wwv_flow_imp.id(22974707686152004)
,p_name=>'DELETE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>unistr('I\0161trinti')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_link_target=>'javascript:void(null);'
,p_link_text=>'<span class="t-Icon fa fa-trash-o" aria-hidden="true"></span>'
,p_link_attributes=>unistr('id=''&ID.''  class="delete Button t-Button--danger t-Button--simple t-Button--small" title="I\0161trinti &NAME."')
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(71909870547685155)
,p_name=>'DELIVERY_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'(SELECTNDELIVERY_DAYSFROMV_ORDER_TYPESWHERENID=:P19_ORDERTYPE)'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pristatymo Laikas'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(22923257143352609)
,p_internal_uid=>22923257143352609
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_no_data_found_message=>unistr('N\0117ra \012Fra\0161\0173 atitinkan\010Di\0173 u\017Eklaus\0105.')
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>true
,p_public_report_auth_scheme=>wwv_flow_imp.id(9744433076518115)
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
 p_id=>wwv_flow_imp.id(22953097690513534)
,p_interactive_grid_id=>wwv_flow_imp.id(22923257143352609)
,p_static_id=>'229531'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(22953241383513534)
,p_report_id=>wwv_flow_imp.id(22953097690513534)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22953730613513536)
,p_view_id=>wwv_flow_imp.id(22953241383513534)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(22923320113352610)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22954685398513540)
,p_view_id=>wwv_flow_imp.id(22953241383513534)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(22923494698352611)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22955557731513543)
,p_view_id=>wwv_flow_imp.id(22953241383513534)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(22923581561352612)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(22981050248230195)
,p_view_id=>wwv_flow_imp.id(22953241383513534)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(22974707686152004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(71892201812306311)
,p_view_id=>wwv_flow_imp.id(22953241383513534)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(71909870547685155)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20693720389445040)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9629970051517884)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21430458373821134)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(20692004445445038)
,p_button_name=>'INCREASE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'+ 1%'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>9
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21430524729821135)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(20692004445445038)
,p_button_name=>'DECREASE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'- 1%'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22976731448152024)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(22508531095416125)
,p_button_name=>'INSERT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Sukurti \012Fra\0161\0105')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23017613824213144)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(22508531095416125)
,p_button_name=>'APPLYFORALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pritaikyti visiems'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(20694182556445040)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(20693720389445040)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(23015360493213121)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20693720389445040)
,p_button_name=>'ISSAUGOTI'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161saugoti')
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17812797544578246)
,p_name=>'P19_FLAG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(22508531095416125)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20692711252445039)
,p_name=>'P19_GROUPNAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20692004445445038)
,p_prompt=>'Pavadinimas'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'sname d, nid r',
'FROM v_surcharge_group',
'WHERE nid > 0 '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22508231241416122)
,p_name=>'P19_ORDERTYPE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20692004445445038)
,p_prompt=>unistr('U\017Esakymo tipas')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'ot.sname || '' ('' || c.sCOMPANY_NAME || '') '' || ',
'    (SELECT COUNT(*) FROM v_surcharge_by_group ',
'    WHERE nsurcharge_group_id = :P19_GROUPNAME  ',
'    AND norder_type_id = ot.nid) d, ',
'ot.nid r',
'FROM  v_order_types ot, v_companies c',
'WHERE c.nid = ot.nsupplier_id',
'ORDER BY c.scompany_name DESC;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_lov_cascade_parent_items=>'P19_GROUPNAME'
,p_ajax_items_to_submit=>'P19_GROUPNAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22976628950152023)
,p_name=>'P19_INSERT_CAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(22508531095416125)
,p_prompt=>unistr('Automobilio mark\0117')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'sname d, nid r ',
'FROM v_vehicle_brands ',
'ORDER BY sname ASC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22976833976152025)
,p_name=>'P19_INSERT_SURCHARGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(22508531095416125)
,p_prompt=>'Antkainis (%)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23013895120213106)
,p_name=>'P19_ROW_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(22508531095416125)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23017586119213143)
,p_name=>'P19_APPLY_FOR_ALL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(22508531095416125)
,p_prompt=>'Antkainis (%)'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47499377497967375)
,p_name=>'P19_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20692004445445038)
,p_item_source_plug_id=>wwv_flow_imp.id(20692004445445038)
,p_source=>'NID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20694268667445040)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(20694182556445040)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20695063387445041)
,p_event_id=>wwv_flow_imp.id(20694268667445040)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22509511275416135)
,p_name=>'Refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P19_ORDERTYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22509621484416136)
,p_event_id=>wwv_flow_imp.id(22509511275416135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22508531095416125)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22974994207152006)
,p_name=>'Interactive Grid Row Delete'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.delete'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22975009863152007)
,p_event_id=>wwv_flow_imp.id(22974994207152006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161trinti \012Fra\0161\0105?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22975130046152008)
,p_event_id=>wwv_flow_imp.id(22974994207152006)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_ROW_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22975265597152009)
,p_event_id=>wwv_flow_imp.id(22974994207152006)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE ',
'FROM v_surcharge_by_group ',
'WHERE id = :P19_ROW_ID;'))
,p_attribute_02=>'P19_ROW_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22975363160152010)
,p_event_id=>wwv_flow_imp.id(22974994207152006)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22508531095416125)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22976918882152026)
,p_name=>'Insert'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22976731448152024)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22977019699152027)
,p_event_id=>wwv_flow_imp.id(22976918882152026)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    n_count   NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO   n_count',
'    FROM   v_surcharge_by_group',
'    WHERE  nvehicle_brand_id = :p19_insert_car',
'    AND    nsurcharge_group_id = :p19_groupname',
'    AND    norder_type_id = :p19_ordertype;',
'',
'    IF n_count > 0 OR :p19_insert_car IS NULL OR :p19_insert_surcharge IS NULL THEN',
'        :p19_flag := 1;',
'    ELSE',
'        :p19_flag := 0;',
'',
'        INSERT INTO v_surcharge_by_group(nvehicle_brand_id',
'                                      ,norder_type_id',
'                                      ,nsurcharge_group_id',
'                                      ,nprice)',
'        VALUES      ( :p19_insert_car',
'                    , :p19_ordertype',
'                    , :p19_groupname',
'                    , :p19_insert_surcharge);',
'    END IF;',
'END;'))
,p_attribute_02=>'P19_INSERT_CAR,P19_INSERT_SURCHARGE,P19_GROUPNAME,P19_ORDERTYPE'
,p_attribute_03=>'P19_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17812118145578239)
,p_event_id=>wwv_flow_imp.id(22976918882152026)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Automobilis jau egzistuoja arba duomenys \012Fvesti neteisingai!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P19_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23014953605213117)
,p_event_id=>wwv_flow_imp.id(22976918882152026)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_INSERT_CAR,P19_INSERT_SURCHARGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17812210362578240)
,p_event_id=>wwv_flow_imp.id(22976918882152026)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22508531095416125)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P19_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23014620273213114)
,p_name=>'Refresh 1'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P19_GROUPNAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23014865429213116)
,p_event_id=>wwv_flow_imp.id(23014620273213114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22508531095416125)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21430641146821136)
,p_name=>'Add 1%'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21430458373821134)
,p_condition_element=>'P19_GROUPNAME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21430719115821137)
,p_event_id=>wwv_flow_imp.id(21430641146821136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite prid\0117ti 1% prie vis\0173 grup\0117s antkaini\0173?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21431167838821141)
,p_event_id=>wwv_flow_imp.id(21430641146821136)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE v_surcharge_by_group',
'SET nprice = nprice + 1',
'WHERE nsurcharge_group_id = :P19_GROUPNAME;'))
,p_attribute_02=>'P19_GROUPNAME'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21431245056821142)
,p_event_id=>wwv_flow_imp.id(21430641146821136)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22508531095416125)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21430934520821139)
,p_name=>'Subtract 1%'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21430524729821135)
,p_condition_element=>'P19_GROUPNAME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21431038090821140)
,p_event_id=>wwv_flow_imp.id(21430934520821139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite antimti 1% nuo vis\0173 grup\0117s antkaini\0173?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21431453036821144)
,p_event_id=>wwv_flow_imp.id(21430934520821139)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE v_surcharge_by_group',
'SET nprice = nprice - 1',
'WHERE nsurcharge_group_id = :P19_GROUPNAME;'))
,p_attribute_02=>'P19_GROUPNAME'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21431381599821143)
,p_event_id=>wwv_flow_imp.id(21430934520821139)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22508531095416125)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(23017771708213145)
,p_name=>'Apply for all'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(23017613824213144)
,p_condition_element=>'P19_APPLY_FOR_ALL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23017818631213146)
,p_event_id=>wwv_flow_imp.id(23017771708213145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite pritaikyti vert\0119 visiems grup\0117s antkainiams?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23017983542213147)
,p_event_id=>wwv_flow_imp.id(23017771708213145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE v_surcharge_by_group',
'SET nprice = :P19_APPLY_FOR_ALL',
'WHERE nsurcharge_group_id = :P19_GROUPNAME;',
''))
,p_attribute_02=>'P19_GROUPNAME,P19_APPLY_FOR_ALL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23018159373213149)
,p_event_id=>wwv_flow_imp.id(23017771708213145)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_APPLY_FOR_ALL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(23018043930213148)
,p_event_id=>wwv_flow_imp.id(23017771708213145)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(22508531095416125)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20697321788445043)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(20692004445445038)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form Antkaini\0173 Grup\0117')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20697752049445043)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(23015231939213120)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(22508531095416125)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Duomenys - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'     case :APEX$ROW_STATUS',
'     when ''U'' then',
'         UPDATE v_surcharge_by_group',
'            SET nprice = :PRICE,',
'            nvehicle_brand_id = (SELECT nid FROM v_vehicle_brands WHERE sname = :NAME)',
'            WHERE nid = :ID;',
'end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(23015360493213121)
,p_process_success_message=>unistr('Pakeitimai i\0161saugoti!')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20696962284445043)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(20692004445445038)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Antkaini\0173 Grup\0117')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

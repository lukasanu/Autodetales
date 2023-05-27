prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_name=>unistr('Kainora\0161tis')
,p_alias=>unistr('KAINORA\0160TIS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Kainora\0161tis')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230129165811'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19400480990211954)
,p_plug_name=>'Duomenys'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  sname, ',
'        scode,      ',
'        TO_CHAR(ROUND(nprice, 2) ,''FM999999999999990D00'') price ',
'from v_storage_suppliers_parts ssp, v_price_list_imports pli',
'where pli.NID = :P46_NIMPORT_ID',
'and pli.NCAR_ID = ssp.ncar_id',
'and pli.NSUPPLIER_ID = ssp.NSUPPLIER_ID',
'and pli.NORDER_TYPE_ID = ssp.NORDER_TYPE_ID',
'and (pli.napproved = 1 or pli.NIMPORT_STARTED = 1) ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P46_NIMPORT_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(19398728521211937)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>unistr('\012Era\0161\0173 dar n\0117ra, jei kainora\0161tis buvo priimtas, gali tekti luktelti, kol visi duomenys susimportuos!')
,p_search_button_label=>unistr('Ie\0161koti')
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEV'
,p_internal_uid=>12351895190480641
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48586343544976436)
,p_db_column_name=>'SNAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Detal\0117s pavadinimas')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(48586328233976435)
,p_db_column_name=>'SCODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Detal\0117s kodas')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(19398513669211934)
,p_db_column_name=>'PRICE'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Kaina'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(17860542551412100)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'138901'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRICE:SNAME:SCODE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(47527700709367531)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19400480990211954)
,p_button_name=>'Delete_price_list'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--danger:t-Button--stretch:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161trinti kainora\0161t\012F')
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47527803690367532)
,p_name=>'P46_IMPORTED_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19400480990211954)
,p_prompt=>unistr('Importuot\0173 dali\0173 kiekis')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  count(*)',
'from v_storage_suppliers_parts ssp, v_price_list_imports pli',
'where pli.NID = :P46_NIMPORT_ID',
'and pli.NCAR_ID = ssp.ncar_id',
'and pli.NSUPPLIER_ID = ssp.NSUPPLIER_ID',
'and pli.NORDER_TYPE_ID = ssp.NORDER_TYPE_ID',
'and (pli.napproved = 1 or pli.NIMPORT_STARTED = 1)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(48586230492976434)
,p_name=>'P46_NIMPORT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19400480990211954)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47527477525367529)
,p_name=>'Delete'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(47527700709367531)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47527361582367528)
,p_event_id=>wwv_flow_imp.id(47527477525367529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar j\016Bs tikrai norite pa\0161alinti \0161\012F kainora\0161t\012F ir i\0161trinti visas jo detales i\0161 duomen\0173 baz\0117s?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47527322662367527)
,p_event_id=>wwv_flow_imp.id(47527477525367529)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'il_car_id NUMBER;',
'il_supplier_id NUMBER;',
'il_order_type_id NUMBER;',
'BEGIN',
'    SELECT ncar_id, nsupplier_id, norder_type_id',
'    into il_car_id,il_supplier_id,il_order_type_id',
'    from v_price_list_imports',
'    where nid = :P46_NIMPORT_ID;',
'',
'DELETE FROM v_STORAGE_SUPPLIERS_PARTS WHERE ncar_id = il_car_id and nsupplier_id = il_supplier_id and norder_type_id = il_order_type_id;',
'DELETE FROM v_SUPPLIERS_PARTS_LOG WHERE nimport_id = :P46_NIMPORT_ID;',
'DELETE FROM v_PRICE_LIST_IMPORTS WHERE nid = :P46_NIMPORT_ID;',
'',
'END;'))
,p_attribute_02=>'P46_NIMPORT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70357208894077347)
,p_event_id=>wwv_flow_imp.id(47527477525367529)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Gali tekti \0161iek tiek palaukti, nes \0161iuo metu yra i\0161trinamas didelis duomen\0173 kiekis!')
,p_attribute_03=>'information'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47308753080714376)
,p_event_id=>wwv_flow_imp.id(47527477525367529)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:36:&APP_SESSION.::NO:RP::");'
);
wwv_flow_imp.component_end;
end;
/

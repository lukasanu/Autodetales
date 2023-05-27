prompt --application/pages/page_00064
begin
--   Manifest
--     PAGE: 00064
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
 p_id=>64
,p_name=>unistr('U\017Esakymo detal\0117s redagavimas')
,p_alias=>unistr('U\017DSAKYMO-DETAL\0116S-REDAGAVIMAS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('U\017Esakymo detal\0117s redagavimas')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230412164803'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69694463238686026)
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
 p_id=>wwv_flow_imp.id(69702540380686034)
,p_plug_name=>unistr('U\017Esakymo detal\0117s redagavimas')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9626611630517882)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select * from v_order_details'
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(69786790737052845)
,p_plug_name=>'Pasikeitimai'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NID,',
'       NPART_ID,',
'       SCOMMENT,',
'       DTCREATED_AT,',
unistr('       decode(ntype,1,''Pasikeit\0117 kodas'',2,''Pasikeit\0117 kaina'',3,''V\0117lavimas'',4,''Papildomas komentaras'') as changes'),
'  from V_ORDER_DETAILS_CHANGES',
' where npart_id = :P64_NID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P64_NID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pasikeitimai'
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
 p_id=>wwv_flow_imp.id(69608105701247057)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LAN'
,p_internal_uid=>5341570490997821
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69608063233247056)
,p_db_column_name=>'NID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69607899256247055)
,p_db_column_name=>'NPART_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Npart Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69607518006247051)
,p_db_column_name=>'CHANGES'
,p_display_order=>30
,p_column_identifier=>'F'
,p_column_label=>'Pokytis'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69607840834247054)
,p_db_column_name=>'SCOMMENT'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>unistr('Poky\010Dio komentaras')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(69607744583247053)
,p_db_column_name=>'DTCREATED_AT'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Data'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(69590641625088086)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'53591'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CHANGES:SCOMMENT:DTCREATED_AT:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69694049441686025)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(69694463238686026)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69692208671686024)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(69694463238686026)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161saugoti')
,p_button_position=>'NEXT'
,p_button_condition=>':P64_NID is not null and (SELECT NSTATUS_ID FROM V_ORDERS WHERE NID = :P64_ORDER_ID) != 11'
,p_button_condition2=>'SQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(69606499482247041)
,p_branch_action=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.::P57_ID:&P64_ORDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69173822544820874)
,p_name=>'P64_NADDITIONAL_COMMENT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_prompt=>'Papildomas komentaras'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>250
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69173917463820875)
,p_name=>'P64_NCOMMENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Papildomas komentaras'
,p_source=>'NADDITIONAL_COMMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69609064905247066)
,p_name=>'P64_ORDER_ID'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69700544466686029)
,p_name=>'P64_NPRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_item_source_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_prompt=>'Kaina'
,p_source=>'NPRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69701280765686029)
,p_name=>'P64_SPART_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_item_source_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_prompt=>unistr('Detal\0117s kodas')
,p_source=>'SPART_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69702089823686032)
,p_name=>'P64_NID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_item_source_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_source=>'NID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69785316743052830)
,p_name=>'P64_NSHIPMENT_DELAY_COMMENT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_prompt=>unistr('Detal\0117s v\0117lavimo komentaras')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>250
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69785454596052831)
,p_name=>'P64_NCODE_CHANGED_COMMENT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_prompt=>'Kodo pasikeitimo komentaras'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>250
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69785573322052832)
,p_name=>'P64_NPRICE_CHANGED_COMMENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_prompt=>'Kainos pasikeitimo komentaras'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>250
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69785666046052833)
,p_name=>'P64_NSHIPMENT_DELAYED'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('V\0117luoja')
,p_source=>'NSHIPMENT_DELAYED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69785701646052834)
,p_name=>'P64_NCODE_CHANGED'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Pasikeit\0117 kodas')
,p_source=>'NCODE_CHANGED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69785860884052835)
,p_name=>'P64_NPRICE_CHANGED'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(69702540380686034)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Pasikeit\0117 kaina')
,p_source=>'NPRICE_CHANGED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'1'
,p_attribute_03=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69693932041686025)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(69694049441686025)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69693114275686024)
,p_event_id=>wwv_flow_imp.id(69693932041686025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69785188026052829)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_NPRICE_CHANGED'
,p_condition_element=>'P64_NPRICE_CHANGED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69610089163247077)
,p_event_id=>wwv_flow_imp.id(69785188026052829)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_NPRICE_CHANGED_COMMENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69785087773052828)
,p_event_id=>wwv_flow_imp.id(69785188026052829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_NPRICE_CHANGED_COMMENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69609915036247075)
,p_name=>'New_1'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_NCODE_CHANGED'
,p_condition_element=>'P64_NCODE_CHANGED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69609569986247071)
,p_event_id=>wwv_flow_imp.id(69609915036247075)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_NCODE_CHANGED_COMMENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69609870531247074)
,p_event_id=>wwv_flow_imp.id(69609915036247075)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_NCODE_CHANGED_COMMENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69609744081247073)
,p_name=>'New_2'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_NSHIPMENT_DELAYED'
,p_condition_element=>'P64_NSHIPMENT_DELAYED'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69609381618247070)
,p_event_id=>wwv_flow_imp.id(69609744081247073)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_NSHIPMENT_DELAY_COMMENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69609627795247072)
,p_event_id=>wwv_flow_imp.id(69609744081247073)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_NSHIPMENT_DELAY_COMMENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69608784309247064)
,p_name=>'New_3'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_SPART_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69608703139247063)
,p_event_id=>wwv_flow_imp.id(69608784309247064)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_NCODE_CHANGED'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69608598354247062)
,p_name=>'New_4'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_NPRICE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69608561833247061)
,p_event_id=>wwv_flow_imp.id(69608598354247062)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_NPRICE_CHANGED'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69173693613820873)
,p_name=>'New_5'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_NCOMMENT'
,p_condition_element=>'P64_NCOMMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69173570089820871)
,p_event_id=>wwv_flow_imp.id(69173693613820873)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_NADDITIONAL_COMMENT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69173626984820872)
,p_event_id=>wwv_flow_imp.id(69173693613820873)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_NADDITIONAL_COMMENT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69691399079686022)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(69702540380686034)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form U\017Esakymo detal\0117s redagavimas')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69608290049247059)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    nprice_before   NUMBER;',
'    scode_before    VARCHAR2(254);',
'BEGIN',
'    SELECT spart_code',
'          ,nprice',
'    INTO   scode_before',
'          ,nprice_before',
'    FROM   v_order_details',
'    WHERE  nid = :p64_nid;',
'',
'    IF TRIM(scode_before) != :P64_SPART_CODE THEN',
'        UPDATE v_order_details',
'        SET    spart_code = :P64_SPART_CODE',
'              ,NCODE_CHANGED = 1',
'        WHERE NID = :P64_NID;',
'        ',
'        INSERT INTO V_ORDER_DETAILS_CHANGES (NPART_ID, SCOMMENT, NTYPE) VALUES (:P64_NID, NVL(:P64_NCODE_CHANGED_COMMENT, scode_before || ''=>'' || :P64_SPART_CODE), 1);',
'        COMMIT;',
'    END IF;',
'',
'    IF nprice_before != :P64_NPRICE THEN',
'        UPDATE v_order_details',
'        SET    nprice = :P64_NPRICE',
'              ,NPRICE_CHANGED = 1',
'        WHERE NID = :P64_NID;',
'        ',
'        INSERT INTO V_ORDER_DETAILS_CHANGES (NPART_ID, SCOMMENT, NTYPE) VALUES (:P64_NID, NVL(:P64_NPRICE_CHANGED_COMMENT, nprice_before || ''=>'' || :P64_NPRICE), 2);',
'        COMMIT;',
'    END IF;',
'',
'    IF :P64_NSHIPMENT_DELAYED = 1 THEN',
'        UPDATE v_order_details',
'        SET    NSHIPMENT_DELAYED = 1',
'        WHERE NID = :P64_NID;',
'        ',
unistr('        INSERT INTO V_ORDER_DETAILS_CHANGES (NPART_ID, SCOMMENT, NTYPE) VALUES (:P64_NID, NVL(:P64_NSHIPMENT_DELAY_COMMENT, ''V\0117luoja''), 3);'),
'        COMMIT;',
'    END IF;',
'',
'    IF :P64_NCOMMENT = 1 THEN',
'        UPDATE v_order_details',
'        SET    NADDITIONAL_COMMENT = 1',
'        WHERE NID = :P64_NID;',
'        ',
'        INSERT INTO V_ORDER_DETAILS_CHANGES (NPART_ID, SCOMMENT, NTYPE) VALUES (:P64_NID, NVL(:P64_NADDITIONAL_COMMENT,''abc''), 4);',
'        COMMIT;',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>unistr('Ka\017Ekas negerai, patikrinkite duomenis!')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(69692208671686024)
,p_process_success_message=>unistr('I\0161saugota!')
);
wwv_flow_imp.component_end;
end;
/

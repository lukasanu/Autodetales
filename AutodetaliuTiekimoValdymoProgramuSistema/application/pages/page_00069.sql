prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_name=>unistr('Perteklin\0117 detal\0117')
,p_alias=>unistr('PERTEKLIN\0116-DETAL\0116')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Perteklin\0117 detal\0117')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function readURL(input) { ',
'       if (input.files &&    ',
'           input.files[0] &&      ',
'             input.files[0].type.match(''image.*'')) {',
'                         var reader = new FileReader();      ',
'                           reader.onload = function (e) {           ',
'                                $(''#P26_IMAGE'').attr(''src'', e.target.result);        }   ',
'                                     try {            reader.readAsDataURL(input.files[0]);        }   ',
'                                          catch(err) {            alert("error: " + err.message);        }     }}',
'                                          $("#P26_FILEBROWSER").change(function(){    readURL(this);});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img{',
'  display: block;',
'  margin-left: auto;',
'  margin-right: auto;',
'  width: 50%;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230428101506'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8477705308085677)
,p_plug_name=>unistr('Perteklin\0117 detal\0117')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT nid as nid',
'      ,spart_code as spart_code',
'      ,svehicle_brand as svehicle_brand',
'      ,nqnt as nqnt',
'      ,ncar_id as ncar_id',
'      ,REPLACE(nprice,'','',''.'') as nprice',
'      ,scomment as scomment',
'      ,nstatus_id as nstatus_id',
'      ,nis_accounted as nis_accounted',
'      ,dtcreated_at as dtcreated_at',
'FROM   v_oversupplied_parts_info',
'WHERE NID = :P69_NID'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P69_NID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68969634763747569)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161saugoti')
,p_button_position=>'CHANGE'
,p_button_condition=>'P69_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68969247050747569)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(69170807272820844)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_button_name=>'MOVE_TO_STORAGE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Perkelti \012F sand\0117l\012F')
,p_button_position=>'DELETE'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.::P73_OBJECTCODE,P73_VEHICLEBRAND,P73_QUANTITY,P73_OVERSUPPLIER_PART_ID,P73_PRICE,P73_REMARK:&P69_SPART_CODE.,&P69_NCAR_ID.,&P69_NQNT.,&P69_NID.,&P69_NPRICE.,&P69_SCOMMENT.'
,p_button_condition=>':P69_NID is not null and :P69_NSTATUS_ID = 26'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68968376234747568)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161trinti')
,p_button_position=>'HELP'
,p_button_execute_validations=>'N'
,p_button_condition=>'P69_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(68953668622747556)
,p_branch_action=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68731962308615748)
,p_name=>'P69_NIS_ACCOUNTED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_item_source_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_prompt=>unistr('N\0117ra s\0105skaitoje')
,p_source=>'NIS_ACCOUNTED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'0'
,p_attribute_03=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69120054404959445)
,p_name=>'P69_NSTATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_item_source_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_prompt=>'Statusas'
,p_source=>'NSTATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT sname d, nid r from v_statuses where ntype = 4 order by nid asc'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69171067087820846)
,p_name=>'P69_DTCREATED_AT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_item_source_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_source=>'DTCREATED_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69171222731820848)
,p_name=>'P69_SCOMMENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_item_source_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_prompt=>'Komentaras'
,p_source=>'SCOMMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>254
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69171318668820849)
,p_name=>'P69_NPRICE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_item_source_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_prompt=>'Kaina'
,p_source=>'NPRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>11
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69171445718820850)
,p_name=>'P69_NCAR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_item_source_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_source=>'NCAR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69171509319820851)
,p_name=>'P69_NQNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_item_source_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_prompt=>'Kiekis'
,p_source=>'NQNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69171653161820852)
,p_name=>'P69_SVEHICLE_BRAND'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_item_source_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_prompt=>unistr('Automobilio mark\0117')
,p_source=>'SVEHICLE_BRAND'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69171755647820853)
,p_name=>'P69_SPART_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_item_source_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_prompt=>unistr('Detal\0117s kodas')
,p_source=>'SPART_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69171776980820854)
,p_name=>'P69_NID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_item_source_plug_id=>wwv_flow_imp.id(8477705308085677)
,p_source=>'NID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68955486374747558)
,p_name=>'Show Image'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P69_FILEBROWSER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68955007477747557)
,p_event_id=>wwv_flow_imp.id(68955486374747558)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$x_Show("P69_IMAGE");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68954579636747557)
,p_name=>'Hide Image'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68954150213747557)
,p_event_id=>wwv_flow_imp.id(68954579636747557)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$x_Hide("P69_IMAGE");'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68957121481747560)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8477705308085677)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Perteklius(Edit)'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68956692616747559)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    update V_OVERSUPPLIED_PARTS',
'    set nprice = :P69_NPRICE ',
'       ,scomment = :P69_SCOMMENT',
'       ,nstatus_id = :P69_NSTATUS_ID',
'       ,nis_accounted = :P69_NIS_ACCOUNTED',
'    where nid = :P69_NID;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Klaida'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(68969634763747569)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68955898429747558)
,p_process_sequence=>30
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from V_OVERSUPPLIED_PARTS',
'where nid  = :P69_NID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(68968376234747568)
);
wwv_flow_imp.component_end;
end;
/

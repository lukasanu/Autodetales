prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_name=>unistr('Importuoti i\0161 Excel')
,p_alias=>unistr('KURTI-I\0160-EXCEL')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Importuoti i\0161 excel')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230509132326'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(47026296579289787)
,p_plug_name=>unistr('Pasirinkite fail\0105')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_display_column=>2
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29026267826727238)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(47026296579289787)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17813141194578250)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(47026296579289787)
,p_button_name=>'RESET'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161valyti')
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(29427377897186577)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(47026296579289787)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7847184444434058)
,p_name=>'P41_SUPPLIER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(47026296579289787)
,p_prompt=>unistr('Tiek\0117jas')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   scompany_name     d',
'        ,nid               r',
'FROM     v_companies',
'WHERE    nTYPE = 1',
'ORDER BY TRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(scompany_name',
'                                                     ,''"''',
'                                                     ,'''')',
unistr('                                             ,''\201C'''),
'                                             ,'''')',
unistr('                                     ,''\201D'''),
'                                     ,'''')',
unistr('                             ,''\201E'''),
'                             ,'''')',
'                     ,''  ''',
'                     ,'' ''));'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti - '
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7847356751434059)
,p_name=>'P41_ORDER_TYPE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(47026296579289787)
,p_prompt=>unistr('U\017Esakymo Tipas')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select sname d, nid r from v_order_types where nsupplier_id = :P41_SUPPLIER_ID order by sname;'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_lov_cascade_parent_items=>'P41_SUPPLIER_ID'
,p_ajax_items_to_submit=>'P41_SUPPLIER_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9174339610081432)
,p_name=>'P41_EXPIRATION_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(47026296579289787)
,p_prompt=>'Galiojimo data'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29025427451727230)
,p_name=>'P41_CARID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(47026296579289787)
,p_prompt=>unistr('Automobilio Mark\0117')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select sname d, nid r from v_vehicle_brands order by sname;'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29427789411186582)
,p_name=>'P41_FILE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(47026296579289787)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Failas'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_colspan=>12
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
,p_attribute_13=>'Pasirinkti'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(29428198050186583)
,p_name=>'P41_FILE_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(47026296579289787)
,p_prompt=>'Failo pavadinimas'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45474354823135769)
,p_name=>'P41_CURRENCY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(47026296579289787)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48588199805976454)
,p_name=>'Cancel dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29026267826727238)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48588084006976453)
,p_event_id=>wwv_flow_imp.id(48588199805976454)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(47026296579289787)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47530391645367558)
,p_event_id=>wwv_flow_imp.id(48588199805976454)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM apex_application_temp_files',
'WHERE       id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48587946306976452)
,p_event_id=>wwv_flow_imp.id(48588199805976454)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:36:&APP_SESSION.::NO:RP::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48587860582976451)
,p_name=>'Reset'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(17813141194578250)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48587792532976450)
,p_event_id=>wwv_flow_imp.id(48587860582976451)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE FROM apex_application_temp_files',
'WHERE       id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48587730264976449)
,p_event_id=>wwv_flow_imp.id(48587860582976451)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_SUPPLIER_ID,P41_ORDER_TYPE_ID,P41_CARID,P41_FILE,P41_FILE_NAME,P41_EXPIRATION_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48587567051976448)
,p_name=>'Create'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29427377897186577)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P41_ORDER_TYPE_ID IS NOT NULL AND :P41_SUPPLIER_ID IS NOT NULL AND :P41_CARID IS NOT NULL'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45473995475135765)
,p_event_id=>wwv_flow_imp.id(48587567051976448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Palaukite kol bus atliktas kit\0173 kainora\0161\010Di\0173 \012Fk\0117limas arba tikrinimas!')
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>'Select 1 from v_price_list_imports where (napproved is null and nhaserrors is null and nimport_started = 0) or (napproved is null and nhaserrors = 0 and nimport_started = 1)'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45474100705135766)
,p_event_id=>wwv_flow_imp.id(48587567051976448)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>'Select 1 from v_price_list_imports where (napproved is null and nhaserrors is null and nimport_started = 0) or (napproved is null and nhaserrors = 0 and nimport_started = 1)'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48587331158976445)
,p_event_id=>wwv_flow_imp.id(48587567051976448)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_job VARCHAR2(4000);',
'BEGIN',
'    l_job := dbms_scheduler.generate_job_name(prefix => ''PARSE_PRICE_LIST'');',
'    dbms_scheduler.create_job(job_name              => l_job',
'                             ,job_type              => ''STORED_PROCEDURE''',
'                             ,job_action            => ''price_list_parser.parse_data''',
'                             ,number_of_arguments   => 8',
'                             ,comments              => ''Wess is going to be checked''',
'                             ,enabled               => FALSE',
'                             ,auto_drop             => FALSE);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 1',
'                                         ,argument_value      => :P41_FILE_NAME);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 2',
'                                         ,argument_value      => :P41_CARID);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 3',
'                                         ,argument_value      => :P41_ORDER_TYPE_ID);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 4',
'                                         ,argument_value      => :P41_SUPPLIER_ID);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 5',
'                                         ,argument_value      => :P41_EXPIRATION_DATE);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 6',
'                                         ,argument_value      => 0);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 7',
'                                         ,argument_value      => 0);',
'    dbms_scheduler.set_job_argument_value(job_name            => l_job',
'                                         ,argument_position   => 8',
'                                         ,argument_value      => 0);',
'    ',
'    DBMS_SCHEDULER.RUN_JOB(',
'    JOB_NAME            => l_job,',
'    USE_CURRENT_SESSION => TRUE);',
'END;'))
,p_attribute_02=>'P41_SUPPLIER_ID,P41_ORDER_TYPE_ID,P41_CARID,P41_FILE,P41_FILE_NAME,P41_EXPIRATION_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47308289962714371)
,p_event_id=>wwv_flow_imp.id(48587567051976448)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Duomenys importuojasi,\0161is langas u\017Esidarys ir gali tekti \0161iek tiek palaukti!')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47307977279714368)
,p_event_id=>wwv_flow_imp.id(48587567051976448)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(48587016386976442)
,p_name=>'Get file name'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_FILE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48586918032976441)
,p_event_id=>wwv_flow_imp.id(48587016386976442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48586800707976440)
,p_event_id=>wwv_flow_imp.id(48587016386976442)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_FILE_NAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(48586650543976439)
,p_event_id=>wwv_flow_imp.id(48587016386976442)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_FILE_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select filename from apex_application_temp_files wwv where wwv.filename like ''%.xlsx'' or wwv.filename like ''%.csv'' and wwv.id not in(select nvl(nfile_id,0) from v_price_list_imports)'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(47530532810367560)
,p_name=>'Check'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_FILE_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47530476645367559)
,p_event_id=>wwv_flow_imp.id(47530532810367560)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_FILE'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P41_FILE_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70356737781077342)
,p_name=>'New'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(29427377897186577)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':P41_ORDER_TYPE_ID IS NULL AND :P41_SUPPLIER_ID IS NULL AND :P41_CARID IS NULL AND :P41_FILE IS NULL'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70356548867077340)
,p_event_id=>wwv_flow_imp.id(70356737781077342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Palaukite kol susimportuos kiti kainora\0161\010Diai, o jeigu jie jau susiimportavo, paspauskite "I\0161valyti" mygtuk\0105 ir prad\0117kite importavim\0105 i\0161 naujo!')
,p_attribute_03=>'information'
);
wwv_flow_imp.component_end;
end;
/

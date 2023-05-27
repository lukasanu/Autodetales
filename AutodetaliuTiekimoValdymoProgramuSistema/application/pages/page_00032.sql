prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_name=>'Specifinis Antkainis'
,p_alias=>'SPECIFINIS-ANTKAINIS'
,p_page_mode=>'MODAL'
,p_step_title=>'Specifiniai Antkainis'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'LAN'
,p_last_upd_yyyymmddhh24miss=>'20230201191226'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21296703521610508)
,p_plug_name=>'Antkainis'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9626611630517882)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'V_SURCHARGES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21300519389610520)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9629970051517884)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21300942795610520)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21300519389610520)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21302562623610523)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(21300519389610520)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161trinti')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P32_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21302905672610524)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(21300519389610520)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161saugoti')
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P32_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(21303285288610524)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(21300519389610520)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P32_NID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21297054999610509)
,p_name=>'P32_NID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21296703521610508)
,p_item_source_plug_id=>wwv_flow_imp.id(21296703521610508)
,p_source=>'NID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21297847207610517)
,p_name=>'P32_NORDER_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21296703521610508)
,p_item_source_plug_id=>wwv_flow_imp.id(21296703521610508)
,p_prompt=>unistr('U\017Esakymo Tipas')
,p_source=>'NORDER_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT o.sname || '' ('' || c.scompany_name || '')'' d, o.nid r',
'FROM  v_order_types o, v_companies c',
'where c.nid = o.nsupplier_id',
'order by d'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21298236760610517)
,p_name=>'P32_NVALUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21296703521610508)
,p_item_source_plug_id=>wwv_flow_imp.id(21296703521610508)
,p_prompt=>'Antkainis (%)'
,p_source=>'NPRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_02=>'100'
,p_attribute_03=>'left'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(21298694294610517)
,p_name=>'P32_NCLIENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21296703521610508)
,p_item_source_plug_id=>wwv_flow_imp.id(21296703521610508)
,p_prompt=>'Klientas'
,p_source=>'NCLIENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT scompany_name d, nid r',
'FROM v_clients_info ',
unistr('ORDER BY TRIM(replace(replace(replace(replace(replace(scompany_name,''"'',''''),''\201C'',''''),''\201D'',''''),''\201E'',''''), ''  '', '' ''))')))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47497840942967360)
,p_name=>'P32_FLAG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21296703521610508)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(47498206116967363)
,p_name=>'P32_NVEHICLE_BRAND_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21296703521610508)
,p_item_source_plug_id=>wwv_flow_imp.id(21296703521610508)
,p_prompt=>unistr('Automobilio Mark\0117')
,p_source=>'NVEHICLE_BRAND_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT sname d, nid r ',
'FROM v_vehicle_brands',
'ORDER BY sname'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(21301005058610520)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21300942795610520)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(21301866501610522)
,p_event_id=>wwv_flow_imp.id(21301005058610520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21296703521610508)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9238359344843364)
,p_event_id=>wwv_flow_imp.id(21301005058610520)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:31:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9238438965843365)
,p_name=>'Delete'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21302562623610523)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9238866212843369)
,p_event_id=>wwv_flow_imp.id(9238438965843365)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161trinti \012Fra\0161\0105?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9238953493843370)
,p_event_id=>wwv_flow_imp.id(9238438965843365)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE',
'FROM v_surcharges ',
'WHERE nid = :P32_NID;'))
,p_attribute_02=>'P32_NID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9238589083843367)
,p_event_id=>wwv_flow_imp.id(9238438965843365)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21296703521610508)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9238702901843368)
,p_event_id=>wwv_flow_imp.id(9238438965843365)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:31:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9239022727843371)
,p_name=>'Update'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21302905672610524)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9264433795023124)
,p_event_id=>wwv_flow_imp.id(9239022727843371)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P32_NCLIENT_ID IS NULL OR :P32_NORDER_TYPE_ID IS NULL OR :P32_NVEHICLE_BRAND_ID IS NULL OR :P32_NVALUE IS NULL THEN',
'        :P32_FLAG :=1;',
'    ELSE    ',
'        UPDATE v_surcharges',
'        SET nvehicle_brand_id = :P32_NVEHICLE_BRAND_ID,',
'        norder_type_id = :P32_NORDER_TYPE_ID,',
'        nclient_id = :P32_NCLIENT_ID,',
'        nprice = :P32_NVALUE',
'        WHERE nid = :P32_NID;',
'        :P32_FLAG :=0;',
'    END IF;',
'END;    '))
,p_attribute_02=>'P32_NID,P32_NORDER_TYPE_ID,P32_NCLIENT_ID,P32_NVALUE,P32_NVEHICLE_BRAND_ID'
,p_attribute_03=>'P32_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9264298677023123)
,p_event_id=>wwv_flow_imp.id(9239022727843371)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai atnaujintas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P32_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47497712915967358)
,p_event_id=>wwv_flow_imp.id(9239022727843371)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Pasirinkite klient\0105, u\017Esakymo tip\0105, automobil\012F ir vert\0119!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P32_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9264495062023125)
,p_event_id=>wwv_flow_imp.id(9239022727843371)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21296703521610508)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P32_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9264641754023126)
,p_event_id=>wwv_flow_imp.id(9239022727843371)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:31:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P32_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9264715830023127)
,p_name=>'Insert'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(21303285288610524)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9264896161023129)
,p_event_id=>wwv_flow_imp.id(9264715830023127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P32_NCLIENT_ID IS NULL OR :P32_NORDER_TYPE_ID IS NULL OR :P32_NVEHICLE_BRAND_ID IS NULL OR :P32_NVALUE IS NULL THEN',
'        :P32_FLAG :=1;',
'    ELSE    ',
'        BEGIN',
'        INSERT INTO v_surcharges(nvehicle_brand_id, norder_type_id, nclient_id, nprice)',
'        VALUES(:P32_NVEHICLE_BRAND_ID, :P32_NORDER_TYPE_ID, :P32_NCLIENT_ID, :P32_NVALUE);',
'        :P32_FLAG :=0;',
'        EXCEPTION WHEN OTHERS THEN',
'            :P32_FLAG :=2;',
'        END;',
'    END IF;',
'END;    '))
,p_attribute_02=>'P32_NORDER_TYPE_ID,P32_NCLIENT_ID,P32_NVALUE,P32_NVEHICLE_BRAND_ID'
,p_attribute_03=>'P32_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9265049352023130)
,p_event_id=>wwv_flow_imp.id(9264715830023127)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai sukurtas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P32_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(47497818949967359)
,p_event_id=>wwv_flow_imp.id(9264715830023127)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Pasirinkite klient\0105, u\017Esakymo tip\0105, automobil\012F ir vert\0119!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P32_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(64640763927578160)
,p_event_id=>wwv_flow_imp.id(9264715830023127)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('I\0161kilo klaida!')
,p_attribute_03=>'danger'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P32_FLAG'
,p_client_condition_expression=>'2'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9265159053023131)
,p_event_id=>wwv_flow_imp.id(9264715830023127)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(21296703521610508)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P32_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(9265228089023132)
,p_event_id=>wwv_flow_imp.id(9264715830023127)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:31:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P32_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21304004166610525)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(21296703521610508)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Antkainis'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>unistr('\012Evyko klaida!')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('S\0117kmingai u\017Esaugota!')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21304411105610525)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(21303686803610524)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(21296703521610508)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Antkainis'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00054
begin
--   Manifest
--     PAGE: 00054
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
 p_id=>54
,p_name=>unistr('SFTP konfig\016Bracijos redagavimas')
,p_alias=>unistr('SFTP-KONFIG\016ARACIJOS-REDAGAVIMAS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('SFTP konfig\016Bracijos redagavimas')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20220419072219'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40546108895745424)
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
 p_id=>wwv_flow_imp.id(40549924763745436)
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
 p_id=>wwv_flow_imp.id(45486706664145249)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(40549924763745436)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45486284979145249)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(40549924763745436)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('I\0161trinti')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P54_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45485853839145248)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(40549924763745436)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('I\0161saugoti')
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P54_NID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45485434390145248)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(40549924763745436)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P54_NID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45489638895145253)
,p_name=>'P54_NVEHICLE_BRAND_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(40546108895745424)
,p_item_source_plug_id=>wwv_flow_imp.id(40546108895745424)
,p_prompt=>unistr('Automobilio Mark\0117')
,p_source=>'VEHICLE_BRAND_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT name d, id r ',
'FROM v_vehicle_brands',
'ORDER BY name'))
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
 p_id=>wwv_flow_imp.id(45490102595145253)
,p_name=>'P54_NVALUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(40546108895745424)
,p_item_source_plug_id=>wwv_flow_imp.id(40546108895745424)
,p_prompt=>'Antkainis (%)'
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
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
 p_id=>wwv_flow_imp.id(45490511291145253)
,p_name=>'P54_NORDER_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(40546108895745424)
,p_item_source_plug_id=>wwv_flow_imp.id(40546108895745424)
,p_prompt=>unistr('U\017Esakymo Tipas')
,p_source=>'ORDER_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT o.name || '' ('' || c.company_name || '')'' d, o.id r',
'FROM  v_order_types o, v_companies c',
'where c.id = o.supplier_id',
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
 p_id=>wwv_flow_imp.id(45490864177145254)
,p_name=>'P54_NID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(40546108895745424)
,p_item_source_plug_id=>wwv_flow_imp.id(40546108895745424)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45491167425145254)
,p_name=>'P54_FLAG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(40546108895745424)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(45491544250145258)
,p_name=>'P54_NCLIENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(40546108895745424)
,p_item_source_plug_id=>wwv_flow_imp.id(40546108895745424)
,p_prompt=>'Klientas'
,p_source=>'CLIENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT company_name d, id r',
'FROM v_clients ',
unistr('ORDER BY TRIM(replace(replace(replace(replace(replace(company_name,''"'',''''),''\201C'',''''),''\201D'',''''),''\201E'',''''), ''  '', '' ''))')))
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
 p_id=>wwv_flow_imp.id(45484689292145247)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45486706664145249)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45484229881145247)
,p_event_id=>wwv_flow_imp.id(45484689292145247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40546108895745424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45483636102145246)
,p_event_id=>wwv_flow_imp.id(45484689292145247)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:31:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45483258071145246)
,p_name=>'Delete'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45486284979145249)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45482806327145245)
,p_event_id=>wwv_flow_imp.id(45483258071145246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161trinti \012Fra\0161\0105?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45482310944145245)
,p_event_id=>wwv_flow_imp.id(45483258071145246)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DELETE',
'FROM v_surcharges ',
'WHERE id = :P54_NID;'))
,p_attribute_02=>'P54_NID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45481752153145245)
,p_event_id=>wwv_flow_imp.id(45483258071145246)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40546108895745424)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45481251985145244)
,p_event_id=>wwv_flow_imp.id(45483258071145246)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:31:&APP_SESSION.::NO:RP::" );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45480918931145244)
,p_name=>'Update'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45485853839145248)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45479911477145243)
,p_event_id=>wwv_flow_imp.id(45480918931145244)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P54_NCLIENT_ID IS NULL OR :P54_NORDER_TYPE_ID IS NULL OR :P54_NVEHICLE_BRAND_ID IS NULL OR :P54_NVALUE IS NULL THEN',
'        :P54_FLAG :=1;',
'    ELSE    ',
'        UPDATE v_surcharges',
'        SET vehicle_brand_id = :P54_NVEHICLE_BRAND_ID,',
'        order_type_id = :P54_NORDER_TYPE_ID,',
'        client_id = :P54_NCLIENT_ID,',
'        price = :P54_NVALUE',
'        WHERE id = :P54_NID;',
'        :P54_FLAG :=0;',
'    END IF;',
'END;    '))
,p_attribute_02=>'P54_NID,P54_NORDER_TYPE_ID,P54_NCLIENT_ID,P54_NVALUE,P54_NVEHICLE_BRAND_ID'
,p_attribute_03=>'P54_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45479412846145243)
,p_event_id=>wwv_flow_imp.id(45480918931145244)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai atnaujintas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P54_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45480365497145244)
,p_event_id=>wwv_flow_imp.id(45480918931145244)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Pasirinkite klient\0105, u\017Esakymo tip\0105, automobil\012F ir vert\0119!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P54_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45478847801145243)
,p_event_id=>wwv_flow_imp.id(45480918931145244)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40546108895745424)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P54_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45478375300145243)
,p_event_id=>wwv_flow_imp.id(45480918931145244)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:31:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P54_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(45477940427145242)
,p_name=>'Insert'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45485434390145248)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45477017338145242)
,p_event_id=>wwv_flow_imp.id(45477940427145242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P54_NCLIENT_ID IS NULL OR :P54_NORDER_TYPE_ID IS NULL OR :P54_NVEHICLE_BRAND_ID IS NULL OR :P54_NVALUE IS NULL THEN',
'        :P54_FLAG :=1;',
'    ELSE    ',
'        INSERT INTO v_surcharges(vehicle_brand_id, order_type_id, client_id, price)',
'        VALUES(:P54_NVEHICLE_BRAND_ID, :P54_NORDER_TYPE_ID, :P54_NCLIENT_ID, :P54_NVALUE);',
'        :P54_FLAG :=0;',
'    END IF;',
'END;    '))
,p_attribute_02=>'P54_NORDER_TYPE_ID,P54_NCLIENT_ID,P54_NVALUE,P54_NVEHICLE_BRAND_ID'
,p_attribute_03=>'P54_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45476503303145242)
,p_event_id=>wwv_flow_imp.id(45477940427145242)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\012Era\0161as s\0117kmingai sukurtas!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P54_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45477516539145242)
,p_event_id=>wwv_flow_imp.id(45477940427145242)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Pasirinkite klient\0105, u\017Esakymo tip\0105, automobil\012F ir vert\0119!')
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P54_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45475950952145241)
,p_event_id=>wwv_flow_imp.id(45477940427145242)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40546108895745424)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P54_FLAG'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(45475443988145241)
,p_event_id=>wwv_flow_imp.id(45477940427145242)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect ( "f?p=&APP_ID.:31:&APP_SESSION.::NO:RP::" );'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P54_FLAG'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45487336189145250)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(40546108895745424)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Antkainis'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45485096025145247)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(45487735757145251)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(40546108895745424)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Antkainis'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

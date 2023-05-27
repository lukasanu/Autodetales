prompt --application/pages/page_00073
begin
--   Manifest
--     PAGE: 00073
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
 p_id=>73
,p_name=>unistr('Kurti sand\0117lio detal\0119 i\0161 perteklin\0117s detal\0117s')
,p_alias=>unistr('KURTI-SAND\0116LIO-DETAL\0118-I\0160-PERTEKLIN\0116S')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Kurti sand\0117lio detal\0119 i\0161 perteklin\0117s detal\0117s')
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
,p_last_upd_yyyymmddhh24miss=>'20230418150527'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8910674885693349)
,p_plug_name=>unistr('Detal\0117')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.nID as id,',
'       s.sPART_NAME as ObjectName,',
'       s.sPART_CODE as ObjectCode,',
'       s.ncar_id as VehicleBrand,',
'       s.svehicle_model as VehicleModel,',
'       s.nPRICE as Price,',
'       s.nLENGTH * 1000 as Length,',
'       s.nWIDTH  * 1000 as Width,',
'       s.nHEIGHT * 1000 as Height,',
'       s.nWEIGHT * 1000 as Weight,',
'       s.naccounting_flag as accounting_flag,',
'       s.noriginal_package,',
'       s.sdescription as Remark,',
'       (SELECT blphoto from v_photos where s.nid = npart_id and nid = (select max(nid) from v_photos)) as image,',
'       s.nqnt as Quantity',
'       ,s.nsection_id',
'  from v_STORAGE_PARTS_info s',
'  order by s.sPart_name'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68536179020139898)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>unistr('At\0161aukti')
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68535801427139897)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sukurti'
,p_button_position=>'CREATE'
,p_button_condition=>'P73_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(68520241548139888)
,p_branch_name=>'Go To Page 66'
,p_branch_action=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68313120670210467)
,p_name=>'P73_NSECTION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>unistr('Sand\0117lio sekcija')
,p_source=>'NSECTION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select sname d, nid r from v_storage_places order by nid asc'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68313304221210469)
,p_name=>'P73_NORIGINAL_PACKAGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>unistr('Ar yra originali pakuot\0117?')
,p_source=>'NORIGINAL_PACKAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'0'
,p_attribute_03=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68528613332139893)
,p_name=>'P73_IS_SURPLUS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68529385765139893)
,p_name=>'P73_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>'Komentaras'
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>254
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68530253140139894)
,p_name=>'P73_ACCOUNTING_FLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>unistr('Apskaitos programoje n\0117ra \0161ios detal\0117s')
,p_source=>'ACCOUNTING_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'0'
,p_attribute_03=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68530657308139894)
,p_name=>'P73_FILEBROWSER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>'Nuotrauka'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'Y'
,p_attribute_12=>'INLINE'
,p_attribute_13=>unistr('Pasirinkti fil\0105')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68531009040139894)
,p_name=>'P73_WEIGHT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>'Svoris (g)'
,p_source=>'WEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>11
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68531422819139894)
,p_name=>'P73_HEIGHT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>unistr('Auk\0161tis (mm)')
,p_source=>'HEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>11
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68531782170139895)
,p_name=>'P73_WIDTH'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>'Plotis (mm)'
,p_source=>'WIDTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>11
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68532181520139895)
,p_name=>'P73_LENGTH'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>'Ilgis (mm)'
,p_source=>'LENGTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>11
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68532624521139895)
,p_name=>'P73_PRICE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>unistr('Kaina (\20AC)')
,p_source=>'PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>11
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68533011711139895)
,p_name=>'P73_VEHICLEMODEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>'Automobilio Modelis'
,p_source=>'VEHICLEMODEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'sname d, nid r ',
'FROM v_vehicle_models ',
'WHERE ncar_id=:P73_VEHICLEBRAND ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_lov_cascade_parent_items=>'P73_VEHICLEBRAND'
,p_ajax_items_to_submit=>'P73_VEHICLEBRAND'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68533445147139896)
,p_name=>'P73_VEHICLEBRAND'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>unistr('Automobilio Mark\0117')
,p_source=>'VEHICLEBRAND'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'sname d, nid r ',
'FROM v_vehicle_brands',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Pasirinkti -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68533864745139896)
,p_name=>'P73_QUANTITY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_default=>'1'
,p_prompt=>'Kiekis'
,p_source=>'QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'1'
,p_attribute_03=>'center'
,p_attribute_04=>'text'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68534254127139896)
,p_name=>'P73_OBJECTCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>'Kodas'
,p_source=>'OBJECTCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68534613867139897)
,p_name=>'P73_OBJECTNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_prompt=>'Pavadinimas'
,p_source=>'OBJECTNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9716705801517978)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(68535008152139897)
,p_name=>'P73_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_item_source_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69120456020959449)
,p_name=>'P73_OVERSUPPLIER_PART_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(8910674885693349)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(68313761398210473)
,p_validation_name=>'New'
,p_validation_sequence=>10
,p_validation=>'P73_OBJECTCODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Kodas negali b\016Bti tu\0161\010Dias!')
,p_associated_item=>wwv_flow_imp.id(68534254127139896)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(68313668067210472)
,p_validation_name=>'New_1'
,p_validation_sequence=>20
,p_validation=>'P73_QUANTITY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Kiekis negali b\016Bti tu\0161\010Dias arba nulis!')
,p_associated_item=>wwv_flow_imp.id(68533864745139896)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(68313528429210471)
,p_validation_name=>'New_2'
,p_validation_sequence=>30
,p_validation=>'P73_VEHICLEBRAND'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Automobilio mark\0117 negali b\016Bti tu\0161\010Dia!')
,p_associated_item=>wwv_flow_imp.id(68533445147139896)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(68313413325210470)
,p_validation_name=>'New_3'
,p_validation_sequence=>40
,p_validation=>'P73_PRICE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Kaina negali b\016Bti tu\0161\010Dia!')
,p_associated_item=>wwv_flow_imp.id(68532624521139895)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68522153948139889)
,p_name=>'Show Image'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P73_FILEBROWSER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68521590945139889)
,p_event_id=>wwv_flow_imp.id(68522153948139889)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$x_Show("P73_IMAGE");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68521215047139889)
,p_name=>'Hide Image'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68520769431139889)
,p_event_id=>wwv_flow_imp.id(68521215047139889)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$x_Hide("P73_IMAGE");'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68522967678139890)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      DECLARE',
'    sl_mime_type  VARCHAR2(256);',
'    nl_doc_size      NUMBER;',
'    bl_upload_blob   BLOB;',
'    sl_file_name    VARCHAR2(256);',
'    nl_count        NUMBER;',
'    nl_model_exist NUMBER;',
'    nl_vehicle_model_id NUMBER;',
'BEGIN',
'',
'BEGIN',
'        SELECT nid',
'        INTO   nl_model_exist',
'        FROM   v_vehicle_models',
'        WHERE  sname = UPPER(:p73_vehiclemodel);',
'',
'        nl_vehicle_model_id := nl_model_exist;',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            nl_model_exist := -1;',
'    END;',
'',
'    IF nl_model_exist = -1 and UPPER(:p73_vehiclemodel) is not null THEN',
'        INSERT INTO v_vehicle_models(nid',
'                                    ,ncar_id',
'                                    ,sname)',
'        VALUES      ( SEQ_VEHICLE_MODELS.nextval',
'                    ,:p73_vehiclebrand',
'                    ,UPPER(:p73_vehiclemodel)) returning nid into nl_vehicle_model_id;',
'    END IF;',
'',
'Insert into v_storage_parts  (sname,scode,ncar_id,ncar_model_id,nprice,nlength, nwidth, nheight,nweight,naccountingflag, noriginal_package, sdescription,nqnt,nsection_id) values (',
':P73_OBJECTNAME, ',
':P73_OBJECTCODE, ',
':P73_VEHICLEBRAND, ',
'nl_vehicle_model_id, ',
':P73_PRICE,',
':P73_LENGTH,',
':P73_WIDTH,',
':P73_HEIGHT,',
':P73_WEIGHT,',
':P73_ACCOUNTING_FLAG,',
':P73_NORIGINAL_PACKAGE,',
':P73_REMARK,',
':P73_QUANTITY,',
':P73_NSECTION_ID);',
'',
'    SELECT count(*) into nl_count from apex_application_temp_files;',
'    ',
'    FOR c_l IN 1..nl_count',
'    LOOP',
'',
'    with tbl as(',
'    SELECT ROW_NUMBER() OVER (ORDER BY id) AS RowNumber,blob_content,filename,mime_type',
'    FROM   apex_application_temp_files)',
'    select blob_content,filename,mime_type,dbms_lob.getlength(blob_content)',
'    into bl_upload_blob,sl_file_name,sl_mime_type,nl_doc_size',
'    from tbl',
'    where rownumber = c_l;',
'        INSERT INTO v_PHOTOS (sfile_name',
'                                ,smime_type',
'                                ,ndoc_size',
'                                ,blphoto',
'                                ,npart_id)',
'            values( sl_file_name',
'                  ,sl_mime_type',
'                  ,nl_doc_size',
'                  ,bl_upload_blob',
'                  ,seq_storage_parts.currval);',
'',
'    END LOOP;',
'    DELETE FROM apex_application_temp_files;',
'    ',
'    update V_OVERSUPPLIED_PARTS',
'    set nstatus_id = 28',
'    where nid = :P73_OVERSUPPLIER_PART_ID;',
'',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20002',
'                               ,SQLERRM);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Klaida'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(68535801427139897)
);
wwv_flow_imp.component_end;
end;
/

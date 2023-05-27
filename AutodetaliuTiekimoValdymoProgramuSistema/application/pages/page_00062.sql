prompt --application/pages/page_00062
begin
--   Manifest
--     PAGE: 00062
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
 p_id=>62
,p_name=>unistr('U\017Esakymo Ataskaitos Spausdinimas')
,p_alias=>unistr('U\017DSAKYMO-SPAUSDINIMAS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('U\017Esakymo Spausdinimas')
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'<meta http-equiv="content-type" content="text/plain; charset=UTF-8"/>'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ExportToExcel(name, type) {',
'    var data = document.getElementById(name);',
'    var excelFile = XLSX.utils.table_to_book(data, {sheet: "sheet1"});',
'    XLSX.write(excelFile, { bookType: type, bookSST: true, type: ''base64'' });',
'    XLSX.writeFile(excelFile, ''Failas.'' + type);',
'}',
'',
'function copyContent(param){    ',
'var divToPrint=document.getElementById(param);',
'var body = document.body,',
'      range, sel;',
'    if (document.createRange && window.getSelection) {',
'      range = document.createRange();',
'      sel = window.getSelection();',
'      sel.removeAllRanges();',
'      range.selectNodeContents(divToPrint);',
'      sel.addRange(range);',
'    }',
'    document.execCommand("Copy");',
'}',
'',
'function printContent(param){',
'var divToPrint = document.getElementById(param);',
'       var htmlToPrint = '''' +',
'        ''<style type="text/css">'' +',
'        ''table th, table td {'' +',
'        ''border:1px solid #000; text-align: center;'' +',
'        ''} '' +',
'        ''table {''+',
'        ''border-collapse: collapse;'' +',
'        ''} </style>'';',
'    htmlToPrint += divToPrint.outerHTML;',
'    newWin = window.open("");',
'    newWin.document.write(htmlToPrint);',
'    newWin.print();',
'    newWin.close();',
'}',
'',
'',
'var tableToExcel = (function() {',
'var uri = ''data:application/vnd.ms-excel;base64,''',
'    , template = ''<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:'
||'Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--><meta http-equiv="content-type" content="text/plain; charset=UTF-8"/><style>table, th,td'
||' {border: 1px solid black; border-collapse: collapse;} td {text-align:center;} th {text-align: center; padding-right: 10px; padding-left: 10px; white-space: nowrap; width: fit-content;} .noBorder{border:none; padding-bottom: 15px;} .wrapText{white-sp'
||'ace: pre-wrap; width: 90px !important;} table{border:none;}</style></head><body><table>{table}</table></body></html>''',
', base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) }',
', format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p];      }) }',
'  return function(table, name) {',
'    if (!table.nodeType) table = document.getElementById(table)',
'    var ctx = {worksheet: name || ''Worksheet'', table: table.innerHTML}',
'    window.location.href = uri + base64(format(template, ctx))',
' }',
'})();',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.printBtn{',
'    width: 90px !important;',
'}',
'.radio_group{',
'    margin-top: -10px;     ',
'    margin-left: 10px;',
'}',
'@media print {',
'  * {',
'    display: none;',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'771px'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230507131209'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70511776370868050)
,p_plug_name=>'Tiekejo'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(9661844249517909)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70511768262868049)
,p_plug_name=>unistr('Tiek\0117jui LT')
,p_parent_plug_id=>wwv_flow_imp.id(70511776370868050)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.FOS.PLSQL_DYNAMIC_CONTENT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'prc_print_order(sp_brand => :P62_BRAND',
'               ,sp_vin => :P62_VIN',
'               ,ip_order_id => :P62_ORDER_ID',
'               ,ip_supplier_id => :P62_SUPPLIER',
'               ,ip_language => 0);'))
,p_attribute_02=>'P62_ORDER_ID,P62_SUPPLIER'
,p_attribute_05=>'ON_REGION'
,p_attribute_11=>'Y'
,p_attribute_12=>'Y'
,p_attribute_14=>'htp'
,p_attribute_15=>'substitute-values'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70696649883690647)
,p_plug_name=>unistr('Tiek\0117jui ANG')
,p_parent_plug_id=>wwv_flow_imp.id(70511776370868050)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.FOS.PLSQL_DYNAMIC_CONTENT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'prc_print_order(sp_brand => :P62_BRAND',
'               ,sp_vin => :P62_VIN',
'               ,ip_order_id => :P62_ORDER_ID',
'               ,ip_supplier_id => :P62_SUPPLIER',
'               ,ip_language => 1);'))
,p_attribute_02=>'P62_ORDER_ID,P62_SUPPLIER'
,p_attribute_05=>'ON_REGION'
,p_attribute_11=>'Y'
,p_attribute_12=>'Y'
,p_attribute_14=>'htp'
,p_attribute_15=>'substitute-values'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(70005594672114177)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(70511768262868049)
,p_button_name=>'Excel_igtisa_LT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--padLeft:t-Button--padTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_image_alt=>'Excel'
,p_button_css_classes=>' u-color-5'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4801824397289111)
,p_name=>'P62_ELPASTAS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70511776370868050)
,p_prompt=>unistr('El. pa\0161to adresas')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4801935516289112)
,p_name=>'P62_NEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70511776370868050)
,p_prompt=>'LT kalba'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'0'
,p_attribute_03=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69773428000329666)
,p_name=>'P62_SUPPLIER_TO_ORDER'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(69773886582329671)
,p_name=>'P62_STATUS'
,p_item_sequence=>110
,p_use_cache_before_default=>'NO'
,p_item_default=>'select count(*) from v_order_details where norder_id = :P62_ORDER_ID and nstatus_id = 12 '
,p_item_default_type=>'SQL_QUERY'
,p_source=>'select count(*) from v_order_details where norder_id = :P62_ORDER_ID and nstatus_id = 12'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70510433565868036)
,p_name=>'P62_VIN'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70511574498868047)
,p_name=>'P62_TITLE'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70511615192868048)
,p_name=>'P62_BRAND'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70694867284690629)
,p_name=>'P62_SUPPLIER'
,p_item_sequence=>30
,p_prompt=>unistr('Tiek\0117jas')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT    od.ssupplier',
'                || '' (''',
'                || (SELECT COUNT(*)',
'                    FROM   v_order_details',
'                    WHERE  norder_id = :p57_id',
'                    AND    nsupplier_id = od.nsupplier_id)',
'                || '') ''',
'               ,od.nsupplier_id',
'FROM   v_order_details_info od',
'WHERE  norder_id = :p57_id'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Visi -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70697183937690653)
,p_name=>'P62_ORDER_ID'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70514520609868077)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_SUPPLIER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70514393719868076)
,p_event_id=>wwv_flow_imp.id(70514520609868077)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70696649883690647)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70511274104868044)
,p_event_id=>wwv_flow_imp.id(70514520609868077)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70511768262868049)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70005525103114176)
,p_event_id=>wwv_flow_imp.id(70514520609868077)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(70005594672114177)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_SUPPLIER'
,p_client_condition_expression=>'40'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70005421702114175)
,p_event_id=>wwv_flow_imp.id(70514520609868077)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(70005594672114177)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P62_SUPPLIER'
,p_client_condition_expression=>'40'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70512008429868052)
,p_name=>'New_3'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70511888970868051)
,p_event_id=>wwv_flow_imp.id(70512008429868052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70696649883690647)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70512277108868055)
,p_name=>'New_3'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_LANGUAGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70512225851868054)
,p_event_id=>wwv_flow_imp.id(70512277108868055)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70696649883690647)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_LANGUAGE'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70696406956690645)
,p_name=>'New'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_OPTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70696350129690644)
,p_event_id=>wwv_flow_imp.id(70696406956690645)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_SUPPLIER'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_OPTION'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70695390668690635)
,p_event_id=>wwv_flow_imp.id(70696406956690645)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70696649883690647)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_OPTION'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70696075315690641)
,p_event_id=>wwv_flow_imp.id(70696406956690645)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_SUPPLIER'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_OPTION'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70695524330690636)
,p_event_id=>wwv_flow_imp.id(70696406956690645)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70696649883690647)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_OPTION'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70695256992690633)
,p_event_id=>wwv_flow_imp.id(70696406956690645)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_SUPPLIER'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_OPTION'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70175357347078373)
,p_name=>'New'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_OPTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70175274704078372)
,p_event_id=>wwv_flow_imp.id(70175357347078373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_SUPPLIER'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_OPTION'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70175143305078371)
,p_event_id=>wwv_flow_imp.id(70175357347078373)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70511776370868050)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_OPTION'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70174650520078366)
,p_event_id=>wwv_flow_imp.id(70175357347078373)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_SUPPLIER'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_OPTION'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70174574553078365)
,p_event_id=>wwv_flow_imp.id(70175357347078373)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70511776370868050)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_OPTION'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(70173560031078355)
,p_name=>'New_6'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_OPTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70173333483078353)
,p_event_id=>wwv_flow_imp.id(70173560031078355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_SUPPLIER'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_OPTION'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70173240360078352)
,p_event_id=>wwv_flow_imp.id(70173560031078355)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70511776370868050)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_OPTION'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70173075373078350)
,p_event_id=>wwv_flow_imp.id(70173560031078355)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_SUPPLIER'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_OPTION'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(70172896339078349)
,p_event_id=>wwv_flow_imp.id(70173560031078355)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70511776370868050)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_OPTION'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69774149269329673)
,p_name=>'New_2'
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69774025730329672)
,p_event_id=>wwv_flow_imp.id(69774149269329673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (apex.item("P62_STATUS").getValue() != 0 ) {',
'var button = parent.$(''.ui-dialog-titlebar-close''); ',
'button.unbind();',
'',
'button.on(''click'', function() {',
unistr('    apex.message.confirm( "Liko neu\017Esakyt\0173 detali\0173 ar tikrai norite i\0161eiti?", function( okPressed ) { '),
'       if( okPressed ) {',
'        //   apex.navigation.dialog.cancel(true);',
'        apex.navigation.redirect ( "f?p=&APP_ID.:57:&APP_SESSION.::NO:RP::" );',
'       }',
'    });',
'});',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69773599912329668)
,p_name=>'New_4'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.partsOrdered'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69773569651329667)
,p_event_id=>wwv_flow_imp.id(69773599912329668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_SUPPLIER_TO_ORDER'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69773375097329665)
,p_event_id=>wwv_flow_imp.id(69773599912329668)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    n_count number;',
'begin',
'    update v_order_details ',
'    set nstatus_id = 14',
'    where norder_id = :P62_ORDER_ID and nsupplier_id = :P62_SUPPLIER_TO_ORDER;',
'',
'    select count(*) into n_count from v_order_details where norder_id = :P62_ORDER_ID and nstatus_id = 12;',
'',
'    if n_count = 0 then',
'        update v_orders ',
'        set nstatus_id = 5',
'        where nid = :P62_ORDER_ID;',
'    end if;    ',
'end;    '))
,p_attribute_02=>'P62_ORDER_ID,P62_SUPPLIER_TO_ORDER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69773208095329664)
,p_event_id=>wwv_flow_imp.id(69773599912329668)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70696649883690647)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69773136412329663)
,p_event_id=>wwv_flow_imp.id(69773599912329668)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70511768262868049)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69772958613329661)
,p_event_id=>wwv_flow_imp.id(69773599912329668)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_STATUS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select count(*) from v_order_details where norder_id = :P62_ORDER_ID and nstatus_id = 12 '
,p_attribute_07=>'P62_ORDER_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69772710847329659)
,p_event_id=>wwv_flow_imp.id(69773599912329668)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); ',
'button.unbind();',
'',
'button.on(''click'', function() {',
'        //   apex.navigation.dialog.cancel(true);',
'        apex.navigation.redirect ( "f?p=&APP_ID.:57:&APP_SESSION.::NO:RP::" );',
'});'))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P62_STATUS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(69771497253329647)
,p_name=>'New_5'
,p_event_sequence=>120
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.partsNotOrdered'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69771441159329646)
,p_event_id=>wwv_flow_imp.id(69771497253329647)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_SUPPLIER_TO_ORDER'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69771338042329645)
,p_event_id=>wwv_flow_imp.id(69771497253329647)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    n_count number;',
'begin',
'    update v_order_details ',
'    set nstatus_id = 12',
'    where norder_id = :P62_ORDER_ID and nsupplier_id = :P62_SUPPLIER_TO_ORDER;',
'',
'    update v_orders ',
'    set nstatus_id = 4',
'    where nid = :P62_ORDER_ID; ',
'end;    '))
,p_attribute_02=>'P62_ORDER_ID,P62_SUPPLIER_TO_ORDER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69771188652329644)
,p_event_id=>wwv_flow_imp.id(69771497253329647)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70696649883690647)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69771116710329643)
,p_event_id=>wwv_flow_imp.id(69771497253329647)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70511768262868049)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69770985218329642)
,p_event_id=>wwv_flow_imp.id(69771497253329647)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_STATUS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select count(*) from v_order_details where norder_id = :P62_ORDER_ID and nstatus_id = 12 '
,p_attribute_07=>'P62_ORDER_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(69770940352329641)
,p_event_id=>wwv_flow_imp.id(69771497253329647)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var button = parent.$(''.ui-dialog-titlebar-close''); ',
'button.unbind();',
'',
'button.on(''click'', function() {',
unistr('    apex.message.confirm( "Liko neu\017Esakyt\0173 detali\0173 ar tikrai norite i\0161eiti?", function( okPressed ) { '),
'       if( okPressed ) {',
'        //   apex.navigation.dialog.cancel(true);',
'         apex.navigation.redirect ( "f?p=&APP_ID.:57:&APP_SESSION.::NO:RP::" );',
'       }',
'    });',
'});',
''))
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P62_STATUS'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4800868797289101)
,p_name=>'PartsSent'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.partsSent'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4801556951289108)
,p_event_id=>wwv_flow_imp.id(4800868797289101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161si\0173sti el. lai\0161k\0105 tiek\0117jui?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4800926730289102)
,p_event_id=>wwv_flow_imp.id(4800868797289101)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P62_SUPPLIER_TO_ORDER'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4801099024289103)
,p_event_id=>wwv_flow_imp.id(4800868797289101)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    sp_brand         VARCHAR2(254) := :P62_BRAND;',
'    sp_vin           VARCHAR2(254) := :P62_VIN;',
'    ip_order_id      NUMBER := :P62_ORDER_ID;',
'    ip_supplier_id   NUMBER := :P62_SUPPLIER_TO_ORDER;',
'    ip_language      NUMBER := :P62_NEW;',
'    cl_body          CLOB;',
'begin',
'detales.prc_send_order(sp_brand',
'                          ,sp_vin',
'                          ,ip_order_id',
'                          ,ip_supplier_id',
'                          ,ip_language',
'                          ,cl_body);',
'    begin',
'  apex_mail.send(',
'    p_to   => :P62_ELPASTAS,',
'    p_from => ''detaliutiekimas@bakalauras.lt'',',
'    p_body => ''Sveiki, '' || cl_body || utl_tcp.crlf,',
'    p_body_html => cl_body || utl_tcp.crlf,',
unistr('    p_subj => ''U\017Esakymo informacija'');'),
'    ',
'  commit;',
'end;',
'begin',
'  apex_mail.push_queue;',
'end;',
'end;    '))
,p_attribute_02=>'P62_ORDER_ID,P62_SUPPLIER_TO_ORDER,P62_BRAND,P62_TITLE,P62_VIN,P62_ELPASTAS,P62_NEW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4801177048289104)
,p_event_id=>wwv_flow_imp.id(4800868797289101)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70696649883690647)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4801254307289105)
,p_event_id=>wwv_flow_imp.id(4800868797289101)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70511768262868049)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4801686543289109)
,p_event_id=>wwv_flow_imp.id(4800868797289101)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Lai\0161kas i\0161si\0173stas s\0117kmingai!')
,p_attribute_02=>unistr('Lai\0161kas i\0161si\0173stas!')
,p_attribute_03=>'success'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(70005347371114174)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_context apex_exec.t_context; ',
'    l_export  apex_data_export.t_export;',
'    l_print_config apex_data_export.t_print_config;',
'BEGIN',
'    l_context := apex_exec.open_query_context(',
'        p_location    => apex_exec.c_location_local_db,',
unistr('        p_sql_query   => ''select spart_code as "PREK\0116S NUMERIS", null as "TU\0160\010CIA", nqnt as "KIEKIS", nprice as "VIENETO KAINA BE PVM" from v_order_details where norder_id = :P62_ORDER_ID and nsupplier_id = :P62_SUPPLIER'' );'),
'',
'    l_print_config := apex_data_export.get_print_config(',
'        p_page_footer_font_size       => 14,   ',
'        p_border_width                => 1,',
'        p_border_color                => ''black'');                            ',
'',
'    l_export := apex_data_export.export (',
'                        p_context   => l_context,',
'                        p_print_config => l_print_config,',
'                        p_format    => apex_data_export.c_format_xlsx);',
'',
'    apex_exec.close( l_context );',
'',
'    apex_data_export.download( p_export => l_export );',
'',
'EXCEPTION',
'    when others THEN',
'        apex_exec.close( l_context );',
'        raise;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(70005594672114177)
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(69095394823809677)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Print'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_context apex_exec.t_context; ',
'    l_export  apex_data_export.t_export;',
'    l_print_config apex_data_export.t_print_config;',
'BEGIN',
'    l_context := apex_exec.open_query_context(',
'        p_location    => apex_exec.c_location_local_db,',
unistr('        p_sql_query   => ''select spart_code as "PREK\0116S NUMERIS", null as "TU\0160\010CIA", nqnt as "KIEKIS", nprice as "VIENETO KAINA BE PVM" from v_order_details where norder_id = :P62_ORDER_ID and nsupplier_id = :P62_SUPPLIER'' );'),
'',
'    l_print_config := apex_data_export.get_print_config(',
'        p_page_footer_font_size       => 14,   ',
'        p_border_width                => 1,',
'        p_border_color                => ''black'');                            ',
'',
'    l_export := apex_data_export.export (',
'                        p_context   => l_context,',
'                        p_print_config => l_print_config,',
'                        p_format    => apex_data_export.c_format_xlsx);',
'',
'    apex_exec.close( l_context );',
'',
'    apex_data_export.download( p_export => l_export );',
'',
'EXCEPTION',
'    when others THEN',
'        apex_exec.close( l_context );',
'        raise;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(70005594672114177)
);
null;
wwv_flow_imp.component_end;
end;
/

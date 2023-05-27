prompt --application/pages/page_00063
begin
--   Manifest
--     PAGE: 00063
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
 p_id=>63
,p_name=>unistr('U\017Eklausos Siuntimas')
,p_alias=>unistr('U\017DKLAUSOS-SIUNTIMAS')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('U\017Eklausos Siuntimas')
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>'<meta http-equiv="content-type" content="text/plain; charset=UTF-8"/>'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function ExportToExcel(type, fn, dl) {',
'    var item = document.getElementsByClassName("t-Tabs-item a-Tabs-selected is-active")[0].getAttribute("aria-controls");',
'       var elt = document.getElementById(item.substring(3));',
'       var wb = XLSX.utils.table_to_book(elt, { sheet: "sheet1" });',
'       return dl ?',
'         XLSX.write(wb, { bookType: type, bookSST: true, type: ''base64'' }):',
'         XLSX.writeFile(wb, fn || (''MySheetName.'' + (type || ''xlsx'')));',
'         ',
'    }',
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
' var divToPrint = document.getElementById(param);',
'       var htmlToPrint = ''<style type="text/css"> '' +',
'        ''table, th, td { border: 1px solid black; border-collapse: collapse;} '' +',
'        ''td {text-align:center;} ''+',
'        ''th {text-align: center; padding-right: 10px; padding-left: 10px; white-space: nowrap; width: fit-content;} '' +',
'        ''.t-Button {float: right; margin-right: 5px;} ''+',
'        ''.noBorder{border:none; padding-bottom: 15px;} ''+',
'        ''.wrapText{white-space: pre-wrap; width: 90px !important;} ''+',
'        ''table{border:none;} </style>'';',
'    htmlToPrint += divToPrint.outerHTML;',
'    newWin = window.open("dev.detaliutiekimas.lt");',
'    newWin.document.write(htmlToPrint);',
'    newWin.print();',
'    newWin.close();',
'}',
'',
'var tableToExcel = (function() {',
'var uri = ''data:application/vnd.ms-excel;base64,''',
'    , template = ''<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns="http://www.w3.org/TR/REC-html40"><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:'
||'Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--><meta http-equiv="content-type" content="text/plain; charset=UTF-8"/><style>table, th,td'
||' {border: 1px solid black; border-collapse: collapse;} td {text-align:center;} th {text-align: center; padding-right: 10px; padding-left: 10px; white-space: nowrap; width: fit-content;} .noBorder{border:none; padding-bottom: 15px;} .wrapText{white-sp'
||'ace: pre-wrap; width: 90px !important;} table{border:none;} .wide{white-space: nowrap; width: 100px !important;}</style></head><body><table>{table}</table></body></html>''',
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
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'750'
,p_dialog_max_width=>'750'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230507134030'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70509949512868031)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(9661844249517909)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70509681384868029)
,p_plug_name=>'Klientui ANG'
,p_parent_plug_id=>wwv_flow_imp.id(70509949512868031)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.FOS.PLSQL_DYNAMIC_CONTENT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'prc_print_order_prep(ip_order_id => :P63_ORDER_ID',
'                    ,ip_language => 1);'))
,p_attribute_05=>'N'
,p_attribute_11=>'N'
,p_attribute_14=>'htp'
,p_attribute_15=>'substitute-values'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(70510017122868032)
,p_plug_name=>'Klientui LT'
,p_parent_plug_id=>wwv_flow_imp.id(70509949512868031)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9655019078517905)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.FOS.PLSQL_DYNAMIC_CONTENT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'prc_print_order_prep(ip_order_id => :P63_ORDER_ID',
'                    ,ip_language => 0);'))
,p_attribute_05=>'N'
,p_attribute_11=>'N'
,p_attribute_14=>'htp'
,p_attribute_15=>'substitute-values'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4802013614289113)
,p_name=>'P63_PASTAS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(70509949512868031)
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
 p_id=>wwv_flow_imp.id(4802122695289114)
,p_name=>'P63_KALBA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(70509949512868031)
,p_prompt=>'Kalba LT'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(9716479221517977)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'0'
,p_attribute_03=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(70509862370868030)
,p_name=>'P63_ORDER_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4802208973289115)
,p_name=>'PartsSent'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.partsSent'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4802334190289116)
,p_event_id=>wwv_flow_imp.id(4802208973289115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Ar tikrai norite i\0161si\0173sti el. lai\0161k\0105 tiek\0117jui?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4802594294289118)
,p_event_id=>wwv_flow_imp.id(4802208973289115)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    ip_order_id      NUMBER := :P63_ORDER_ID;',
'    ip_language      NUMBER := :P63_KALBA;',
'    cl_body          CLOB;',
'begin',
'detales.prc_send_order_prep(ip_order_id',
'                          ,ip_language',
'                          ,cl_body);',
'    begin',
'  apex_mail.send(',
'    p_to   => :P63_PASTAS,',
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
,p_attribute_02=>'P63_PASTAS,P63_ORDER_ID,P63_KALBA'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4802649762289119)
,p_event_id=>wwv_flow_imp.id(4802208973289115)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70510017122868032)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4802794569289120)
,p_event_id=>wwv_flow_imp.id(4802208973289115)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(70509681384868029)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4802925176289122)
,p_event_id=>wwv_flow_imp.id(4802208973289115)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('Lai\0161kas i\0161si\0173stas s\0117kmingai!')
,p_attribute_02=>unistr('Lai\0161kas i\0161si\0173stas!')
,p_attribute_03=>'success'
);
wwv_flow_imp.component_end;
end;
/

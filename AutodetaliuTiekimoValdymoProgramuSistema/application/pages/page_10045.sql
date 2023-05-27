prompt --application/pages/page_10045
begin
--   Manifest
--     PAGE: 10045
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
 p_id=>10045
,p_name=>'Sistemos Vartotojai'
,p_alias=>'SISTEMOS-VARTOTOJAI'
,p_page_mode=>'MODAL'
,p_step_title=>'Sistemos Vartotojai'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'DEV'
,p_last_upd_yyyymmddhh24miss=>'20230502090321'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11397797930375808)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9653110943517903)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--select u.workspace_id, u.user_name, u.first_name, u.LAST_NAME, a.role_names ',
'--from APEX_WORKSPACE_APEX_USERS u, APEX_APPL_ACL_USERS a',
'--where u.user_name = a.user_name; ',
'select id',
'       ,user_name',
'       ,first_name',
'       ,last_name',
'       ,decode(isadmin, 1, ''Taip'', 0, ''Ne'') is_admin',
'       ,decode(issuspended, 1, ''Neaktyvus'', 0, ''Aktyvus'') issuspended',
'from v_users'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11398168720375809)
,p_name=>'Report 1'
,p_max_row_count_message=>unistr('Maksimalus eilu\010Di\0173 kiekis yra: #MAX_ROW_COUNT#. Pritaikykite filtr\0105, kad suma\017Eintum\0117t atvaizduojam\0173 eilu\010Di\0173 kiek\012F.')
,p_no_data_found_message=>unistr('Nerasta duomen\0173.')
,p_max_rows_per_page=>'100'
,p_search_button_label=>unistr('Ie\0161koti')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:10048:&SESSION.::&DEBUG.::P10048_ID:#ID#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'DEV'
,p_internal_uid=>11398168720375809
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46433604841505764)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11398625486375811)
,p_db_column_name=>'USER_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Vartotojo vardas'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11399023645375811)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Vardas'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11399433304375812)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Pavard\0117')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(46443073324665332)
,p_db_column_name=>'IS_ADMIN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Administratorius'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4623829466366001)
,p_db_column_name=>'ISSUSPENDED'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Ar aktyvus vartotojas?'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11405039133394714)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'114051'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USER_NAME:FIRST_NAME:LAST_NAME:IS_ADMIN:ISSUSPENDED:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11401247516375815)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11397797930375808)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9717591381517982)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Kurti nauj\0105 vartotoj\0105')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10046:&SESSION.::&DEBUG.:10046'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11400275929375813)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11397797930375808)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11400764686375815)
,p_event_id=>wwv_flow_imp.id(11400275929375813)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11397797930375808)
);
wwv_flow_imp.component_end;
end;
/

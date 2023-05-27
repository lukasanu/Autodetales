prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
--   Manifest
--     LIST: Desktop Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(9600586853517820)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9753051566518185)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Pagrindinis'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(46836994668736405)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Klientai / Tiekejai'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-card-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(20594793839947044)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Antkainiai'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-euro'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31200327355314365)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Baziniai Duomenys'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database-chart'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'51'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(47010337123464376)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Sandelis'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-package'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(22202453622202577)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>unistr('U\017Eklausos ir u\017Esakymai')
,p_list_item_link_target=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-files-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9902315489521141)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>'Administracija'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(9744433076518115)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

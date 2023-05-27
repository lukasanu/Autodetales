prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_release=>'22.2.0'
,p_default_workspace_id=>1000000
,p_default_application_id=>101
,p_default_id_offset=>74949676192244878
,p_default_owner=>'DETALES'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(9720503365518021)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(9617939880517868)
,p_default_dialog_template=>wwv_flow_imp.id(9612171091517865)
,p_error_template=>wwv_flow_imp.id(9606727590517857)
,p_printer_friendly_template=>wwv_flow_imp.id(9617939880517868)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(9606727590517857)
,p_default_button_template=>wwv_flow_imp.id(9717591381517982)
,p_default_region_template=>wwv_flow_imp.id(9655019078517905)
,p_default_chart_template=>wwv_flow_imp.id(9655019078517905)
,p_default_form_template=>wwv_flow_imp.id(9655019078517905)
,p_default_reportr_template=>wwv_flow_imp.id(9655019078517905)
,p_default_tabform_template=>wwv_flow_imp.id(9655019078517905)
,p_default_wizard_template=>wwv_flow_imp.id(9655019078517905)
,p_default_menur_template=>wwv_flow_imp.id(9664461405517910)
,p_default_listr_template=>wwv_flow_imp.id(9655019078517905)
,p_default_irr_template=>wwv_flow_imp.id(9653110943517903)
,p_default_report_template=>wwv_flow_imp.id(9677590060517929)
,p_default_label_template=>wwv_flow_imp.id(9716479221517977)
,p_default_menu_template=>wwv_flow_imp.id(9718955338517984)
,p_default_calendar_template=>wwv_flow_imp.id(9719035437517987)
,p_default_list_template=>wwv_flow_imp.id(9700313486517955)
,p_default_nav_list_template=>wwv_flow_imp.id(9715148517517969)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(9715148517517969)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(9713343623517968)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(9629970051517884)
,p_default_dialogr_template=>wwv_flow_imp.id(9626611630517882)
,p_default_option_label=>wwv_flow_imp.id(9716479221517977)
,p_default_required_label=>wwv_flow_imp.id(9716705801517978)
,p_default_navbar_list_template=>wwv_flow_imp.id(9704729696517958)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.6/')
,p_files_version=>67
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/

--
-- Create Schema Script
--   Database Version            : 19.0.0.0.0
--   Database Compatible Level   : 19.0.0.0.0
--   Script Compatible Level     : 19.0.0.0.0
--   Toad Version                : 13.2.0.258
--   DB Connect String           : FREEPDB1
--   Schema                      : DETALES
--   Script Created by           : SYS
--   Script Created at           : 27/05/2023 09:06:19
--   Notes                       : 
--

-- Object Counts: 
--   Packages: 13       Lines of Code: 1245 
--   Package Bodies: 12 Lines of Code: 6235 


-- "Set define off" turns off substitution variables.
Set define off; 

--
-- AOP_API22_PKG  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--   APEX_PLUGIN (Synonym)
--   APEX_DEBUG (Synonym)
--   APEX_APPLICATION_PAGES (Synonym)
--   APEX_APPLICATIONS (Synonym)
--   APEX_WORKSPACE_SESSIONS (Synonym)
--   APEX_DATA_EXPORT (Synonym)
--   WWV_FLOW_PLUGIN_UTIL (Synonym)
--   WWV_FLOW_IMP (Package)
--   WWV_FLOW_API (Synonym)
--   APEX_APPLICATION (Synonym)
--   APEX_APPLICATION_GLOBAL (Synonym)
--   DBMS_SQL (Package)
--
CREATE OR REPLACE package DETALES.aop_api22_pkg
AUTHID CURRENT_USER
as
/* Copyright 2015-2023 - APEX RnD - United Codes
*/
--## CONSTANTS

--### AOP Version
-- The version of APEX Office Print (AOP)
c_aop_version               constant varchar2(6)  := '22.2.3';
--### AOP URLs
-- The default url for the AOP Server
c_aop_url                   constant varchar2(50) := 'http://api.apexofficeprint.com/';
-- The default url for the AOP Fallback Server in case the c_aop_url would fail
c_aop_url_fallback          constant varchar2(50) := 'http://www.cloudofficeprint.com/aop/';
-- The default secure url for the AOP Server
c_aop_url_secure            constant varchar2(50) := 'https://api.apexofficeprint.com/';
-- The default secure url for the AOP Fallback Server
c_aop_url_secure_fallback   constant varchar2(50) := 'https://www.cloudofficeprint.com/aop/';
-- The url for the AOP Server in the Oracle Cloud US (Ashburn)
c_aop_url_oci_us            constant varchar2(50) := 'https://api-us.apexofficeprint.com/';
-- The url for the AOP Server in the Oracle Cloud EU (Frankfurt)
c_aop_url_oci_eu            constant varchar2(50) := 'https://api-eu.apexofficeprint.com/';
-- The url for the AOP Server in the Oracle Cloud APAC (Hyperdad)
c_aop_url_oci_apac          constant varchar2(50) := 'https://api-apac.apexofficeprint.com/';
--### Available constants
--### _Template and Data Type_
c_source_type_apex          constant varchar2(4)  := 'APEX';           -- Template Type
c_source_type_workspace     constant varchar2(9)  := 'WORKSPACE';      -- Template Type
c_source_type_sql           constant varchar2(3)  := 'SQL';            -- Template and Data Type
c_source_type_plsql_sql     constant varchar2(9)  := 'PLSQL_SQL';      -- Template and Data Type
c_source_type_plsql         constant varchar2(5)  := 'PLSQL';          -- Template and Data Type
c_source_type_url           constant varchar2(3)  := 'URL';            -- Template and Data Type
c_source_type_url_aop       constant varchar2(7)  := 'URL_AOP';        -- Template Type
c_source_type_rpt           constant varchar2(6)  := 'IR';             -- Data Type
c_source_type_xml           constant varchar2(3)  := 'XML';            -- Data Type
c_source_type_json          constant varchar2(4)  := 'JSON';           -- Template and Data Type
c_source_type_json_files    constant varchar2(10) := 'JSON_FILES';     -- Data Type
c_source_type_refcursor     constant varchar2(9)  := 'REFCURSOR';      -- Data Type
c_source_type_sql_array     constant varchar2(9)  := 'SQL_ARRAY';      -- Data Type
c_source_type_filename      constant varchar2(8)  := 'FILENAME';       -- Template Type
c_source_type_db_directory  constant varchar2(12) := 'DB_DIRECTORY';   -- Template Type
c_source_type_aop_report    constant varchar2(10) := 'AOP_REPORT';     -- Template Type
c_source_type_apex_report   constant varchar2(11) := 'APEX_REPORT';    -- Template Type
c_source_type_apex_report_do constant varchar2(14):= 'APEX_REPORT_DO'; -- Template Type
c_source_type_layouts       constant varchar2(14) := 'REPORT_LAYOUTS'; -- Template Type
c_source_type_aop_template  constant varchar2(1)  := null;             -- Template Type
c_source_type_clob_base64   constant varchar2(11) := 'CLOB_BASE64';    -- Template Type
c_source_type_oci_objs      constant varchar2(8)  := 'OCI_OBJS';       -- Template Type
c_source_type_none          constant varchar2(4)  := 'NONE';           -- Template and Data Type
--### Converter
c_source_type_converter     constant varchar2(9)  := 'CONVERTER';
--### Mime Type
c_mime_type_docx            constant varchar2(71) := 'application/vnd.openxmlformats-officedocument.wordprocessingml.document';
c_mime_type_xlsx            constant varchar2(65) := 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
c_mime_type_pptx            constant varchar2(73) := 'application/vnd.openxmlformats-officedocument.presentationml.presentation';
c_mime_type_doc             constant varchar2(71) := 'application/msword';
c_mime_type_xls             constant varchar2(71) := 'application/vnd.ms-excel';
c_mime_type_ppt             constant varchar2(71) := 'application/vnd.ms-powerpoint';
c_mime_type_odt             constant varchar2(39) := 'application/vnd.oasis.opendocument.text';
c_mime_type_ods             constant varchar2(46) := 'application/vnd.oasis.opendocument.spreadsheet';
c_mime_type_odp             constant varchar2(47) := 'application/vnd.oasis.opendocument.presentation';
c_mime_type_pdf             constant varchar2(15) := 'application/pdf';
c_mime_type_html            constant varchar2(9)  := 'text/html';
c_mime_type_markdown        constant varchar2(13) := 'text/markdown';
c_mime_type_rtf             constant varchar2(15) := 'application/rtf';
c_mime_type_json            constant varchar2(16) := 'application/json';
c_mime_type_xml             constant varchar2(15) := 'application/xml';
c_mime_type_text            constant varchar2(10) := 'text/plain';
c_mime_type_csv             constant varchar2(10) := 'text/csv';
c_mime_type_png             constant varchar2(9)  := 'image/png';
c_mime_type_jpg             constant varchar2(10) := 'image/jpeg';
c_mime_type_gif             constant varchar2(9)  := 'image/gif';
c_mime_type_bmp             constant varchar2(9)  := 'image/bmp';
c_mime_type_msbmp           constant varchar2(19) := 'image/x-windows-bmp';
c_mime_type_docm            constant varchar2(48) := 'application/vnd.ms-word.document.macroenabled.12';
c_mime_type_xlsm            constant varchar2(46) := 'application/vnd.ms-excel.sheet.macroenabled.12';
c_mime_type_pptm            constant varchar2(58) := 'application/vnd.ms-powerpoint.presentation.macroenabled.12';
c_mime_type_ics             constant varchar2(13) := 'text/calendar';
c_mime_type_ifb             constant varchar2(13) := 'text/calendar';
c_mime_type_eml             constant varchar2(14) := 'message/rfc822';
c_mime_type_msg             constant varchar2(26) := 'application/vnd.ms-outlook';
c_mime_type_zip             constant varchar2(26) := 'application/zip';
--### Calender Type
c_cal_month                 constant varchar2(19) := 'month';
c_cal_week                  constant varchar2(19) := 'week';
c_cal_day                   constant varchar2(19) := 'day';
c_cal_list                  constant varchar2(19) := 'list';
--### Output Encoding
c_output_encoding_raw       constant varchar2(3)  := 'raw';
c_output_encoding_base64    constant varchar2(6)  := 'base64';
--### Output Type
c_word_docx                 constant varchar2(4)  := 'docx';
c_excel_xlsx                constant varchar2(4)  := 'xlsx';
c_powerpoint_pptx           constant varchar2(4)  := 'pptx';
c_opendocument_odt          constant varchar2(3)  := 'odt';
c_opendocument_ods          constant varchar2(3)  := 'ods';
c_opendocument_odp          constant varchar2(3)  := 'odp';
c_word_doc                  constant varchar2(3)  := 'doc';
c_excel_xls                 constant varchar2(3)  := 'xls';
c_powerpoint_ppt            constant varchar2(3)  := 'ppt';
c_pdf_pdf                   constant varchar2(3)  := 'pdf';
c_html_html                 constant varchar2(4)  := 'html';
c_markdown_md               constant varchar2(2)  := 'md';
c_text_txt                  constant varchar2(3)  := 'txt';
c_csv_csv                   constant varchar2(3)  := 'csv';
c_word_rtf                  constant varchar2(3)  := 'rtf';
c_word_macro_docm           constant varchar2(4)  := 'docm';
c_excel_macro_xlsm          constant varchar2(4)  := 'xlsm';
c_powerpoint_macro_pptm     constant varchar2(4)  := 'pptm';
c_calendar_ics              constant varchar2(3)  := 'ics';
c_calendar_ifb              constant varchar2(3)  := 'ifb';
c_json_json                 constant varchar2(4)  := 'json';
c_xml_xml                   constant varchar2(3)  := 'xml';
c_email_eml                 constant varchar2(3)  := 'eml';
c_email_msg                 constant varchar2(3)  := 'msg';
c_zip_zip                   constant varchar2(3)  := 'zip';
c_onepagepdf_pdf            constant varchar2(10) := 'onepagepdf';
c_count_tags                constant varchar2(10) := 'count_tags';
c_form_fields               constant varchar2(11) := 'form_fields';
c_defined_by_apex_item      constant varchar2(9)  := 'apex_item';
--### Output To
c_output_return             constant varchar2(1)  := null;
c_output_browser            constant varchar2(7)  := 'BROWSER';
c_output_procedure          constant varchar2(9)  := 'PROCEDURE';
c_output_procedure_browser  constant varchar2(17) := 'PROCEDURE_BROWSER';
c_output_procedure_inline   constant varchar2(17) := 'PROCEDURE_INLINE';
c_output_inline             constant varchar2(14) := 'BROWSER_INLINE';
c_output_directory          constant varchar2(9)  := 'DIRECTORY';
c_output_db_directory       constant varchar2(12) := 'DB_DIRECTORY';
c_output_cloud              constant varchar2(5)  := 'CLOUD';
c_output_async              constant varchar2(5)  := 'ASYNC';
c_output_web_service        constant varchar2(12) := 'WEB_SERVICE';
c_apex_office_edit          constant varchar2(16) := 'APEX_OFFICE_EDIT';
--### Special
c_special_number_as_string  constant varchar2(16) := 'NUMBER_TO_STRING';
c_special_report_as_label   constant varchar2(16) := 'REPORT_AS_LABELS';
c_special_ir_filters_top    constant varchar2(14) := 'FILTERS_ON_TOP';
c_special_ir_highlights_top constant varchar2(17) := 'HIGHLIGHTS_ON_TOP';
c_special_ir_excel_header_f constant varchar2(18) := 'HEADER_WITH_FILTER';
c_special_ir_saved_report   constant varchar2(19) := 'ALWAYS_REPORT_ALIAS';
c_special_ir_repeat_header  constant varchar2(13) := 'REPEAT_HEADER';
c_obfuscate_data            constant varchar2(14) := 'OBFUSCATE_DATA';
--### Debug
c_debug_remote              constant varchar2(3)  := 'Yes';
c_debug_local               constant varchar2(5)  := 'Local';
c_debug_application_item    constant varchar2(9)  := 'APEX_ITEM';
--### Converter
c_converter_libreoffice     constant varchar2(7)  := 'soffice';            -- LibreOffice
c_converter_libreoffice_sa  constant varchar2(18) := 'soffice-standalone'; -- LibreOffice Standalone
c_converter_msoffice        constant varchar2(11) := 'officetopdf';        -- MS Office (only Windows)
c_converter_custom          constant varchar2(7)  := 'custom';             -- Custom converter defined in the AOP Server config
--### Mode
c_mode_production           constant varchar2(15) := 'production';
c_mode_development          constant varchar2(15) := 'development';
--### Supported Languages; used for the translation of IR
c_en                        constant varchar2(5)  := 'en';
c_nl                        constant varchar2(5)  := 'nl';
c_fr                        constant varchar2(5)  := 'fr';
c_de                        constant varchar2(5)  := 'de';
--### Strings
c_init_null                 constant varchar2(5)  := 'null;';
c_false                     constant varchar2(5)  := 'false';
c_true                      constant varchar2(4)  := 'true';
c_yes                       constant varchar2(3)  := 'Yes';
c_no                        constant varchar2(2)  := 'No';
c_y                         constant varchar2(1)  := 'Y';
c_n                         constant varchar2(1)  := 'N';
--### Internal Use for conditional compilation - see api.sql
c_apex_050                  constant pls_integer := 20130101;
c_apex_051                  constant pls_integer := 20160824;
c_apex_181                  constant pls_integer := 20180404;
c_apex_182                  constant pls_integer := 20180928;
c_apex_191                  constant pls_integer := 20190331;
c_apex_192                  constant pls_integer := 20191004;
c_apex_201                  constant pls_integer := 20200331;
c_apex_202                  constant pls_integer := 20201001;
c_apex_211                  constant pls_integer := 20210415;
c_apex_212                  constant pls_integer := 20211015;
c_apex_221                  constant pls_integer := 20220412;
c_apex_222                  constant pls_integer := 20221007;
--## TYPES
type t_query is record (
    name  varchar2(30),
    query varchar2(32767),
    binds wwv_flow_plugin_util.t_bind_list);
type t_query_list is table of t_query index by pls_integer;
c_sql_array t_query_list;
--type t_bind_record is record(name varchar2(100), value varchar2(32767));
--type t_bind_table  is table of t_bind_record index by pls_integer;
c_binds wwv_flow_plugin_util.t_bind_list;
--## VARIABLES
--### Logger
g_logger_enabled             boolean := true;        -- In case you use Logger (https://github.com/OraOpenSource/Logger), you can compile this package to enable Logger output:
                                                     -- SQL> ALTER PACKAGE aop_api22_pkg COMPILE PLSQL_CCFLAGS = 'logger_on:TRUE';
                                                     -- When compiled and this global variable is set to true, debug will be written to logger too
--### Call to AOP
g_aop_url                    varchar2(200) := null;  -- AOP Server url
g_api_key                    varchar2(50)  := null;  -- AOP API Key; only needed when AOP Cloud is used (http(s)://www.apexofficeprint.com/api)
g_aop_mode                   varchar2(15)  := null;  -- AOP Mode can be development or production; when running in development no cloud credits are used but a watermark is printed
g_failover_aop_url           varchar2(200) := null;  -- AOP Server url in case of failure of AOP url
g_failover_procedure         varchar2(200) := null;  -- When the failover url is used, the procedure specified in this variable will be called
g_template_type              varchar2(100) := null;  -- Specify the template type (xlsx, docx, ...) in case the filename is not part of the template source (e.g. URL of OneDrive or Object Storage)
g_output_converter           varchar2(50)  := null;  -- Set the converter to go to PDF (or other format different from template) e.g. officetopdf, libreoffice or libreoffice-standalone
g_output_locale              varchar2(50)  := null;  -- When using openofficeconverter, set the locale e.g. en, ne etc.
g_output_image_resolution    varchar2(50)  := null;  -- When using openofficeconverter, set the resolution of the image e.g. 300dpi, 600dpi, 900dpi or 1200dpi
g_output_jpeg_compression    varchar2(50)  := null;  -- When using openofficeconverter, specify the JPEG compression, percentage between 0-100
g_output_convert_to_pdfa     varchar2(50)  := null;  -- When using openofficeconverter, specify 1b or 2b which are standard PDF compliant versions, specifying any true value will convert to a PDF/A 1b compliant PDF.
g_output_correct_page_nr     boolean       := false; -- boolean to check for AOPMergePage text to replace it with the page number.
g_output_lock_form           boolean       := false; -- boolean that determines if the pdf forms should be locked/flattened.
g_lock_form_ignoring_sign    boolean       := false; -- boolean that determines to lock/flatten everything in the output PDF but not the signature fields
g_sign_certificate_field     varchar2(100) := '';    -- the name of the signature field to sign the output document (optional: invisible signature will be placed otherwise)
g_identify_form_fields       boolean       := false; -- boolean that fills in the name of the fields of a PDF Form in the field itself so it's easy to identify which field is at what position
g_proxy_override             varchar2(300) := null;  -- null=proxy defined in the application attributes
g_transfer_timeout           number(6)     := 1800;  -- default of APEX is 180
g_wallet_path                varchar2(300) := null;  -- null=defined in Manage Instance > Instance Settings
g_wallet_pwd                 varchar2(300) := null;  -- null=defined in Manage Instance > Instance Settings
g_https_host                 varchar2(300) := null;  -- The host name to be matched against the common name (CN) of the remote server's certificate for an HTTPS request.
g_apex_web_service_rheader_n2 varchar2(200) := null; -- Add a custome request header name when calling the AOP Server. This variable will set: apex_web_service.g_request_headers(2).name
g_apex_web_service_rheader_v2 varchar2(4000):= null; -- Add a custome request header value when calling the AOP Server. This variable will set: apex_web_service.g_request_headers(2).value
g_output_filename            varchar2(300) := null;  -- output
g_cloud_provider             varchar2(100) := null;  -- dropbox, gdrive, onedrive, aws_s3, (s)ftp
g_cloud_location             varchar2(4000):= null;  -- directory in dropbox, gdrive, onedrive, aws_s3 (with bucket), (s)ftp
g_cloud_access_token         varchar2(4000):= null;  -- access token or credentials for dropbox, gdrive, onedrive, aws_s3, (s)ftp (needs json)
g_language                   varchar2(2)   := c_en;  -- Language can be: en, fr, nl, de, used for the translation of filters applied etc. (translation build-in AOP)
g_app_language               varchar2(20)  := null;  -- Language specified in the APEX app (primary language, translated language), when left to null, apex_util.get_session_lang is being used
g_logging                    clob          := '';    -- ability to add your own logging: e.g. "request_id":"123", "request_app":"APEX", "request_user":"RND"
g_debug                      varchar2(10)  := null;  -- set to 'Local' when only the JSON needs to be generated, 'Remote' for remote debug
g_debug_procedure            varchar2(4000):= null;  -- when debug in APEX is turned on, next to the normal APEX debug, this procedure will be called
                                                     --   e.g. to write to your own debug table. The definition of the procedure needs to be the same as aop_debug
g_special                    varchar2(4000):= null;  -- Special settings defined in the APEX Plug-in concerning Reports (colon separated), see p_special
g_app_id                     number        := null;  -- APEX application id
g_page_id                    number        := null;  -- APEX page id
g_user_name                  varchar2(200) := null;  -- APEX user name (APP_USER)
--### APEX Page Items
g_apex_items                 varchar2(4000):= null;  -- colon-separated list of APEX items e.g. P1_X:P1_Y, which can be referenced in a template using {Pxx_ITEM}
                                                     -- you can only use this global variable in combination with reports (classic, IR, IG, ...).
                                                     -- When using a SQL Query, you can define the page item in your SQL query, e.g. :P1_ITEM as "P1_ITEM"
--### Layout for IR
g_rpt_header_font_name       varchar2(50)  := '';    -- Arial - see https://www.microsoft.com/typography/Fonts/product.aspx?PID=163
g_rpt_header_font_size       varchar2(3)   := '';    -- 14
g_rpt_header_font_color      varchar2(50)  := '';    -- #071626
g_rpt_header_back_color      varchar2(50)  := '';    -- #FAFAFA
g_rpt_header_border_width    varchar2(50)  := '';    -- 1 ; '0' = no border
g_rpt_header_border_color    varchar2(50)  := '';    -- #000000
g_rpt_break_font_color       varchar2(50)  := '';    -- #071626
g_rpt_break_back_color       varchar2(50)  := '';    -- #FAFAFA
g_rpt_break_show_header      varchar2(1)   := null;  -- Show the header again after the break (Y/N)
g_rpt_data_font_name         varchar2(50)  := '';    -- Arial - see https://www.microsoft.com/typography/Fonts/product.aspx?PID=163
g_rpt_data_font_size         varchar2(3)   := '';    -- 14
g_rpt_data_font_color        varchar2(50)  := '';    -- #000000
g_rpt_data_back_color        varchar2(50)  := '';    -- #FFFFFF
g_rpt_data_border_width      varchar2(50)  := '';    -- 1 ; '0' = no border
g_rpt_data_border_color      varchar2(50)  := '';    -- #000000
g_rpt_data_alt_row_color     varchar2(50)  := '';    -- #FFFFFF for no alt row color, use same color as g_rpt_data_back_color
/* see also Printing attributes in Interactive Report */
g_is_component_used_yn       varchar2(1)   := null;  -- If you want to override the is_component_used_yn, you can specify 'Y' to always show or 'N' to never show.
g_visible_report_columns     varchar2(4000):= null;  -- Colon separated list of classic report, interactive report or interactive grid columns e.g. EMPNO:ENAME,
                                                     -- which will be visible regardless of authorization and condition
g_hidden_report_columns      varchar2(4000):= null;  -- Colon separated list of classic report, interactive report or interactive grid columns e.g. EMPNO:ENAME
                                                     -- which will be hidden regardless of authorization and condition
--### Settings for Calendar
g_cal_type                   varchar2(10)  := c_cal_month; -- can be month (default), week, day, list; constants can be used
g_start_date                 date          := null;  -- start date of calendar
g_end_date                   date          := null;  -- end date of calendar
g_weekdays                   varchar2(300) := null;  -- translation for weekdays e.g. Monday:Tuesday:Wednesday etc.
g_months                     varchar2(300) := null;  -- translation for months   e.g. January:February etc.
g_color_days_sql             varchar2(4000):= null;  -- color the background of certain days.
                                                     --   e.g. select 1 as "id", sysdate as "date", 'FF8800' as "color" from dual
g_separate_pages             varchar2(5)   := 'false'; -- start calendar on new page (true) or start calendar on same page
g_alignment                  varchar2(5)   := 'right'; -- align text on calender: left center or right
g_title_alignment            varchar2(5)   := 'right'; -- align title of the calendar: left right or center
g_day_alignment              varchar2(5)   := 'right'; -- align days of the calendar: left right or center
g_start_of_week              varchar2(3)   := 'Mon';   -- start of the week day: Monday (Mon) or Sunday (Sun)
--### HTML template to Word/PDF
g_orientation                varchar2(50)  := '';    -- empty is portrait, other option is 'landscape'
--### Call to URL data source
g_url_http_method            varchar2(10)  := 'GET';
g_url_username               varchar2(300) := null;
g_url_password               varchar2(300) := null;
g_url_schema                 varchar2(100) := 'Basic';
g_url_proxy_override         varchar2(300) := null;
g_url_transfer_timeout       number        := 180;
g_url_body                   clob          := empty_clob();
g_url_body_blob              blob          := empty_blob();
g_url_parm_name              apex_application_global.vc_arr2; --:= empty_vc_arr;
g_url_parm_value             apex_application_global.vc_arr2; --:= empty_vc_arr;
g_url_wallet_path            varchar2(300) := null;
g_url_wallet_pwd             varchar2(300) := null;
g_url_https_host             varchar2(300) := null;  -- parameter for apex_web_service, not used, please apply APEX patch if issues
g_url_credential_static_id   varchar2(300) := null;
g_url_token_url              varchar2(300) := null;
--### Web Source Module (APEX >= 18.1)
g_web_source_first_row       pls_integer   := null;  -- parameter for apex_exec.open_web_source_query
g_web_source_max_rows        pls_integer   := null;  -- parameter for apex_exec.open_web_source_query
g_web_source_total_row_cnt   boolean       := false; -- parameter for apex_exec.open_web_source_query
--### REST Enabled SQL (APEX >= 18.1)
g_rest_sql_auto_bind_items   boolean       := true;  -- parameter for apex_exec.open_remote_sql_query
g_rest_sql_first_row         pls_integer   := null;  -- parameter for apex_exec.open_remote_sql_query
g_rest_sql_max_rows          pls_integer   := null;  -- parameter for apex_exec.open_remote_sql_query
g_rest_sql_total_row_cnt     boolean       := false; -- parameter for apex_exec.open_remote_sql_query
g_rest_sql_total_row_limit   pls_integer   := null;  -- parameter for apex_exec.open_remote_sql_query
--### Input Data
g_replace_special_symbols    varchar2(5)   := null;  -- Option to replace special symbols in the selected columns/keys. Replaces +, -, *, /, and  % by _.
g_override_html_expr_on_null boolean       := false; -- When HTML expressions are being used in reports, but they are null, they can be overwritten to use the report_null_values_as
--### IP Printer support
g_ip_printer_location        varchar2(300) := null;
g_ip_printer_version         varchar2(300) := '1';
g_ip_printer_requester       varchar2(300) := nvl(apex_application.g_user, USER);
g_ip_printer_job_name        varchar2(300) := 'AOP';
g_ip_printer_return_output   varchar2(5)   := null;  -- null or 'Yes' or 'true'
--### AOP Processing
g_pre_conversion_command     varchar2(4000):= null; -- The command to execute before the conversion to another file format. This command should be present on aop_config.json file.
g_pre_conversion_command_p   varchar2(4000):= null; -- Parameter (in JSON) before the conversion to another file format. These parameters should be present on aop_config.json file.
g_post_conversion_command    varchar2(4000):= null; -- The command to execute after the conversion to another file format. This command should be present on aop_config.json file.
g_post_conversion_command_p  varchar2(4000):= null; -- Parameter (in JSON) after the conversion to another file format. These parameters should be present on aop_config.json file.
g_post_merge_command         varchar2(4000):= null; -- The command to execute after the merge of files. This command should be present on aop_config.json file.
g_post_merge_command_p       varchar2(4000):= null; -- Parameter (in JSON) after the merge of files. These parameters should be present on aop_config.json file.
g_pipeline_name              varchar2(4000):= null; -- The name of the pipeline that will be executed.
g_post_process_command       varchar2(4000):= null; -- The command to execute. This command should be present on aop_config.json file.
g_post_process_command_p     varchar2(4000):= null; -- Parameter (in JSON) in the post process command. These parameters should be present on aop_config.json file.
g_post_process_return_output boolean       := true; -- Either to return the output or not. Note this output is AOP's output and not the post process command output.
g_post_process_delete_delay  number(9)     := 1500; -- AOP deletes the file provided to the command directly after executing it. This can be delayed with this option. Integer in milliseconds.
--### AOP Config
g_aop_config                 varchar2(32767):= null; -- AOP config file; anything here will overwrite or extend other attributes in the JSON. Make sure this is valid JSON.
--### Convert characterset
g_convert                    varchar2(1)   := c_n;   -- set to Y (c_y) if you want to convert the JSON that is send over; necessary for Arabic support
g_convert_source_charset     varchar2(20)  := null;  -- default of database
g_convert_target_charset     varchar2(20)  := 'AL32UTF8';
g_stop_apex_engine           varchar2(1)   := c_n;   -- stop the APEX engine
g_run_with_dbms_scheduler    varchar2(1)   := c_n;   -- Run the call in the background through a dbms_scheduler job, when finished call defined procedure.
--### Output
-- set output directory on AOP Server
-- if . is specified the files are saved in the default directory: outputfiles
g_output_directory           varchar2(200) := '.';
g_output_sign_certificate    varchar2(32000):= null; -- sign PDF with signature which is base64 encoded
g_output_sign_certificate_pwd varchar2(500):= null;  -- sign PDF with password
g_output_sign_certificate_fld varchar2(500):= null;  -- sign PDF with the given signature field name
g_output_sign_certificate_img varchar2(32767):= null;-- sign PDF with the given base64 encoded image as background for visible signature
g_output_sign_certificate_prp varchar2(32767):= null;-- sign PDF with the certificate privatekey password
g_output_split               varchar2(5)   := null;  -- split file: one file per page: true/false
g_output_merge               varchar2(5)   := null;  -- merge files into one PDF true/false
g_output_icon_font           varchar2(20)  := null;  -- the icon font to use for the output, Font-APEX or Font Awesome 5 (default)
g_output_even_page           varchar2(5)   := null;  -- PDF option to always print even pages (necessary for two-sided pages): true/false
g_output_merge_making_even   varchar2(5)   := null;  -- PDF option to merge making all documents even paged (necessary for two-sided pages): true/false
g_output_page_margin         varchar2(50)  := null;  -- HTML to PDF option: margin in px, can also add top, bottom, left, right
g_output_page_orientation    varchar2(10)  := null;  -- HTML to PDF option: portrait (default) or landscape
g_output_page_width          varchar2(10)  := null;  -- HTML to PDF option: width in px, mm, cm, in. No unit means px.
g_output_page_height         varchar2(10)  := null;  -- HTML to PDF option: height in px, mm, cm, in. No unit means px.
g_output_page_format         varchar2(10)  := null;  -- HTML to PDF option: a4 (default), letter
g_output_remove_last_page    boolean       := false; -- PDF option to remove the last page; e.g. when the last page is empty
g_output_ignore_conv_errors  boolean       := false; -- PDF option to ignore conversion errors during appending and prepending of files
g_output_modified_date       varchar2(50)  := null;  -- Word/Powerpoint template option to set the modified date of the file. Must be in ISO format (Example: "2022-02-07T12:55:12") or in the date time format ("YYYY-MM-DD HH:mm:ss", "YYYY-MM-DD")
g_output_created_date        varchar2(50)  := null;  -- Word/Powerpoint template option to set the created date of the file. Must be in ISO format (Example: "2022-02-07T12:55:12") or in the date time format ("YYYY-MM-DD HH:mm:ss", "YYYY-MM-DD")
--### Async call to AOP; a URL will be returned where the file can be polled from
g_async_status               varchar2(4000):= null;  -- Get the status of the async call (OK, error, false)
g_async_message              varchar2(4000):= null;  -- Get the status message of the async call
g_async_url                  varchar2(4000):= null;  -- Get the URL where you can get the file when processing is complete
--### Call a Web Service where AOP will send the file to (POST Request)
g_web_service_url            varchar2(500) := null;  -- URL to be called once AOP has created the document. AOP will do a POST request and headers can be specified
g_web_service_headers        varchar2(4000):= null;  -- The headers for the POST request e.g. {"file_id": "F123", "access_token": "A456789"}
--### Files
g_prepend_files_sql          clob          := null;  -- format: select filename, mime_type, [file_blob, file_base64, url_call_from_db, url_call_from_aop, file_on_aop_server], [read_password] from my_table
g_append_files_sql           clob          := null;  -- format: select filename, mime_type, [file_blob, file_base64, url_call_from_db, url_call_from_aop, file_on_aop_server], [read_password] from my_table
g_media_files_sql            clob          := null;  --
g_output_prepend_per_page    boolean       := false; -- Prepend one or more pages before each page in the output. E.g. logo and company details before every document
g_output_append_per_page     boolean       := false; -- Append one or more pages after each page in the output. E.g. terms of conditions after every invoice
--### Templates
g_template_start_delimiter   varchar2(2)   := null;  -- { is the default start delimiter used is a template, but you can set this variable with the following options: {, {{, <, <<
g_template_end_delimiter     varchar2(2)   := null;  -- } is the default end delimiter used in a template, but you can set this variable with the following options: }, }}, >, >>
g_cache_template             boolean       := false; -- cache the template; an hash is returned in g_template_cache_hash
g_template_cache_hash        varchar2(128) := null;  -- the hashed value of the cached version of the template on the AOP Server/Cloud
g_use_template_when_no_cache varchar2(1)   := c_n;   -- by default when a template hash is sent and it's no longer available it will raise an error.
                                                     -- when set to Y(es), AOP will first check if the template is still available and if not include the full template when available.
--### Sub-Templates
g_sub_templates_sql          clob          := null;  -- format: select filename, mime_type, [file_blob, file_base64, url_call_from_db, url_call_from_aop, file_on_aop_server] from my_table
--### Password protected PDF
g_output_read_password       varchar2(200) := null; -- protect PDF to read
g_output_modify_password     varchar2(200) := null; -- protect PDF to write (modify)
g_output_pwd_protection_flag number(4)     := null; -- optional; default is 4.
                                                    -- Number when bit calculation is done as specified in http://pdfhummus.com/post/147451287581/hummus-1058-and-pdf-writer-updates-encryption
g_output_pdf_producer        varchar2(4000):= null; -- PDF meta-data set producer data tag
g_output_watermark           varchar2(4000):= null; -- Watermark in PDF
g_output_watermark_color     varchar2(500) := null; -- Watermark option color
g_output_watermark_font      varchar2(500) := null; -- Watermark option font
g_output_watermark_size      varchar2(500) := null; -- Watermark option width
g_output_watermark_opacity   varchar2(500) := null; -- Watermark option opacity
g_output_copies              number        := null; -- Requires output pdf, repeats the output pdf for the given number of times.
--### IG
g_ig_force_query             varchar2(1)   := null; -- force the IG to use AOPs own implementation instead of apex_region.open_query_context
g_ig_use_alternative_label   varchar2(1)   := null; -- force the IG to use the alternative label for the heading
--### JSON
g_anonymize_json             varchar2(1)   := c_n;   -- set to Y (c_y) if you want to anomyze/obfuscate the JSON that is send over. This is great for debugging of sensitive data.
g_use_data_export_pjson      varchar2(1)   := c_n;   -- instead of using the AOP specific code to generate the meta-data of reports, use apex_data_export.c_format_pjson
--### CSV
g_output_text_delimiter      varchar2(200) := null;  -- delimiter for tags
g_output_field_separator     varchar2(200) := null;  -- field separator, default is ,
g_output_character_set       varchar2(200) := null;  -- character set of CSV file
--### Word
g_update_toc                 boolean       := false; -- Update the table of contents in Word document
--### DATA EXPORT - APEX 20.2 and higher
$if wwv_flow_api.c_current >= 20201001
$then
g_data_export_component_id   number                         := null;
g_data_export_view_mode      varchar2(100)                  := null;
g_data_export_max_rows       number                         := null;
g_data_export_file_name      varchar2(255)                  := null;
g_data_export_page_size      apex_data_export.t_size        := apex_data_export.c_size_letter;
g_data_export_orientation    apex_data_export.t_orientation := apex_data_export.c_orientation_portrait;
g_data_export_data_only      boolean                        := false;
g_data_export_pdf_accessible boolean                        := false;
$end
--### OCI
g_oci_credential             varchar2(150) := null;  -- Credentials used in DBMS_CLOUD (Oracle Cloud Infrastructure credentials)
g_oci_directory_name         varchar2(150) := null;  -- Directory name used in DBMS_CLOUD
--### APEX Office Edit (AOE)
g_aoe_region_static_id       varchar2(150) := null;  -- Used when Output To is set to c_apex_office_edit
                                                     -- Specify here the Static ID of the APEX Office Edit Plug-in region
g_aoe_primary_key_items      varchar2(4000) := null; -- the primary key items defined in APEX Office Edit colon separated (will be automatically filled)
g_aoe_primary_key_values     varchar2(4000) := null; -- the primary key values of the records that where created by the procedure colon separated
--## EXCEPTIONS
/**
 * @exception
 */
--### FUNCTIONS AND PROCEDURES
-- ! package body contains documentation
-- debug function, will write to apex_debug_messages, logger (if enabled) and your own debug procedure
procedure aop_debug(p_message     in varchar2,
                    p0            in varchar2 default null,
                    p1            in varchar2 default null,
                    p2            in varchar2 default null,
                    p3            in varchar2 default null,
                    p4            in varchar2 default null,
                    p5            in varchar2 default null,
                    p6            in varchar2 default null,
                    p7            in varchar2 default null,
                    p8            in varchar2 default null,
                    p9            in varchar2 default null,
                    p10           in varchar2 default null,
                    p11           in varchar2 default null,
                    p12           in varchar2 default null,
                    p13           in varchar2 default null,
                    p14           in varchar2 default null,
                    p15           in varchar2 default null,
                    p16           in varchar2 default null,
                    p17           in varchar2 default null,
                    p18           in varchar2 default null,
                    p19           in varchar2 default null,
                    p_level       in apex_debug.t_log_level default apex_debug.c_log_level_info,
                    p_description in clob default null);
-- convert a url with for example an image to base64
function url2base64 (
  p_url in varchar2)
  return clob;
-- get the value of one of the above constants
function getconstantvalue (
  p_constant in varchar2)
  return varchar2 deterministic;
-- get the mime type of a file extention: docx, xlsx, pptx, pdf
function getmimetype (
  p_file_ext in varchar2)
  return varchar2 deterministic;
-- get the file extention of a mime type
function getfileextension (
  p_mime_type in varchar2)
  return varchar2 deterministic;
-- get the Font Awesome / APEX icon of a mime type
function geticon (
  p_mime_type in varchar2)
  return varchar2 deterministic;
-- convert a blob to a clob
function blob2clob(p_blob in blob)
  return clob;
-- convert a clob to a blob
function clob2blob(p_clob in clob)
  return blob;
-- convert a blob to a file in the database directory
procedure blob2file(p_blob      in blob,
                    p_directory in varchar2,
                    p_filename  in varchar2);
-- convert a file to a blob
function file2blob(p_directory in varchar2,
                   p_filename  in varchar2)
  return blob;
-- internal function to check a server-side condition
function is_component_used_yn(p_build_option_id         in number default null,
                              p_authorization_scheme_id in varchar2,
                              p_condition_type          in varchar2,
                              p_condition_expression1   in varchar2,
                              p_condition_expression2   in varchar2,
                              p_component               in varchar2 default null,
                              p_report_column           in varchar2 default null)
  return varchar2;
-- internal function to get the bind variables of a SQL statement
function get_binds (
    p_stmt in clob )
    return sys.dbms_sql.varchar2_table;
-- check template and output type compatibility
-- template and output type can be mime_type or file extension
function is_valid_output_type(p_template_type in varchar2,
                              p_output_type   in varchar2)
  return boolean;
-- check if the hash of the template cache is still valid and present on the AOP Server/Cloud
function is_valid_template_hash(p_aop_url in varchar2 default g_aop_url,
                                p_hash    in varchar2)
  return boolean;
/**
 * @Description: Call to AOP Server through API, used behind the scenes by the APEX plug-in, but a manual call can be done with PL/SQL too.
 *
 * @Author: Dimitri Gielis
 * @Created: 2016-8-2
 *
 * @Param: p_data_type Define where the data is coming from.
 *                     Following constants exists in aop_api_pkg: c_source_type_sql, c_source_type_plsql_sql, c_source_type_plsql, c_source_type_url, c_source_type_rpt, c_source_type_refcursor, c_source_type_sql_array, c_source_type_xml, c_source_type_json, c_source_type_json_files, c_source_type_none
 * @Param: p_data_source Depending the data type, define here the source:
 *                         - c_source_type_sql: SQL statement with cursor syntax or returning JSON
 *                         - c_source_type_plsql_sql: PL/SQL function returning SQL statement with mime type and blob
 *                         - c_source_type_plsql: PL/SQL function returning JSON with the template file base64 encoded
 *                         - c_source_type_url: URL which contains the file
 *                         - c_source_type_rpt: static id(s) or region id(s) of the APEX regions
 *                         - c_source_type_refcursor: REF Cursor
 *                         - c_source_type_sql_array: Array of SQL statements
 *                         - c_source_type_xml: XML
 *                         - c_source_type_json: JSON data part
 *                         - c_source_type_json_files: JSON including files
 *                         - c_source_type_none: leave the source blank
 * @Param: p_template_type Define where the template is stored.
 *                         Following constants exists in aop_api_pkg: c_source_type_apex, c_source_type_workspace, c_source_type_sql, c_source_type_plsql_sql, c_source_type_plsql,
 *                                                                    c_source_type_url, c_source_type_filename, c_source_type_url_aop, c_source_type_json, c_source_type_db_directory, c_source_type_oci_objs,
 *                                                                    c_source_type_aop_report, c_source_type_apex_report, c_source_type_aop_template, c_source_type_clob_base64, c_source_type_none
 * @Param: p_template_source Depending the template_type, define here the filename, SQL statement, PL/SQL function or URL:
 *                         - c_source_type_apex: file uploaded in APEX Static Application Files
 *                         - c_source_type_workspace: file uploaded in APEX Workspace Files
 *                         - c_source_type_sql: SQL statement returning mime type and blob
 *                         - c_source_type_plsql_sql: PL/SQL function returning SQL statement with mime type and blob
 *                         - c_source_type_plsql: PL/SQL function returning JSON with the template file base64 encoded
 *                         - c_source_type_url: URL which contains the file (will be read from DB server)
 *                         - c_source_type_url_aop: URL which contains the file (will be read from AOP server)
 *                         - c_source_type_filename: file specified in a directory on the AOP Server
 *                         - c_source_type_db_directory: file specified in a directory on the Database Server, use DIRECTORY:filename
 *                         - c_source_type_json: JSON with the template file base64 encoded
 *                         - c_source_type_clob_base64: BLOB in CLOB base64 encoded (user apex_web_service.blob2clobbase64)
 *                         - c_source_type_aop_template: AOP will generate a starter template
 *                         - c_source_type_aop_report: AOP will use it's own template, used to generate one or more APEX regions
 *                         - c_source_type_apex_report: APEX will generate one region (native functionality)
 *                         - c_source_type_oci_objs: Oracle Cloud Infrastructure - Object Storage
 *                         - c_source_type_none: leave the source blank
 * @Param: p_output_type Extension (pdf, xlsx, ...) or mime type (application/pdf, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, ...) of the output format.
 *                       Following constants exists in aop_api_pkg:
 *                         - c_word_docx
 *                         - c_excel_xlsx
 *                         - c_powerpoint_pptx
 *                         - c_opendocument_odt
 *                         - c_opendocument_ods
 *                         - c_opendocument_odp
 *                         - c_pdf_pdf
 *                         - c_html_html
 *                         - c_markdown_md
 *                         - c_text_txt
 *                         - c_csv_csv
 *                         - c_word_rtf
 *                         - c_onepagepdf_pdf
 *                         - c_count_tags
 *                         - c_form_fields
 *                         - c_defined_by_apex_item
 * @Param: p_output_filename Filename of the result
 * @Param: p_output_type_item_name APEX Item holding the filename
 * @Param: p_output_to Where does the blob or file need to be sent to:
 *                         - c_output_browser: the browser will open the file
 *                         - c_output_inline: the output is defined for showing inline in a region
 *                         - c_output_directory: the file is stored on the AOP Server in this directory
 *                         - c_output_db_directory: the file is stored on the Database Server in this directory
 *                         - c_output_cloud: a file is sent to the cloud (Dropbox, Amazon S3, Google Drive, Oracle Cloud) using the credentials defined in g_cloud_provider, g_cloud_location and g_cloud_access_token
 *                         - c_output_procedure: a blob will be passed to a procedure which is defined in p_procedure.
 *                           The procedure definition needs to be: proc_name(p_output_blob in blob, p_output_filename in varchar2, p_output_mime_type in varchar2)
 *                         - c_output_procedure_browser: a blob will be passed to a procedure which is defined in p_procedure and the file is sent to the browser
 *                         - c_output_procedure_inline: a blob will be passed to a procedure which is defined in p_procedure and the file is showing inline in a region
 *                         - c_output_async: the blob will be empty and a URL will be passed to g_async_url where the file will be available to download when AOP is finished. Use the poll_async_file procedure to check and download the file.
 *                           Optionally a procedure can be defined in p_procedure with the following definition: proc_name(p_async_status in varchar2, p_async_message in varchar2, p_async_url in varchar2, p_output_filename in varchar2, p_output_mime_type in varchar2)
 *                         - c_output_web_service: AOP will call the web service (a POST Request) defined in g_web_service_url once AOP is finished producing the file. Extra headers can be added to the POST request by defining them in g_web_service_headers
 *                         - c_apex_office_edit: a blob will be passed to a procedure which is defined in p_procedure and the file can be shown directly in APEX Office Edit (AOE), the editor that can show and edit Word, Excel, PowerPoint, PDF, and Text straight from the browser.
 *                           The procedure definition needs to be: proc_name(p_output_blob in blob, p_output_filename in varchar2, p_output_mime_type in varchar2)
 * @Param: p_procedure Procedure that needs to be called when the file is merged
 * @Param: p_binds Bind variable for SQL or PL/SQL Source
 * @Param: p_special Special settings defined in the APEX Plug-in concerning Reports (colon separated).
 *                   Following constants can be used:
 *                        - c_special_number_as_string
 *                        - c_special_report_as_label
 *                        - c_special_ir_filters_top
 *                        - c_special_ir_highlights_top
 *                        - c_special_ir_excel_header_f
 *                        - c_special_ir_saved_report
 *                        - c_special_ir_repeat_header
 * @Param: p_aop_remote_debug Turning debugging on will generate the JSON that is sent to the AOP Server in a file. The actual request to the AOP Server is not done. Following constants can be used:
 *                        - c_debug_remote: store the JSON in your dashboard on https://www.apexofficeprint.com
 *                        - c_debug_local: store the JSON local on your pc
 *                        - c_debug_application_item: depending the Application item AOP_DEBUG, Remote (Yes) or Local (Local) or no debugging is done
 * @Param: p_output_converter Define the PDF converter you want to use. Multiple converters can be defined in the AOP Server. e.g. officetopdf, libreoffice, libreoffice-standalone
 * @Param: p_aop_url Description: URL where the AOP Server is running. For the AOP Cloud use c_aop_url
 * @Param: p_api_key Description: API Key which can be found when you login at https://www.apexofficeprint.com
 * @Param: p_app_id APEX Application ID
 * @Param: p_page_id Page ID to call in the APEX application
 * @Param: p_user_name Username which should be used to create an APEX session
 * @Param: p_init_code Initialisation code which can be invoked in this package
 * @Param: p_output_encoding Following constants can be used: c_output_encoding_raw, c_output_encoding_base64
 * @Param: p_output_split Split PDF in multiple pages and create zip
 * @Param: p_output_merge Merge multiple files to one PDF
 * @Param: p_failover_aop_url: URL where the AOP Failover Server is running. For the AOP Cloud use c_aop_url_fallback
 * @Param: p_failover_procedure: Procedure which is called when the failover URL is being used, so you are warned the main AOP server has issues.
 * @Param: p_log_procedure: Procedure which can be defined to do your own extra logging.
 * @Param: p_prepend_files_sql: SQL statement which hold the files to include before the main report.
 *                              Format: select filename, mime_type, [file_blob, file_base64, url_call_from_db, url_call_from_aop, file_on_aop_server] from my_table
 *                              Between [] is optional and one or more columns can be included
 * @Param: p_append_files_sql: SQL statement which hold the files to include after the main report.
 *                             Format: select filename, mime_type, [file_blob, file_base64, url_call_from_db, url_call_from_aop, file_on_aop_server] from my_table
 *                             Between [] is optional and one or more columns can be included
 * @Param: p_media_files_sql: Coming soon (!); use AME API via https://www.apexmediaextension.com
 *                              Format: select filename, mime_type, [file_blob, file_base64, url_call_from_db, url_call_from_aop, file_on_aop_server],
 *                                             [media_width, media_max_width, media_height, media_max_height, media_watermark_text, media_watermark_image, media_properties, media_output_file_type]
 *                                        from my_table
 *                              Between [] is optional and one or more columns can be included
 * @Param: p_sub_templates_sql: SQL statement which hold the sub-template Word documents.
 *                             Format: select filename, mime_type, [file_blob, file_base64, url_call_from_db, url_call_from_aop, file_on_aop_server] from my_table
 *                             Between [] is optional and one or more columns can be included
 * @Param: p_ref_cursor: when data type is c_source_type_refcursor, we will read the ref cursor specified here
 * @Param: p_sql_array:  when data type is c_source_type_sql_arrea, different SQL statements can be passed by using t_query_list
 * @Param: p_ig_selected_pks: add a json object with the regions and selected primary keys in format {"region_static_id": pk} e.g. {"customers": 1}
 * @Return: blob in defined output format containing result of merged template(s) with data and prepend and append files.
 *
 * @Example:
 *<code>
 *declare
 *  l_binds           wwv_flow_plugin_util.t_bind_list;
 *  l_return          blob;
 *  l_output_filename varchar2(100) := 'output';
 *begin
 *  -- set the output to JSON, so we see what is being sent to the AOP Server (uncomment next line)
 *  -- aop_api_pkg.g_debug := 'Local';
 *  -- set output to own custom debug table (uncomment next line)
 *  -- aop_api_pkg.g_debug_procedure := 'aop_sample_pkg.custom_debug';
 *  --
 *  -- most minimalistic example
 *  l_return := aop_api_pkg.plsql_call_to_aop (
 *                p_data_type       => aop_api_pkg.c_source_type_json,
 *                p_data_source     => '[{"hello":"world"}]',
 *                p_template_type   => aop_api_pkg.c_source_type_aop_template,
 *                p_output_type     => 'docx',
 *                p_output_filename => l_output_filename,
 *                p_aop_url         => 'http://localhost:8010');
 *  --
 *  --
 *  l_return := aop_api_pkg.plsql_call_to_aop (
 *                p_data_type       => aop_api_pkg.c_source_type_rpt,
 *                p_data_source     => 'report1',
 *                p_template_type   => null,
 *                p_template_source => '',
 *                p_output_type     => 'docx',
 *                p_output_filename => l_output_filename,
 *                p_binds           => l_binds,
 *                p_aop_url         => 'http://api.apexofficeprint.com',
 *                p_api_key         => '<your API key>', -- change the API key if you use the AOP Cloud
 *                p_app_id          => 498,              -- change to APEX app id
 *                p_page_id         => 100);             -- change to APEX page id
 *
 *  -- write output to table (uncomment next line)
 *  -- insert into aop_output (output_blob, filename) values (l_return, l_output_filename);
 *end;
*/
function plsql_call_to_aop(
  p_data_type                 in varchar2 default c_source_type_sql,
  p_data_source               in clob     default null,
  p_template_type             in varchar2 default c_source_type_apex,
  p_template_source           in clob     default null,
  p_output_type               in varchar2 default c_pdf_pdf,
  p_output_filename           in out nocopy varchar2,
  p_output_type_item_name     in varchar2 default null,
  p_output_to                 in varchar2 default null,
  p_procedure                 in varchar2 default null,
  p_binds                     in wwv_flow_plugin_util.t_bind_list default c_binds,
  p_special                   in varchar2 default null,
  p_aop_remote_debug          in varchar2 default c_no,
  p_output_converter          in varchar2 default null,
  p_aop_url                   in varchar2 default null,
  p_api_key                   in varchar2 default null,
  p_aop_mode                  in varchar2 default null,
  p_app_id                    in number   default null,
  p_page_id                   in number   default null,
  p_user_name                 in varchar2 default null,
  p_init_code                 in clob     default c_init_null,
  p_output_encoding           in varchar2 default c_output_encoding_raw,
  p_output_split              in varchar2 default c_false,
  p_output_merge              in varchar2 default c_false,
  p_output_even_page          in varchar2 default c_false,
  p_output_merge_making_even  in varchar2 default c_false,
  p_failover_aop_url          in varchar2 default null,
  p_failover_procedure        in varchar2 default null,
  p_log_procedure             in varchar2 default null,
  p_prepend_files_sql         in clob     default null,
  p_append_files_sql          in clob     default null,
  p_media_files_sql           in clob     default null,
  p_sub_templates_sql         in clob     default null,
  p_ref_cursor                in sys_refcursor default null,
  p_sql_array                 in t_query_list default c_sql_array,
  p_ig_selected_pks           in varchar2 default null)
  return blob;
-- retrieve underlaying PL/SQL code of APEX Plug-in call
function show_plsql_call_plugin(
  p_process_id            in number   default null,
  p_dynamic_action_id     in number   default null,
  p_show_api_key          in varchar2 default c_no)
  return clob;
-- check to see if the AOP Server is running (function returning boolean)
function is_aop_accessible(
  p_url             in varchar2,
  p_proxy_override  in varchar2 default null,
  p_wallet_path     in varchar2 default null,
  p_wallet_pwd      in varchar2 default null)
  return boolean;
-- check to see if the AOP Server is running (procedure returning with htp.p and dbms_output)
procedure is_aop_accessible(
  p_url             in varchar2,
  p_proxy_override  in varchar2 default null,
  p_wallet_path     in varchar2 default null,
  p_wallet_pwd      in varchar2 default null);
-- send a sample request to the AOP Server
procedure send_aop_sample(
  p_url             in varchar2,
  p_proxy_override  in varchar2 default null,
  p_wallet_path     in varchar2 default null,
  p_wallet_pwd      in varchar2 default null);
-- check the version of the AOP Server (function)
function get_aop_server_version(
  p_url             in varchar2,
  p_proxy_override  in varchar2 default null,
  p_wallet_path     in varchar2 default null,
  p_wallet_pwd      in varchar2 default null)
  return varchar2;
-- check the version of the AOP Server (procedure)
procedure show_aop_server_version(
  p_url             in varchar2,
  p_proxy_override  in varchar2 default null,
  p_wallet_path     in varchar2 default null,
  p_wallet_pwd      in varchar2 default null);
-- check the version of the AOP Server (function)
function get_aop_plsql_version
  return varchar2;
-- check the version of the AOP Server (procedure)
procedure show_aop_plsql_version;
-- get supported template types (function)
function get_aop_template_types(
  p_url             in varchar2,
  p_proxy_override  in varchar2 default null,
  p_wallet_path     in varchar2 default null,
  p_wallet_pwd      in varchar2 default null)
  return varchar2;
-- get supported template types (procedure)
procedure show_aop_template_types(
  p_url             in varchar2,
  p_proxy_override  in varchar2 default null,
  p_wallet_path     in varchar2 default null,
  p_wallet_pwd      in varchar2 default null);
-- get supported output types (function)
function get_aop_output_type_for_tmpl(
  p_url             in varchar2,
  p_template_type   in varchar2 default null,
  p_proxy_override  in varchar2 default null,
  p_wallet_path     in varchar2 default null,
  p_wallet_pwd      in varchar2 default null)
  return varchar2;
-- get supported output types (function)
procedure show_aop_output_type_for_tmpl(
  p_url             in varchar2,
  p_template_type   in varchar2 default null,
  p_proxy_override  in varchar2 default null,
  p_wallet_path     in varchar2 default null,
  p_wallet_pwd      in varchar2 default null);
-- async call to retrieve the file based on a URL
procedure poll_async_file (
  p_aop_url              in varchar2,
  p_proxy_override       in varchar2 default null,
  p_wallet_path          in varchar2 default null,
  p_wallet_pwd           in varchar2 default null,
  p_async_url            in varchar2,
  o_async_status         out varchar2,
  o_async_message        out varchar2,
  o_async_file           out blob);
-- APEX Plugins
-- Process Type Plugin
function f_process_aop(
  p_process in apex_plugin.t_process,
  p_plugin  in apex_plugin.t_plugin)
  return apex_plugin.t_process_exec_result;
-- Dynamic Action Plugin
function f_render_aop (
  p_dynamic_action in apex_plugin.t_dynamic_action,
  p_plugin         in apex_plugin.t_plugin)
  return apex_plugin.t_dynamic_action_render_result;
function f_ajax_aop(
  p_dynamic_action in apex_plugin.t_dynamic_action,
  p_plugin         in apex_plugin.t_plugin)
  return apex_plugin.t_dynamic_action_ajax_result;
-- Other Procedure
-- Create an APEX session from PL/SQL
-- p_enable_debug: Yes / No (default)
procedure create_apex_session(
  p_app_id       in apex_applications.application_id%type,
  p_user_name    in apex_workspace_sessions.user_name%type default 'ADMIN',
  p_page_id      in apex_application_pages.page_id%type default null,
  p_session_id   in apex_workspace_sessions.apex_session_id%type default null,
  p_enable_debug in varchar2 default 'No');
-- Get the current APEX Session
function get_apex_session
  return apex_workspace_sessions.apex_session_id%type;
-- Join an APEX Session
procedure join_apex_session(
  p_session_id   in apex_workspace_sessions.apex_session_id%type,
  p_app_id       in apex_applications.application_id%type default null,
  p_page_id      in apex_application_pages.page_id%type default null,
  p_enable_debug in varchar2 default 'No');
-- Drop the current APEX Session
procedure drop_apex_session(
  p_app_id     in apex_applications.application_id%type default null,
  p_session_id in apex_workspace_sessions.apex_session_id%type default null);
end aop_api22_pkg;

/


--
-- AOP_CONVERT22_PKG  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--   APEX_PLUGIN (Synonym)
--
CREATE OR REPLACE package DETALES.aop_convert22_pkg
AUTHID CURRENT_USER
as
/* Copyright 2015-2023 - APEX RnD - United Codes
*/
-- CONSTANTS
/* AOP Version */
c_aop_version             constant varchar2(6) := '22.2';
c_aop_url                 constant varchar2(50) := 'http://api.apexofficeprint.com/'; -- for https use https://api.apexofficeprint.com/
-- Mime Types
c_mime_type_docx          constant varchar2(100) := 'application/vnd.openxmlformats-officedocument.wordprocessingml.document';
c_mime_type_xlsx          constant varchar2(100) := 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
c_mime_type_pptx          constant varchar2(100) := 'application/vnd.openxmlformats-officedocument.presentationml.presentation';
c_mime_type_pdf           constant varchar2(100) := 'application/pdf';
c_mime_type_html          constant varchar2(100) := 'text/html';
c_mime_type_markdown      constant varchar2(100) := 'text/markdown';
c_mime_type_rtf           constant varchar2(100) := 'application/rtf';
c_mime_type_json          constant varchar2(100) := 'application/json';
c_mime_type_text          constant varchar2(100) := 'text/plain';
c_mime_type_zip           constant varchar2(100) := 'application/zip';
c_pdf_pdf                 constant varchar2(3)  := 'pdf';
-- Output
c_output_encoding_raw     constant varchar2(3) := 'raw';
c_output_encoding_base64  constant varchar2(6) := 'base64';
/* Init */
c_init_null               constant varchar2(5) := 'null;';
c_source_type_sql         constant varchar2(3) := 'SQL';
-- VARIABLES
-- Logger
g_logger_enabled          boolean := false;       -- set to true to write extra debug output to logger - see https://github.com/OraOpenSource/Logger
-- Call to AOP
g_proxy_override          varchar2(300) := null;  -- null=proxy defined in the application attributes
g_https_host              varchar2(300) := null;  -- parameter for utl_http and apex_web_service
g_transfer_timeout        number(6)     := 1800;  -- default of APEX is 180
g_wallet_path             varchar2(300) := null;  -- null=defined in Manage Instance > Instance Settings
g_wallet_pwd              varchar2(300) := null;  -- null=defined in Manage Instance > Instance Settings
g_output_filename         varchar2(100) := null;  -- output
g_language                varchar2(2)   := 'en';  -- Language can be: en, fr, nl, de
g_logging                 clob          := '';    -- ability to add your own logging: e.g. "request_id":"123", "request_app":"APEX", "request_user":"RND"
g_debug                   varchar2(10)  := null;  -- set to 'Local' when only the JSON needs to be generated, 'Remote' for remore debug
g_debug_procedure         varchar2(4000):= null;  -- when debug in APEX is turned on, next to the normal APEX debug, this procedure will be called

--
-- Convert one or more files by using a SQL query with following syntax (between [] can be one or more columns)
-- select filename, mime_type, [file_blob, file_base64, url_call_from_db, url_call_from_aop, file_on_aop_server] from my_table
--
function convert_files(
  p_query                 in clob,
  p_output_type           in varchar2 default c_pdf_pdf,
  p_output_encoding       in varchar2 default c_output_encoding_raw,
  p_output_to             in varchar2 default null,
  p_output_filename       in out nocopy varchar2,
  p_output_converter      in varchar2 default null,
  p_output_collection     in varchar2 default null,
  p_aop_remote_debug      in varchar2 default 'No',
  p_aop_url               in varchar2 default null,
  p_api_key               in varchar2 default null,
  p_aop_mode              in varchar2 default null,
  p_app_id                in number   default null,
  p_page_id               in number   default null,
  p_user_name             in varchar2 default null,
  p_init_code             in clob     default c_init_null,
  p_failover_aop_url      in varchar2 default null,
  p_failover_procedure    in varchar2 default null,
  p_log_procedure         in varchar2 default null,
  p_procedure             in varchar2 default null
) return blob;
-- APEX Plugins
-- Process Type Plugin
/*
function f_process_aop(
  p_process in apex_plugin.t_process,
  p_plugin  in apex_plugin.t_plugin)
  return apex_plugin.t_process_exec_result;
*/
-- Dynamic Action Plugin
function f_render_aop (
  p_dynamic_action in apex_plugin.t_dynamic_action,
  p_plugin         in apex_plugin.t_plugin)
  return apex_plugin.t_dynamic_action_render_result;
function f_ajax_aop(
  p_dynamic_action in apex_plugin.t_dynamic_action,
  p_plugin         in apex_plugin.t_plugin)
  return apex_plugin.t_dynamic_action_ajax_result;
end aop_convert22_pkg;

/


--
-- AOP_PLSQL22_PKG  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE package DETALES.aop_plsql22_pkg
AUTHID CURRENT_USER
as
/* Copyright 2015-2023 - APEX RnD - United Codes
*/
/* AOP Version */
c_aop_version  constant varchar2(6)   := '22.2';
--
-- Pre-requisites: apex_web_service package
-- if APEX is not installed, you can use this package as your starting point
-- but you would need to change the apex_web_service calls by utl_http calls or similar
--
--
-- Change following variables for your environment
--
g_aop_url  varchar2(200) := 'http://api.apexofficeprint.com/';                  -- for https use https://api.apexofficeprint.com/
g_api_key  varchar2(200) := '';    -- change to your API key in APEX 18 or above you can use apex_app_setting.get_value('AOP_API_KEY')
g_aop_mode varchar2(15)  := null;  -- AOP Mode can be development or production; when running in development no cloud credits are used but a watermark is printed
-- Global variables
-- Call to AOP
g_proxy_override          varchar2(300) := null;  -- null=proxy defined in the application attributes
g_transfer_timeout        number(6)     := 180;   -- default is 180
g_wallet_path             varchar2(300) := null;  -- null=defined in Manage Instance > Instance Settings
g_wallet_pwd              varchar2(300) := null;  -- null=defined in Manage Instance > Instance Settings
-- Output parameters
--### Output
g_output_directory          varchar2(200) := '.';   -- set output directory on AOP Server, if . is specified the files are saved in the default directory: outputfiles
g_output_sign_certificate   varchar2(32000) := null;-- sign PDF with signature which is base64 encoded
g_output_split              varchar2(5)   := null;  -- split file: one file per page: true/false
g_output_merge              varchar2(5)   := null;  -- merge files into one PDF true/false
g_output_icon_font          varchar2(20)  := null;  -- the icon font to use for the output, Font-APEX or Font Awesome 5 (default)
g_output_even_page          varchar2(5)   := null;  -- PDF option to always print even pages (necessary for two-sided pages): true/false
g_output_merge_making_even  varchar2(5)   := null;  -- PDF option to merge making all documents even paged (necessary for two-sided pages): true/false
g_output_page_margin        varchar2(50)  := null;  -- HTML to PDF option: margin in px, can also add top, bottom, left, right
g_output_page_orientation   varchar2(10)  := null;  -- HTML to PDF option: portrait (default) or landscape
g_output_page_width         varchar2(10)  := null;  -- HTML to PDF option: width in px, mm, cm, in. No unit means px.
g_output_page_height        varchar2(10)  := null;  -- HTML to PDF option: height in px, mm, cm, in. No unit means px.
g_output_page_format        varchar2(10)  := null;  -- HTML to PDF option: a4 (default), letter
g_output_remove_last_page   boolean       := false; -- PDF option to remove the last page; e.g. when the last page is empty
--### PDF
g_output_read_password      varchar2(200) := null;  -- protect PDF to read
g_output_modify_password    varchar2(200) := null;  -- protect PDF to write (modify)
g_output_pwd_protection_flag number(4)    := null;  -- optional; default is 4.
                                                    -- Number when bit calculation is done as specified in http://pdfhummus.com/post/147451287581/hummus-1058-and-pdf-writer-updates-encryption
g_output_correct_page_nr    boolean        := false;-- boolean to check for AOPMergePage text to replace it with the page number.
g_output_lock_form          boolean        := false;-- boolean that determines if the pdf forms should be locked/flattened.
g_identify_form_fields      boolean        := false;-- boolean that fills in the name of the fields of a PDF Form in the field itself so it's easy to identify which field is at what position
g_output_watermark          varchar2(4000) := null; -- Watermark in PDF
g_output_watermark_color    varchar2(500)  := null; -- Watermark option color
g_output_watermark_font     varchar2(500)  := null; -- Watermark option font
g_output_watermark_width    varchar2(500)  := null; -- Watermark option width
g_output_watermark_height   varchar2(500)  := null; -- Watermark option height
g_output_watermark_opacity  varchar2(500)  := null; -- Watermark option opacity
g_output_watermark_rotation varchar2(500)  := null; -- Watermark option rotation
g_output_copies             number         := null; -- Requires output pdf, repeats the output pdf for the given number of times.
--### CSV
g_output_text_delimiter     varchar2(200) := null;  --
g_output_field_separator    varchar2(200) := null;  --
g_output_character_set      varchar2(200) := null;  --
-- Constants
c_mime_type_docx        constant varchar2(100) := 'application/vnd.openxmlformats-officedocument.wordprocessingml.document';
c_mime_type_xlsx        constant varchar2(100) := 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';
c_mime_type_pptx        constant varchar2(100) := 'application/vnd.openxmlformats-officedocument.presentationml.presentation';
c_mime_type_pdf         constant varchar2(100) := 'application/pdf';
c_mime_type_html        constant varchar2(9)   := 'text/html';
c_mime_type_markdown    constant varchar2(13)  := 'text/markdown';
function make_aop_request(
  p_aop_url            in varchar2 default g_aop_url,
  p_api_key            in varchar2 default g_api_key,
  p_aop_mode           in varchar2 default g_aop_mode,
  p_json               in clob,
  p_template           in blob,
  p_template_type      in varchar2 default null,
  p_output_encoding    in varchar2 default 'raw', -- change to raw to have binary, change to base64 to have base64 encoded
  p_output_type        in varchar2 default null,
  p_output_filename    in varchar2 default 'output',
  p_aop_remote_debug   in varchar2 default 'No',
  p_output_converter   in varchar2 default '',
  p_prepend_files_json in clob default null,
  p_append_files_json  in clob default null)
  return blob;
end aop_plsql22_pkg;

/


--
-- APEX_IMPORT_JOB_IDE  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE DETALES.apex_import_job_ide
AS
    FUNCTION is_changed(ip_configurationid   IN NUMBER
                       ,sp_sdirectory        IN VARCHAR2
                       ,sp_sfile_name        IN VARCHAR2)
        RETURN NUMBER;

    PROCEDURE start_job(sp_filename        IN     VARCHAR2
                       ,ip_carid           IN     NUMBER
                       ,ip_order_type_id   IN     NUMBER
                       ,ip_supplier_id     IN     NUMBER
                       ,ip_blobid          IN     NUMBER
                       ,ip_return          IN OUT NUMBER);

    PROCEDURE start_transfer(ip_return OUT NUMBER);

    FUNCTION get_blob(sp_unique_dir_name   IN     VARCHAR2
                     ,sp_sfilename         IN     VARCHAR2
                     ,ip_return            IN OUT NUMBER)
        RETURN NUMBER;

    PROCEDURE finish_job(ip_return          IN     NUMBER
                        ,ip_car_id          IN     NUMBER
                        ,ip_supplier_id     IN     NUMBER
                        ,ip_order_type_id   IN     NUMBER);
END;
/


--
-- API_PART_SCANNER  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE DETALES.api_part_scanner
AS
    ig_status_fully_retrieved       CONSTANT NUMBER := 17;
    ig_status_not_fully_retrieved   CONSTANT NUMBER := 16;


    PROCEDURE apply_part(spart_code_in     IN     VARCHAR2
                        ,nsupplier_id_in   IN     NUMBER
                        ,npartcount        IN     NUMBER
                        ,nstatus              OUT NUMBER
                        ,nscan_id             OUT NUMBER); -- 0 Nerasta, 1 Viskas ok, -1 Klaida


    PROCEDURE check_part(spart_code_in     IN     VARCHAR2
                        ,nsupplier_id_in   IN     NUMBER
                        ,npart_count          OUT NUMBER
                        ,nstatus              OUT NUMBER); -- Status options: -2 - nenumatytas erroras; -1 - neteisingas detales kodas; 0 - detale nepriklauso jokiam orderiui; 1 - detale galima prideti prie orderio

    PROCEDURE apply_surplus(spart_code_in     IN     VARCHAR2
                           ,nsupplier_id_in   IN     NUMBER
                           ,npartcount        IN     NUMBER
                           ,nstatus              OUT NUMBER);

    PROCEDURE generate_box(nclient_id   IN     NUMBER
                          ,sbox_code       OUT VARCHAR2
                          ,nbox_id         OUT NUMBER
                          ,nstatus_id      OUT NUMBER);

    PROCEDURE pack_part(nlclient_id    IN     NUMBER
                       ,slpart_code    IN     VARCHAR2
                       ,nlpart_count   IN     NUMBER
                       ,nlboxid        IN     NUMBER
                       ,nlast_part       OUT NUMBER
                       ,slpart_name       OUT VARCHAR2
                       ,nlstatus_id       OUT NUMBER);
END;
/


--
-- COM_FOS_INTERACTIVE_GRID_PROCESS_ROWS  (Package) 
--
--  Dependencies: 
--   APEX_PLUGIN (Synonym)
--
CREATE OR REPLACE package DETALES.com_fos_interactive_grid_process_rows
as

    function render
      ( p_dynamic_action in apex_plugin.t_dynamic_action
      , p_plugin         in apex_plugin.t_plugin
      )
    return apex_plugin.t_dynamic_action_render_result;

    function ajax
      ( p_dynamic_action in apex_plugin.t_dynamic_action
      , p_plugin         in apex_plugin.t_plugin
      )
    return apex_plugin.t_dynamic_action_ajax_result;

end;
/


--
-- COM_FOS_PLSQL_DYNAMIC_CONTENT  (Package) 
--
--  Dependencies: 
--   APEX_PLUGIN (Synonym)
--   STANDARD (Package)
--
CREATE OR REPLACE package DETALES.com_fos_plsql_dynamic_content
as

    function render
      ( p_region              in apex_plugin.t_region
      , p_plugin              in apex_plugin.t_plugin
      , p_is_printer_friendly in boolean
      )
    return apex_plugin.t_region_render_result;

    function ajax
      ( p_region in apex_plugin.t_region
      , p_plugin in apex_plugin.t_plugin
      )
    return apex_plugin.t_region_ajax_result;

end;
/


--
-- COM_FOS_SPINNER_ACTIONS  (Package) 
--
--  Dependencies: 
--   APEX_PLUGIN (Synonym)
--
CREATE OR REPLACE package DETALES.com_fos_spinner_actions
as

    function render
      ( p_dynamic_action in apex_plugin.t_dynamic_action
      , p_plugin         in apex_plugin.t_plugin
      )
    return apex_plugin.t_dynamic_action_render_result;

end;
/


--
-- FILE_LIST_API  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE DETALES.file_list_api AS

FUNCTION list (p_path  IN  VARCHAR2) RETURN VARCHAR2
AS LANGUAGE JAVA
NAME 'FileListHandler.list (java.lang.String) return java.lang.String';

END file_list_api;
/


--
-- PKG_SESSION_LONGOPS  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE DETALES.pkg_session_longops is
  procedure do_init (p_opname in varchar2, p_target in number, p_units in varchar2);
  procedure do_update (p_opname in varchar2, p_status in number);
end pkg_session_longops;
/


--
-- PRETIUS_APEX_NESTED_REPORTS  (Package) 
--
--  Dependencies: 
--   APEX_PLUGIN (Synonym)
--
CREATE OR REPLACE package DETALES.PRETIUS_APEX_NESTED_REPORTS as

  function pretius_row_details (
    p_dynamic_action in apex_plugin.t_dynamic_action,
    p_plugin         in apex_plugin.t_plugin
  ) return apex_plugin.t_dynamic_action_render_result;

  function pretius_row_details_ajax(
    p_dynamic_action in apex_plugin.t_dynamic_action,
    p_plugin         in apex_plugin.t_plugin
  ) return apex_plugin.t_dynamic_action_ajax_result;

end;
/


--
-- PRETIUS_SMART_CHECKBOX_COLUMN  (Package) 
--
--  Dependencies: 
--   APEX_PLUGIN (Synonym)
--
CREATE OR REPLACE PACKAGE DETALES.PRETIUS_SMART_CHECKBOX_COLUMN AS

FUNCTION f_render(
  p_dynamic_action in apex_plugin.t_dynamic_action,
  p_plugin         in apex_plugin.t_plugin
) return apex_plugin.t_dynamic_action_render_result;

FUNCTION f_ajax(
  p_dynamic_action IN apex_plugin.t_dynamic_action,
  p_plugin         IN apex_plugin.t_plugin
) return apex_plugin.t_dynamic_action_ajax_result;

END PRETIUS_SMART_CHECKBOX_COLUMN;
/


--
-- PRICE_LIST_PARSER  (Package) 
--
--  Dependencies: 
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE DETALES.price_list_parser
AS
    sg_import_check_start      CONSTANT VARCHAR2(100) := 'Starting import check...';
    sg_import_check_end        CONSTANT VARCHAR2(100) := 'Import check was done.';
    sg_import_check_success    CONSTANT VARCHAR2(100) := 'No errors were found during initial check';
    sg_import_start            CONSTANT VARCHAR2(100) := 'Starting import...';
    sg_import_end              CONSTANT VARCHAR2(100) := 'Import was done.';
    sg_import_success          CONSTANT VARCHAR2(100) := 'No errors were found during import';
    sg_part_code_error_msg     CONSTANT VARCHAR2(100) := 'Part code is null or too long!';
    sg_part_name_error_msg     CONSTANT VARCHAR2(100) := 'This part name is too long!';
    sg_part_price_error_msg    CONSTANT VARCHAR2(100) := 'Price is not numeric or it is negative!';
    sg_alter_code_error_msg    CONSTANT VARCHAR2(100) := 'Alter code is too long!';
    sg_length_error_msg        CONSTANT VARCHAR2(100) := 'Part length is bad!';
    sg_width_error_msg         CONSTANT VARCHAR2(100) := 'Part width is bad!';
    sg_height_error_msg        CONSTANT VARCHAR2(100) := 'Part height is bad!';
    sg_weight_error_msg        CONSTANT VARCHAR2(100) := 'Part weight is bad!';
    ig_max_part_code_length    CONSTANT NUMBER := 30;
    ig_max_part_name_length    CONSTANT NUMBER := 100;
    ig_max_price_length        CONSTANT NUMBER := 100;
    ig_max_alter_code_length   CONSTANT NUMBER := 30;
    ig_commit_size             CONSTANT NUMBER := 20;

    PROCEDURE parse_wess(sp_filename          IN VARCHAR2
                        ,ip_car_id            IN NUMBER
                        ,ip_order_type_id     IN NUMBER
                        ,ip_supplier_id       IN NUMBER
                        ,dp_expiration_date   IN DATE
                        ,np_import_id         IN NUMBER
                        ,ip_mode              IN NUMBER
                        ,ip_sftp              IN NUMBER);

    PROCEDURE parse_ronax(sp_filename          IN VARCHAR2
                         ,ip_car_id            IN NUMBER
                         ,ip_order_type_id     IN NUMBER
                         ,ip_supplier_id       IN NUMBER
                         ,dp_expiration_date   IN DATE
                         ,np_import_id         IN NUMBER
                         ,ip_mode              IN NUMBER
                         ,ip_sftp              IN NUMBER);

    PROCEDURE parse_halle(sp_filename          IN VARCHAR2
                         ,ip_car_id            IN NUMBER
                         ,ip_order_type_id     IN NUMBER
                         ,ip_supplier_id       IN NUMBER
                         ,dp_expiration_date   IN DATE
                         ,np_import_id         IN NUMBER
                         ,ip_mode              IN NUMBER
                         ,ip_sftp              IN NUMBER);

    PROCEDURE parse_original(sp_filename          IN VARCHAR2
                            ,ip_car_id            IN NUMBER
                            ,ip_order_type_id     IN NUMBER
                            ,ip_supplier_id       IN NUMBER
                            ,dp_expiration_date   IN DATE
                            ,np_import_id         IN NUMBER
                            ,ip_mode              IN NUMBER
                            ,ip_sftp              IN NUMBER);

    PROCEDURE parse_domenikss(sp_filename          IN VARCHAR2
                             ,ip_car_id            IN NUMBER
                             ,ip_order_type_id     IN NUMBER
                             ,ip_supplier_id       IN NUMBER
                             ,dp_expiration_date   IN DATE
                             ,np_import_id         IN NUMBER
                             ,ip_mode              IN NUMBER
                             ,ip_sftp              IN NUMBER);

    PROCEDURE parse_efa(sp_filename          IN VARCHAR2
                       ,ip_car_id            IN NUMBER
                       ,ip_order_type_id     IN NUMBER
                       ,ip_supplier_id       IN NUMBER
                       ,dp_expiration_date   IN DATE
                       ,np_import_id         IN NUMBER
                       ,ip_mode              IN NUMBER
                       ,ip_sftp              IN NUMBER);

    PROCEDURE parse_skoda(sp_filename          IN VARCHAR2
                         ,ip_car_id            IN NUMBER
                         ,ip_order_type_id     IN NUMBER
                         ,ip_supplier_id       IN NUMBER
                         ,dp_expiration_date   IN DATE
                         ,np_import_id         IN NUMBER
                         ,ip_mode              IN NUMBER
                         ,ip_sftp              IN NUMBER);

    PROCEDURE parse_porsche(sp_filename          IN VARCHAR2
                           ,ip_car_id            IN NUMBER
                           ,ip_order_type_id     IN NUMBER
                           ,ip_supplier_id       IN NUMBER
                           ,dp_expiration_date   IN DATE
                           ,np_import_id         IN NUMBER
                           ,ip_mode              IN NUMBER
                           ,ip_sftp              IN NUMBER);

    PROCEDURE parse_data(sp_filename          IN VARCHAR2
                        ,ip_car_id            IN NUMBER
                        ,ip_order_type_id     IN NUMBER
                        ,ip_supplier_id       IN NUMBER
                        ,dp_expiration_date   IN DATE
                        ,np_import_id         IN NUMBER
                        ,ip_mode              IN NUMBER
                        ,ip_sftp              IN NUMBER);

    PROCEDURE parse_autocarat_bmw(sp_filename          IN VARCHAR2
                                 ,ip_car_id            IN NUMBER
                                 ,ip_order_type_id     IN NUMBER
                                 ,ip_supplier_id       IN NUMBER
                                 ,dp_expiration_date   IN DATE
                                 ,np_import_id         IN NUMBER
                                 ,ip_mode              IN NUMBER
                                 ,ip_sftp              IN NUMBER);
END price_list_parser;
/


--
-- AOP_API22_PKG  (Package Body) 
--
--  Dependencies: 
--   AOP_API22_PKG (Package)
--   STANDARD (Package)
--   DBMS_STANDARD (Package)
--   DBMS_LOB (Package)
--   DBMS_SQL (Package)
--   XMLTYPE (Type)
--   DBMS_DB_VERSION (Package)
--   HTP (Package)
--   DUAL (Synonym)
--   PLITBLM (Synonym)
--   NLS_SESSION_PARAMETERS (Synonym)
--   DBMS_LOB (Synonym)
--   DBMS_SQL (Synonym)
--   DBMS_OUTPUT (Synonym)
--   UTL_FILE (Synonym)
--   DBMS_UTILITY (Synonym)
--   UTL_ENCODE (Synonym)
--   DBMS_DB_VERSION (Synonym)
--   UTL_RAW (Synonym)
--   OWA_UTIL (Synonym)
--   WPG_DOCLOAD (Synonym)
--   APEX_WORKSPACE_STATIC_FILES (Synonym)
--   APEX_APPLICATION_GLOBAL (Synonym)
--   V (Synonym)
--   WWV_FLOW (Synonym)
--   APEX_APPLICATION (Synonym)
--   WWV_FLOW_API (Synonym)
--   APEX_COLLECTIONS (Synonym)
--   APEX_COLLECTION (Synonym)
--   APEX_ESCAPE (Synonym)
--   APEX_T_VARCHAR2 (Synonym)
--   APEX_UTIL (Synonym)
--   APEX_WEB_SERVICE (Synonym)
--   APEX_REGION (Synonym)
--   APEX_JAVASCRIPT (Synonym)
--   APEX_PLUGIN (Synonym)
--   APEX_PLUGIN_UTIL (Synonym)
--   WWV_FLOW_PLUGIN_UTIL (Synonym)
--   APEX_IR (Synonym)
--   APEX_JSON (Synonym)
--   APEX_SESSION (Synonym)
--   APEX_STRING (Synonym)
--   APEX_EXEC (Synonym)
--   APEX_IG (Synonym)
--   APEX_DATA_EXPORT (Synonym)
--   APEX_WORKSPACE_SESSIONS (Synonym)
--   APEX_APPLICATIONS (Synonym)
--   APEX_APPLICATION_PAGES (Synonym)
--   APEX_APPLICATION_SUBSTITUTIONS (Synonym)
--   APEX_APPLICATION_PAGE_ITEMS (Synonym)
--   APEX_APPL_PAGE_FACETS (Synonym)
--   APEX_APPLICATION_PAGE_REGIONS (Synonym)
--   APEX_APPLICATION_PAGE_REG_COLS (Synonym)
--   APEX_APPLICATION_PAGE_RPT (Synonym)
--   APEX_APPLICATION_PAGE_RPT_COLS (Synonym)
--   APEX_APPLICATION_PAGE_PROC (Synonym)
--   APEX_APPLICATION_STATIC_FILES (Synonym)
--   APEX_APPL_PLUGIN_SETTINGS (Synonym)
--   APEX_APPLICATION_TRANS_MAP (Synonym)
--   APEX_RELEASE (Synonym)
--   APEX_APPLICATION_PAGE_IR (Synonym)
--   APEX_APPLICATION_PAGE_IR_COL (Synonym)
--   APEX_APPLICATION_PAGE_IR_RPT (Synonym)
--   APEX_APPLICATION_PAGE_IR_COMP (Synonym)
--   APEX_APPLICATION_PAGE_IR_COND (Synonym)
--   APEX_APPLICATION_PAGE_IR_GRPBY (Synonym)
--   APEX_APPLICATION_PAGE_IR_PIVOT (Synonym)
--   APEX_APPLICATION_PAGE_IR_PVAGG (Synonym)
--   APEX_APPLICATION_PAGE_IR_PVSRT (Synonym)
--   APEX_APPL_PAGE_IG_COLUMNS (Synonym)
--   APEX_APPL_PAGE_IG_COL_GROUPS (Synonym)
--   APEX_APPL_PAGE_IGS (Synonym)
--   APEX_APPL_PAGE_IG_RPTS (Synonym)
--   APEX_APPL_PAGE_IG_RPT_VIEWS (Synonym)
--   APEX_APPL_PAGE_IG_RPT_FILTERS (Synonym)
--   APEX_APPL_PAGE_IG_RPT_COLUMNS (Synonym)
--   APEX_APPL_PAGE_IG_RPT_HIGHLTS (Synonym)
--   APEX_APPL_PAGE_IG_RPT_AGGS (Synonym)
--   APEX_APPL_PAGE_IG_RPT_CHT_COLS (Synonym)
--   APEX_APPLICATION_PAGE_DA (Synonym)
--   APEX_APPLICATION_PAGE_DA_ACTS (Synonym)
--   APEX_DEBUG (Synonym)
--   WWV_FLOW_T_VARCHAR2 (Type)
--   V (Function)
--   WWV_FLOW (Package)
--   WWV_FLOW_EXEC_API (Package)
--   WWV_FLOW_WEBSERVICES_API (Package)
--   WWV_FLOW_DATA_EXPORT_API (Package)
--   WWV_FLOW_IMP (Package)
--   HTMLDB_UTIL (Package)
--   AOP_API_PKG (Synonym)
--
CREATE OR REPLACE package body DETALES.aop_api22_pkg wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
b
6b303 13fad
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
MQ==

/


--
-- AOP_CONVERT22_PKG  (Package Body) 
--
--  Dependencies: 
--   AOP_CONVERT22_PKG (Package)
--   APEX_JAVASCRIPT (Synonym)
--   APEX_PLUGIN (Synonym)
--   APEX_UTIL (Synonym)
--   WWV_FLOW_API (Synonym)
--   DBMS_STANDARD (Package)
--   WWV_FLOW_IMP (Package)
--   DBMS_LOB (Package)
--   HTP (Package)
--   AOP_API_PKG (Synonym)
--   DBMS_LOB (Synonym)
--   HTMLDB_UTIL (Package)
--   APEX_DEBUG (Synonym)
--   APEX_APPLICATION_PAGE_DA_ACTS (Synonym)
--   APEX_JSON (Synonym)
--   STANDARD (Package)
--
CREATE OR REPLACE package body DETALES.aop_convert22_pkg wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
b
410e 1364
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

/


--
-- AOP_PLSQL22_PKG  (Package Body) 
--
--  Dependencies: 
--   AOP_PLSQL22_PKG (Package)
--   APEX_WEB_SERVICE (Synonym)
--   UTL_RAW (Synonym)
--   UTL_ENCODE (Synonym)
--   DBMS_LOB (Synonym)
--   PLITBLM (Synonym)
--   DBMS_STANDARD (Package)
--   STANDARD (Package)
--
CREATE OR REPLACE package body DETALES.aop_plsql22_pkg as
function replace_with_clob(
   p_source in clob
  ,p_search in varchar2
  ,p_replace in clob
) return clob
as
  l_pos pls_integer;
begin
  l_pos := instr(p_source, p_search);
  if l_pos > 0 then
    return substr(p_source, 1, l_pos-1)
      || p_replace
      || substr(p_source, l_pos+length(p_search));
  end if;
  return p_source;
end replace_with_clob;
/**
 * @Description: Example how to make a manual call to the AOP Server and generate the correct JSON.
 *
 * @Author: Dimitri Gielis
 * @Created: 9/1/2018
 *
 * @Param: p_aop_url URL of AOP Server
 * @Param: p_api_key API Key in case AOP Cloud is used
 * @Param: p_json Data in JSON format
 * @Param: p_template Template in blob format
 * @Param: p_output_encoding Encoding in raw or base64
 * @Param: p_output_type The extension of the output e.g. pdf, if no output type is defined, the same extension as the template is used
 * @Param: p_output_filename Filename of the result
 * @Param: p_aop_remote_debug Ability to do remote debugging in case the AOP Cloud is used
 * @Return: Resulting file where the template and data are merged and outputted in the requested format (output type).
 */
function make_aop_request(
  p_aop_url            in varchar2 default g_aop_url,
  p_api_key            in varchar2 default g_api_key,
  p_aop_mode           in varchar2 default g_aop_mode,
  p_json               in clob,
  p_template           in blob,
  p_template_type      in varchar2 default null,
  p_output_encoding    in varchar2 default 'raw',
  p_output_type        in varchar2 default null,
  p_output_filename    in varchar2 default 'output',
  p_aop_remote_debug   in varchar2 default 'No',
  p_output_converter   in varchar2 default '',
  p_prepend_files_json in clob default null,
  p_append_files_json  in clob default null)
  return blob
as
  l_aop_json          clob;
  l_template_clob     clob;
  l_template_type     varchar2(10);
  l_data_json         clob;
  l_output_type       varchar2(10);
  l_blob              blob;
  l_error_description varchar2(32767);
  l_amount                   integer := dbms_lob.lobmaxsize;
  l_dest_offset              integer := 1 ;
  l_src_offset               integer := 1 ;
  l_blob_csid                integer := dbms_lob.default_csid;
  l_lang_context             integer := dbms_lob.default_lang_ctx;
  l_warning                  integer := dbms_lob.warn_inconvertible_char;
begin
  l_template_clob := apex_web_service.blob2clobbase64(p_template);
  l_template_clob := replace(l_template_clob, chr(13) || chr(10), null);
  l_template_clob := replace(l_template_clob, '"', '\u0022');
  if p_template_type is null
  then
    if dbms_lob.instr(p_template, utl_raw.cast_to_raw('ppt/presentation'))> 0
    then
      l_template_type := 'pptx';
    elsif dbms_lob.instr(p_template, utl_raw.cast_to_raw('worksheets/'))> 0
    then
      l_template_type := 'xlsx';
    elsif dbms_lob.instr(p_template, utl_raw.cast_to_raw('word/document'))> 0
    then
      l_template_type := 'docx';
    else
      l_template_type := 'unknown';
    end if;
  else
      l_template_type := p_template_type;
  end if;
  if p_output_type is null
  then
    l_output_type := l_template_type;
  else
    l_output_type := p_output_type;
  end if;
  l_data_json := p_json;
  l_aop_json := '
  {
      "version": "***AOP_VERSION***",
      "api_key": "***AOP_API_KEY***",
      "mode": "***AOP_MODE***",
      "aop_remote_debug": "***AOP_REMOTE_DEBUG***",
      "template": {
        "file":"***AOP_TEMPLATE_BASE64***",
         "template_type": "***AOP_TEMPLATE_TYPE***"
      },
      "output": {
        "output_encoding": "***AOP_OUTPUT_ENCODING***",
        "output_type": "***AOP_OUTPUT_TYPE***",
        "output_converter": "***AOP_OUTPUT_CONVERTER***",
        "icon_font": "g_output_icon_font",
        "output_watermark": "g_output_watermark",
        "output_watermark_color": "g_output_watermark_color",
        "output_watermark_font": "g_output_watermark_font",
        "output_watermark_width": "g_output_watermark_width",
        "output_watermark_height": "g_output_watermark_height",
        "output_watermark_opacity": "g_output_watermark_opacity",
        "output_watermark_rotation": "g_output_watermark_rotation",
        "output_modify_password": "g_output_modify_password",
        "output_read_password": "g_output_read_password",
        "output_password_protection_flag": "g_output_pwd_protection_flag",
        "output_correct_page_number": g_output_correct_page_nr,
        "lock_form": g_output_lock_form,
        "identify_form_fields": g_identify_form_fields,
        "output_even_page": "g_output_even_page",
        "output_merge_making_even": "g_output_merge_making_even",
        "output_split": "g_output_split",
        "output_merge": "g_output_merge",
        "output_sign_certificate": "g_output_sign_certificate",
        "output_copies": "g_output_copies",
        "output_page_margin": "g_output_page_margin",
        "output_page_orientation": "g_output_page_orientation",
        "output_page_width": "g_output_page_width",
        "output_page_height": "g_output_page_height",
        "output_page_format": "g_output_page_format",
        "output_text_delimiter": "g_output_text_delimiter",
        "output_field_separator": "g_output_field_separator",
        "output_character_set": "g_output_character_set",
        "output_remove_last_page": "g_output_remove_last_page"
      },
      "files":
        ***AOP_DATA_JSON***,
      "prepend_files":
        ***AOP_PREPEND_FILES_JSON***,
      "append_files":
        ***AOP_APPEND_FILES_JSON***
  }';
  l_aop_json := replace(l_aop_json, '***AOP_VERSION***', c_aop_version);
  l_aop_json := replace(l_aop_json, '***AOP_API_KEY***', p_api_key);
  l_aop_json := replace(l_aop_json, '***AOP_MODE***', p_aop_mode);
  l_aop_json := replace(l_aop_json, '***AOP_REMOTE_DEBUG***', p_aop_remote_debug);
  l_aop_json := replace_with_clob(l_aop_json, '***AOP_TEMPLATE_BASE64***', l_template_clob);
  l_aop_json := replace_with_clob(l_aop_json, '***AOP_TEMPLATE_TYPE***', l_template_type);
  l_aop_json := replace(l_aop_json, '***AOP_OUTPUT_ENCODING***', p_output_encoding);
  l_aop_json := replace(l_aop_json, '***AOP_OUTPUT_TYPE***', l_output_type);
  l_aop_json := replace(l_aop_json, '***AOP_OUTPUT_CONVERTER***', p_output_converter);
  l_aop_json := replace_with_clob(l_aop_json, '***AOP_DATA_JSON***', l_data_json);
  l_aop_json := replace_with_clob(l_aop_json, '***AOP_PREPEND_FILES_JSON***', nvl(p_prepend_files_json,'[]'));
  l_aop_json := replace_with_clob(l_aop_json, '***AOP_APPEND_FILES_JSON***', nvl(p_append_files_json,'[]'));
  l_aop_json := replace(l_aop_json, 'g_output_icon_font', g_output_icon_font);
  l_aop_json := replace(l_aop_json, 'g_output_watermark_color', g_output_watermark_color);
  l_aop_json := replace(l_aop_json, 'g_output_watermark_font', g_output_watermark_font);
  l_aop_json := replace(l_aop_json, 'g_output_watermark_width', g_output_watermark_width);
  l_aop_json := replace(l_aop_json, 'g_output_watermark_height', g_output_watermark_height);
  l_aop_json := replace(l_aop_json, 'g_output_watermark_opacity', g_output_watermark_opacity);
  l_aop_json := replace(l_aop_json, 'g_output_watermark_rotation', g_output_watermark_rotation);
  l_aop_json := replace(l_aop_json, 'g_output_watermark', g_output_watermark);
  l_aop_json := replace(l_aop_json, 'g_output_modify_password', g_output_modify_password);
  l_aop_json := replace(l_aop_json, 'g_output_read_password', g_output_read_password);
  l_aop_json := replace(l_aop_json, 'g_output_pwd_protection_flag', to_char(g_output_pwd_protection_flag));
  l_aop_json := replace(l_aop_json, 'g_output_correct_page_nr', case when g_output_correct_page_nr then 'true' else 'false' end);
  l_aop_json := replace(l_aop_json, 'g_output_lock_form', case when g_output_lock_form then 'true' else 'false' end);
  l_aop_json := replace(l_aop_json, 'g_identify_form_fields', case when g_identify_form_fields then 'true' else 'false' end);
  l_aop_json := replace(l_aop_json, 'g_output_even_page', g_output_even_page);
  l_aop_json := replace(l_aop_json, 'g_output_merge_making_even', g_output_merge_making_even);
  l_aop_json := replace(l_aop_json, 'g_output_split', g_output_split);
  l_aop_json := replace(l_aop_json, 'g_output_merge', g_output_merge);
  l_aop_json := replace(l_aop_json, 'g_output_sign_certificate', g_output_sign_certificate);
  l_aop_json := replace(l_aop_json, 'g_output_copies', to_char(g_output_copies));
  l_aop_json := replace(l_aop_json, 'g_output_page_margin', g_output_page_margin);
  l_aop_json := replace(l_aop_json, 'g_output_page_orientation', g_output_page_orientation);
  l_aop_json := replace(l_aop_json, 'g_output_page_width', g_output_page_width);
  l_aop_json := replace(l_aop_json, 'g_output_page_height', g_output_page_height);
  l_aop_json := replace(l_aop_json, 'g_output_page_format', g_output_page_format);
  l_aop_json := replace(l_aop_json, 'g_output_text_delimiter', g_output_text_delimiter);
  l_aop_json := replace(l_aop_json, 'g_output_field_separator', g_output_field_separator);
  l_aop_json := replace(l_aop_json, 'g_output_character_set', g_output_character_set);
  l_aop_json := replace(l_aop_json, 'g_output_remove_last_page', case when g_output_remove_last_page then 'true' else 'false' end);
  l_aop_json := replace(l_aop_json, '\\n', '\n');
  --logger.log(p_text  => 'AOP JSON: ' || p_message, p_scope => 'AOP', p_extra => l_aop_json);
  if p_aop_remote_debug = 'Local'
  then
    dbms_lob.createtemporary(l_blob, false);
    dbms_lob.converttoblob (
        dest_lob    => l_blob,
        src_clob    => l_aop_json,
        amount      => l_amount,
        dest_offset => l_dest_offset,
        src_offset  => l_src_offset,
        blob_csid   => l_blob_csid,
        lang_context=> l_lang_context,
        warning     => l_warning
    );
  else
    apex_web_service.g_request_headers.delete;
    apex_web_service.g_request_headers(1).name := 'Content-Type';
    apex_web_service.g_request_headers(1).value := 'application/json';
    begin
      l_blob := apex_web_service.make_rest_request_b(
        p_url              => p_aop_url,
        p_http_method      => 'POST',
        p_body             => l_aop_json,
        p_proxy_override   => g_proxy_override,
        p_transfer_timeout => g_transfer_timeout,
        p_wallet_path      => g_wallet_path,
        p_wallet_pwd       => g_wallet_pwd);
    exception
    when others
    then
      raise_application_error(-20001,'Issue calling AOP Service (REST call: ' || apex_web_service.g_status_code || '): ' || CHR(10) || SQLERRM);
    end;
    -- read header variable and create error message
    -- HTTP Status Codes:
    --  200 is normal
    --  500 error received
    --  503 Service Temporarily Unavailable, the AOP server is probably not running
    if apex_web_service.g_status_code = 200
    then
      l_error_description := null;
    elsif apex_web_service.g_status_code = 503
    then
      l_error_description := 'AOP Server not running.';
    elsif apex_web_service.g_status_code = 500
    then
      for l_loop in 1.. apex_web_service.g_headers.count loop
        if apex_web_service.g_headers(l_loop).name = 'error_description'
        then
          l_error_description := apex_web_service.g_headers(l_loop).value;
          -- errors returned by AOP server are base64 encoded
          l_error_description := utl_encode.text_decode(l_error_description, 'AL32UTF8', UTL_ENCODE.BASE64);
        end if;
      end loop;
    else
      l_error_description := 'Unknown error. Check AOP server logs.';
    end if;
    -- YOU CAN STORE THE L_BLOB TO A LOCAL DEBUG TABLE AS AOP SERVER RETURNS A DOCUMENT WITH MORE INFORMATION
    --
    -- check if succesfull
    if apex_web_service.g_status_code <> 200
    then
      raise_application_error(-20002,'Issue returned by AOP Service (REST call: ' || apex_web_service.g_status_code || '): ' || CHR(10) || l_error_description);
    end if;
  end if;
  -- return print
  return l_blob;
end make_aop_request;
end aop_plsql22_pkg;

/


--
-- APEX_IMPORT_JOB_IDE  (Package Body) 
--
--  Dependencies: 
--   APEX_IMPORT_JOB_IDE (Package)
--   UTL_FILE (Synonym)
--   GET_FILES (Function)
--   DBMS_SCHEDULER (Synonym)
--   TEMPORARY_CONTENT (Table)
--   DBMS_LOB (Synonym)
--   DBMS_OUTPUT (Synonym)
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE BODY DETALES.apex_import_job_ide
AS
    FUNCTION is_changed(ip_configurationid   IN NUMBER
                       ,sp_sdirectory        IN VARCHAR2
                       ,sp_sfile_name        IN VARCHAR2)
        RETURN NUMBER
    IS
        ip_flag   NUMBER;
    BEGIN
        SELECT COUNT(1)
        INTO   ip_flag
        FROM   TABLE(get_files('/home/oracle/supplierDataImportDetales/' || sp_sdirectory)) gf --TODO: change sdirectory
        WHERE  gf.COLUMN_VALUE = sp_sfile_name;

        RETURN ip_flag;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 2;
    END;

    PROCEDURE start_job(sp_filename        IN     VARCHAR2
                       ,ip_carid           IN     NUMBER
                       ,ip_order_type_id   IN     NUMBER
                       ,ip_supplier_id     IN     NUMBER
                       ,ip_blobid          IN     NUMBER
                       ,ip_return          IN OUT NUMBER)
    AS
        l_job   VARCHAR2(4000);
    BEGIN
        BEGIN
            l_job := dbms_scheduler.generate_job_name(prefix => 'PARSE_PRICE_LIST');
            dbms_scheduler.create_job(job_name              => l_job
                                     ,job_type              => 'STORED_PROCEDURE'
                                     ,job_action            => 'price_list_parser.parse_data'
                                     ,number_of_arguments   => 8
                                     ,comments              => 'SFTP IMPORT OF ' || sp_filename || ' IS GOING TO BE CHECKED'
                                     ,enabled               => FALSE
                                     ,auto_drop             => FALSE);
            dbms_scheduler.set_job_argument_value(job_name            => l_job
                                                 ,argument_position   => 1
                                                 ,argument_value      => sp_filename);
            dbms_scheduler.set_job_argument_value(job_name            => l_job
                                                 ,argument_position   => 2
                                                 ,argument_value      => ip_carid);
            dbms_scheduler.set_job_argument_value(job_name            => l_job
                                                 ,argument_position   => 3
                                                 ,argument_value      => ip_order_type_id);
            dbms_scheduler.set_job_argument_value(job_name            => l_job
                                                 ,argument_position   => 4
                                                 ,argument_value      => ip_supplier_id);
            dbms_scheduler.set_job_argument_value(job_name            => l_job
                                                 ,argument_position   => 5
                                                 ,argument_value      => SYSDATE + 60); -- TODO SET ARGUMENT VALUES
            dbms_scheduler.set_job_argument_value(job_name            => l_job
                                                 ,argument_position   => 6
                                                 ,argument_value      => 0);
            dbms_scheduler.set_job_argument_value(job_name            => l_job
                                                 ,argument_position   => 7
                                                 ,argument_value      => 0);
            dbms_scheduler.set_job_argument_value(job_name            => l_job
                                                 ,argument_position   => 8
                                                 ,argument_value      => ip_blobid);

            dbms_output.put_line('l_job = ' || l_job);

            dbms_scheduler.run_job(job_name              => l_job
                                  ,use_current_session   => FALSE);

            dbms_output.put_line('l_job runs = ' || l_job);
        --        price_list_parser.parse_data(sp_filename,ip_carid,ip_order_type_id,ip_supplier_id,sysdate+10,0,0,ip_blobid);

        END;
    END;

    FUNCTION get_blob(sp_unique_dir_name   IN     VARCHAR2
                     ,sp_sfilename         IN     VARCHAR2
                     ,ip_return            IN OUT NUMBER)
        RETURN NUMBER
    AS
        bl            BLOB;
        bf            BFILE;
        dest_offset   INTEGER := 1;
        src_offset    INTEGER := 1;
        il_id         NUMBER;
    BEGIN
        dbms_lob.createtemporary(bl
                                ,TRUE);

        bf :=
            BFILENAME('WORK_DATA_DIR_' || sp_unique_dir_name
                     ,sp_sfilename);
        dbms_lob.open(bf
                     ,dbms_lob.lob_readonly);
        dbms_lob.loadblobfromfile(bl
                                 ,bf
                                 ,dbms_lob.getlength(bf)
                                 ,dest_offset
                                 ,src_offset);
        dbms_lob.close(bf);

        INSERT INTO temporary_content(b_blobcontent)
        VALUES      (bl)
        RETURNING   nid
        INTO        il_id;

        COMMIT;

        dbms_lob.freetemporary(bl);

        RETURN il_id;
    EXCEPTION
        WHEN OTHERS THEN
            ip_return := 405;
    END;

    PROCEDURE finish_job(ip_return          IN     NUMBER
                        ,ip_car_id          IN     NUMBER
                        ,ip_supplier_id     IN     NUMBER
                        ,ip_order_type_id   IN     NUMBER)
    AS
        sl_directory         VARCHAR2(30);
        sl_filename          VARCHAR2(30);
        sl_unique_dir_name   VARCHAR(10);
    BEGIN
        SELECT sunique_dir_name
              ,sdirectory
              ,sfile_name
        INTO    sl_unique_dir_name, sl_directory, sl_filename
        FROM   sftp_configuration
        WHERE  ncar_id = ip_car_id
        AND    nsupplier_id = ip_supplier_id
        AND    norder_type_id = ip_order_type_id;

        IF ip_return = 0 THEN
            utl_file.fremove('WORK_DATA_DIR_' || sl_unique_dir_name, sl_filename);
        ELSIF ip_return IS NULL THEN
            utl_file.frename('WORK_DATA_DIR_' || sl_unique_dir_name --
                ,sl_filename
                ,'WORK_DATA_DIR_' || sl_unique_dir_name || '_BAD'
                ,sl_filename);
        ELSE
            utl_file.frename('WORK_DATA_DIR_' || sl_unique_dir_name --
                ,sl_filename
                ,'WORK_DATA_DIR_' || sl_unique_dir_name || '_BAD'
                ,sl_filename);
        END IF;
    END;

    PROCEDURE start_transfer(ip_return OUT NUMBER)
    AS
        ip_blobid   NUMBER;
    BEGIN
        ip_return := 0;

        FOR x IN (SELECT * FROM sftp_configuration)
        LOOP
            IF is_changed(x.nid
                         ,x.sdirectory
                         ,x.sfile_name) = 1 THEN
                BEGIN
                    dbms_output.put_line('x.sunique_dir_name = ' || x.sunique_dir_name);

                    dbms_output.put_line('x.sfile_name = ' || x.sfile_name);

                    utl_file.frename('SUPPLIER_DATA_DIR_' || x.sunique_dir_name --
                                    ,x.sfile_name
                                    ,'WORK_DATA_DIR_' || x.sunique_dir_name
                                    ,x.sfile_name);
                EXCEPTION
                    WHEN OTHERS THEN
                        --TODO: IMPLEMENT EMAIL
                        dbms_output.put_line('Error');
                        ip_return := 404;
                        RETURN;
                END;

                IF ip_return = 0 THEN
                    ip_blobid :=
                        get_blob(x.sunique_dir_name
                                ,x.sfile_name
                                ,ip_return);

                    dbms_output.put_line('ip_blobid = ' || ip_blobid);

                    start_job(x.sfile_name
                             ,x.ncar_id
                             ,x.norder_type_id
                             ,x.nsupplier_id
                             ,ip_blobid
                             ,ip_return);
                END IF;
            END IF;
        END LOOP;
    END;
END;
/


--
-- API_PART_SCANNER  (Package Body) 
--
--  Dependencies: 
--   API_PART_SCANNER (Package)
--   V_ORDER_DETAIL_LABEL_INFO (View)
--   V_STORAGE_SUPPLIERS_PARTS_INFO (View)
--   SEQ_NSCAN_ID (Sequence)
--   SEQ_V_OVERSUPPLIED_PARTS (Sequence)
--   V_PART_SCANNING_HISTORY (Table)
--   V_OVERSUPPLIED_PARTS (Table)
--   V_ORDER_DETAILS (Table)
--   V_STORAGE_SUPPLIERS_PARTS (Table)
--   V_STORAGE_PARTS (Table)
--   STANDARD (Package)
--   V_ORDERS (Table)
--
CREATE OR REPLACE PACKAGE BODY DETALES.api_part_scanner
AS
    PROCEDURE apply_part(spart_code_in     IN     VARCHAR2 --TODO: ADD HISTORIZATION
                        ,nsupplier_id_in   IN     NUMBER
                        ,npartcount        IN     NUMBER
                        ,nstatus              OUT NUMBER
                        ,nscan_id             OUT NUMBER) -- 0 Nerasta, 1 Viskas ok, -1 Klaida, -2 Klaida overall
    IS
        nl_status_id       NUMBER;
        nl_qnt             NUMBER;
        nl_qnt_retrieved   NUMBER;
        nl_part_count      NUMBER := npartcount;
        nl_car_id          NUMBER;
        nl_car_model_id    NUMBER;
        sl_sname           VARCHAR2(100);
        nl_price           NUMBER;
    BEGIN
        nscan_id := seq_nscan_id.NEXTVAL;

        IF npartcount <= 0 THEN
            nstatus := -1;
            RETURN;
        END IF;

        FOR rl IN (SELECT od.nid     AS nid
                         ,o.nid      AS order_nid
                   FROM   v_orders                   o
                         ,v_order_detail_label_info  od
                   WHERE  o.nid = od.norder_id
                   AND    od.spart_code = spart_code_in
                   AND    od.nsupplier_id = nsupplier_id_in
                   AND    nqnt_diff != 0
                   AND    od.nstatus_id IN (14
                                           ,16))
        LOOP
            DECLARE
                nl_part_count_missing   NUMBER;
                nl_order_id             NUMBER;
                nl_order_status         NUMBER;
                nl_is_fully_ordered     NUMBER;
            BEGIN
                SELECT   od.nqnt_diff
                        ,od.norder_id
                        ,norderstatus_id
                INTO     nl_part_count_missing
                        ,nl_order_id
                        ,nl_order_status
                FROM     v_order_detail_label_info od
                WHERE    rl.nid = od.nid
                ORDER BY od.dtcreated_at
                FETCH    FIRST ROW ONLY;

                IF nl_part_count >= 1 THEN
                    nl_part_count := nl_part_count - nl_part_count_missing;

                    IF nl_part_count >= 0 THEN
                        UPDATE v_order_details
                        SET    nqnt_retrieved = nqnt_retrieved + nl_part_count_missing
                        WHERE  nid = rl.nid;
                    ELSIF nl_part_count < 0 THEN
                        WHILE nl_part_count < 0
                        LOOP
                            nl_part_count := nl_part_count + 1;
                            nl_part_count_missing := nl_part_count_missing - 1;
                        END LOOP;

                        UPDATE v_order_details
                        SET    nqnt_retrieved = nqnt_retrieved + nl_part_count_missing
                        WHERE  nid = rl.nid;
                    END IF;

                    COMMIT;

                    SELECT nqnt_retrieved
                          ,nqnt
                          ,nstatus_id
                    INTO   nl_qnt_retrieved
                          ,nl_qnt
                          ,nl_status_id
                    FROM   v_order_details
                    WHERE  nid = rl.nid;

                    IF nl_qnt_retrieved = nl_qnt THEN
                        UPDATE v_order_details
                        SET    nstatus_id = ig_status_fully_retrieved
                        WHERE  nid = rl.nid;

                        BEGIN
                            SELECT SUM(nqnt_diff)
                            INTO   nl_is_fully_ordered
                            FROM   v_order_detail_label_info
                            WHERE  norder_id = rl.order_nid;

                            IF nl_is_fully_ordered = 0 THEN
                                UPDATE v_orders
                                SET    nstatus_id = 7
                                WHERE  nid = rl.order_nid;
                            END IF;
                        EXCEPTION
                            WHEN OTHERS THEN
                                NULL;
                        END;
                    ELSIF nl_qnt_retrieved < nl_qnt
                          AND nl_status_id != ig_status_not_fully_retrieved THEN
                        UPDATE v_order_details
                        SET    nstatus_id = ig_status_not_fully_retrieved
                        WHERE  nid = rl.nid;

                        IF nl_order_status != 6 THEN
                            UPDATE v_orders
                            SET    nstatus_id = 6
                            WHERE  nid = rl.order_nid;
                        END IF;
                    END IF;
                END IF;

                INSERT INTO v_part_scanning_history(npart_id
                                                   ,nqnt
                                                   ,norder_id
                                                   ,nuser_id
                                                   ,nstatus
                                                   ,spart_code
                                                   ,nsupplier_id
                                                   ,nscan_id)
                VALUES      (rl.nid
                            ,nl_part_count_missing
                            ,nl_order_id
                            ,NULL
                            ,1
                            ,spart_code_in
                            ,nsupplier_id_in
                            ,nscan_id);

                IF nl_part_count = 0 THEN
                    nstatus := 1;
                    RETURN;
                END IF;
            EXCEPTION
                WHEN OTHERS THEN
                    nstatus := -1;

                    INSERT INTO v_part_scanning_history(npart_id
                                                       ,nqnt
                                                       ,norder_id
                                                       ,nuser_id
                                                       ,nstatus
                                                       ,spart_code
                                                       ,nsupplier_id
                                                       ,nscan_id)
                    VALUES      (rl.nid
                                ,npartcount
                                ,nl_order_id
                                ,NULL
                                ,-1
                                ,spart_code_in
                                ,nsupplier_id_in
                                ,nscan_id);
            END;
        END LOOP;

        COMMIT;

        IF nl_part_count = npartcount THEN
            nstatus := -1;
        ELSE
            BEGIN
                SELECT o.ncar_id
                      ,o.ncar_model_id
                      ,od.spart_name
                      ,od.nprice
                INTO   nl_car_id
                      ,nl_car_model_id
                      ,sl_sname
                      ,nl_price
                FROM   v_orders                   o
                      ,v_order_detail_label_info  od
                WHERE  o.nid = od.norder_id
                AND    od.spart_code = spart_code_in
                AND    od.nsupplier_id = nsupplier_id_in
                AND    od.nqnt_diff = 0
                FETCH  FIRST ROW ONLY;

                INSERT INTO v_storage_parts(sname
                                           ,scode
                                           ,ncar_id
                                           ,ncar_model_id
                                           ,nprice
                                           ,nqnt)
                VALUES      (sl_sname
                            ,spart_code_in
                            ,nl_car_id
                            ,nl_car_model_id
                            ,nl_price
                            ,nl_part_count);
            EXCEPTION
                WHEN OTHERS THEN
                    NULL;
            END;

            nstatus := 1;
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            nstatus := -1;

            INSERT INTO v_part_scanning_history(npart_id
                                               ,nqnt
                                               ,norder_id
                                               ,nuser_id
                                               ,nstatus
                                               ,spart_code
                                               ,nsupplier_id
                                               ,nscan_id)
            VALUES      (-1
                        ,0
                        ,-1
                        ,NULL
                        ,-1
                        ,spart_code_in
                        ,nsupplier_id_in
                        ,nscan_id);
    END;

    PROCEDURE check_part(spart_code_in     IN     VARCHAR2
                        ,nsupplier_id_in   IN     NUMBER
                        ,npart_count          OUT NUMBER
                        ,nstatus              OUT NUMBER)
    AS
        ninternal_status   NUMBER := 0; -- 0 Everything is OK; 1 Something is wrong with the part;
    BEGIN
        npart_count := 0;

        BEGIN
            SELECT SUM(od.nqnt_diff)
            INTO   npart_count
            FROM   v_orders                   o
                  ,v_order_detail_label_info  od
            WHERE  o.nid = od.norder_id
            AND    od.spart_code = spart_code_in
            AND    od.nsupplier_id = nsupplier_id_in
            AND    od.nstatus_id IN (14
                                    ,16);

            IF npart_count IS NULL THEN
                ninternal_status := 1;
                npart_count := 0;
            END IF;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                ninternal_status := 1;
        END;

        IF ninternal_status = 1 THEN -- Check if part even exists in the system
            BEGIN
                SELECT 0
                INTO   ninternal_status
                FROM   v_storage_suppliers_parts_info
                WHERE  scode = spart_code_in
                FETCH  FIRST ROW ONLY;

                nstatus := 0; -- Part exists but there is no order with this part;
                RETURN;
            EXCEPTION
                WHEN NO_DATA_FOUND THEN
                    nstatus := -1; -- Part does not exist;
                    RETURN;
            END;
        END IF;

        IF npart_count = 0 THEN
            nstatus := 0;
        ELSE
            nstatus := 1;
        END IF;

        RETURN;
    EXCEPTION
        WHEN OTHERS THEN
            nstatus := -2;
    END;

    PROCEDURE apply_surplus(spart_code_in     IN     VARCHAR2
                           ,nsupplier_id_in   IN     NUMBER
                           ,npartcount        IN     NUMBER
                           ,nstatus              OUT NUMBER) -- 0 Nerasta, 1 Viskas ok, -1 Klaida, -2 Overall klaida
    IS
        nl_car_id   NUMBER;
        nl_price    NUMBER;
    BEGIN
        IF npartcount < 1 THEN
            nstatus := -1;
            RETURN;
        END IF;

        BEGIN
            SELECT ncar_id
                  ,nprice
            INTO   nl_car_id
                  ,nl_price
            FROM   v_storage_suppliers_parts
            WHERE  scode = TRIM(spart_code_in)
            AND    nsupplier_id = nsupplier_id_in
            FETCH  FIRST ROW ONLY;
        EXCEPTION
            WHEN OTHERS THEN
                nstatus := 0;
                RETURN;
        END;

        INSERT INTO v_oversupplied_parts(nid
                                        ,ncar_id
                                        ,nsupplier_id
                                        ,scode
                                        ,nprice
                                        ,nqnt)
        VALUES      (seq_v_oversupplied_parts.NEXTVAL
                    ,nl_car_id
                    ,nsupplier_id_in
                    ,spart_code_in
                    ,nl_price
                    ,npartcount);

        nstatus := 2;
        COMMIT;
        RETURN;
    EXCEPTION
        WHEN OTHERS THEN
            nstatus := -2;
            RETURN;
    END;

    PROCEDURE generate_box(nclient_id   IN     NUMBER
                          ,sbox_code       OUT VARCHAR2
                          ,nbox_id         OUT NUMBER
                          ,nstatus_id      OUT NUMBER)
    IS
    BEGIN
        INSERT INTO v_package_boxes(nid
                                   ,nclient_id
                                   ,sbox_code)
        VALUES      (seq_v_package_boxes.NEXTVAL
                    ,80
                    ,(SELECT DECODE(LENGTH(   TO_CHAR(SYSDATE
                                                     ,'YYYYMMDD')
                                           || (SELECT      DECODE(LENGTH((  NVL(TO_NUMBER(SUBSTR(sbox_code
                                                                                                ,9
                                                                                                ,3))
                                                                               ,0)
                                                                          + 1))
                                                                 ,1, '00'
                                                                 ,2, '0'
                                                                 ,'')
                                                        || (  NVL(TO_NUMBER(SUBSTR(sbox_code
                                                                                  ,9
                                                                                  ,3))
                                                                 ,0)
                                                            + 1)
                                               FROM     v_package_boxes
                                               WHERE    SUBSTR(sbox_code
                                                              ,0
                                                              ,8) = TO_CHAR(SYSDATE
                                                                           ,'YYYYMMDD')
                                               ORDER BY dtcreated_at DESC
                                               FETCH    FIRST ROW ONLY))
                                   ,8,    TO_CHAR(SYSDATE
                                                 ,'YYYYMMDD')
                                       || '001'
                                   ,   TO_CHAR(SYSDATE
                                              ,'YYYYMMDD')
                                    || (SELECT      DECODE(LENGTH((  NVL(TO_NUMBER(SUBSTR(sbox_code
                                                                                         ,9
                                                                                         ,3))
                                                                        ,0)
                                                                   + 1))
                                                          ,1, '00'
                                                          ,2, '0'
                                                          ,'')
                                                 || (  NVL(TO_NUMBER(SUBSTR(sbox_code
                                                                           ,9
                                                                           ,3))
                                                          ,0)
                                                     + 1)
                                        FROM     v_package_boxes
                                        WHERE    SUBSTR(sbox_code
                                                       ,0
                                                       ,8) = TO_CHAR(SYSDATE
                                                                    ,'YYYYMMDD')
                                        ORDER BY dtcreated_at DESC
                                        FETCH    FIRST ROW ONLY))
                      FROM   DUAL))
        RETURNING   nid
                   ,sbox_code
        INTO        nbox_id
                   ,sbox_code;

        nstatus_id := 1;
        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            nstatus_id := -1;
    END;

    PROCEDURE pack_part(nlclient_id    IN     NUMBER
                       ,slpart_code    IN     VARCHAR2
                       ,nlpart_count   IN     NUMBER
                       ,nlboxid        IN     NUMBER
                       ,nlast_part        OUT NUMBER
                       ,slpart_name       OUT VARCHAR2
                       ,nlstatus_id       OUT NUMBER)
    IS
        npacking_qnt        NUMBER;
        npart_count_local   NUMBER := nlpart_count;
    BEGIN
        BEGIN
            FOR rl IN (SELECT vod.*
                       FROM   v_order_details  vod
                             ,v_orders         vo
                       WHERE  vod.norder_id = vo.nid
                       AND    vod.nstatus_id IN (16
                                                ,17)
                       AND    vo.nclient_id = nlclient_id
                       AND    vod.spart_code = slpart_code
                       AND    vod.nqnt_retrieved != vod.nqnt_packed)
            LOOP
                IF npart_count_local != 0 THEN
                    npacking_qnt := rl.nqnt_retrieved - rl.nqnt_packed;

                    IF npart_count_local - npacking_qnt > 0 THEN
                        UPDATE v_order_details
                        SET    nqnt_packed = nqnt_packed + npacking_qnt
                        WHERE  nid = rl.nid;

                        INSERT INTO v_package_boxes_details(nbox_id
                                                           ,npart_id
                                                           ,nqnt)
                        VALUES      (nlboxid
                                    ,rl.nid
                                    ,npacking_qnt);

                        COMMIT;
                        npart_count_local := npart_count_local - npacking_qnt;
                    ELSIF npart_count_local > 0 THEN
                        UPDATE v_order_details
                        SET    nqnt_packed = nqnt_packed + npart_count_local
                        WHERE  nid = rl.nid;

                        INSERT INTO v_package_boxes_details(nbox_id
                                                           ,npart_id
                                                           ,nqnt)
                        VALUES      (nlboxid
                                    ,rl.nid
                                    ,npart_count_local);

                        COMMIT;
                        npart_count_local := npart_count_local - npart_count_local;
                    END IF;
                ELSE
                    nlstatus_id := 1;
                    nlast_part := 0; --TODO: sugalvoti kaip sita padaryt
                    slpart_name := 'test'; -- TODO: ideti name'a
                    RETURN;
                END IF;
            END LOOP;

            IF npart_count_local != 0 THEN
                nlstatus_id := 0;
                RETURN;
            ELSE
                nlstatus_id := 1;
                nlast_part := 0; --TODO: sugalvoti kaip sita padaryt
                slpart_name := 'test'; -- TODO: ideti name'a
                RETURN;
            END IF;
        EXCEPTION
            WHEN OTHERS THEN
                nlstatus_id := -1;
                RETURN;
        END;
    END;
END;
/


--
-- COM_FOS_INTERACTIVE_GRID_PROCESS_ROWS  (Package Body) 
--
--  Dependencies: 
--   COM_FOS_INTERACTIVE_GRID_PROCESS_ROWS (Package)
--
CREATE OR REPLACE package body DETALES.com_fos_interactive_grid_process_rows
as

-- =============================================================================
--
--  FOS = FOEX Open Source (fos.world), by FOEX GmbH, Austria (www.foex.at)
--
--  This plug-in executes PL/SQL code for each selected or filtered
--  Interactive Grid row.
--
--  License: MIT
--
--  GitHub: https://github.com/foex-open-source/fos-interactive-grid-process-rows
--
-- =============================================================================

c_plugin_name            constant varchar2(100) := 'FOS - Interactive Grid - Process Rows';
c_pk_collection_name     constant varchar2(100) := 'FOS_IG_PK';
c_bug_workaround_name    constant varchar2(100) := 'FOS_APEX_192_BUG_30665079_WORKAROUND';
c_apex_192_identifier    constant number        := 20191004;

function render
    ( p_dynamic_action apex_plugin.t_dynamic_action
    , p_plugin         apex_plugin.t_plugin
    )
return apex_plugin.t_dynamic_action_render_result
as
    l_return apex_plugin.t_dynamic_action_render_result;

    l_mode                     p_dynamic_action.attribute_01%type := p_dynamic_action.attribute_01;
    l_items_to_submit          apex_t_varchar2                    := apex_string.split(p_dynamic_action.attribute_03, ',');
    l_refresh_selection        boolean                            := instr(p_dynamic_action.attribute_15, 'refresh-selection')              > 0;
    l_refresh_grid             boolean                            := instr(p_dynamic_action.attribute_15, 'refresh-grid')                   > 0;
    l_replace_on_client        boolean                            := instr(p_dynamic_action.attribute_15, 'client-substitutions')           > 0;
    l_escape_message           boolean                            := instr(p_dynamic_action.attribute_15, 'escape-message')                 > 0;
    l_remove_selection         boolean                            := instr(p_dynamic_action.attribute_15, 'remove-selection-after-process') > 0;

    l_ajax_identifier          varchar2(1000)                     := apex_plugin.get_ajax_identifier;
    l_init_js_fn               varchar2(32767)                    := nvl(apex_plugin_util.replace_substitutions(p_dynamic_action.init_javascript_code), 'undefined');
begin

    -- debugging
    if apex_application.g_debug and substr(:DEBUG,6) >= 6
    then
        apex_plugin_util.debug_dynamic_action
          ( p_plugin         => p_plugin
          , p_dynamic_action => p_dynamic_action
          );
    end if;

    apex_css.add_file
      ( p_name           => apex_plugin_util.replace_substitutions('fostr#MIN#.css')
      , p_directory      => p_plugin.file_prefix || 'css/'
      , p_skip_extension => true
      , p_key            => 'fostr'
      );

    apex_javascript.add_library
      ( p_name           => apex_plugin_util.replace_substitutions('fostr#MIN#.js')
      , p_directory      => p_plugin.file_prefix || 'js/'
      , p_skip_extension => true
      , p_key            => 'fostr'
      );


    -- create a JS function call passing all settings as a JSON object
    --
    -- example:
    -- FOS.interactiveGrid.processRows({
    --    "action": {
    --        "affectedRegionId": "emp"
    --    }
    -- }, {
    --    "ajaxId": "fYS3t2c4SabnxV",
    --    "mode": "selection", // or "filtered"
    --    "itemsToSubmit": ["P1_ITEM"],
    --    "refreshSelection": true,
    --    "refreshGrid": false,
    --    "performSubstitutions": false,
    --    "escapeMessage": true
    -- });

    apex_json.initialize_clob_output;
    apex_json.open_object;

    apex_json.write('ajaxId'              , l_ajax_identifier);
    apex_json.write('mode'                , l_mode);
    apex_json.write('itemsToSubmit'       , l_items_to_submit);
    apex_json.write('refreshSelection'    , l_refresh_selection);
    apex_json.write('refreshGrid'         , l_refresh_grid);
    apex_json.write('performSubstitutions', l_replace_on_client);
    apex_json.write('escapeMessage'       , l_escape_message);
    apex_json.write('removeSelection'     , l_remove_selection);

    apex_json.close_object;

    l_return.javascript_function := 'function(){FOS.interactiveGrid.processRows(this, ' || apex_json.get_clob_output || ', '|| l_init_js_fn || ');}';

    apex_json.free_output;

    return l_return;
end render;

/*
 * This helper function takes a stringified such as {"recordKeys":[["7839"],["7698"],["7782"],["7566"],["7788"]]}
 * or, if there are more primary keys: {"recordKeys":[["7839","KING"],["7698","BLAKE"],["7782","CLARK"],["7566","JONES"]]}
 * It then populates an APEX collection as such:
 * c001 | c002
 * -----+-----
 * 7839 | KING
 * 7698 | BLAKE
 * 7782 | CLARK
 */
procedure populate_pk_collection
  ( p_primary_keys_json   clob
  , p_primary_key_count   number
  )
as
    l_values          apex_json.t_values;
    l_elements        apex_t_varchar2;
    l_record_count    number;

    l_current_pk_part varchar2(4000);
    l_seq_id          number;
begin

    apex_json.parse
      ( p_values => l_values
      , p_source => p_primary_keys_json
      );

    apex_collection.create_or_truncate_collection(c_pk_collection_name);

    l_record_count := apex_json.get_count
                        ( p_values => l_values
                        , p_path   => 'recordKeys'
                        );
    -- for each primary key object. can contain multiple primary key columns
    for i in 1 .. l_record_count
    loop

        l_elements := apex_json.get_t_varchar2
                        ( p_values => l_values
                        , p_path   => 'recordKeys[%d]'
                        , p0       => i
                        );

        -- for each primary key column
        for j in 1 .. p_primary_key_count
        loop

            l_current_pk_part := apex_json.get_varchar2
                                   ( p_values => l_values
                                   , p_path   => 'recordKeys[%d][%d]'
                                   , p0       => i
                                   , p1       => j
                                   );

            if j = 1
            then
                l_seq_id := apex_collection.add_member
                              ( p_collection_name => c_pk_collection_name
                              , p_c001            => l_current_pk_part
                              );
            else
                apex_collection.update_member_attribute
                  ( p_collection_name => c_pk_collection_name
                  , p_seq             => l_seq_id
                  , p_attr_number     => j
                  , p_attr_value      => l_current_pk_part
                  );
            end if;
        end loop;
    end loop;
end populate_pk_collection;

function ajax
  ( p_dynamic_action apex_plugin.t_dynamic_action
  , p_plugin         apex_plugin.t_plugin
  )
return apex_plugin.t_dynamic_action_ajax_result
as

    l_affected_region_id varchar2(4000)                    := p_dynamic_action.affected_region_id;

    l_is_selection_mode boolean                            := p_dynamic_action.attribute_01 = 'selection';

    l_items_to_return   apex_t_varchar2                    := apex_string.split(p_dynamic_action.attribute_04, ',');

    l_plsql_code        p_dynamic_action.attribute_02%type := p_dynamic_action.attribute_02;

    l_success_message   p_dynamic_action.attribute_05%type := p_dynamic_action.attribute_05;
    l_error_message     p_dynamic_action.attribute_06%type := p_dynamic_action.attribute_06;
    l_message           varchar2(32767);
    l_message_title     varchar2(32767);

    l_escape_message    boolean                            := instr(p_dynamic_action.attribute_15, 'escape-message')       > 0;
    l_replace_on_client boolean                            := instr(p_dynamic_action.attribute_15, 'client-substitutions') > 0;

    l_context           apex_exec.t_context;

    --needed for the selection filter
    l_selected_records  clob                               := '';
    l_filters           apex_exec.t_filters;
    l_primary_key_count number                             := 0;
    l_primary_key_cols  apex_t_varchar2                    := apex_t_varchar2();
    l_collection_cols   apex_t_varchar2                    := apex_t_varchar2();
    l_current_column    apex_exec.t_column;
    l_context_filter    varchar2(4000);

    l_error_occurred    boolean                            := false;

    l_plsql             varchar2(32000);

    l_preference_data   varchar2(32000);
    l_report_id         varchar2(32000);
    l_report_type       varchar2(32000);

    l_return apex_plugin.t_dynamic_action_ajax_result;

    --
    -- We won't escape serverside if we do it client side to avoid double escaping
    --
    function escape_html
      ( p_html                   in varchar2
      , p_escape_already_enabled in boolean
      ) return varchar2
    is
    begin
        return case when p_escape_already_enabled then p_html else apex_escape.html(p_html) end;
    end escape_html;

    --------------------------------------------------------------------------------
    -- dumps ajax parameters to debug output
    --------------------------------------------------------------------------------
    procedure log_ajax_parameters
    is
    begin
        if apex_application.g_debug
        then
            apex_debug.message('---------------');
            apex_debug.message('AJAX Parameters');
            apex_debug.message('---------------');
            apex_debug.message('p_widget_name: %s',apex_application.g_widget_name);
            apex_debug.message('p_widget_action: %s',apex_application.g_widget_action);
            apex_debug.message('p_widget_action_mod: %s',apex_application.g_widget_action_mod);
            apex_debug.message('p_request: %s',apex_application.g_request);
            apex_debug.message('x01: %s',apex_application.g_x01);
            --apex_debug.message('x02: %s',apex_application.g_x02);
            --apex_debug.message('x03: %s',apex_application.g_x03);
            --apex_debug.message('x04: %s',apex_application.g_x04);
            --apex_debug.message('x05: %s',apex_application.g_x05);
            --apex_debug.message('x06: %s',apex_application.g_x06);
            --apex_debug.message('x07: %s',apex_application.g_x07);
            --apex_debug.message('x08: %s',apex_application.g_x08);
            --apex_debug.message('x09: %s',apex_application.g_x09);
            --apex_debug.message('x10: %s',apex_application.g_x10);
            apex_debug.message('f01: %s',apex_util.table_to_string(apex_application.g_f01));
            apex_debug.message('---------------');
            apex_debug.message('EOF Parameters');
            apex_debug.message('---------------');
        end if;
    end log_ajax_parameters;

begin

    --debugging
    if apex_application.g_debug and substr(:DEBUG,6) >= 6
    then
        apex_plugin_util.debug_dynamic_action
          ( p_plugin         => p_plugin
          , p_dynamic_action => p_dynamic_action
          );
        log_ajax_parameters;
    end if;

    apex_application.g_x01 := c_bug_workaround_name;

    -- get the report id
    -- in 19.2 we cannot use the apex_ig.get_last_viewed_report_id
    -- so we have to read it directly from a preference
    if wwv_flow_api.c_current = c_apex_192_identifier
    then
        l_preference_data := apex_util.get_preference
            ( p_preference => 'APEX_IG_' || l_affected_region_id || '_CURRENT_REPORT'
            );

        if l_preference_data is not null
        then
            l_report_id   := substr( l_preference_data, 1, instr( l_preference_data, ':' ) - 1);
            l_report_type := substr( l_preference_data, instr( l_preference_data, ':' ) + 1);
        end if;

    else
        -- we must use execute immediate in order to avoid compilation issues in 19.2
        l_plsql := q'#
            declare
                l_report_id number;
            begin
                l_report_id := apex_ig.get_last_viewed_report_id
                    ( p_page_id     => :b1
                    , p_region_id   => :b2
                    );
                 :b3 := l_report_id;
            end;
        #';
        execute immediate l_plsql using in V('APP_PAGE_ID'), l_affected_region_id, out l_report_id;
    end if;

    -- when in selection mode, we must first compute the context filter, based on the records selected
    if l_is_selection_mode
    then
        -- only opening the context to get the column and primary key information
        l_context := apex_region.open_query_context
                       ( p_page_id      => V('APP_PAGE_ID')
                       , p_region_id    => l_affected_region_id
                       , p_max_rows     => 0
                       , p_component_id => l_report_id
                       );

        --rebuilding the primary key json
        for idx in 1 .. apex_application.g_f01.count
        loop
            l_selected_records := l_selected_records || apex_application.g_f01(idx);
        end loop;

        -- looping through all columns to find the primary keys
        for idx in 1 .. apex_exec.get_column_count(l_context)
        loop

            l_current_column := apex_exec.get_column
                                  ( p_context     => l_context
                                  , p_column_idx  => idx
                                  );

            -- in case the column is a primary key, we add it to the array,
            -- as well as the c00x cokumn it is mapped to
            if l_current_column.is_primary_key
            then
                l_primary_key_count                          := l_primary_key_count + 1;
                l_primary_key_cols.extend(1);
                l_primary_key_cols(l_primary_key_cols.count) := l_current_column.name;

                l_collection_cols.extend(1);
                l_collection_cols(l_collection_cols.count)   := 'c' || lpad(l_collection_cols.count, 3, '0');
            end if;

        end loop;

        -- if there are no primary keys defines, raise an error
        if l_primary_key_cols.count = 0
        then
            raise_application_error(-20000, 'The Interactive Grid referenced by "' || c_plugin_name || '" must have a primary key defined.');
        end if;

        -- now construct the filter (where clause) to apply to the context later on
        l_context_filter := '(#PRIMARY_KEY_COLUMNS#) in (select #COLLECTION_COLUMNS# from apex_collections where collection_name = ''#COLLECTION_NAME#'')';
        l_context_filter := replace(l_context_filter, '#PRIMARY_KEY_COLUMNS#', apex_string.join(l_primary_key_cols, ','));
        l_context_filter := replace(l_context_filter, '#COLLECTION_COLUMNS#', apex_string.join(l_collection_cols, ','));
        l_context_filter := replace(l_context_filter, '#COLLECTION_NAME#', c_pk_collection_name);

        -- adding the filter to the context
        apex_exec.add_filter
          ( p_filters         => l_filters
          , p_sql_expression  => l_context_filter
          );

        -- populating the collection with the primary keys
        populate_pk_collection
          ( p_primary_keys_json   => l_selected_records
          , p_primary_key_count   => l_primary_key_cols.count
          );

        apex_exec.close(l_context);
        commit; -- needed now in APEX 21.1

    end if;

    -- apply workaround for apex bug
    apex_application.g_x01 := c_bug_workaround_name;

    -- open the context, with a possible filter if in selection mode
    l_context := apex_region.open_query_context
                   ( p_page_id             => V('APP_PAGE_ID')
                   , p_region_id           => l_affected_region_id
                   , p_additional_filters  => l_filters
                   , p_component_id        => l_report_id
                   );

    -- resetting g_x01 to its original value as open_query_context is done parsing the columns
    apex_application.g_x01 := null;

    -- for each row, execute the provided plsql code
    begin
        while apex_exec.next_row(l_context)
        loop
            apex_exec.execute_plsql(l_plsql_code);
        end loop;
    exception
        when others then
            l_message := nvl(apex_application.g_x01, l_error_message);

            if not l_replace_on_client
            then
                l_message := apex_plugin_util.replace_substitutions(l_message);
            end if;

            if apex_application.g_x02 is not null
            then
                if not l_replace_on_client
                then
                    l_message_title := apex_plugin_util.replace_substitutions(apex_application.g_x02);
                end if;
            end if;

            l_message := replace(l_message, '#SQLCODE#', escape_html(sqlcode, l_escape_message));
            l_message := replace(l_message, '#SQLERRM#', escape_html(sqlerrm, l_escape_message));
            l_message := replace(l_message, '#SQLERRM_TEXT#', escape_html(substr(sqlerrm, instr(sqlerrm, ':')+1), l_escape_message));

            rollback;
            l_error_occurred := true;
    end;

    apex_exec.close(l_context);

    -- remove the collection if in selection mode
    if l_is_selection_mode
    then
        apex_collection.delete_collection(c_pk_collection_name);
    end if;

    -- construct the json response
    apex_json.open_object;

    if not l_error_occurred
    then
        apex_json.write('status', 'success');
        l_message := nvl(apex_application.g_x01, l_success_message);

        if not l_replace_on_client
        then
            l_message := apex_plugin_util.replace_substitutions(l_message);
        end if;
        apex_json.write('message', l_message);

        --
        -- the developer can optionally provide a message title and override the message type
        --
        if apex_application.g_x02 is not null
        then
            if not l_replace_on_client
            then
                l_message_title := apex_plugin_util.replace_substitutions(apex_application.g_x02);
            end if;
            apex_json.write('messageTitle', l_message_title);
        end if;

        if apex_application.g_x03 is not null
        then
            apex_json.write('messageType', apex_application.g_x03);
        end if;

        if l_items_to_return.count > 0
        then
            apex_json.open_array('itemsToReturn');

            for idx in 1 .. l_items_to_return.count
            loop
                apex_json.open_object;
                apex_json.write('name', l_items_to_return(idx));
                apex_json.write('value', V(l_items_to_return(idx)));
                apex_json.close_object;
            end loop;

            apex_json.close_array;
        end if;
    else
        apex_json.write('status'      , 'error');
        apex_json.write('message'     , l_message);
        apex_json.write('messageTitle', l_message_title);
    end if;

    -- the developer can cancel following actions
    apex_json.write('cancelActions', upper(apex_application.g_x04) IN ('CANCEL','STOP','TRUE'));

    -- the developer can fire an event if they desire
    apex_json.write('eventName', apex_application.g_x05);

    apex_json.close_object;

    return l_return;
exception
    when others
    then
        -- always ensure the context is closed, also in case of an error
        apex_exec.close(l_context);
        raise;
end ajax;

end;
/


--
-- COM_FOS_PLSQL_DYNAMIC_CONTENT  (Package Body) 
--
--  Dependencies: 
--   COM_FOS_PLSQL_DYNAMIC_CONTENT (Package)
--   STANDARD (Package)
--   WWV_FLOW_T_VARCHAR2 (Type)
--   DBMS_LOB (Package)
--   HTP (Package)
--   PLITBLM (Synonym)
--   HTP (Synonym)
--   APEX_APPLICATION (Synonym)
--   APEX_ESCAPE (Synonym)
--   APEX_T_VARCHAR2 (Synonym)
--   APEX_UTIL (Synonym)
--   APEX_JAVASCRIPT (Synonym)
--   APEX_PLUGIN (Synonym)
--   APEX_PLUGIN_UTIL (Synonym)
--   APEX_JSON (Synonym)
--   APEX_STRING (Synonym)
--   APEX_EXEC (Synonym)
--   DBMS_STANDARD (Package)
--
CREATE OR REPLACE package body DETALES.com_fos_plsql_dynamic_content
as

-- =============================================================================
--
--  FOS = FOEX Open Source (fos.world), by FOEX GmbH, Austria (www.foex.at)
--
--  This is a refreshable version of the PL/SQL Dynamic Content Region.
--
--  License: MIT
--
--  GitHub: https://github.com/foex-open-source/fos-plsql-dynamic-content
--
-- =============================================================================

G_METHOD_HTP  constant varchar2(10) := 'htp';
G_METHOD_CLOB constant varchar2(10) := 'clob';

procedure htp_p_clob
  ( p_clob clob
  )
as
    l_offset number;
    l_chunk  varchar2(32767);
begin
    while apex_string.next_chunk
            ( p_str    => p_clob
            , p_chunk  => l_chunk
            , p_offset => l_offset
            , p_amount => 30000 -- can't use 32767 b/c of multibyte characters; if using many multibyte characters, you need to turn this even lower
            )
    loop
       sys.htp.prn(l_chunk);
    end loop;
end;

function render
  ( p_region              apex_plugin.t_region
  , p_plugin              apex_plugin.t_plugin
  , p_is_printer_friendly boolean
  )
return apex_plugin.t_region_render_result
as
    l_return apex_plugin.t_region_render_result;

    -- required settings
    l_region_id             varchar2(4000)             := p_region.static_id;
    l_wrapper_id            varchar2(4000)             := p_region.static_id || '_FOS_WRAPPER';
    l_ajax_identifier       varchar2(4000)             := apex_plugin.get_ajax_identifier;

    c_method                p_region.attribute_14%type := nvl(p_region.attribute_14, G_METHOD_HTP);
    l_plsql_code            p_region.attribute_01%type := p_region.attribute_01;

    l_lazy_load             boolean                    := nvl(p_region.attribute_11, 'N') = 'Y';
    l_lazy_refresh          boolean                    := nvl(p_region.attribute_12, 'N') = 'Y';

    c_options               apex_t_varchar2            := apex_string.split(p_region.attribute_15, ':');
    c_substitute_values     boolean                    := 'substitute-values' member of c_options;
    c_sanitize_content      boolean                    := 'sanitize-content'  member of c_options;

    -- Javascript Initialization Code
    l_init_js_fn            varchar2(32767)            := nvl(apex_plugin_util.replace_substitutions(p_region.init_javascript_code), 'undefined');

    -- page items to submit settings
    l_items_to_submit       varchar2(4000)             := apex_plugin_util.page_item_names_to_jquery(p_region.attribute_02);
    l_suppress_change_event boolean                    := p_region.attribute_03 is not null and p_region.attribute_04 = 'Y';

    -- spinner settings
    l_show_spinner          boolean                    := p_region.attribute_05 != 'N';
    l_show_spinner_overlay  boolean                    := p_region.attribute_05 like '%_OVERLAY';
    l_spinner_position      varchar2(4000)             :=
        case
            when p_region.attribute_05 like 'ON_PAGE%'   then 'body'
            when p_region.attribute_05 like 'ON_REGION%' then '#' || l_region_id
            else null
        end;

    -- variables for CLOB mode

    -- used to store the original g_clob_01 value
    -- and restore it once we're done with g_clob_01
    l_temp_g_clob_01        clob;
    c_data_variable         varchar2(4000)             := 'R' || p_region.id || '_DATA';
begin
    -- standard debugging intro, but only if necessary
    if apex_application.g_debug
    then
        apex_plugin_util.debug_region
          ( p_plugin => p_plugin
          , p_region => p_region
          );
    end if;

    -- sanity checks
    if c_sanitize_content and not c_method = G_METHOD_CLOB then
        raise_application_error(-20000, 'The sanitize option can only be used in combination with Output Method: APEX_APPLICATION.g_clob_01');
    end if;

    -- conditionally load the DOMPurify library
    if c_sanitize_content then
        apex_javascript.add_library
          ( p_name       => 'purify#MIN#'
          , p_directory  => p_plugin.file_prefix || 'js/dompurify/2.2.6/'
          , p_key        => 'fos-purify'
          );
    end if;

    -- a wrapper is needed to properly identify and replace the content in case of a refresh
    sys.htp.p('<div id="' || apex_escape.html_attribute(l_wrapper_id) || '">');

    -- we let the devloper choose whether we substitute values automatically for them or not
    if c_substitute_values
    then
        l_plsql_code := apex_plugin_util.replace_substitutions(l_plsql_code);
    end if;

    -- only when lazy-loading is turned off we immediately execute the plsql code.
    -- with lazy-loading the page will be rendered first, then an ajax call executes the code
    if not l_lazy_load
    then
        if c_method = G_METHOD_CLOB then
            l_temp_g_clob_01 := apex_application.g_clob_01;
            apex_application.g_clob_01 := null;
        end if;

        apex_exec.execute_plsql(l_plsql_code);

        if c_method = G_METHOD_CLOB then
            if not c_sanitize_content then
                htp_p_clob(apex_application.g_clob_01);
            else
                apex_json.initialize_clob_output;
                apex_json.open_object;
                apex_json.write('val', apex_application.g_clob_01);
                apex_json.close_object;
                htp.p('<script>');
                htp_p_clob('var ' || c_data_variable || ' = (' || apex_json.get_clob_output || ').val;');
                htp.p('</script>');
                apex_json.free_output;

                apex_application.g_clob_01 := l_temp_g_clob_01;
            end if;
        end if;
    end if;

    -- closing the wrapper
    sys.htp.p('</div>');

    -- creating a json object with the region settings to pass to the client
    apex_json.initialize_clob_output;

    apex_json.open_object;
    apex_json.write('ajaxIdentifier'     , l_ajax_identifier      );
    apex_json.write('regionId'           , l_region_id            );
    apex_json.write('regionWrapperId'    , l_wrapper_id           );
    apex_json.write('itemsToSubmit'      , l_items_to_submit      );
    apex_json.write('suppressChangeEvent', l_suppress_change_event);
    apex_json.write('showSpinner'        , l_show_spinner         );
    apex_json.write('showSpinnerOverlay' , l_show_spinner_overlay );
    apex_json.write('spinnerPosition'    , l_spinner_position     );
    apex_json.write('lazyLoad'           , l_lazy_load            );
    apex_json.write('lazyRefresh'        , l_lazy_refresh         );
    apex_json.write('sanitizeContent'    , c_sanitize_content     );

    if c_sanitize_content then
        apex_json.write_raw('DOMPurifyConfig', '{}');
    end if;

    if not l_lazy_load and c_sanitize_content and c_method = G_METHOD_CLOB then
        apex_json.write_raw('initialContent', c_data_variable);
    end if;

    apex_json.close_object;

    -- initialization code for the region widget. needed to handle the refresh event
    apex_javascript.add_onload_code('FOS.region.plsqlDynamicContent(' || apex_json.get_clob_output|| ', '|| l_init_js_fn || ');');

    apex_json.free_output;

    return l_return;
end render;

function ajax
  ( p_region apex_plugin.t_region
  , p_plugin apex_plugin.t_plugin
  )
return apex_plugin.t_region_ajax_result
as

    c_method                  p_region.attribute_14%type := nvl(p_region.attribute_14, G_METHOD_HTP);

    -- plug-in attributes
    l_plsql_code              p_region.attribute_01%type := p_region.attribute_01;
    l_items_to_return         p_region.attribute_03%type := p_region.attribute_03;
    c_substitute_values       boolean                    := instr(p_region.attribute_15, 'substitute-values') > 0;

    -- local variables
    l_item_names              apex_t_varchar2;

    -- needed for accessing the htp buffer
    l_htp_buffer              sys.htp.htbuf_arr;
    l_rows_x                  number                     := 9999999;
    l_rows                    number                     := 9999999;

    -- resulting content
    l_content                 clob                       := '';
    l_buffer                  varchar2(32767);

    l_return                  apex_plugin.t_region_ajax_result;

    -- fast append of a clob
    -- see benchmarks here: https://gist.github.com/vlsi/052424856512f80137989c817cb8f046
    procedure clob_append
      ( p_clob    in out nocopy clob
      , p_buffer  in out nocopy varchar2
      , p_append  in            varchar2
      )
    as
    begin
        p_buffer := p_buffer || p_append;
    exception
        when value_error then
            if p_clob is null
            then
                p_clob := p_buffer;
            else
                sys.dbms_lob.writeappend(p_clob, length(p_buffer), p_buffer);
            end if;
            p_buffer := p_append;
    end clob_append;
    --
begin
    -- standard debugging intro, but only if necessary
    if apex_application.g_debug
    then
        apex_plugin_util.debug_region
          ( p_plugin => p_plugin
          , p_region => p_region
          );
    end if;

    if c_method = G_METHOD_HTP then

        -- helps remove the unnecesarry "X-ORACLE-IGNORE: IGNORE" which appear when using htp.get_page
        sys.htp.p;
        sys.htp.get_page(l_htp_buffer, l_rows_x);

        -- we let the devloper choose whether we substitute values automatically for them or not
        if c_substitute_values
        then
            l_plsql_code := apex_plugin_util.replace_substitutions(l_plsql_code);
        end if;

        -- executing the pl/sql code
        apex_exec.execute_plsql(l_plsql_code);

        -- getting the htp buffer, where l_plsql_code might have written into.
        -- has the side effect of removing it
        sys.htp.get_page(l_htp_buffer, l_rows);

        -- rewriting htp buffer into a clob and pass back in json object
        for l_idx in 1 .. l_rows
        loop
            --l_content := l_content || l_htp_buffer(l_idx); -- slower
            clob_append(l_content, l_buffer, l_htp_buffer(l_idx));
        end loop;
        l_content := l_content || l_buffer;

    elsif c_method = G_METHOD_CLOB then

        -- executing the pl/sql code
        apex_exec.execute_plsql(l_plsql_code);
        l_content := apex_application.g_clob_01;

    end if;

    apex_json.open_object;
    apex_json.write('status' , 'success');
    apex_json.write('content', l_content);

    -- adding info about the page items to return
    if l_items_to_return is not null
    then

        l_item_names := apex_string.split(l_items_to_return,',');

        apex_json.open_array('items');

        for l_idx in 1 .. l_item_names.count
        loop
            apex_json.open_object;
            apex_json.write
              ( p_name  => 'id'
              , p_value => l_item_names(l_idx)
              );
            apex_json.write
              ( p_name  => 'value'
              , p_value => apex_util.get_session_state(l_item_names(l_idx))
              );
            apex_json.close_object;
        end loop;

        apex_json.close_array;
    end if;

    apex_json.close_object;

    --htp_p_clob(l_content);

    return l_return;
end ajax;

end;
/


--
-- COM_FOS_SPINNER_ACTIONS  (Package Body) 
--
--  Dependencies: 
--   COM_FOS_SPINNER_ACTIONS (Package)
--
CREATE OR REPLACE package body DETALES.com_fos_spinner_actions
as

-- =============================================================================
--
--  FOS = FOEX Open Source (fos.world), by FOEX GmbH, Austria (www.foex.at)
--
--  This plug-in provides you with a Spinner Actions dynamic action.
--
--  License: MIT
--
--  GitHub: https://github.com/foex-open-source/fos-spinner-actions
--
-- =============================================================================

function render
    ( p_dynamic_action in apex_plugin.t_dynamic_action
    , p_plugin         in apex_plugin.t_plugin
    )

return apex_plugin.t_dynamic_action_render_result
as
    l_result apex_plugin.t_dynamic_action_render_result;
    -- dynamic action id
    l_id               p_dynamic_action.id%type            := p_dynamic_action.id;
    -- plug-in attributes
    l_action           p_dynamic_action.attribute_01%type  := p_dynamic_action.attribute_01;
    l_spinner_type     p_dynamic_action.attribute_02%type  := p_dynamic_action.attribute_02;
    l_spinner_html     p_dynamic_action.attribute_03%type  := p_dynamic_action.attribute_03;
    l_spinner_css      p_dynamic_action.attribute_04%type  := p_dynamic_action.attribute_04;
    l_overlay_type     p_dynamic_action.attribute_05%type  := p_dynamic_action.attribute_05;
    l_overlay_color    p_dynamic_action.attribute_06%type  := p_dynamic_action.attribute_06;
    l_overlay_opacity  p_dynamic_action.attribute_07%type  := p_dynamic_action.attribute_07;
    l_access_text      p_dynamic_action.attribute_08%type  := p_dynamic_action.attribute_08;
    l_spinner_class    p_dynamic_action.attribute_09%type  := p_dynamic_action.attribute_09;
    l_spinner_color    p_dynamic_action.attribute_10%type  := p_dynamic_action.attribute_10;

begin
    -- standard debugginng
    if apex_application.g_debug and substr(:DEBUG,6) >= 6
    then
        apex_plugin_util.debug_dynamic_action
            ( p_dynamic_action => p_dynamic_action
            , p_plugin         => p_plugin
            );
    end if;

    if instr(l_spinner_type, 'def-') > 0
    then
        apex_css.add_file
            ( p_name       => 'fos-sa-spinner-styles#MIN#'
            , p_directory  =>  p_plugin.file_prefix || 'css/'
            );
    end if;

    apex_json.initialize_clob_output;
    apex_json.open_object;

    apex_json.write('id'               , l_id                );
    apex_json.write('spinnerType'      , l_spinner_type      );
    apex_json.write('spinnerColor'     , l_spinner_color     );
    apex_json.write('spinnerHTML'      , l_spinner_html      );
    apex_json.write('spinnerCSS'       , l_spinner_css       );
    apex_json.write('overlayType'      , l_overlay_type      );
    apex_json.write('overlayColor'     , l_overlay_color     );
    apex_json.write('overlayOpacity'   , l_overlay_opacity   );
    apex_json.write('spinnerClass'     , l_spinner_class     );
    apex_json.write('accessText'       , l_access_text       );

    apex_json.close_object;

    l_result.javascript_function := 'function(){return FOS.utils.spinnerActions.' ||
        case l_action
            when 'show-spinner' then
                'showSpinner'
            when 'convert-default' then
                'convertDefault'
            else
                'removeSpinner'
        end || '(this,'|| apex_json.get_clob_output ||');}';

    apex_json.free_output;

    return l_result;

end;

end;
/


--
-- PKG_SESSION_LONGOPS  (Package Body) 
--
--  Dependencies: 
--   PKG_SESSION_LONGOPS (Package)
--   STANDARD (Package)
--   DBMS_APPLICATION_INFO (Synonym)
--
CREATE OR REPLACE PACKAGE BODY DETALES.pkg_session_longops is
  type t_array is table of number index by varchar2(255);
  g_arr_rindex t_array;
  g_arr_slno   t_array;
  g_arr_total  t_array;

  procedure do_init (p_opname in varchar2, p_target in number, p_units in varchar2) is
    l_rindex binary_integer := dbms_application_info.set_session_longops_nohint;
    l_slno   binary_integer;
  begin
    dbms_application_info.set_session_longops(
      rindex       => l_rindex,
      slno         => l_slno,
      op_name      => p_opname,
      target       => 0,
      context      => 0,
      sofar        => 0,
      totalwork    => p_target,
      target_desc  => 'no target',
      units        => p_units
    );
    g_arr_rindex(p_opname) := l_rindex;
    g_arr_slno(p_opname) := l_slno;
    g_arr_total(p_opname) := p_target;
  end do_init;

  procedure do_update (p_opname in varchar2, p_status in number) is
    l_rindex binary_integer := g_arr_rindex(p_opname);
    l_slno   binary_integer := g_arr_slno(p_opname);
  begin
    dbms_application_info.set_session_longops(
      rindex       => l_rindex,
      slno         => l_slno,
      op_name      => p_opname,
      target       => 0,
      context      => 0,
      sofar        => p_status,
      totalwork    => g_arr_total(p_opname),
      target_desc  => 'no target',
      units        => null
    );
    g_arr_rindex(p_opname) := l_rindex;
    g_arr_slno(p_opname) := l_slno;
  end do_update;
end pkg_session_longops;
/


--
-- PRETIUS_APEX_NESTED_REPORTS  (Package Body) 
--
--  Dependencies: 
--   PRETIUS_APEX_NESTED_REPORTS (Package)
--   DBMS_SQL (Synonym)
--   APEX_JAVASCRIPT (Synonym)
--   PLITBLM (Synonym)
--   APEX_PLUGIN_UTIL (Synonym)
--   APEX_UTIL (Synonym)
--   DBMS_ASSERT (Package)
--   DBMS_LOB (Package)
--   DBMS_SQL (Package)
--   HTP (Synonym)
--   APEX_JSON (Synonym)
--   APEX_APPLICATION_GLOBAL (Synonym)
--   V (Synonym)
--   WWV_FLOW_GLOBAL (Package)
--   WWV_FLOW_UTILITIES (Synonym)
--   APEX_APPLICATION (Synonym)
--   APEX_PLUGIN (Synonym)
--   WWV_FLOW_PLUGIN (Synonym)
--   STANDARD (Package)
--
CREATE OR REPLACE PACKAGE BODY DETALES."PRETIUS_APEX_NESTED_REPORTS"
IS
    ------------------------
    FUNCTION printattributes(p_dynamic_action_render_result IN apex_plugin.t_dynamic_action_render_result)
        RETURN CLOB
    IS
    BEGIN
        apex_json.initialize_clob_output;

        apex_json.open_object;
        apex_json.write('type'
                       ,'apex_plugin.t_dynamic_action_render_result');

        apex_json.write('javascript_function'
                       ,p_dynamic_action_render_result.javascript_function);
        apex_json.write('ajax_identifier'
                       ,p_dynamic_action_render_result.ajax_identifier);
        apex_json.write('attribute_01'
                       ,p_dynamic_action_render_result.attribute_01);
        apex_json.write('attribute_02'
                       ,p_dynamic_action_render_result.attribute_02);
        apex_json.write('attribute_03'
                       ,p_dynamic_action_render_result.attribute_03);
        apex_json.write('attribute_04'
                       ,p_dynamic_action_render_result.attribute_04);
        apex_json.write('attribute_05'
                       ,p_dynamic_action_render_result.attribute_05);
        apex_json.write('attribute_06'
                       ,p_dynamic_action_render_result.attribute_06);
        apex_json.write('attribute_07'
                       ,p_dynamic_action_render_result.attribute_07);
        apex_json.write('attribute_08'
                       ,p_dynamic_action_render_result.attribute_08);
        apex_json.write('attribute_09'
                       ,p_dynamic_action_render_result.attribute_09);
        apex_json.write('attribute_10'
                       ,p_dynamic_action_render_result.attribute_10);
        apex_json.write('attribute_11'
                       ,p_dynamic_action_render_result.attribute_11);
        apex_json.write('attribute_12'
                       ,p_dynamic_action_render_result.attribute_12);
        apex_json.write('attribute_13'
                       ,p_dynamic_action_render_result.attribute_13);
        apex_json.write('attribute_14'
                       ,p_dynamic_action_render_result.attribute_14);
        apex_json.write('attribute_15'
                       ,p_dynamic_action_render_result.attribute_15);

        apex_json.close_object;

        RETURN apex_json.get_clob_output;
    END printattributes;


    ------------------------
    FUNCTION printattributes(p_plugin IN apex_plugin.t_plugin)
        RETURN CLOB
    IS
    BEGIN
        apex_json.initialize_clob_output;

        apex_json.open_object;
        apex_json.write('type'
                       ,'apex_plugin.t_plugin');

        apex_json.write('name'
                       ,p_plugin.name);
        apex_json.write('file_prefix'
                       ,p_plugin.file_prefix);
        apex_json.write('attribute_01'
                       ,p_plugin.attribute_01);
        apex_json.write('attribute_02'
                       ,p_plugin.attribute_02);
        apex_json.write('attribute_03'
                       ,p_plugin.attribute_03);
        apex_json.write('attribute_04'
                       ,p_plugin.attribute_04);
        apex_json.write('attribute_05'
                       ,p_plugin.attribute_05);
        apex_json.write('attribute_06'
                       ,p_plugin.attribute_06);
        apex_json.write('attribute_07'
                       ,p_plugin.attribute_07);
        apex_json.write('attribute_08'
                       ,p_plugin.attribute_08);
        apex_json.write('attribute_09'
                       ,p_plugin.attribute_09);
        apex_json.write('attribute_10'
                       ,p_plugin.attribute_10);
        apex_json.write('attribute_11'
                       ,p_plugin.attribute_11);
        apex_json.write('attribute_12'
                       ,p_plugin.attribute_12);
        apex_json.write('attribute_13'
                       ,p_plugin.attribute_13);
        apex_json.write('attribute_14'
                       ,p_plugin.attribute_14);
        apex_json.write('attribute_15'
                       ,p_plugin.attribute_15);

        apex_json.close_object;

        RETURN apex_json.get_clob_output;
    END printattributes;

    ------------------------
    FUNCTION printattributes(p_dynamic_action IN apex_plugin.t_dynamic_action)
        RETURN CLOB
    IS
    BEGIN
        apex_json.initialize_clob_output;

        apex_json.open_object;
        apex_json.write('type'
                       ,'apex_plugin.t_dynamic_action');

        apex_json.write('id'
                       ,p_dynamic_action.id
                       ,FALSE);
        apex_json.write('action'
                       ,p_dynamic_action.action
                       ,FALSE);
        apex_json.write('attribute_01'
                       ,p_dynamic_action.attribute_01
                       ,TRUE);
        apex_json.write('attribute_02'
                       ,p_dynamic_action.attribute_02
                       ,TRUE);
        apex_json.write('attribute_03'
                       ,p_dynamic_action.attribute_03
                       ,TRUE);
        apex_json.write('attribute_04'
                       ,p_dynamic_action.attribute_04
                       ,TRUE);
        apex_json.write('attribute_05'
                       ,p_dynamic_action.attribute_05
                       ,TRUE);
        apex_json.write('attribute_06'
                       ,p_dynamic_action.attribute_06
                       ,TRUE);
        apex_json.write('attribute_07'
                       ,p_dynamic_action.attribute_07
                       ,TRUE);
        apex_json.write('attribute_08'
                       ,p_dynamic_action.attribute_08
                       ,TRUE);
        apex_json.write('attribute_09'
                       ,p_dynamic_action.attribute_09
                       ,TRUE);
        apex_json.write('attribute_10'
                       ,p_dynamic_action.attribute_10
                       ,TRUE);
        apex_json.write('attribute_11'
                       ,p_dynamic_action.attribute_11
                       ,TRUE);
        apex_json.write('attribute_12'
                       ,p_dynamic_action.attribute_12
                       ,TRUE);
        apex_json.write('attribute_13'
                       ,p_dynamic_action.attribute_13
                       ,TRUE);
        apex_json.write('attribute_14'
                       ,p_dynamic_action.attribute_14
                       ,TRUE);
        apex_json.write('attribute_15'
                       ,p_dynamic_action.attribute_15
                       ,TRUE);

        apex_json.close_object;

        RETURN apex_json.get_clob_output;
    END printattributes;

    --------------------------------
    FUNCTION getcolumnnamesfromquery(p_string IN VARCHAR2)
        RETURN CLOB
    IS
        v_count     NUMBER;
        v_pattern   VARCHAR2(50) := '#.+?#';
    BEGIN
        apex_json.initialize_clob_output;

        v_count :=
            REGEXP_COUNT(p_string
                        ,v_pattern
                        ,1
                        ,'m');

        apex_json.open_object;
        apex_json.open_array('queryColumns');

        FOR i IN 1 .. v_count
        LOOP
            apex_json.write(TRIM(BOTH '#' FROM REGEXP_SUBSTR(p_string
                                                            ,v_pattern
                                                            ,1
                                                            ,i
                                                            ,'m')));
        END LOOP;

        apex_json.close_array;
        apex_json.close_object;

        RETURN apex_json.get_clob_output;
    END;

    -------------------------
    FUNCTION getbindvariables(p_string IN VARCHAR2)
        RETURN CLOB
    IS
        l_names   dbms_sql.varchar2_table;
    BEGIN
        l_names := wwv_flow_utilities.get_binds(p_string);

        apex_json.initialize_clob_output;

        apex_json.open_object;
        apex_json.open_array('queryItems');

        FOR i IN 1 .. l_names.COUNT
        LOOP
            apex_json.write(TRIM(BOTH ':' FROM l_names(i)));
        END LOOP;

        apex_json.close_array;
        apex_json.close_object;

        RETURN apex_json.get_clob_output;
    END getbindvariables;

    -------------------------------
    FUNCTION getpluginappattributes(p_plugin IN apex_plugin.t_plugin)
        RETURN VARCHAR2
    IS
        attr_app_expand_time     NUMBER := NVL(p_plugin.attribute_01, 200);
        attr_app_collapse_time   NUMBER := NVL(p_plugin.attribute_02, 400);
    BEGIN
        apex_json.initialize_clob_output;

        apex_json.open_object;
        apex_json.open_object('plugin');
        apex_json.write('animationTime'
                       ,attr_app_expand_time);
        apex_json.write('closeOtherDuration'
                       ,attr_app_collapse_time);
        apex_json.close_object;
        apex_json.close_object;

        RETURN apex_json.get_clob_output;
    END getpluginappattributes;

    ----------------------------
    FUNCTION pretius_row_details(p_dynamic_action   IN apex_plugin.t_dynamic_action
                                ,p_plugin           IN apex_plugin.t_plugin)
        RETURN apex_plugin.t_dynamic_action_render_result
    IS
        l_result                 apex_plugin.t_dynamic_action_render_result;

        l_attr_nestedquery       VARCHAR2(32767) := p_dynamic_action.attribute_01;
        l_attr_dc_settings       VARCHAR2(100) := p_dynamic_action.attribute_02;

        l_attr_mode              VARCHAR2(100) := p_dynamic_action.attribute_03;
        l_attr_customtemplate    VARCHAR2(32767) := p_dynamic_action.attribute_04;
        l_attr_customcallback    VARCHAR2(32767) := p_dynamic_action.attribute_05;
        l_attr_bgcolor           VARCHAR2(20) := NVL(p_dynamic_action.attribute_06, '#EBEBEB');
        l_attr_setmaxheight      NUMBER := p_dynamic_action.attribute_07;
        l_attr_bordercolor       VARCHAR2(20) := NVL(p_dynamic_action.attribute_08, '#c5c5c5');
        l_attr_highlightcolor    VARCHAR2(20) := NVL(p_dynamic_action.attribute_09, '#F2F2F2');
        l_attr_cc_settings       VARCHAR2(100) := p_dynamic_action.attribute_10;
        l_attr_nodatafound       VARCHAR2(32767) := p_dynamic_action.attribute_11;
        l_attr_spinneroptions    VARCHAR2(100) := NVL(p_dynamic_action.attribute_12, 'ATR');
        l_attr_defaulttemplate   VARCHAR2(4000) := NVL(p_dynamic_action.attribute_13, '#DEFAULT_TEMPLATE#');
        l_attr_dt_settings       VARCHAR2(100) := p_dynamic_action.attribute_14;
        /*
        p_dynamic_action.attribute_12;
        p_dynamic_action.attribute_13;
        p_dynamic_action.attribute_14;
        p_dynamic_action.attribute_15;
        */
        attr_app_embedmustache   BOOLEAN
                                     := CASE
                                            WHEN p_plugin.attribute_03 = 'Y' THEN
                                                TRUE
                                            ELSE
                                                FALSE
                                        END;
    BEGIN
        l_result.ajax_identifier := wwv_flow_plugin.get_ajax_identifier;
        l_result.javascript_function :=
               '
      function(){
        pretiusNestedReport(this, '
            || getcolumnnamesfromquery(l_attr_nestedquery)
            || ', '
            || getbindvariables(l_attr_nestedquery)
            || ', true, '
            || getpluginappattributes(p_plugin)
            || ');
      }
    ';
        --l_result.attribute_01        := p_dynamic_action.attribute_01; --tajne, bo to zapytaie SQL, ktore mogloby byc dostepne przez this.options
        l_result.attribute_02 := l_attr_dc_settings;
        l_result.attribute_03 := l_attr_mode;
        l_result.attribute_04 := l_attr_customtemplate;
        l_result.attribute_05 := l_attr_customcallback;
        l_result.attribute_06 := l_attr_bgcolor;
        l_result.attribute_07 := l_attr_setmaxheight;
        l_result.attribute_08 := l_attr_bordercolor;
        l_result.attribute_09 := l_attr_highlightcolor;
        l_result.attribute_10 := l_attr_cc_settings;
        l_result.attribute_11 := l_attr_nodatafound;
        l_result.attribute_12 := l_attr_spinneroptions;
        l_result.attribute_13 := l_attr_defaulttemplate;
        l_result.attribute_14 := l_attr_dt_settings;

        --l_result.attribute_15        := p_dynamic_action.attribute_15;

        --add mustache library
        IF attr_app_embedmustache THEN
            apex_javascript.add_library(p_name        => 'mustache'
                                       ,p_directory   => p_plugin.file_prefix
                                       ,p_version     => NULL);
        END IF;

        IF apex_application.g_debug THEN
            apex_plugin_util.debug_dynamic_action(p_plugin           => p_plugin
                                                 ,p_dynamic_action   => p_dynamic_action);

            apex_javascript.add_onload_code('
        apex.debug.info("p_dynamic_action", ' || printattributes(p_dynamic_action) || ');
        apex.debug.info("p_plugin",         ' || printattributes(p_plugin) || ');
        apex.debug.info("l_result",         ' || printattributes(l_result) || ');
      ');
        END IF;

        RETURN l_result;
    END pretius_row_details;

    --------------------
    FUNCTION clean_query(p_query IN VARCHAR2)
        RETURN VARCHAR2
    IS
        l_query   VARCHAR2(32767) := p_query;
    BEGIN
        LOOP
            IF SUBSTR(l_query
                     ,-1) IN (CHR(10)
                             ,CHR(13)
                             ,';'
                             ,' '
                             ,'/') THEN
                l_query :=
                    SUBSTR(l_query
                          ,1
                          ,LENGTH(l_query) - 1);
            ELSE
                EXIT;
            END IF;
        END LOOP;

        RETURN l_query;
    END clean_query;

    -----------------------
    FUNCTION is_valid_query(p_query IN VARCHAR2)
        RETURN VARCHAR2
    IS
        l_source_query    VARCHAR2(32767) := p_query;
        l_source_queryv   VARCHAR2(32767);
        l_report_cursor   INTEGER;
    BEGIN
        IF l_source_query IS NOT NULL THEN
            IF SUBSTR(UPPER(LTRIM(l_source_query))
                     ,1
                     ,6) != 'SELECT'
               AND SUBSTR(UPPER(LTRIM(l_source_query))
                         ,1
                         ,4) != 'WITH' THEN
                RETURN 'Query must begin with SELECT or WITH';
            END IF;

            l_source_query := clean_query(l_source_query);
            l_source_queryv := sys.dbms_assert.noop(str => l_source_query);

            BEGIN
                l_report_cursor := sys.dbms_sql.open_cursor;
                sys.dbms_sql.parse(l_report_cursor
                                  ,l_source_queryv
                                  ,sys.dbms_sql.native);
                sys.dbms_sql.close_cursor(l_report_cursor);
            EXCEPTION
                WHEN OTHERS THEN
                    IF sys.dbms_sql.is_open(l_report_cursor) THEN
                        sys.dbms_sql.close_cursor(l_report_cursor);
                    END IF;

                    RETURN SQLERRM; --||': '||chr(10)||chr(10)||l_source_query;
            END;
        END IF;

        RETURN NULL;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN SQLERRM; --||':'||chr(10)||chr(10)||p_query;
    END is_valid_query;

    ----------------------------
    FUNCTION getcolumntypestring(p_col_type IN NUMBER)
        RETURN VARCHAR2
    IS
        l_col_type   VARCHAR2(50);
    BEGIN
        IF p_col_type = 1 THEN
            l_col_type := 'VARCHAR2';
        ELSIF p_col_type = 2 THEN
            l_col_type := 'NUMBER';
        ELSIF p_col_type = 12 THEN
            l_col_type := 'DATE';
        ELSIF p_col_type IN (180
                            ,181
                            ,231) THEN
            l_col_type := 'TIMESTAMP';

            IF p_col_type = 231 THEN
                l_col_type := 'TIMESTAMP_LTZ';
            END IF;
        ELSIF p_col_type = 112 THEN
            l_col_type := 'CLOB';
        ELSIF p_col_type = 113 THEN
            l_col_type := 'BLOB';
        ELSIF p_col_type = 96 THEN
            l_col_type := 'CHAR';
        ELSE
            l_col_type := 'OTHER';
        END IF;

        RETURN l_col_type;
    END getcolumntypestring;

    ---------------------------------
    FUNCTION pretius_row_details_ajax(p_dynamic_action   IN apex_plugin.t_dynamic_action
                                     ,p_plugin           IN apex_plugin.t_plugin)
        RETURN apex_plugin.t_dynamic_action_ajax_result
    IS
        l_status               NUMBER;
        l_desc_col_no          NUMBER := 0;

        l_ajax_column_name     VARCHAR2(4000);
        l_ajax_column_values   VARCHAR2(4000);

        l_sql                  VARCHAR2(32767);
        l_delimeter            VARCHAR2(1) := ':';
        l_parseresult          VARCHAR2(4000);

        l_result               apex_plugin.t_dynamic_action_ajax_result;

        l_columnnames          apex_application_global.vc_arr2;
        l_columnvalues         apex_application_global.vc_arr2;

        l_sys_cursor           SYS_REFCURSOR;

        l_cursor               PLS_INTEGER;

        l_desc_col_info        SYS.dbms_sql.desc_tab2;

        l_apex_items_names     dbms_sql.varchar2_table;
    BEGIN
        l_ajax_column_name := apex_application.g_x01;
        l_ajax_column_values := apex_application.g_x02;

        l_sql := p_dynamic_action.attribute_01;
        l_apex_items_names := wwv_flow_utilities.get_binds(l_sql);

        l_columnnames :=
            apex_util.string_to_table(l_ajax_column_name
                                     ,l_delimeter);
        l_columnvalues :=
            apex_util.string_to_table(l_ajax_column_values
                                     ,l_delimeter);

        IF l_columnnames.COUNT <> l_columnvalues.COUNT THEN
            apex_json.open_object;
            apex_json.write(
                'addInfo'
               ,'The number of column names must be equal to the number of column values.</br>Check whether the query columns exist in parent report.');
            apex_json.write('error'
                           ,'Column names = "' || l_ajax_column_name || '"' || CHR(10) || 'Column values = "' || l_ajax_column_values || '"');
            apex_json.close_object;
            RETURN NULL;
        END IF;

        --replacing space within column name is required to work with column aliases
        FOR i IN 1 .. l_columnnames.COUNT
        LOOP
            l_sql :=
                REPLACE(l_sql
                       ,CHR(39) || '#' || l_columnnames(i) || '#' || CHR(39)
                       ,   ':'
                        || REPLACE(l_columnnames(i)
                                  ,' '
                                  ,''));
            l_sql :=
                REPLACE(l_sql
                       ,'#' || l_columnnames(i) || '#'
                       ,   ':'
                        || REPLACE(l_columnnames(i)
                                  ,' '
                                  ,''));
        END LOOP;

        l_parseresult := is_valid_query(l_sql);

        IF l_parseresult IS NOT NULL THEN
            apex_json.open_object;
            apex_json.write('addInfo'
                           ,'Nested report SQL query is not valid');
            apex_json.write('error'
                           ,l_parseresult);
            --apex_json.write('query', l_sql);
            apex_json.close_object;
            RETURN NULL;
        END IF;

        -- open l_cursor;
        l_cursor := dbms_sql.open_cursor;
        dbms_sql.parse(l_cursor
                      ,l_sql
                      ,dbms_sql.native);

        -- bind items
        BEGIN
            FOR i IN 1 .. l_apex_items_names.COUNT
            LOOP
                dbms_sql.bind_variable(l_cursor
                                      ,l_apex_items_names(i)
                                      ,v(TRIM(BOTH ':' FROM l_apex_items_names(i))));
            END LOOP;
        EXCEPTION
            WHEN OTHERS THEN
                apex_json.open_object;
                apex_json.write('addInfo'
                               ,'While binding APEX items error occured');
                apex_json.write('error'
                               ,SQLERRM);
                apex_json.close_object;
                RETURN NULL;
        END;

        --bind all the values
        --replacing space within column name is required to work with column aliases
        BEGIN
            FOR i IN 1 .. l_columnnames.COUNT
            LOOP
                dbms_sql.bind_variable(l_cursor
                                      ,REPLACE(l_columnnames(i)
                                              ,' '
                                              ,'')
                                      ,l_columnvalues(i));
            END LOOP;
        EXCEPTION
            WHEN OTHERS THEN
                apex_json.open_object;
                apex_json.write('addInfo'
                               ,'While binding query variables error occured');
                apex_json.write('error'
                               ,SQLERRM);
                apex_json.close_object;
                RETURN NULL;
        END;

        -- describe columns
        sys.dbms_sql.describe_columns2(l_cursor
                                      ,l_desc_col_no
                                      ,l_desc_col_info);

        BEGIN
            l_status := dbms_sql.execute(l_cursor);
        EXCEPTION
            WHEN OTHERS THEN
                apex_json.open_object;
                apex_json.write('addInfo'
                               ,'While executing query error occured ');
                apex_json.write('error'
                               ,SQLERRM);
                apex_json.close_object;
                RETURN NULL;
        END;

        l_sys_cursor := dbms_sql.to_refcursor(l_cursor);

        --apex_json.initialize_clob_output;

        apex_json.open_object;
        apex_json.write('data'
                       ,l_sys_cursor);
        apex_json.open_array('headers');

        FOR i IN 1 .. l_desc_col_no
        LOOP
            apex_json.open_object;
            apex_json.write('COLUMN_NAME'
                           ,l_desc_col_info(i).col_name);
            apex_json.write('COLUMN_TYPE'
                           ,getcolumntypestring(l_desc_col_info(i).col_type));
            apex_json.close_object;
        END LOOP;

        apex_json.close_array;

        apex_json.write('x01'
                       ,l_ajax_column_name
                       ,TRUE);
        apex_json.write('x02'
                       ,l_ajax_column_values
                       ,TRUE);

        apex_json.close_object;

        --htp.p( apex_json.get_clob_output );

        RETURN l_result;
    EXCEPTION
        WHEN OTHERS THEN
            apex_json.open_object;
            apex_json.write('addInfo'
                           ,'Unknown ajax error');
            apex_json.write('error'
                           ,SQLERRM);
            apex_json.close_object;
            htp.p(apex_json.get_clob_output);
            RETURN l_result;
    END pretius_row_details_ajax;
END "PRETIUS_APEX_NESTED_REPORTS";
/


--
-- PRETIUS_SMART_CHECKBOX_COLUMN  (Package Body) 
--
--  Dependencies: 
--   PRETIUS_SMART_CHECKBOX_COLUMN (Package)
--   APEX_PLUGIN (Synonym)
--   APEX_JAVASCRIPT (Synonym)
--   APEX_CSS (Synonym)
--   APEX_ESCAPE (Synonym)
--   APEX_COLLECTION (Synonym)
--   APEX_COLLECTIONS (Synonym)
--   APEX_APPLICATION (Synonym)
--   V (Synonym)
--   APEX_APPLICATION_GLOBAL (Synonym)
--   DBMS_SQL (Package)
--   STANDARD (Package)
--   APEX_ERROR (Synonym)
--   APEX_APPLICATION_PAGE_DA_ACTS (Synonym)
--   APEX_APPLICATION_PAGE_IR_COL (Synonym)
--   APEX_APPLICATION_PAGE_RPT_COLS (Synonym)
--   APEX_APPLICATION_PAGE_REGIONS (Synonym)
--   APEX_JSON (Synonym)
--   APEX_PLUGIN_UTIL (Synonym)
--
CREATE OR REPLACE PACKAGE BODY DETALES.PRETIUS_SMART_CHECKBOX_COLUMN AS

FUNCTION f_render(
	p_dynamic_action in apex_plugin.t_dynamic_action,
	p_plugin         in apex_plugin.t_plugin
) return apex_plugin.t_dynamic_action_render_result
IS
	C_ATTR_SELECTION_SETTINGS     CONSTANT p_dynamic_action.attribute_01%type := p_dynamic_action.attribute_01;
	C_ATTR_COLUMN_NAME            CONSTANT p_dynamic_action.attribute_02%type := p_dynamic_action.attribute_02;
	C_ATTR_STORAGE_ITEM           CONSTANT p_dynamic_action.attribute_03%type := p_dynamic_action.attribute_03;
	C_ATTR_STORAGE_COLLECTION     CONSTANT p_dynamic_action.attribute_04%type := NVL(p_dynamic_action.attribute_04, 'P'||V('APP_PAGE_ID')||'_SELECTED_VALUES');
	C_ATTR_VALUE_SEPARATOR        CONSTANT p_dynamic_action.attribute_05%type := NVL(p_dynamic_action.attribute_05, ':');
	C_ATTR_SELECTION_COLOR        CONSTANT p_dynamic_action.attribute_06%type := p_dynamic_action.attribute_06;
	C_ATTR_LIMIT_SELECTION        CONSTANT p_dynamic_action.attribute_07%type := NVL(p_dynamic_action.attribute_07, 'Y');
	C_ATTR_AUTO_SUBMIT_ITEM       CONSTANT p_dynamic_action.attribute_08%type := NVL(p_dynamic_action.attribute_08, 'N');
	C_ATTR_EMPTY_CHECKBOX_ICON    CONSTANT p_dynamic_action.attribute_09%type := NVL(p_dynamic_action.attribute_09, 'fa-square-o');
	C_ATTR_SELECTED_CHECKBOX_ICON CONSTANT p_dynamic_action.attribute_10%type := NVL(p_dynamic_action.attribute_10, 'fa-check-square-o');

	v_result                   apex_plugin.t_dynamic_action_render_result;

	v_dynamic_action_id        varchar2(100);
	v_region_id                varchar2(100);
	v_region_static_id         varchar2(100);
	v_region_template          varchar2(100);
	v_report_type              varchar2(100);
	v_report_template          varchar2(100);
	v_column_id                varchar2(100);
	v_css                      varchar2(4000);
	v_error                    varchar2(4000);

BEGIN
	IF apex_application.g_debug THEN
		apex_plugin_util.debug_dynamic_action (
			p_plugin         => p_plugin,
			p_dynamic_action => p_dynamic_action
		);
	END IF;

	-- get region id associated with action
	BEGIN
		SELECT
			AFFECTED_REGION_ID
		INTO
			v_region_id
		FROM
			APEX_APPLICATION_PAGE_DA_ACTS
		WHERE
			ACTION_ID = p_dynamic_action.id;
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			v_error := 'Pretius Smart Checkbox Column: Could not find affected report region. Contact application administrator.';
		WHEN TOO_MANY_ROWS THEN
			v_error := 'Pretius Smart Checkbox Column: More than one affected report regions found. Contact application administrator.';
	END;

	-- get region/report inforamtions
	BEGIN
		SELECT
			NVL(STATIC_ID, 'R'||REGION_ID) REGION_STATIC_ID,
			TEMPLATE,
			CASE  SOURCE_TYPE
				WHEN 'Report' THEN 'Classic Report'
				ELSE SOURCE_TYPE
				END SOURCE_TYPE,
			REPORT_TEMPLATE
		INTO
			v_region_static_id,
			v_region_template,
			v_report_type,
			v_report_template
		FROM
			APEX_APPLICATION_PAGE_REGIONS
		WHERE
			REGION_ID = v_region_id;
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			v_error := 'Pretius Smart Checkbox Column: Could not read report region details. Contact application administrator.';
		WHEN TOO_MANY_ROWS THEN
			v_error := 'Pretius Smart Checkbox Column: Report region details ambiguously defined. Contact application administrator.';
	END;

	/* v_report_type - Report types:
	Report
	Interactive Report
	Interactive Grid
	Reflow Report
	Column Toggle Report
	*/
	BEGIN
		CASE v_report_type
			WHEN 'Classic Report' THEN
				-- Classic report
				SELECT
					NVL(STATIC_ID, COLUMN_ALIAS)
				INTO
					v_column_id
				FROM
					APEX_APPLICATION_PAGE_RPT_COLS
				WHERE
					REGION_ID = v_region_id
					AND COLUMN_ALIAS = C_ATTR_COLUMN_NAME;
			WHEN 'Interactive Report' THEN
				-- Interactive report
				SELECT
					 NVL(STATIC_ID, 'C'||COLUMN_ID)
				INTO
					v_column_id
				FROM
					APEX_APPLICATION_PAGE_IR_COL
				WHERE
					REGION_ID = v_region_id
					AND COLUMN_ALIAS  = C_ATTR_COLUMN_NAME;
			ELSE
				v_column_id := 'Not supported';
		END CASE;
	EXCEPTION
		WHEN NO_DATA_FOUND THEN
			v_error := 'Pretius Smart Checkbox Column: '||C_ATTR_COLUMN_NAME||' column does not exist in affected report region. Contact application administrator.';
		WHEN TOO_MANY_ROWS THEN
			v_error := 'Pretius Smart Checkbox Column: More than one '||C_ATTR_COLUMN_NAME||' column found. Contact application administrator.';
	END;

	APEX_JAVASCRIPT.ADD_LIBRARY (
		p_name      => 'smartCheckboxColumn',
		p_directory => p_plugin.file_prefix,
		p_version   => null
	);

	IF C_ATTR_SELECTION_COLOR IS NOT NULL THEN
		v_css := '##region-static-id# tr.pscc-selected-row td { background-color: #selected-color#!important; }
							##region-static-id# tr.pscc-selected-row:hover td { background-color: #selected-color#!important; } ';
		v_css := replace(v_css,'#selected-color#', C_ATTR_SELECTION_COLOR);
		v_css := replace(v_css,'#region-static-id#', v_region_static_id);
		apex_css.add (
			p_css => v_css,
			p_key => 'smartCheckboxColumn'||v_region_static_id
		);
	END IF;

	v_result.ajax_identifier     := apex_plugin.get_ajax_identifier;

	IF v_error IS NULL THEN
		v_result.javascript_function :=
			'function(){
				let
					pluginInstanceId = '''||v_region_static_id||'_'||v_column_id||'_pscc'';
				$(''<div id="''+pluginInstanceId+''"></div>'').appendTo(''body'');
				$(''#''+pluginInstanceId).smartCheckboxColumn( {'																	||
						apex_javascript.add_attribute('ajaxIdentifier',				v_result.ajax_identifier)						||
						apex_javascript.add_attribute('selectionSettings',			C_ATTR_SELECTION_SETTINGS)						||
						apex_javascript.add_attribute('columnName',					APEX_ESCAPE.HTML(C_ATTR_COLUMN_NAME) )			||
						apex_javascript.add_attribute('storageItemName',			C_ATTR_STORAGE_ITEM)							||
						apex_javascript.add_attribute('storageCollectionName',		APEX_ESCAPE.HTML(C_ATTR_STORAGE_COLLECTION) )	||
						apex_javascript.add_attribute('valueSeparator',				APEX_ESCAPE.HTML(C_ATTR_VALUE_SEPARATOR) )		||
						apex_javascript.add_attribute('selectionColor',				C_ATTR_SELECTION_COLOR)							||
						apex_javascript.add_attribute('limitSelection',				C_ATTR_LIMIT_SELECTION)							||
						apex_javascript.add_attribute('itemAutoSubmit',				C_ATTR_AUTO_SUBMIT_ITEM)						||
						apex_javascript.add_attribute('emptyCheckboxIcon',			C_ATTR_EMPTY_CHECKBOX_ICON)						||
						apex_javascript.add_attribute('selectedCheckboxIcon',		C_ATTR_SELECTED_CHECKBOX_ICON)					||

						apex_javascript.add_attribute('regionId',					v_region_static_id)								||
						apex_javascript.add_attribute('regionTemplate',				v_region_template)								||
						apex_javascript.add_attribute('reportType',					v_report_type )									||
						apex_javascript.add_attribute('reportTemplate',				v_report_template )								||
						apex_javascript.add_attribute('columnId',					v_column_id, false, false )						||
				'});
			}';
	ELSE
		v_result.javascript_function :=
			'function(){
				apex.message.clearErrors();
				apex.message.showErrors({
					type:       "error",
					location:   "page",
					message:    "' || v_error ||'",
					unsafe:     false
				});
			}';
	END IF;

	return v_result;
EXCEPTION
	WHEN OTHERS THEN
		apex_error.add_error (
			p_message          => 'Pretius Smart Checkbox Column: Unidentified error occured. </br>
														 SQLERRM: '|| SQLERRM || '</br>
														 Contact application administrator.',
			p_display_location => apex_error.c_on_error_page
		);

END f_render;

FUNCTION f_ajax(
	p_dynamic_action IN apex_plugin.t_dynamic_action,
	p_plugin         IN apex_plugin.t_plugin
) return apex_plugin.t_dynamic_action_ajax_result
AS
	v_selected_values  APEX_APPLICATION_GLOBAL.VC_ARR2 DEFAULT APEX_APPLICATION.G_F01;
	v_ajax_command     varchar2(30)  DEFAULT APEX_APPLICATION.G_X01;
	v_save_to_coll     varchar2(30)  DEFAULT APEX_APPLICATION.G_X02;
	v_collection_name  varchar2(255) DEFAULT upper(APEX_APPLICATION.G_X03);
	v_collection_query varchar2(4000);
	v_ref_cur          sys_refcursor;
	v_result           apex_plugin.t_dynamic_action_ajax_result;
BEGIN

	--debug
	IF apex_application.g_debug THEN
		apex_plugin_util.debug_dynamic_action (
			p_plugin         => p_plugin,
			p_dynamic_action => p_dynamic_action
		);
	END IF;

	CASE upper(v_ajax_command)
		WHEN 'GET' THEN
			open v_ref_cur for
				SELECT
					C001 as "checkbox_value"
				FROM
					APEX_COLLECTIONS
				WHERE
					COLLECTION_NAME = v_collection_name;

			apex_json.open_object;
				apex_json.write('selectedValues', v_ref_cur);
				apex_json.write('status', 'Ok');
				apex_json.write('message', 'Ok');
			apex_json.close_object;
			--close v_ref_cur;

		WHEN 'SET' THEN
			IF upper(v_save_to_coll) = 'TRUE' THEN
				APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION( v_collection_name );
				APEX_COLLECTION.ADD_MEMBERS(
					p_collection_name => v_collection_name,
					p_c001            => v_selected_values
				);
			END IF;

			apex_json.open_object;
				apex_json.write('status', 'Ok');
				apex_json.write('message', 'APEX Collection updated successfully.');
			apex_json.close_object;

		WHEN 'SUBMIT' THEN
			apex_json.open_object;
				apex_json.write('status', 'Ok');
				apex_json.write('message', 'APEX Item submitted successfully.');
			apex_json.close_object;
		ELSE
			apex_json.open_object;
				apex_json.write('status', 'Ok');
				apex_json.write('message', 'No command for AJAX Callback.');
			apex_json.close_object;
	END CASE;

	return v_result;

EXCEPTION
	WHEN OTHERS THEN
		apex_json.open_object;
		apex_json.write('status', 'Error');
		apex_json.write('message', 'Error occured');
		apex_json.write('SQLERRM', SQLERRM);
		apex_json.close_object;
		-- cleaning up
		apex_json.close_all;
		close v_ref_cur;
END f_ajax;

END PRETIUS_SMART_CHECKBOX_COLUMN;
/


--
-- PRICE_LIST_PARSER  (Package Body) 
--
--  Dependencies: 
--   PRICE_LIST_PARSER (Package)
--   V_COMPANIES (Table)
--   APEX_IMPORT_JOB_IDE (Package)
--   STANDARD (Package)
--   WWV_FLOW_DATA_PARSER (Package)
--   TEMPORARY_CONTENT (Table)
--   TEMP_CONTENT (Table)
--   APEX_DATA_PARSER (Synonym)
--   V_STORAGE_SUPPLIERS_PARTS (Table)
--   APEX_APPLICATION_TEMP_FILES (Synonym)
--   V_PRICE_LIST_IMPORTS (Table)
--   V_SUPPLIERS_PARTS_LOG (Table)
--
CREATE OR REPLACE PACKAGE BODY DETALES.price_list_parser
AS
    -- =============================================================================
    -- 01.00.00.00/11-Feb-2022/LAN20220222
    --  o Function was created to parse price lists
    -- =============================================================================
    -- @VER@/01.00.00.00/22-Feb-2022/20220222/price_list_parser
    -- =============================================================================
    PROCEDURE parse_wess(sp_filename          IN VARCHAR2
                        ,ip_car_id            IN NUMBER
                        ,ip_order_type_id     IN NUMBER
                        ,ip_supplier_id       IN NUMBER
                        ,dp_expiration_date   IN DATE
                        ,np_import_id         IN NUMBER
                        ,ip_mode              IN NUMBER
                        ,ip_sftp              IN NUMBER) -- 0 = check, 1 = import
    AS
        sl_message                  VARCHAR2(50) := NULL;
        nl_errorflag                NUMBER := 0;
        sl_import_start_message     VARCHAR2(100) := sg_import_check_start;
        sl_import_success_message   VARCHAR2(100) := sg_import_check_success;
        sl_import_end_message       VARCHAR2(100) := sg_import_check_end;
        nl_file_id                  NUMBER;
        il_importid                 NUMBER;
        sl_sqlmsg                   VARCHAR2(254);
        il_sqlcode                  NUMBER;
    BEGIN
        IF ip_mode = 0 THEN
            BEGIN
                SELECT DISTINCT wwv.id
                INTO   nl_file_id
                FROM   apex_application_temp_files wwv
                WHERE  wwv.filename LIKE '%.xlsx'
                OR     wwv.filename LIKE '%.csv'
                AND    wwv.id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);
            EXCEPTION
                WHEN OTHERS THEN
                    NULL; --means it runs on sftp mode
            END;

            INSERT INTO v_price_list_imports(ncar_id
                                          ,nsupplier_id
                                          ,norder_type_id
                                          ,dtexpiration_date
                                          ,sfilename
                                          ,nfile_id)
            VALUES      (ip_car_id
                        ,ip_supplier_id
                        ,ip_order_type_id
                        ,dp_expiration_date
                        ,sp_filename
                        ,DECODE(nl_file_id, NULL, ip_sftp, nl_file_id))
            RETURNING   nid
            INTO        il_importid;

            COMMIT;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_start_message || '</b></a>');

            COMMIT;

            FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                 ,col002     AS partcode
                                 ,col003     AS partname
                                 ,col004     AS alter_code
                                 ,col005     AS price
                           FROM   apex_application_temp_files  f
                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => f.filename)) p
                           WHERE  f.id = nl_file_id
                           AND    ip_sftp = 0
                           UNION
                           SELECT ROWNUM     AS nrowid
                                 ,col002     AS partcode
                                 ,col003     AS partname
                                 ,col004     AS alter_code
                                 ,col005     AS price
                           FROM   temporary_content  fa
                                 ,TABLE(apex_data_parser.parse(p_content                       => fa.b_blobcontent
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => sp_filename)) p
                           WHERE  fa.nid = ip_sftp
                           AND    ip_sftp != 0)
            LOOP
                sl_message := NULL;

                IF (ql_rec.partcode IS NULL
                    OR LENGTH(ql_rec.partcode) > ig_max_part_code_length) THEN
                    sl_message := sg_part_code_error_msg;
                END IF;

                IF (LENGTH(ql_rec.partname) > ig_max_part_name_length) THEN
                    sl_message := sg_part_name_error_msg;
                END IF;

                IF TO_NUMBER(REGEXP_REPLACE(ql_rec.price
                                           ,'[,.]'
                                           ,SUBSTR(TO_CHAR(11 / 10)
                                                  ,2
                                                  ,1)) DEFAULT -1 ON CONVERSION ERROR) <= 0 THEN
                    sl_message := sg_part_price_error_msg;
                END IF;

                IF (LENGTH(ql_rec.alter_code) > ig_max_alter_code_length) THEN
                    sl_message := sg_alter_code_error_msg;
                END IF;

                IF (sl_message IS NOT NULL) THEN
                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (il_importid
                                ,ql_rec.nrowid
                                ,'<a style="color:red"><b>' || sl_message || '</b></a>');

                    nl_errorflag := 1;
                END IF;

                IF MOD(ql_rec.nrowid
                      ,100) = 0 THEN
                    COMMIT;
                END IF;
            END LOOP;

            IF nl_errorflag != 0 THEN
                UPDATE v_price_list_imports
                SET    nhaserrors = 1
                WHERE  nid = il_importid;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;
            ELSE
                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (il_importid
                            ,0
                            ,'<a style="color:green"><b>' || sl_import_success_message || '</b></a>');

                UPDATE v_price_list_imports
                SET    nhaserrors = 0
                WHERE  nid = il_importid;
            END IF;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_end_message || '</b></a>');

            COMMIT;
        END IF;

        IF ip_sftp > 0 THEN
            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (DECODE(np_import_id, 0, il_importid, np_import_id)
                        ,0
                        ,'<a style="color:violet"><b>SFTP IMPORT IS ON</b></a>');

            COMMIT;
        END IF;

        IF ip_mode = 1
           OR ip_sftp > 0 THEN
            SELECT nfile_id
            INTO   nl_file_id
            FROM   v_price_list_imports
            WHERE  nid = DECODE(np_import_id, 0, il_importid, np_import_id);

            UPDATE v_price_list_imports
            SET    nimport_started = 1
            WHERE  nid = il_importid;

            UPDATE v_price_list_imports
            SET    napproved = -1
            WHERE  norder_type_id = ip_order_type_id
            AND    nsupplier_id = ip_supplier_id
            AND    ncar_id = ip_car_id
            AND    napproved = 1
            AND    nid != DECODE(np_import_id, 0, il_importid, np_import_id);

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (DECODE(np_import_id, 0, il_importid, np_import_id)
                        ,0
                        ,'<a style="color:violet"><b>Import has started!</b></a>');

            COMMIT;

            BEGIN
                DELETE FROM v_storage_suppliers_parts
                WHERE       ncar_id = ip_car_id
                AND         nsupplier_id = ip_supplier_id
                AND         norder_type_id = ip_order_type_id;

                COMMIT;

                FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                     ,col002     AS partcode
                                     ,col003     AS partname
                                     ,col004     AS alter_code
                                     ,TO_NUMBER(REGEXP_REPLACE(col005
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                               FROM   apex_application_temp_files  f
                                     ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 10000000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => f.filename)) p
                               WHERE  f.id = nl_file_id
                               AND    ip_sftp = 0
                               UNION
                               SELECT ROWNUM     AS nrowid
                                     ,col002     AS partcode
                                     ,col003     AS partname
                                     ,col004     AS alter_code
                                     ,TO_NUMBER(REGEXP_REPLACE(col005
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                               FROM   temporary_content  fa
                                     ,TABLE(apex_data_parser.parse(p_content                       => fa.b_blobcontent
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 10000000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => sp_filename)) p
                               WHERE  fa.nid = ip_sftp
                               AND    ip_sftp != 0)
                LOOP
                    BEGIN
                    INSERT INTO v_storage_suppliers_parts(scode
                                                       ,sname
                                                       ,schild_code
                                                       ,nprice
                                                       ,ncar_id
                                                       ,nsupplier_id
                                                       ,norder_type_id)
                    VALUES      (ql_rec.partcode
                                ,ql_rec.partname
                                ,ql_rec.alter_code
                                ,ql_rec.nprice
                                ,ip_car_id
                                ,ip_supplier_id
                                ,ip_order_type_id);

                    IF MOD(ql_rec.nrowid
                          ,100) = 0 THEN
                        COMMIT;
                    END IF;

                    EXCEPTION WHEN OTHERS THEN
                        INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (DECODE(np_import_id, 0, il_importid, np_import_id)
                        ,0
                        ,'<a style="color:violet"><b>ERROR ROWID: ' || ql_rec.nrowid || ' </b></a>');
                    END;
                END LOOP;

                COMMIT;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;


                COMMIT;

                UPDATE v_price_list_imports
                SET    napproved = 1
                WHERE  nid = DECODE(np_import_id, 0, il_importid, np_import_id);

                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (DECODE(np_import_id, 0, il_importid, np_import_id)
                            ,0
                            ,'<a style="color:violet"><b>Price list was accepted!</b></a>');

                COMMIT;

                IF ip_sftp > 0 THEN
                    BEGIN
                        apex_import_job_ide.finish_job(0
                                                      ,ip_car_id
                                                      ,ip_supplier_id
                                                      ,ip_order_type_id);
                    EXCEPTION
                        WHEN OTHERS THEN
                            il_sqlcode := SQLCODE;
                            sl_sqlmsg := SQLERRM;

                            INSERT INTO v_suppliers_parts_log(nimport_id
                                                           ,nrow_number
                                                           ,smessage)
                                VALUES      (
                                                DECODE(np_import_id, 0, il_importid, np_import_id)
                                               ,0
                                               ,   '<a style="color:red"><b>Unexpected error while moving files! Report this error to your administrator! '
                                                || il_sqlcode
                                                || ' '
                                                || sl_sqlmsg
                                                || ' '
                                                || '</b></a>');
                    END;
                END IF;
            EXCEPTION
                WHEN OTHERS THEN
                    il_sqlcode := SQLCODE;
                    sl_sqlmsg := SQLERRM;

                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (DECODE(np_import_id, 0, il_importid, np_import_id)
                                ,0
                                ,'<a style="color:red"><b>Unexpected error while inserting data! ' || il_sqlcode || ' ' || sl_sqlmsg || ' ' || '</b></a>');
            END;
        END IF;
    END;

    PROCEDURE parse_ronax(sp_filename          IN VARCHAR2
                         ,ip_car_id            IN NUMBER
                         ,ip_order_type_id     IN NUMBER
                         ,ip_supplier_id       IN NUMBER
                         ,dp_expiration_date   IN DATE
                         ,np_import_id         IN NUMBER
                         ,ip_mode              IN NUMBER
                         ,ip_sftp              IN NUMBER) -- 0 = check, 1 = import
    AS
        sl_message                  VARCHAR2(50) := NULL;
        nl_errorflag                NUMBER := 0;
        sl_import_start_message     VARCHAR2(100) := sg_import_check_start;
        sl_import_success_message   VARCHAR2(100) := sg_import_check_success;
        sl_import_end_message       VARCHAR2(100) := sg_import_check_end;
        nl_file_id                  NUMBER;
        il_importid                 NUMBER;
        sl_sqlmsg                   VARCHAR2(254);
        il_sqlcode                  NUMBER;
    BEGIN
        IF ip_mode = 0 THEN
            SELECT DISTINCT wwv.id
            INTO   nl_file_id
            FROM   apex_application_temp_files wwv
            WHERE  wwv.filename LIKE '%.xlsx'
            OR     wwv.filename LIKE '%.csv'
            AND    wwv.id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);

            INSERT INTO v_price_list_imports(ncar_id
                                          ,nsupplier_id
                                          ,norder_type_id
                                          ,dtexpiration_date
                                          ,sfilename
                                          ,nfile_id)
            VALUES      (ip_car_id
                        ,ip_supplier_id
                        ,ip_order_type_id
                        ,dp_expiration_date
                        ,sp_filename
                        ,nl_file_id)
            RETURNING   nid
            INTO        il_importid;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_start_message || '</b></a>');

            COMMIT;

            FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                 ,col001     AS partcode
                                 ,col002     AS price
                           FROM   apex_application_temp_files  f
                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => f.filename)) p
                           WHERE  f.id = nl_file_id)
            LOOP
                sl_message := NULL;

                IF (ql_rec.partcode IS NULL
                    OR LENGTH(ql_rec.partcode) > ig_max_part_code_length) THEN
                    sl_message := sg_part_code_error_msg;
                END IF;

                IF TO_NUMBER(REGEXP_REPLACE(ql_rec.price
                                           ,'[,.]'
                                           ,SUBSTR(TO_CHAR(11 / 10)
                                                  ,2
                                                  ,1)) DEFAULT -1 ON CONVERSION ERROR) <= 0 THEN
                    sl_message := sg_part_price_error_msg;
                END IF;

                IF (sl_message IS NOT NULL) THEN
                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (il_importid
                                ,ql_rec.nrowid
                                ,'<a style="color:red"><b>' || sl_message || '</b></a>');

                    nl_errorflag := 1;
                END IF;

                IF MOD(ql_rec.nrowid
                      ,100) = 0 THEN
                    COMMIT;
                END IF;
            END LOOP;

            IF nl_errorflag != 0 THEN
                UPDATE v_price_list_imports
                SET    nhaserrors = 1
                WHERE  nid = il_importid;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;
            ELSE
                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (il_importid
                            ,0
                            ,'<a style="color:green"><b>' || sl_import_success_message || '</b></a>');

                UPDATE v_price_list_imports
                SET    nhaserrors = 0
                WHERE  nid = il_importid;
            END IF;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_end_message || '</b></a>');

            COMMIT;
        ELSIF ip_mode = 1 THEN
            SELECT nfile_id
            INTO   nl_file_id
            FROM   v_price_list_imports
            WHERE  nid = np_import_id;

            UPDATE v_price_list_imports
            SET    napproved = -1
            WHERE  norder_type_id = ip_order_type_id
            AND    nsupplier_id = ip_supplier_id
            AND    ncar_id = ip_car_id
            AND    napproved = 1
            AND    nid != np_import_id;

            BEGIN
                DELETE FROM v_storage_suppliers_parts
                WHERE       ncar_id = ip_car_id
                AND         nsupplier_id = ip_supplier_id
                AND         norder_type_id = ip_order_type_id;

                COMMIT;

                FOR ql_rec IN (WITH
                                   parsed_data
                                   AS
                                       (SELECT file_content     AS blob_content
                                        FROM   temp_content
                                        WHERE  ip_sftp = 1
                                        UNION ALL
                                        SELECT blob_content
                                        FROM   apex_application_temp_files
                                        WHERE  id = nl_file_id
                                        AND    ip_sftp = 0)
                               SELECT ROWNUM                                  AS nrowid
                                     ,REPLACE(REPLACE(col001
                                                     ,'='
                                                     ,'')
                                             ,'"'
                                             ,'')                             AS scode
                                     ,TO_NUMBER(REGEXP_REPLACE(col002
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                               FROM   parsed_data  f
                                     ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 607000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => LOWER(sp_filename))))
                LOOP
                    INSERT INTO v_storage_suppliers_parts(scode
                                                       ,nprice
                                                       ,ncar_id
                                                       ,nsupplier_id
                                                       ,norder_type_id)
                    VALUES      (ql_rec.scode
                                ,ql_rec.nprice
                                ,ip_car_id
                                ,ip_supplier_id
                                ,ip_order_type_id);

                    IF MOD(ql_rec.nrowid
                          ,100) = 0 THEN
                        COMMIT;
                    END IF;
                END LOOP;

                COMMIT;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;

                COMMIT;

                UPDATE v_price_list_imports
                SET    napproved = 1
                WHERE  nid = np_import_id;

                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (np_import_id
                            ,0
                            ,'<a style="color:violet"><b>Price list was accepted!</b></a>');

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    il_sqlcode := SQLCODE;
                    sl_sqlmsg := SQLERRM;

                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (np_import_id
                                ,0
                                ,'<a style="color:red"><b>Unexpected error while inserting data! ' || il_sqlcode || ' ' || sl_sqlmsg || ' ' || '</b></a>');
            END;
        END IF;
    END;

    PROCEDURE parse_halle(sp_filename          IN VARCHAR2
                         ,ip_car_id            IN NUMBER
                         ,ip_order_type_id     IN NUMBER
                         ,ip_supplier_id       IN NUMBER
                         ,dp_expiration_date   IN DATE
                         ,np_import_id         IN NUMBER
                         ,ip_mode              IN NUMBER -- 0 = check, 1 = import
                         ,ip_sftp              IN NUMBER)
    AS
        sl_message                  VARCHAR2(50) := NULL;
        nl_errorflag                NUMBER := 0;
        sl_import_start_message     VARCHAR2(100) := sg_import_check_start;
        sl_import_success_message   VARCHAR2(100) := sg_import_check_success;
        sl_import_end_message       VARCHAR2(100) := sg_import_check_end;
        nl_file_id                  NUMBER;
        il_importid                 NUMBER;
        sl_sqlmsg                   VARCHAR2(254);
        il_sqlcode                  NUMBER;
    BEGIN
        IF ip_mode = 0 THEN
            BEGIN
                SELECT DISTINCT wwv.id
                INTO   nl_file_id
                FROM   apex_application_temp_files wwv
                WHERE  wwv.filename LIKE '%.xlsx'
                OR     wwv.filename LIKE '%.csv'
                AND    wwv.id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);
            EXCEPTION
                WHEN OTHERS THEN
                    NULL; --means it runs on sftp mode
            END;

            INSERT INTO v_price_list_imports(ncar_id
                                          ,nsupplier_id
                                          ,norder_type_id
                                          ,dtexpiration_date
                                          ,sfilename
                                          ,nfile_id)
            VALUES      (ip_car_id
                        ,ip_supplier_id
                        ,ip_order_type_id
                        ,dp_expiration_date
                        ,sp_filename
                        ,DECODE(nl_file_id, NULL, ip_sftp, nl_file_id))
            RETURNING   nid
            INTO        il_importid;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_start_message || '</b></a>');

            COMMIT;

            FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                 ,col001     AS partcode
                                 ,col002     AS price
                           FROM   apex_application_temp_files  f
                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => f.filename)) p
                           WHERE  f.id = nl_file_id
                           AND    ip_sftp = 0
                           UNION
                           SELECT ROWNUM     AS nrowid
                                 ,col001     AS partcode
                                 ,col002     AS price
                           FROM   temporary_content  fa
                                 ,TABLE(apex_data_parser.parse(p_content                       => fa.b_blobcontent
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => sp_filename)) p
                           WHERE  fa.nid = ip_sftp
                           AND    ip_sftp != 0)
            LOOP
                sl_message := NULL;

                IF (ql_rec.partcode IS NULL
                    OR LENGTH(ql_rec.partcode) > ig_max_part_code_length) THEN
                    sl_message := sg_part_code_error_msg;
                END IF;

                IF TO_NUMBER(REGEXP_REPLACE(ql_rec.price
                                           ,'[,.]'
                                           ,SUBSTR(TO_CHAR(11 / 10)
                                                  ,2
                                                  ,1)) DEFAULT -1 ON CONVERSION ERROR) <= 0 THEN
                    sl_message := sg_part_price_error_msg;
                END IF;

                IF (sl_message IS NOT NULL) THEN
                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (il_importid
                                ,ql_rec.nrowid
                                ,'<a style="color:red"><b>' || sl_message || '</b></a>');

                    nl_errorflag := 1;
                END IF;

                IF MOD(ql_rec.nrowid
                      ,100) = 0 THEN
                    COMMIT;
                END IF;
            END LOOP;

            IF nl_errorflag != 0 THEN
                UPDATE v_price_list_imports
                SET    nhaserrors = 1
                WHERE  nid = il_importid;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;
            ELSE
                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (il_importid
                            ,0
                            ,'<a style="color:green"><b>' || sl_import_success_message || '</b></a>');

                UPDATE v_price_list_imports
                SET    nhaserrors = 0
                WHERE  nid = il_importid;
            END IF;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_end_message || '</b></a>');

            COMMIT;
        END IF;

        IF ip_mode = 1
           OR ip_sftp > 0 THEN
            SELECT nfile_id
            INTO   nl_file_id
            FROM   v_price_list_imports
            WHERE  nid = DECODE(np_import_id, 0, il_importid, np_import_id);

            UPDATE v_price_list_imports
            SET    napproved = -1
            WHERE  norder_type_id = ip_order_type_id
            AND    nsupplier_id = ip_supplier_id
            AND    ncar_id = ip_car_id
            AND    napproved = 1
            AND    nid != DECODE(np_import_id, 0, il_importid, np_import_id);

            BEGIN
                DELETE FROM v_storage_suppliers_parts
                WHERE       ncar_id = ip_car_id
                AND         nsupplier_id = ip_supplier_id
                AND         norder_type_id = ip_order_type_id;

                COMMIT;

                FOR ql_rec IN (WITH
                                   parsed_data
                                   AS
                                       (SELECT b_blobcontent     AS blob_content
                                        FROM   temporary_content
                                        WHERE  ip_sftp > 0
                                        AND    nid = ip_sftp
                                        UNION ALL
                                        SELECT blob_content
                                        FROM   apex_application_temp_files
                                        WHERE  id = nl_file_id
                                        AND    ip_sftp < 1)
                               SELECT ROWNUM                                  AS nrowid
                                     ,col001                                  AS scode
                                     ,TO_NUMBER(REGEXP_REPLACE(col002
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                               FROM   parsed_data  f
                                     ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 607000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => LOWER(sp_filename))))
                LOOP
                    INSERT INTO v_storage_suppliers_parts(scode
                                                       ,nprice
                                                       ,ncar_id
                                                       ,nsupplier_id
                                                       ,norder_type_id)
                    VALUES      (ql_rec.scode
                                ,ql_rec.nprice
                                ,ip_car_id
                                ,ip_supplier_id
                                ,ip_order_type_id);

                    IF MOD(ql_rec.nrowid
                          ,100) = 0 THEN
                        COMMIT;
                    END IF;
                END LOOP;

                COMMIT;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;

                COMMIT;

                UPDATE v_price_list_imports
                SET    napproved = 1
                WHERE  nid = DECODE(np_import_id, 0, il_importid, np_import_id);

                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (DECODE(np_import_id, 0, il_importid, np_import_id)
                            ,0
                            ,'<a style="color:violet"><b>Price list was accepted!</b></a>');

                COMMIT;

                IF ip_sftp > 0 THEN
                    BEGIN
                        apex_import_job_ide.finish_job(0
                                                      ,ip_car_id
                                                      ,ip_supplier_id
                                                      ,ip_order_type_id);
                    EXCEPTION
                        WHEN OTHERS THEN
                            il_sqlcode := SQLCODE;
                            sl_sqlmsg := SQLERRM;

                            INSERT INTO v_suppliers_parts_log(nimport_id
                                                           ,nrow_number
                                                           ,smessage)
                                VALUES      (
                                                DECODE(np_import_id, 0, il_importid, np_import_id)
                                               ,0
                                               ,   '<a style="color:red"><b>Unexpected error while moving files! Report this error to your administrator! '
                                                || il_sqlcode
                                                || ' '
                                                || sl_sqlmsg
                                                || ' '
                                                || '</b></a>');
                    END;
                END IF;
            EXCEPTION
                WHEN OTHERS THEN
                    il_sqlcode := SQLCODE;
                    sl_sqlmsg := SQLERRM;

                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (DECODE(np_import_id, 0, il_importid, np_import_id)
                                ,0
                                ,'<a style="color:red"><b>Unexpected error while inserting data! ' || il_sqlcode || ' ' || sl_sqlmsg || ' ' || '</b></a>');
            END;
        END IF;
    END;

    PROCEDURE parse_original(sp_filename          IN VARCHAR2
                            ,ip_car_id            IN NUMBER
                            ,ip_order_type_id     IN NUMBER
                            ,ip_supplier_id       IN NUMBER
                            ,dp_expiration_date   IN DATE
                            ,np_import_id         IN NUMBER
                            ,ip_mode              IN NUMBER
                            ,ip_sftp              IN NUMBER) -- 0 = check, 1 = import
    AS
        sl_message                  VARCHAR2(50) := NULL;
        nl_errorflag                NUMBER := 0;
        sl_import_start_message     VARCHAR2(100) := sg_import_check_start;
        sl_import_success_message   VARCHAR2(100) := sg_import_check_success;
        sl_import_end_message       VARCHAR2(100) := sg_import_check_end;
        nl_file_id                  NUMBER;
        il_importid                 NUMBER;
        sl_sqlmsg                   VARCHAR2(254);
        il_sqlcode                  NUMBER;
    BEGIN
        IF ip_mode = 0 THEN
            SELECT DISTINCT wwv.id
            INTO   nl_file_id
            FROM   apex_application_temp_files wwv
            WHERE  wwv.filename LIKE '%.xlsx'
            OR     wwv.filename LIKE '%.csv'
            AND    wwv.id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);

            INSERT INTO v_price_list_imports(ncar_id
                                          ,nsupplier_id
                                          ,norder_type_id
                                          ,dtexpiration_date
                                          ,sfilename
                                          ,nfile_id)
            VALUES      (ip_car_id
                        ,ip_supplier_id
                        ,ip_order_type_id
                        ,dp_expiration_date
                        ,sp_filename
                        ,nl_file_id)
            RETURNING   nid
            INTO        il_importid;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_start_message || '</b></a>');

            COMMIT;

            FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                 ,col001     AS partcode
                                 ,col002     AS price
                                 ,col005     AS partname
                           FROM   apex_application_temp_files  f
                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => f.filename)) p
                           WHERE  f.id = nl_file_id)
            LOOP
                sl_message := NULL;

                IF (ql_rec.partcode IS NULL
                    OR LENGTH(ql_rec.partcode) > ig_max_part_code_length) THEN
                    sl_message := sg_part_code_error_msg;
                END IF;

                IF (LENGTH(ql_rec.partname) > ig_max_part_name_length) THEN
                    sl_message := sg_part_name_error_msg;
                END IF;

                IF TO_NUMBER(REGEXP_REPLACE(ql_rec.price
                                           ,'[,.]'
                                           ,SUBSTR(TO_CHAR(11 / 10)
                                                  ,2
                                                  ,1)) DEFAULT -1 ON CONVERSION ERROR) <= 0 THEN
                    sl_message := sg_part_price_error_msg;
                END IF;

                IF (sl_message IS NOT NULL) THEN
                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (il_importid
                                ,ql_rec.nrowid
                                ,'<a style="color:red"><b>' || sl_message || '</b></a>');

                    nl_errorflag := 1;
                END IF;

                IF MOD(ql_rec.nrowid
                      ,100) = 0 THEN
                    COMMIT;
                END IF;
            END LOOP;

            IF nl_errorflag != 0 THEN
                UPDATE v_price_list_imports
                SET    nhaserrors = 1
                WHERE  nid = il_importid;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;
            ELSE
                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (il_importid
                            ,0
                            ,'<a style="color:green"><b>' || sl_import_success_message || '</b></a>');

                UPDATE v_price_list_imports
                SET    nhaserrors = 0
                WHERE  nid = il_importid;
            END IF;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_end_message || '</b></a>');

            COMMIT;
        ELSIF ip_mode = 1 THEN
            SELECT nfile_id
            INTO   nl_file_id
            FROM   v_price_list_imports
            WHERE  nid = np_import_id;

            UPDATE v_price_list_imports
            SET    napproved = -1
            WHERE  norder_type_id = ip_order_type_id
            AND    nsupplier_id = ip_supplier_id
            AND    ncar_id = ip_car_id
            AND    napproved = 1
            AND    nid != np_import_id;

            BEGIN
                DELETE FROM v_storage_suppliers_parts
                WHERE       ncar_id = ip_car_id
                AND         nsupplier_id = ip_supplier_id
                AND         norder_type_id = ip_order_type_id;

                COMMIT;

                FOR ql_rec IN (WITH
                                   parsed_data
                                   AS
                                       (SELECT file_content     AS blob_content
                                        FROM   temp_content
                                        WHERE  ip_sftp = 1
                                        UNION ALL
                                        SELECT blob_content
                                        FROM   apex_application_temp_files
                                        WHERE  id = nl_file_id
                                        AND    ip_sftp = 0)
                               SELECT ROWNUM                                  AS nrowid
                                     ,col001                                  AS scode
                                     ,TO_NUMBER(REGEXP_REPLACE(col002
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                                     ,REPLACE(col005
                                             ,'"'
                                             ,'')                             AS sname
                               FROM   parsed_data  f
                                     ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 607000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => LOWER(sp_filename))))
                LOOP
                    INSERT INTO v_storage_suppliers_parts(scode
                                                       ,sname
                                                       ,nprice
                                                       ,ncar_id
                                                       ,nsupplier_id
                                                       ,norder_type_id)
                    VALUES      (ql_rec.scode
                                ,ql_rec.sname
                                ,ql_rec.nprice
                                ,ip_car_id
                                ,ip_supplier_id
                                ,ip_order_type_id);

                    IF MOD(ql_rec.nrowid
                          ,100) = 0 THEN
                        COMMIT;
                    END IF;
                END LOOP;

                COMMIT;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;

                COMMIT;

                UPDATE v_price_list_imports
                SET    napproved = 1
                WHERE  nid = np_import_id;

                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (np_import_id
                            ,0
                            ,'<a style="color:violet"><b>Price list was accepted!</b></a>');

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    il_sqlcode := SQLCODE;
                    sl_sqlmsg := SQLERRM;

                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (np_import_id
                                ,0
                                ,'<a style="color:red"><b>Unexpected error while inserting data! ' || il_sqlcode || ' ' || sl_sqlmsg || ' ' || '</b></a>');
            END;
        END IF;
    END;

    PROCEDURE parse_domenikss(sp_filename          IN VARCHAR2
                             ,ip_car_id            IN NUMBER
                             ,ip_order_type_id     IN NUMBER
                             ,ip_supplier_id       IN NUMBER
                             ,dp_expiration_date   IN DATE
                             ,np_import_id         IN NUMBER
                             ,ip_mode              IN NUMBER
                             ,ip_sftp              IN NUMBER) -- 0 = check, 1 = import
    AS
        sl_message                  VARCHAR2(50) := NULL;
        nl_errorflag                NUMBER := 0;
        sl_import_start_message     VARCHAR2(100) := sg_import_check_start;
        sl_import_success_message   VARCHAR2(100) := sg_import_check_success;
        sl_import_end_message       VARCHAR2(100) := sg_import_check_end;
        nl_file_id                  NUMBER;
        il_importid                 NUMBER;
        sl_sqlmsg                   VARCHAR2(254);
        il_sqlcode                  NUMBER;
    BEGIN
        IF ip_mode = 0 THEN
            SELECT DISTINCT wwv.id
            INTO   nl_file_id
            FROM   apex_application_temp_files wwv
            WHERE  wwv.filename LIKE '%.xlsx'
            OR     wwv.filename LIKE '%.csv'
            AND    wwv.id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);

            INSERT INTO v_price_list_imports(ncar_id
                                          ,nsupplier_id
                                          ,norder_type_id
                                          ,dtexpiration_date
                                          ,sfilename
                                          ,nfile_id)
            VALUES      (ip_car_id
                        ,ip_supplier_id
                        ,ip_order_type_id
                        ,dp_expiration_date
                        ,sp_filename
                        ,nl_file_id)
            RETURNING   nid
            INTO        il_importid;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_start_message || '</b></a>');

            COMMIT;

            FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                 ,col001     AS partcode
                                 ,col002     AS partname
                                 ,col004     AS price
                                 ,col007     AS nlength
                                 ,col008     AS nwidth
                                 ,col009     AS nheight
                                 ,col010     AS nweight
                           FROM   apex_application_temp_files  f
                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => f.filename)) p
                           WHERE  f.id = nl_file_id)
            LOOP
                sl_message := NULL;

                IF (ql_rec.partcode IS NULL
                    OR LENGTH(ql_rec.partcode) > ig_max_part_code_length) THEN
                    sl_message := sg_part_code_error_msg;
                END IF;

                IF (LENGTH(ql_rec.partname) > ig_max_part_name_length) THEN
                    sl_message := sg_part_name_error_msg;
                END IF;

                IF ql_rec.nlength < 0 THEN
                    sl_message := sg_length_error_msg;
                END IF;

                IF ql_rec.nwidth < 0 THEN
                    sl_message := sg_width_error_msg;
                END IF;

                IF ql_rec.nheight < 0 THEN
                    sl_message := sg_height_error_msg;
                END IF;

                IF ql_rec.nweight < 0 THEN
                    sl_message := sg_weight_error_msg;
                END IF;

                IF TO_NUMBER(REGEXP_REPLACE(ql_rec.price
                                           ,'[,.]'
                                           ,SUBSTR(TO_CHAR(11 / 10)
                                                  ,2
                                                  ,1)) DEFAULT -1 ON CONVERSION ERROR) <= 0 THEN
                    sl_message := sg_part_price_error_msg;
                END IF;

                IF (sl_message IS NOT NULL) THEN
                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (il_importid
                                ,ql_rec.nrowid
                                ,'<a style="color:red"><b>' || sl_message || '</b></a>');

                    nl_errorflag := 1;
                END IF;

                IF MOD(ql_rec.nrowid
                      ,100) = 0 THEN
                    COMMIT;
                END IF;
            END LOOP;

            IF nl_errorflag != 0 THEN
                UPDATE v_price_list_imports
                SET    nhaserrors = 1
                WHERE  nid = il_importid;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;
            ELSE
                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (il_importid
                            ,0
                            ,'<a style="color:green"><b>' || sl_import_success_message || '</b></a>');

                UPDATE v_price_list_imports
                SET    nhaserrors = 0
                WHERE  nid = il_importid;
            END IF;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_end_message || '</b></a>');

            COMMIT;
        ELSIF ip_mode = 1 THEN
            SELECT nfile_id
            INTO   nl_file_id
            FROM   v_price_list_imports
            WHERE  nid = np_import_id;

            UPDATE v_price_list_imports
            SET    napproved = -1
            WHERE  norder_type_id = ip_order_type_id
            AND    nsupplier_id = ip_supplier_id
            AND    ncar_id = ip_car_id
            AND    napproved = 1
            AND    nid != np_import_id;

            BEGIN
                DELETE FROM v_storage_suppliers_parts
                WHERE       ncar_id = ip_car_id
                AND         nsupplier_id = ip_supplier_id
                AND         norder_type_id = ip_order_type_id;

                COMMIT;

                FOR ql_rec IN (WITH
                                   parsed_data
                                   AS
                                       (SELECT file_content     AS blob_content
                                        FROM   temp_content
                                        WHERE  ip_sftp = 1
                                        UNION ALL
                                        SELECT blob_content
                                        FROM   apex_application_temp_files
                                        WHERE  id = nl_file_id
                                        AND    ip_sftp = 0)
                               SELECT ROWNUM                                  AS nrowid
                                     ,col001                                  AS scode
                                     ,col002                                  AS sname
                                     ,TO_NUMBER(REGEXP_REPLACE(col004
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                                     ,col007                                  AS nlength
                                     ,col008                                  AS nwidth
                                     ,col009                                  AS nheight
                                     ,col010                                  AS nweight
                               FROM   parsed_data  f
                                     ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 607000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => LOWER(sp_filename))))
                LOOP
                    INSERT INTO v_storage_suppliers_parts(scode
                                                       ,sname
                                                       ,nprice
                                                       ,nlength
                                                       ,nwidth
                                                       ,nheight
                                                       ,nweight
                                                       ,ncar_id
                                                       ,nsupplier_id
                                                       ,norder_type_id)
                    VALUES      (ql_rec.scode
                                ,ql_rec.sname
                                ,ql_rec.nprice
                                ,ql_rec.nlength
                                ,ql_rec.nwidth
                                ,ql_rec.nheight
                                ,ql_rec.nweight
                                ,ip_car_id
                                ,ip_supplier_id
                                ,ip_order_type_id);

                    IF MOD(ql_rec.nrowid
                          ,100) = 0 THEN
                        COMMIT;
                    END IF;
                END LOOP;

                COMMIT;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;

                COMMIT;

                UPDATE v_price_list_imports
                SET    napproved = 1
                WHERE  nid = np_import_id;

                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (np_import_id
                            ,0
                            ,'<a style="color:violet"><b>Price list was accepted!</b></a>');

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    il_sqlcode := SQLCODE;
                    sl_sqlmsg := SQLERRM;

                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (np_import_id
                                ,0
                                ,'<a style="color:red"><b>Unexpected error while inserting data! ' || il_sqlcode || ' ' || sl_sqlmsg || ' ' || '</b></a>');
            END;
        END IF;
    END;

    PROCEDURE parse_efa(sp_filename          IN VARCHAR2
                       ,ip_car_id            IN NUMBER
                       ,ip_order_type_id     IN NUMBER
                       ,ip_supplier_id       IN NUMBER
                       ,dp_expiration_date   IN DATE
                       ,np_import_id         IN NUMBER
                       ,ip_mode              IN NUMBER
                       ,ip_sftp              IN NUMBER) -- 0 = check, 1 = import
    AS
        sl_message                  VARCHAR2(50) := NULL;
        nl_errorflag                NUMBER := 0;
        sl_import_start_message     VARCHAR2(100) := sg_import_check_start;
        sl_import_success_message   VARCHAR2(100) := sg_import_check_success;
        sl_import_end_message       VARCHAR2(100) := sg_import_check_end;
        nl_file_id                  NUMBER;
        il_importid                 NUMBER;
        sl_sqlmsg                   VARCHAR2(254);
        il_sqlcode                  NUMBER;
    BEGIN
        IF ip_mode = 0 THEN
            SELECT DISTINCT wwv.id
            INTO   nl_file_id
            FROM   apex_application_temp_files wwv
            WHERE  wwv.filename LIKE '%.xlsx'
            OR     wwv.filename LIKE '%.csv'
            AND    wwv.id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);

            INSERT INTO v_price_list_imports(ncar_id
                                          ,nsupplier_id
                                          ,norder_type_id
                                          ,dtexpiration_date
                                          ,sfilename
                                          ,nfile_id)
            VALUES      (ip_car_id
                        ,ip_supplier_id
                        ,ip_order_type_id
                        ,dp_expiration_date
                        ,sp_filename
                        ,nl_file_id)
            RETURNING   nid
            INTO        il_importid;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_start_message || '</b></a>');

            COMMIT;

            FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                 ,col002     AS partcode
                                 ,col003     AS partname
                                 ,col005     AS price
                           FROM   apex_application_temp_files  f
                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => f.filename)) p
                           WHERE  f.id = nl_file_id)
            LOOP
                sl_message := NULL;

                IF (ql_rec.partcode IS NULL
                    OR LENGTH(ql_rec.partcode) > ig_max_part_code_length) THEN
                    sl_message := sg_part_code_error_msg;
                END IF;

                IF (LENGTH(ql_rec.partname) > ig_max_part_name_length) THEN
                    sl_message := sg_part_name_error_msg;
                END IF;

                IF TO_NUMBER(REGEXP_REPLACE(ql_rec.price
                                           ,'[,.]'
                                           ,SUBSTR(TO_CHAR(11 / 10)
                                                  ,2
                                                  ,1)) DEFAULT -1 ON CONVERSION ERROR) <= 0 THEN
                    sl_message := sg_part_price_error_msg;
                END IF;

                IF (sl_message IS NOT NULL) THEN
                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (il_importid
                                ,ql_rec.nrowid
                                ,'<a style="color:red"><b>' || sl_message || '</b></a>');

                    nl_errorflag := 1;
                END IF;

                IF MOD(ql_rec.nrowid
                      ,100) = 0 THEN
                    COMMIT;
                END IF;
            END LOOP;

            IF nl_errorflag != 0 THEN
                UPDATE v_price_list_imports
                SET    nhaserrors = 1
                WHERE  nid = il_importid;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;
            ELSE
                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (il_importid
                            ,0
                            ,'<a style="color:green"><b>' || sl_import_success_message || '</b></a>');

                UPDATE v_price_list_imports
                SET    nhaserrors = 0
                WHERE  nid = il_importid;
            END IF;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_end_message || '</b></a>');

            COMMIT;
        ELSIF ip_mode = 1 THEN
            SELECT nfile_id
            INTO   nl_file_id
            FROM   v_price_list_imports
            WHERE  nid = np_import_id;

            UPDATE v_price_list_imports
            SET    napproved = -1
            WHERE  norder_type_id = ip_order_type_id
            AND    nsupplier_id = ip_supplier_id
            AND    ncar_id = ip_car_id
            AND    napproved = 1
            AND    nid != np_import_id;

            BEGIN
                DELETE FROM v_storage_suppliers_parts
                WHERE       ncar_id = ip_car_id
                AND         nsupplier_id = ip_supplier_id
                AND         norder_type_id = ip_order_type_id;

                COMMIT;

                FOR ql_rec IN (WITH
                                   parsed_data
                                   AS
                                       (SELECT file_content     AS blob_content
                                        FROM   temp_content
                                        WHERE  ip_sftp = 1
                                        UNION ALL
                                        SELECT blob_content
                                        FROM   apex_application_temp_files
                                        WHERE  id = nl_file_id
                                        AND    ip_sftp = 0)
                               SELECT ROWNUM                                  AS nrowid
                                     ,col002                                  AS scode
                                     ,TO_NUMBER(REGEXP_REPLACE(col005
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                                     ,REPLACE(col003
                                             ,'"'
                                             ,'')                             AS sname
                               FROM   parsed_data  f
                                     ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 607000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => LOWER(sp_filename))))
                LOOP
                    INSERT INTO v_storage_suppliers_parts(scode
                                                       ,nprice
                                                       ,sname
                                                       ,ncar_id
                                                       ,nsupplier_id
                                                       ,norder_type_id)
                    VALUES      (ql_rec.scode
                                ,ql_rec.nprice
                                ,ql_rec.sname
                                ,ip_car_id
                                ,ip_supplier_id
                                ,ip_order_type_id);

                    IF MOD(ql_rec.nrowid
                          ,100) = 0 THEN
                        COMMIT;
                    END IF;
                END LOOP;

                COMMIT;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;

                COMMIT;

                UPDATE v_price_list_imports
                SET    napproved = 1
                WHERE  nid = np_import_id;

                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (np_import_id
                            ,0
                            ,'<a style="color:violet"><b>Price list was accepted!</b></a>');

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    il_sqlcode := SQLCODE;
                    sl_sqlmsg := SQLERRM;

                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (np_import_id
                                ,0
                                ,'<a style="color:red"><b>Unexpected error while inserting data! ' || il_sqlcode || ' ' || sl_sqlmsg || ' ' || '</b></a>');
            END;
        END IF;
    END;

    PROCEDURE parse_skoda(sp_filename          IN VARCHAR2
                         ,ip_car_id            IN NUMBER
                         ,ip_order_type_id     IN NUMBER
                         ,ip_supplier_id       IN NUMBER
                         ,dp_expiration_date   IN DATE
                         ,np_import_id         IN NUMBER
                         ,ip_mode              IN NUMBER
                         ,ip_sftp              IN NUMBER) -- 0 = check, 1 = import
    AS
        sl_message                  VARCHAR2(50) := NULL;
        nl_errorflag                NUMBER := 0;
        sl_import_start_message     VARCHAR2(100) := sg_import_check_start;
        sl_import_success_message   VARCHAR2(100) := sg_import_check_success;
        sl_import_end_message       VARCHAR2(100) := sg_import_check_end;
        nl_file_id                  NUMBER;
        il_importid                 NUMBER;
        sl_sqlmsg                   VARCHAR2(254);
        il_sqlcode                  NUMBER;
    BEGIN
        IF ip_mode = 0 THEN
            SELECT DISTINCT wwv.id
            INTO   nl_file_id
            FROM   apex_application_temp_files wwv
            WHERE  wwv.filename LIKE '%.xlsx'
            OR     wwv.filename LIKE '%.csv'
            AND    wwv.id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);

            INSERT INTO v_price_list_imports(ncar_id
                                          ,nsupplier_id
                                          ,norder_type_id
                                          ,dtexpiration_date
                                          ,sfilename
                                          ,nfile_id)
            VALUES      (ip_car_id
                        ,ip_supplier_id
                        ,ip_order_type_id
                        ,dp_expiration_date
                        ,sp_filename
                        ,nl_file_id)
            RETURNING   nid
            INTO        il_importid;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_start_message || '</b></a>');

            COMMIT;

            FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                 ,col001     AS partcode
                                 ,col003     AS alter_code
                                 ,col005     AS partname
                                 ,col010     AS price
                           FROM   apex_application_temp_files  f
                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => f.filename)) p
                           WHERE  f.id = nl_file_id)
            LOOP
                sl_message := NULL;

                IF (ql_rec.partcode IS NULL
                    OR LENGTH(ql_rec.partcode) > ig_max_part_code_length) THEN
                    sl_message := sg_part_code_error_msg;
                END IF;

                IF (LENGTH(ql_rec.partname) > ig_max_part_name_length) THEN
                    sl_message := sg_part_name_error_msg;
                END IF;

                IF (LENGTH(ql_rec.alter_code) > ig_max_alter_code_length) THEN
                    sl_message := sg_alter_code_error_msg;
                END IF;

                IF TO_NUMBER(REGEXP_REPLACE(ql_rec.price
                                           ,'[,.]'
                                           ,SUBSTR(TO_CHAR(11 / 10)
                                                  ,2
                                                  ,1)) DEFAULT -1 ON CONVERSION ERROR) <= 0 THEN
                    sl_message := sg_part_price_error_msg;
                END IF;

                IF (sl_message IS NOT NULL) THEN
                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (il_importid
                                ,ql_rec.nrowid
                                ,'<a style="color:red"><b>' || sl_message || '</b></a>');

                    nl_errorflag := 1;
                END IF;

                IF MOD(ql_rec.nrowid
                      ,100) = 0 THEN
                    COMMIT;
                END IF;
            END LOOP;

            IF nl_errorflag != 0 THEN
                UPDATE v_price_list_imports
                SET    nhaserrors = 1
                WHERE  nid = il_importid;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;
            ELSE
                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (il_importid
                            ,0
                            ,'<a style="color:green"><b>' || sl_import_success_message || '</b></a>');

                UPDATE v_price_list_imports
                SET    nhaserrors = 0
                WHERE  nid = il_importid;
            END IF;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_end_message || '</b></a>');

            COMMIT;
        ELSIF ip_mode = 1 THEN
            SELECT nfile_id
            INTO   nl_file_id
            FROM   v_price_list_imports
            WHERE  nid = np_import_id;

            UPDATE v_price_list_imports
            SET    napproved = -1
            WHERE  norder_type_id = ip_order_type_id
            AND    nsupplier_id = ip_supplier_id
            AND    ncar_id = ip_car_id
            AND    napproved = 1
            AND    nid != np_import_id;

            BEGIN
                DELETE FROM v_storage_suppliers_parts
                WHERE       ncar_id = ip_car_id
                AND         nsupplier_id = ip_supplier_id
                AND         norder_type_id = ip_order_type_id;

                COMMIT;

                FOR ql_rec IN (WITH
                                   parsed_data
                                   AS
                                       (SELECT file_content     AS blob_content
                                        FROM   temp_content
                                        WHERE  ip_sftp = 1
                                        UNION ALL
                                        SELECT blob_content
                                        FROM   apex_application_temp_files
                                        WHERE  id = nl_file_id
                                        AND    ip_sftp = 0)
                               SELECT ROWNUM                                  AS nrowid
                                     ,col001                                  AS scode
                                     ,TO_NUMBER(REGEXP_REPLACE(col010
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                                     ,REPLACE(col005
                                             ,'"'
                                             ,'')                             AS sname
                                     ,REPLACE(col003
                                             ,'"'
                                             ,'')                             AS schildcode
                               FROM   parsed_data  f
                                     ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 607000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => LOWER(sp_filename))))
                LOOP
                    INSERT INTO v_storage_suppliers_parts(scode
                                                       ,nprice
                                                       ,sname
                                                       ,schild_code
                                                       ,ncar_id
                                                       ,nsupplier_id
                                                       ,norder_type_id)
                    VALUES      (ql_rec.scode
                                ,ql_rec.nprice
                                ,ql_rec.sname
                                ,ql_rec.schildcode
                                ,ip_car_id
                                ,ip_supplier_id
                                ,ip_order_type_id);

                    IF MOD(ql_rec.nrowid
                          ,100) = 0 THEN
                        COMMIT;
                    END IF;
                END LOOP;

                COMMIT;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;

                COMMIT;

                UPDATE v_price_list_imports
                SET    napproved = 1
                WHERE  nid = np_import_id;

                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (np_import_id
                            ,0
                            ,'<a style="color:violet"><b>Price list was accepted!</b></a>');

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    il_sqlcode := SQLCODE;
                    sl_sqlmsg := SQLERRM;

                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (np_import_id
                                ,0
                                ,'<a style="color:red"><b>Unexpected error while inserting data! ' || il_sqlcode || ' ' || sl_sqlmsg || ' ' || '</b></a>');
            END;
        END IF;
    END;

    PROCEDURE parse_porsche(sp_filename          IN VARCHAR2
                           ,ip_car_id            IN NUMBER
                           ,ip_order_type_id     IN NUMBER
                           ,ip_supplier_id       IN NUMBER
                           ,dp_expiration_date   IN DATE
                           ,np_import_id         IN NUMBER
                           ,ip_mode              IN NUMBER
                           ,ip_sftp              IN NUMBER) -- 0 = check, 1 = import
    AS
        sl_message                  VARCHAR2(50) := NULL;
        nl_errorflag                NUMBER := 0;
        sl_import_start_message     VARCHAR2(100) := sg_import_check_start;
        sl_import_success_message   VARCHAR2(100) := sg_import_check_success;
        sl_import_end_message       VARCHAR2(100) := sg_import_check_end;
        nl_file_id                  NUMBER;
        il_importid                 NUMBER;
        sl_sqlmsg                   VARCHAR2(254);
        il_sqlcode                  NUMBER;
    BEGIN
        IF ip_mode = 0 THEN
            SELECT DISTINCT wwv.id
            INTO   nl_file_id
            FROM   apex_application_temp_files wwv
            WHERE  wwv.filename LIKE '%.xlsx'
            OR     wwv.filename LIKE '%.csv'
            AND    wwv.id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);

            INSERT INTO v_price_list_imports(ncar_id
                                          ,nsupplier_id
                                          ,norder_type_id
                                          ,dtexpiration_date
                                          ,sfilename
                                          ,nfile_id)
            VALUES      (ip_car_id
                        ,ip_supplier_id
                        ,ip_order_type_id
                        ,dp_expiration_date
                        ,sp_filename
                        ,nl_file_id)
            RETURNING   nid
            INTO        il_importid;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_start_message || '</b></a>');

            COMMIT;

            FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                 ,col001     AS partcode
                                 ,col004     AS nweight
                                 ,col002     AS partname
                                 ,col008     AS price
                           FROM   apex_application_temp_files  f
                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => f.filename)) p
                           WHERE  f.id = nl_file_id)
            LOOP
                sl_message := NULL;

                IF (ql_rec.partcode IS NULL
                    OR LENGTH(ql_rec.partcode) > ig_max_part_code_length) THEN
                    sl_message := sg_part_code_error_msg;
                END IF;

                IF (LENGTH(ql_rec.partname) > ig_max_part_name_length) THEN
                    sl_message := sg_part_name_error_msg;
                END IF;

                IF ql_rec.nweight < 0 THEN
                    sl_message := sg_weight_error_msg;
                END IF;

                IF TO_NUMBER(REGEXP_REPLACE(ql_rec.price
                                           ,'[,.]'
                                           ,SUBSTR(TO_CHAR(11 / 10)
                                                  ,2
                                                  ,1)) DEFAULT -1 ON CONVERSION ERROR) <= 0 THEN
                    sl_message := sg_part_price_error_msg;
                END IF;

                IF (sl_message IS NOT NULL) THEN
                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (il_importid
                                ,ql_rec.nrowid
                                ,'<a style="color:red"><b>' || sl_message || '</b></a>');

                    nl_errorflag := 1;
                END IF;

                IF MOD(ql_rec.nrowid
                      ,100) = 0 THEN
                    COMMIT;
                END IF;
            END LOOP;

            IF nl_errorflag != 0 THEN
                UPDATE v_price_list_imports
                SET    nhaserrors = 1
                WHERE  nid = il_importid;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;
            ELSE
                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (il_importid
                            ,0
                            ,'<a style="color:green"><b>' || sl_import_success_message || '</b></a>');

                UPDATE v_price_list_imports
                SET    nhaserrors = 0
                WHERE  nid = il_importid;
            END IF;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_end_message || '</b></a>');

            COMMIT;
        ELSIF ip_mode = 1 THEN
            SELECT nfile_id
            INTO   nl_file_id
            FROM   v_price_list_imports
            WHERE  nid = np_import_id;

            UPDATE v_price_list_imports
            SET    napproved = -1
            WHERE  norder_type_id = ip_order_type_id
            AND    nsupplier_id = ip_supplier_id
            AND    ncar_id = ip_car_id
            AND    napproved = 1
            AND    nid != np_import_id;


            BEGIN
                DELETE FROM v_storage_suppliers_parts
                WHERE       ncar_id = ip_car_id
                AND         nsupplier_id = ip_supplier_id
                AND         norder_type_id = ip_order_type_id;

                COMMIT;

                FOR ql_rec IN (WITH
                                   parsed_data
                                   AS
                                       (SELECT file_content     AS blob_content
                                        FROM   temp_content
                                        WHERE  ip_sftp = 1
                                        UNION ALL
                                        SELECT blob_content
                                        FROM   apex_application_temp_files
                                        WHERE  id = nl_file_id
                                        AND    ip_sftp = 0)
                               SELECT ROWNUM                                  AS nrowid
                                     ,col001                                  AS scode
                                     ,TO_NUMBER(REGEXP_REPLACE(col008
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                                     ,REPLACE(col002
                                             ,'"'
                                             ,'')                             AS sname
                                     ,REPLACE(col004
                                             ,'"'
                                             ,'')                             AS nweight
                               FROM   parsed_data  f
                                     ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 607000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => LOWER(sp_filename))))
                LOOP
                    INSERT INTO v_storage_suppliers_parts(scode
                                                       ,nprice
                                                       ,sname
                                                       ,nweight
                                                       ,ncar_id
                                                       ,nsupplier_id
                                                       ,norder_type_id)
                    VALUES      (ql_rec.scode
                                ,ql_rec.nprice
                                ,ql_rec.sname
                                ,ql_rec.nweight
                                ,ip_car_id
                                ,ip_supplier_id
                                ,ip_order_type_id);

                    IF MOD(ql_rec.nrowid
                          ,100) = 0 THEN
                        COMMIT;
                    END IF;
                END LOOP;

                COMMIT;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;

                COMMIT;

                UPDATE v_price_list_imports
                SET    napproved = 1
                WHERE  nid = np_import_id;

                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (np_import_id
                            ,0
                            ,'<a style="color:violet"><b>Price list was accepted!</b></a>');

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    il_sqlcode := SQLCODE;
                    sl_sqlmsg := SQLERRM;

                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (np_import_id
                                ,0
                                ,'<a style="color:red"><b>Unexpected error while inserting data! ' || il_sqlcode || ' ' || sl_sqlmsg || ' ' || '</b></a>');
            END;
        END IF;
    END;

    PROCEDURE parse_autocarat_bmw(sp_filename          IN VARCHAR2
                                 ,ip_car_id            IN NUMBER
                                 ,ip_order_type_id     IN NUMBER
                                 ,ip_supplier_id       IN NUMBER
                                 ,dp_expiration_date   IN DATE
                                 ,np_import_id         IN NUMBER
                                 ,ip_mode              IN NUMBER
                                 ,ip_sftp              IN NUMBER) -- 0 = check, 1 = import
    AS
        sl_message                  VARCHAR2(50) := NULL;
        nl_errorflag                NUMBER := 0;
        sl_import_start_message     VARCHAR2(100) := sg_import_check_start;
        sl_import_success_message   VARCHAR2(100) := sg_import_check_success;
        sl_import_end_message       VARCHAR2(100) := sg_import_check_end;
        nl_file_id                  NUMBER;
        il_importid                 NUMBER;
        sl_sqlmsg                   VARCHAR2(254);
        il_sqlcode                  NUMBER;
    BEGIN
        IF ip_mode = 0 THEN
            SELECT DISTINCT wwv.id
            INTO   nl_file_id
            FROM   apex_application_temp_files wwv
            WHERE  wwv.filename LIKE '%.xlsx'
            OR     wwv.filename LIKE '%.csv'
            AND    wwv.id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);

            INSERT INTO v_price_list_imports(ncar_id
                                          ,nsupplier_id
                                          ,norder_type_id
                                          ,dtexpiration_date
                                          ,sfilename
                                          ,nfile_id)
            VALUES      (ip_car_id
                        ,ip_supplier_id
                        ,ip_order_type_id
                        ,dp_expiration_date
                        ,sp_filename
                        ,nl_file_id)
            RETURNING   nid
            INTO        il_importid;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_start_message || '</b></a>');

            COMMIT;

            FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                 ,col001     AS partcode
                                 ,col002     AS price
                                 ,col003     AS sname
                           FROM   apex_application_temp_files  f
                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => f.filename)) p
                           WHERE  f.id = nl_file_id)
            LOOP
                sl_message := NULL;

                IF (ql_rec.partcode IS NULL
                    OR LENGTH(ql_rec.partcode) > ig_max_part_code_length) THEN
                    sl_message := sg_part_code_error_msg;
                END IF;

                IF TO_NUMBER(REGEXP_REPLACE(ql_rec.price
                                           ,'[,.]'
                                           ,SUBSTR(TO_CHAR(11 / 10)
                                                  ,2
                                                  ,1)) DEFAULT -1 ON CONVERSION ERROR) <= 0 THEN
                    sl_message := sg_part_price_error_msg;
                END IF;

                IF (LENGTH(ql_rec.partcode) > ig_max_part_name_length) THEN
                    sl_message := sg_part_name_error_msg;
                END IF;

                IF (sl_message IS NOT NULL) THEN
                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (il_importid
                                ,ql_rec.nrowid
                                ,'<a style="color:red"><b>' || sl_message || '</b></a>');

                    nl_errorflag := 1;
                END IF;

                IF MOD(ql_rec.nrowid
                      ,100) = 0 THEN
                    COMMIT;
                END IF;
            END LOOP;

            IF nl_errorflag != 0 THEN
                UPDATE v_price_list_imports
                SET    nhaserrors = 1
                WHERE  nid = il_importid;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;
            ELSE
                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (il_importid
                            ,0
                            ,'<a style="color:green"><b>' || sl_import_success_message || '</b></a>');

                UPDATE v_price_list_imports
                SET    nhaserrors = 0
                WHERE  nid = il_importid;
            END IF;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_end_message || '</b></a>');

            COMMIT;
        ELSIF ip_mode = 1 THEN
            SELECT nfile_id
            INTO   nl_file_id
            FROM   v_price_list_imports
            WHERE  nid = np_import_id;

            UPDATE v_price_list_imports
            SET    napproved = -1
            WHERE  norder_type_id = ip_order_type_id
            AND    nsupplier_id = ip_supplier_id
            AND    ncar_id = ip_car_id
            AND    napproved = 1
            AND    nid != np_import_id;

            BEGIN
                DELETE FROM v_storage_suppliers_parts
                WHERE       ncar_id = ip_car_id
                AND         nsupplier_id = ip_supplier_id
                AND         norder_type_id = ip_order_type_id;

                COMMIT;

                FOR ql_rec IN (WITH
                                   parsed_data
                                   AS
                                       (SELECT file_content     AS blob_content
                                        FROM   temp_content
                                        WHERE  ip_sftp = 1
                                        UNION ALL
                                        SELECT blob_content
                                        FROM   apex_application_temp_files
                                        WHERE  id = nl_file_id
                                        AND    ip_sftp = 0)
                               SELECT ROWNUM                                  AS nrowid
                                     ,REPLACE(REPLACE(col001
                                                     ,'='
                                                     ,'')
                                             ,'"'
                                             ,'')                             AS scode
                                     ,TO_NUMBER(REGEXP_REPLACE(col002
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                                     ,col003                                  AS sname
                               FROM   parsed_data  f
                                     ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 607000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => LOWER(sp_filename))))
                LOOP
                    INSERT INTO v_storage_suppliers_parts(scode
                                                       ,nprice
                                                       ,sname
                                                       ,ncar_id
                                                       ,nsupplier_id
                                                       ,norder_type_id)
                    VALUES      (ql_rec.scode
                                ,ql_rec.nprice
                                ,ql_rec.sname
                                ,ip_car_id
                                ,ip_supplier_id
                                ,ip_order_type_id);

                    IF MOD(ql_rec.nrowid
                          ,100) = 0 THEN
                        COMMIT;
                    END IF;
                END LOOP;

                COMMIT;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;

                COMMIT;

                UPDATE v_price_list_imports
                SET    napproved = 1
                WHERE  nid = np_import_id;

                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (np_import_id
                            ,0
                            ,'<a style="color:violet"><b>Price list was accepted!</b></a>');

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    il_sqlcode := SQLCODE;
                    sl_sqlmsg := SQLERRM;

                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (np_import_id
                                ,0
                                ,'<a style="color:red"><b>Unexpected error while inserting data! ' || il_sqlcode || ' ' || sl_sqlmsg || ' ' || '</b></a>');
            END;
        END IF;
    END;

    PROCEDURE parse_porsche_pln(sp_filename          IN VARCHAR2
                                 ,ip_car_id            IN NUMBER
                                 ,ip_order_type_id     IN NUMBER
                                 ,ip_supplier_id       IN NUMBER
                                 ,dp_expiration_date   IN DATE
                                 ,np_import_id         IN NUMBER
                                 ,ip_mode              IN NUMBER
                                 ,ip_sftp              IN NUMBER) -- 0 = check, 1 = import
    AS
        sl_message                  VARCHAR2(500) := NULL;
        nl_errorflag                NUMBER := 0;
        sl_import_start_message     VARCHAR2(100) := sg_import_check_start;
        sl_import_success_message   VARCHAR2(100) := sg_import_check_success;
        sl_import_end_message       VARCHAR2(100) := sg_import_check_end;
        nl_file_id                  NUMBER;
        il_importid                 NUMBER;
        sl_sqlmsg                   VARCHAR2(254);
        il_sqlcode                  NUMBER;
    BEGIN
        IF ip_mode = 0 THEN
            SELECT DISTINCT wwv.id
            INTO   nl_file_id
            FROM   apex_application_temp_files wwv
            WHERE  wwv.filename LIKE '%.xlsx'
            OR     wwv.filename LIKE '%.csv'
            AND    wwv.id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);

            INSERT INTO v_price_list_imports(ncar_id
                                          ,nsupplier_id
                                          ,norder_type_id
                                          ,dtexpiration_date
                                          ,sfilename
                                          ,nfile_id)
            VALUES      (ip_car_id
                        ,ip_supplier_id
                        ,ip_order_type_id
                        ,dp_expiration_date
                        ,sp_filename
                        ,nl_file_id)
            RETURNING   nid
            INTO        il_importid;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_start_message || '</b></a>');

            COMMIT;

            FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                 ,col001     AS partcode
                                 ,col003     AS price
                           FROM   apex_application_temp_files  f
                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => f.filename)) p
                           WHERE  f.id = nl_file_id)
            LOOP
                sl_message := NULL;

                IF (ql_rec.partcode IS NULL
                    OR LENGTH(ql_rec.partcode) > ig_max_part_code_length) THEN
                    sl_message := sg_part_code_error_msg || ql_rec.partcode;
                END IF;

                IF TO_NUMBER(REGEXP_REPLACE(ql_rec.price
                                           ,'[,.]'
                                           ,SUBSTR(TO_CHAR(11 / 10)
                                                  ,2
                                                  ,1)) DEFAULT -1 ON CONVERSION ERROR) <= 0 THEN
                    sl_message := sg_part_price_error_msg;
                END IF;

                IF (sl_message IS NOT NULL) THEN
                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (il_importid
                                ,ql_rec.nrowid
                                ,'<a style="color:red"><b>' || sl_message || '</b></a>');

                    nl_errorflag := 1;
                END IF;

                IF MOD(ql_rec.nrowid
                      ,100) = 0 THEN
                    COMMIT;
                END IF;
            END LOOP;

            IF nl_errorflag != 0 THEN
                UPDATE v_price_list_imports
                SET    nhaserrors = 1
                WHERE  nid = il_importid;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;
            ELSE
                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (il_importid
                            ,0
                            ,'<a style="color:green"><b>' || sl_import_success_message || '</b></a>');

                UPDATE v_price_list_imports
                SET    nhaserrors = 0
                WHERE  nid = il_importid;
            END IF;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_end_message || '</b></a>');

            COMMIT;
        ELSIF ip_mode = 1 THEN
            SELECT nfile_id
            INTO   nl_file_id
            FROM   v_price_list_imports
            WHERE  nid = np_import_id;

            UPDATE v_price_list_imports
            SET    napproved = -1
            WHERE  norder_type_id = ip_order_type_id
            AND    nsupplier_id = ip_supplier_id
            AND    ncar_id = ip_car_id
            AND    napproved = 1
            AND    nid != np_import_id;

            BEGIN
                DELETE FROM v_storage_suppliers_parts
                WHERE       ncar_id = ip_car_id
                AND         nsupplier_id = ip_supplier_id
                AND         norder_type_id = ip_order_type_id;

                COMMIT;

                FOR ql_rec IN (WITH
                                   parsed_data
                                   AS
                                       (SELECT file_content     AS blob_content
                                        FROM   temp_content
                                        WHERE  ip_sftp = 1
                                        UNION ALL
                                        SELECT blob_content
                                        FROM   apex_application_temp_files
                                        WHERE  id = nl_file_id
                                        AND    ip_sftp = 0)
                               SELECT ROWNUM                                  AS nrowid
                                     ,REPLACE(REPLACE(col001
                                                     ,'='
                                                     ,'')
                                             ,'"'
                                             ,'')                             AS scode
                                     ,TO_NUMBER(REGEXP_REPLACE(col003
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                               FROM   parsed_data  f
                                     ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 607000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => LOWER(sp_filename))))
                LOOP
                    INSERT INTO v_storage_suppliers_parts(scode
                                                       ,nprice
                                                       ,ncar_id
                                                       ,nsupplier_id
                                                       ,norder_type_id)
                    VALUES      (ql_rec.scode
                                ,ql_rec.nprice
                                ,ip_car_id
                                ,ip_supplier_id
                                ,ip_order_type_id);

                    IF MOD(ql_rec.nrowid
                          ,100) = 0 THEN
                        COMMIT;
                    END IF;
                END LOOP;

                COMMIT;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;

                COMMIT;

                UPDATE v_price_list_imports
                SET    napproved = 1
                WHERE  nid = np_import_id;

                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (np_import_id
                            ,0
                            ,'<a style="color:violet"><b>Price list was accepted!</b></a>');

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    il_sqlcode := SQLCODE;
                    sl_sqlmsg := SQLERRM;

                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (np_import_id
                                ,0
                                ,'<a style="color:red"><b>Unexpected error while inserting data! ' || il_sqlcode || ' ' || sl_sqlmsg || ' ' || '</b></a>');
            END;
        END IF;
    END;

        PROCEDURE parse_skoda2(sp_filename          IN VARCHAR2
                                 ,ip_car_id            IN NUMBER
                                 ,ip_order_type_id     IN NUMBER
                                 ,ip_supplier_id       IN NUMBER
                                 ,dp_expiration_date   IN DATE
                                 ,np_import_id         IN NUMBER
                                 ,ip_mode              IN NUMBER
                                 ,ip_sftp              IN NUMBER) -- 0 = check, 1 = import
    AS
        sl_message                  VARCHAR2(50) := NULL;
        nl_errorflag                NUMBER := 0;
        sl_import_start_message     VARCHAR2(100) := sg_import_check_start;
        sl_import_success_message   VARCHAR2(100) := sg_import_check_success;
        sl_import_end_message       VARCHAR2(100) := sg_import_check_end;
        nl_file_id                  NUMBER;
        il_importid                 NUMBER;
        sl_sqlmsg                   VARCHAR2(254);
        il_sqlcode                  NUMBER;
    BEGIN
        IF ip_mode = 0 THEN
            SELECT DISTINCT wwv.id
            INTO   nl_file_id
            FROM   apex_application_temp_files wwv
            WHERE  wwv.filename LIKE '%.xlsx'
            OR     wwv.filename LIKE '%.csv'
            AND    wwv.id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);

            INSERT INTO v_price_list_imports(ncar_id
                                          ,nsupplier_id
                                          ,norder_type_id
                                          ,dtexpiration_date
                                          ,sfilename
                                          ,nfile_id)
            VALUES      (ip_car_id
                        ,ip_supplier_id
                        ,ip_order_type_id
                        ,dp_expiration_date
                        ,sp_filename
                        ,nl_file_id)
            RETURNING   nid
            INTO        il_importid;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_start_message || '</b></a>');

            COMMIT;

            FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                 ,col001     AS partcode
                                 ,col005     AS price
                                 ,col003     AS sname
                                 ,NVL(col004,0)     AS nqnt
                                 ,col002     as schild_code
                           FROM   apex_application_temp_files  f
                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => f.filename)) p
                           WHERE  f.id = nl_file_id)
            LOOP
                sl_message := NULL;

                IF (ql_rec.partcode IS NULL
                    OR LENGTH(ql_rec.partcode) > ig_max_part_code_length) THEN
                    sl_message := sg_part_code_error_msg;
                END IF;

                IF TO_NUMBER(REGEXP_REPLACE(ql_rec.price
                                           ,'[,.]'
                                           ,SUBSTR(TO_CHAR(11 / 10)
                                                  ,2
                                                  ,1)) DEFAULT -1 ON CONVERSION ERROR) <= 0 THEN
                    sl_message := sg_part_price_error_msg;
                END IF;

                IF (LENGTH(ql_rec.partcode) > ig_max_part_name_length) THEN
                    sl_message := sg_part_name_error_msg;
                END IF;

                IF (sl_message IS NOT NULL) THEN
                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (il_importid
                                ,ql_rec.nrowid
                                ,'<a style="color:red"><b>' || sl_message || '</b></a>');

                    nl_errorflag := 1;
                END IF;

                IF MOD(ql_rec.nrowid
                      ,100) = 0 THEN
                    COMMIT;
                END IF;
            END LOOP;

            IF nl_errorflag != 0 THEN
                UPDATE v_price_list_imports
                SET    nhaserrors = 1
                WHERE  nid = il_importid;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;
            ELSE
                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (il_importid
                            ,0
                            ,'<a style="color:green"><b>' || sl_import_success_message || '</b></a>');

                UPDATE v_price_list_imports
                SET    nhaserrors = 0
                WHERE  nid = il_importid;
            END IF;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_end_message || '</b></a>');

            COMMIT;
        ELSIF ip_mode = 1 THEN
            SELECT nfile_id
            INTO   nl_file_id
            FROM   v_price_list_imports
            WHERE  nid = np_import_id;

            UPDATE v_price_list_imports
            SET    napproved = -1
            WHERE  norder_type_id = ip_order_type_id
            AND    nsupplier_id = ip_supplier_id
            AND    ncar_id = ip_car_id
            AND    napproved = 1
            AND    nid != np_import_id;

            BEGIN
                DELETE FROM v_storage_suppliers_parts
                WHERE       ncar_id = ip_car_id
                AND         nsupplier_id = ip_supplier_id
                AND         norder_type_id = ip_order_type_id;

                COMMIT;

                FOR ql_rec IN (WITH
                                   parsed_data
                                   AS
                                       (SELECT file_content     AS blob_content
                                        FROM   temp_content
                                        WHERE  ip_sftp = 1
                                        UNION ALL
                                        SELECT blob_content
                                        FROM   apex_application_temp_files
                                        WHERE  id = nl_file_id
                                        AND    ip_sftp = 0)
                               SELECT ROWNUM                                  AS nrowid
                                     ,REPLACE(REPLACE(col001
                                                     ,'='
                                                     ,'')
                                             ,'"'
                                             ,'')                             AS scode
                                     ,TO_NUMBER(REGEXP_REPLACE(col005
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                                     ,col003                                  AS sname
                                     ,col002 as schild_code
                                     ,nvl(col004,1) as nqnt
                               FROM   parsed_data  f
                                     ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 607000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => LOWER(sp_filename))))
                LOOP
                    INSERT INTO v_storage_suppliers_parts(scode
                                                       ,nprice
                                                       ,sname
                                                       ,ncar_id
                                                       ,nsupplier_id
                                                       ,norder_type_id
                                                       ,nqnt
                                                       ,schild_code)
                    VALUES      (ql_rec.scode
                                ,ql_rec.nprice
                                ,ql_rec.sname
                                ,ip_car_id
                                ,ip_supplier_id
                                ,ip_order_type_id
                                ,ql_rec.nqnt
                                ,ql_rec.schild_code);

                    IF MOD(ql_rec.nrowid
                          ,100) = 0 THEN
                        COMMIT;
                    END IF;
                END LOOP;

                COMMIT;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;

                COMMIT;

                UPDATE v_price_list_imports
                SET    napproved = 1
                WHERE  nid = np_import_id;

                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (np_import_id
                            ,0
                            ,'<a style="color:violet"><b>Price list was accepted!</b></a>');

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    il_sqlcode := SQLCODE;
                    sl_sqlmsg := SQLERRM;

                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (np_import_id
                                ,0
                                ,'<a style="color:red"><b>Unexpected error while inserting data! ' || il_sqlcode || ' ' || sl_sqlmsg || ' ' || '</b></a>');
            END;
        END IF;
    END;

        PROCEDURE parse_porsche_la(sp_filename          IN VARCHAR2
                                 ,ip_car_id            IN NUMBER
                                 ,ip_order_type_id     IN NUMBER
                                 ,ip_supplier_id       IN NUMBER
                                 ,dp_expiration_date   IN DATE
                                 ,np_import_id         IN NUMBER
                                 ,ip_mode              IN NUMBER
                                 ,ip_sftp              IN NUMBER) -- 0 = check, 1 = import
    AS
        sl_message                  VARCHAR2(50) := NULL;
        nl_errorflag                NUMBER := 0;
        sl_import_start_message     VARCHAR2(100) := sg_import_check_start;
        sl_import_success_message   VARCHAR2(100) := sg_import_check_success;
        sl_import_end_message       VARCHAR2(100) := sg_import_check_end;
        nl_file_id                  NUMBER;
        il_importid                 NUMBER;
        sl_sqlmsg                   VARCHAR2(254);
        il_sqlcode                  NUMBER;
    BEGIN
        IF ip_mode = 0 THEN
            SELECT DISTINCT wwv.id
            INTO   nl_file_id
            FROM   apex_application_temp_files wwv
            WHERE  wwv.filename LIKE '%.xlsx'
            OR     wwv.filename LIKE '%.csv'
            AND    wwv.id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);

            INSERT INTO v_price_list_imports(ncar_id
                                          ,nsupplier_id
                                          ,norder_type_id
                                          ,dtexpiration_date
                                          ,sfilename
                                          ,nfile_id)
            VALUES      (ip_car_id
                        ,ip_supplier_id
                        ,ip_order_type_id
                        ,dp_expiration_date
                        ,sp_filename
                        ,nl_file_id)
            RETURNING   nid
            INTO        il_importid;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_start_message || '</b></a>');

            COMMIT;

            FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                 ,col001     AS partcode
                                 ,col007     AS price
                                 ,col002     AS sname
                           FROM   apex_application_temp_files  f
                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => f.filename)) p
                           WHERE  f.id = nl_file_id)
            LOOP
                sl_message := NULL;

                IF (ql_rec.partcode IS NULL
                    OR LENGTH(ql_rec.partcode) > ig_max_part_code_length) THEN
                    sl_message := sg_part_code_error_msg;
                END IF;

                IF TO_NUMBER(REGEXP_REPLACE(ql_rec.price
                                           ,'[,.]'
                                           ,SUBSTR(TO_CHAR(11 / 10)
                                                  ,2
                                                  ,1)) DEFAULT -1 ON CONVERSION ERROR) <= 0 THEN
                    sl_message := sg_part_price_error_msg;
                END IF;

                IF (LENGTH(ql_rec.partcode) > ig_max_part_name_length) THEN
                    sl_message := sg_part_name_error_msg;
                END IF;

                IF (sl_message IS NOT NULL) THEN
                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (il_importid
                                ,ql_rec.nrowid
                                ,'<a style="color:red"><b>' || sl_message || '</b></a>');

                    nl_errorflag := 1;
                END IF;

                IF MOD(ql_rec.nrowid
                      ,100) = 0 THEN
                    COMMIT;
                END IF;
            END LOOP;

            IF nl_errorflag != 0 THEN
                UPDATE v_price_list_imports
                SET    nhaserrors = 1
                WHERE  nid = il_importid;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;
            ELSE
                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (il_importid
                            ,0
                            ,'<a style="color:green"><b>' || sl_import_success_message || '</b></a>');

                UPDATE v_price_list_imports
                SET    nhaserrors = 0
                WHERE  nid = il_importid;
            END IF;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_end_message || '</b></a>');

            COMMIT;
        ELSIF ip_mode = 1 THEN
            SELECT nfile_id
            INTO   nl_file_id
            FROM   v_price_list_imports
            WHERE  nid = np_import_id;

            UPDATE v_price_list_imports
            SET    napproved = -1
            WHERE  norder_type_id = ip_order_type_id
            AND    nsupplier_id = ip_supplier_id
            AND    ncar_id = ip_car_id
            AND    napproved = 1
            AND    nid != np_import_id;

            BEGIN
                DELETE FROM v_storage_suppliers_parts
                WHERE       ncar_id = ip_car_id
                AND         nsupplier_id = ip_supplier_id
                AND         norder_type_id = ip_order_type_id;

                COMMIT;

                FOR ql_rec IN (WITH
                                   parsed_data
                                   AS
                                       (SELECT file_content     AS blob_content
                                        FROM   temp_content
                                        WHERE  ip_sftp = 1
                                        UNION ALL
                                        SELECT blob_content
                                        FROM   apex_application_temp_files
                                        WHERE  id = nl_file_id
                                        AND    ip_sftp = 0)
                               SELECT ROWNUM                                  AS nrowid
                                     ,REPLACE(REPLACE(col001
                                                     ,'='
                                                     ,'')
                                             ,'"'
                                             ,'')                             AS scode
                                     ,TO_NUMBER(REGEXP_REPLACE(col007
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                                     ,col002                                  AS sname
                               FROM   parsed_data  f
                                     ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 607000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => LOWER(sp_filename))))
                LOOP
                    INSERT INTO v_storage_suppliers_parts(scode
                                                       ,nprice
                                                       ,sname
                                                       ,ncar_id
                                                       ,nsupplier_id
                                                       ,norder_type_id)
                    VALUES      (ql_rec.scode
                                ,ql_rec.nprice
                                ,ql_rec.sname
                                ,ip_car_id
                                ,ip_supplier_id
                                ,ip_order_type_id);

                    IF MOD(ql_rec.nrowid
                          ,100) = 0 THEN
                        COMMIT;
                    END IF;
                END LOOP;

                COMMIT;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;

                COMMIT;

                UPDATE v_price_list_imports
                SET    napproved = 1
                WHERE  nid = np_import_id;

                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (np_import_id
                            ,0
                            ,'<a style="color:violet"><b>Price list was accepted!</b></a>');

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    il_sqlcode := SQLCODE;
                    sl_sqlmsg := SQLERRM;

                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (np_import_id
                                ,0
                                ,'<a style="color:red"><b>Unexpected error while inserting data! ' || il_sqlcode || ' ' || sl_sqlmsg || ' ' || '</b></a>');
            END;
        END IF;
    END;

        PROCEDURE parse_skoda_pln(sp_filename          IN VARCHAR2
                                 ,ip_car_id            IN NUMBER
                                 ,ip_order_type_id     IN NUMBER
                                 ,ip_supplier_id       IN NUMBER
                                 ,dp_expiration_date   IN DATE
                                 ,np_import_id         IN NUMBER
                                 ,ip_mode              IN NUMBER
                                 ,ip_sftp              IN NUMBER) -- 0 = check, 1 = import
    AS
        sl_message                  VARCHAR2(50) := NULL;
        nl_errorflag                NUMBER := 0;
        sl_import_start_message     VARCHAR2(100) := sg_import_check_start;
        sl_import_success_message   VARCHAR2(100) := sg_import_check_success;
        sl_import_end_message       VARCHAR2(100) := sg_import_check_end;
        nl_file_id                  NUMBER;
        il_importid                 NUMBER;
        sl_sqlmsg                   VARCHAR2(254);
        il_sqlcode                  NUMBER;
    BEGIN
        IF ip_mode = 0 THEN
            SELECT DISTINCT wwv.id
            INTO   nl_file_id
            FROM   apex_application_temp_files wwv
            WHERE  wwv.filename LIKE '%.xlsx'
            OR     wwv.filename LIKE '%.csv'
            AND    wwv.id NOT IN (SELECT NVL(nfile_id, 0) FROM v_price_list_imports);

            INSERT INTO v_price_list_imports(ncar_id
                                          ,nsupplier_id
                                          ,norder_type_id
                                          ,dtexpiration_date
                                          ,sfilename
                                          ,nfile_id)
            VALUES      (ip_car_id
                        ,ip_supplier_id
                        ,ip_order_type_id
                        ,dp_expiration_date
                        ,sp_filename
                        ,nl_file_id)
            RETURNING   nid
            INTO        il_importid;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_start_message || '</b></a>');

            COMMIT;

            FOR ql_rec IN (SELECT ROWNUM     AS nrowid
                                 ,col001     AS partcode
                                 ,col003     AS price
                           FROM   apex_application_temp_files  f
                                 ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                              ,p_add_headers_row               => 'Y'
                                                              ,p_skip_rows                     => 1
                                                              ,p_max_rows                      => 10000000
                                                              ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                              ,p_file_name                     => f.filename)) p
                           WHERE  f.id = nl_file_id)
            LOOP
                sl_message := NULL;

                IF (ql_rec.partcode IS NULL
                    OR LENGTH(ql_rec.partcode) > ig_max_part_code_length) THEN
                    sl_message := sg_part_code_error_msg;
                END IF;

                IF TO_NUMBER(REGEXP_REPLACE(ql_rec.price
                                           ,'[,.]'
                                           ,SUBSTR(TO_CHAR(11 / 10)
                                                  ,2
                                                  ,1)) DEFAULT -1 ON CONVERSION ERROR) <= 0 THEN
                    sl_message := sg_part_price_error_msg;
                END IF;


                IF (sl_message IS NOT NULL) THEN
                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (il_importid
                                ,ql_rec.nrowid
                                ,'<a style="color:red"><b>' || sl_message || '</b></a>');

                    nl_errorflag := 1;
                END IF;

                IF MOD(ql_rec.nrowid
                      ,100) = 0 THEN
                    COMMIT;
                END IF;
            END LOOP;

            IF nl_errorflag != 0 THEN
                UPDATE v_price_list_imports
                SET    nhaserrors = 1
                WHERE  nid = il_importid;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;
            ELSE
                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (il_importid
                            ,0
                            ,'<a style="color:green"><b>' || sl_import_success_message || '</b></a>');

                UPDATE v_price_list_imports
                SET    nhaserrors = 0
                WHERE  nid = il_importid;
            END IF;

            INSERT INTO v_suppliers_parts_log(nimport_id
                                           ,nrow_number
                                           ,smessage)
            VALUES      (il_importid
                        ,0
                        ,'<a style="color:green"><b>' || sl_import_end_message || '</b></a>');

            COMMIT;
        ELSIF ip_mode = 1 THEN
            SELECT nfile_id
            INTO   nl_file_id
            FROM   v_price_list_imports
            WHERE  nid = np_import_id;

            UPDATE v_price_list_imports
            SET    napproved = -1
            WHERE  norder_type_id = ip_order_type_id
            AND    nsupplier_id = ip_supplier_id
            AND    ncar_id = ip_car_id
            AND    napproved = 1
            AND    nid != np_import_id;

            BEGIN
                DELETE FROM v_storage_suppliers_parts
                WHERE       ncar_id = ip_car_id
                AND         nsupplier_id = ip_supplier_id
                AND         norder_type_id = ip_order_type_id;

                COMMIT;

                FOR ql_rec IN (WITH
                                   parsed_data
                                   AS
                                       (SELECT file_content     AS blob_content
                                        FROM   temp_content
                                        WHERE  ip_sftp = 1
                                        UNION ALL
                                        SELECT blob_content
                                        FROM   apex_application_temp_files
                                        WHERE  id = nl_file_id
                                        AND    ip_sftp = 0)
                               SELECT ROWNUM                                  AS nrowid
                                     ,REPLACE(REPLACE(col001
                                                     ,'='
                                                     ,'')
                                             ,'"'
                                             ,'')                             AS scode
                                     ,TO_NUMBER(REGEXP_REPLACE(col003
                                                              ,'[,.]'
                                                              ,SUBSTR(TO_CHAR(11 / 10)
                                                                     ,2
                                                                     ,1)))    AS nprice
                               FROM   parsed_data  f
                                     ,TABLE(apex_data_parser.parse(p_content                       => f.blob_content
                                                                  ,p_add_headers_row               => 'Y'
                                                                  ,p_skip_rows                     => 1
                                                                  ,p_max_rows                      => 607000
                                                                  ,p_store_profile_to_collection   => 'FILE_PARSER_COLLECTION'
                                                                  ,p_file_name                     => LOWER(sp_filename))))
                LOOP
                    INSERT INTO v_storage_suppliers_parts(scode
                                                       ,nprice
                                                       ,ncar_id
                                                       ,nsupplier_id
                                                       ,norder_type_id)
                    VALUES      (ql_rec.scode
                                ,ql_rec.nprice
                                ,ip_car_id
                                ,ip_supplier_id
                                ,ip_order_type_id);

                    IF MOD(ql_rec.nrowid
                          ,100) = 0 THEN
                        COMMIT;
                    END IF;
                END LOOP;

                COMMIT;

                DELETE FROM apex_application_temp_files
                WHERE       id = nl_file_id;

                COMMIT;

                UPDATE v_price_list_imports
                SET    napproved = 1
                WHERE  nid = np_import_id;

                INSERT INTO v_suppliers_parts_log(nimport_id
                                               ,nrow_number
                                               ,smessage)
                VALUES      (np_import_id
                            ,0
                            ,'<a style="color:violet"><b>Price list was accepted!</b></a>');

                COMMIT;
            EXCEPTION
                WHEN OTHERS THEN
                    il_sqlcode := SQLCODE;
                    sl_sqlmsg := SQLERRM;

                    INSERT INTO v_suppliers_parts_log(nimport_id
                                                   ,nrow_number
                                                   ,smessage)
                    VALUES      (np_import_id
                                ,0
                                ,'<a style="color:red"><b>Unexpected error while inserting data! ' || il_sqlcode || ' ' || sl_sqlmsg || ' ' || '</b></a>');
            END;
        END IF;
    END;

    PROCEDURE parse_data(sp_filename          IN VARCHAR2
                        ,ip_car_id            IN NUMBER
                        ,ip_order_type_id     IN NUMBER
                        ,ip_supplier_id       IN NUMBER
                        ,dp_expiration_date   IN DATE
                        ,np_import_id         IN NUMBER
                        ,ip_mode              IN NUMBER
                        ,ip_sftp              IN NUMBER)
    IS
        il_supplier_import_number   NUMBER;
    BEGIN
        BEGIN
            SELECT nsupplier_import_number
            INTO   il_supplier_import_number
            FROM   v_companies
            WHERE  nid = ip_supplier_id;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                NULL;
        END;

        IF il_supplier_import_number IS NOT NULL THEN
            IF il_supplier_import_number = 1 THEN
                price_list_parser.parse_wess(sp_filename
                                            ,ip_car_id
                                            ,ip_order_type_id
                                            ,ip_supplier_id
                                            ,dp_expiration_date
                                            ,np_import_id
                                            ,ip_mode
                                            ,ip_sftp);
            END IF;

            IF il_supplier_import_number = 2 THEN
                price_list_parser.parse_ronax(sp_filename
                                             ,ip_car_id
                                             ,ip_order_type_id
                                             ,ip_supplier_id
                                             ,dp_expiration_date
                                             ,np_import_id
                                             ,ip_mode
                                             ,ip_sftp);
            END IF;

            IF il_supplier_import_number = 3 THEN
                price_list_parser.parse_halle(sp_filename
                                             ,ip_car_id
                                             ,ip_order_type_id
                                             ,ip_supplier_id
                                             ,dp_expiration_date
                                             ,np_import_id
                                             ,ip_mode
                                             ,ip_sftp);
            END IF;

            IF il_supplier_import_number = 4 THEN
                price_list_parser.parse_original(sp_filename
                                                ,ip_car_id
                                                ,ip_order_type_id
                                                ,ip_supplier_id
                                                ,dp_expiration_date
                                                ,np_import_id
                                                ,ip_mode
                                                ,ip_sftp);
            END IF;

            IF il_supplier_import_number = 5 THEN
                price_list_parser.parse_domenikss(sp_filename
                                                 ,ip_car_id
                                                 ,ip_order_type_id
                                                 ,ip_supplier_id
                                                 ,dp_expiration_date
                                                 ,np_import_id
                                                 ,ip_mode
                                                 ,ip_sftp);
            END IF;

            IF il_supplier_import_number = 6 THEN
                price_list_parser.parse_efa(sp_filename
                                           ,ip_car_id
                                           ,ip_order_type_id
                                           ,ip_supplier_id
                                           ,dp_expiration_date
                                           ,np_import_id
                                           ,ip_mode
                                           ,ip_sftp);
            END IF;

            IF il_supplier_import_number = 7 THEN
                price_list_parser.parse_porsche(sp_filename
                                               ,ip_car_id
                                               ,ip_order_type_id
                                               ,ip_supplier_id
                                               ,dp_expiration_date
                                               ,np_import_id
                                               ,ip_mode
                                               ,ip_sftp);
            END IF;
        ELSE
            CASE
                WHEN UPPER(sp_filename) LIKE '%WESS%' THEN
                    price_list_parser.parse_wess(sp_filename
                                                ,ip_car_id
                                                ,ip_order_type_id
                                                ,ip_supplier_id
                                                ,dp_expiration_date
                                                ,np_import_id
                                                ,ip_mode
                                                ,ip_sftp);
                WHEN UPPER(sp_filename) LIKE '%RONAX%' THEN
                    price_list_parser.parse_ronax(sp_filename
                                                 ,ip_car_id
                                                 ,ip_order_type_id
                                                 ,ip_supplier_id
                                                 ,dp_expiration_date
                                                 ,np_import_id
                                                 ,ip_mode
                                                 ,ip_sftp);
                WHEN UPPER(sp_filename) LIKE '%HALLE%' THEN
                    price_list_parser.parse_halle(sp_filename
                                                 ,ip_car_id
                                                 ,ip_order_type_id
                                                 ,ip_supplier_id
                                                 ,dp_expiration_date
                                                 ,np_import_id
                                                 ,ip_mode
                                                 ,ip_sftp);
                WHEN UPPER(sp_filename) LIKE '%ORIGINAL%' THEN
                    price_list_parser.parse_original(sp_filename
                                                    ,ip_car_id
                                                    ,ip_order_type_id
                                                    ,ip_supplier_id
                                                    ,dp_expiration_date
                                                    ,np_import_id
                                                    ,ip_mode
                                                    ,ip_sftp);
                WHEN UPPER(sp_filename) LIKE '%DOMENIKSS%' THEN
                    price_list_parser.parse_domenikss(sp_filename
                                                     ,ip_car_id
                                                     ,ip_order_type_id
                                                     ,ip_supplier_id
                                                     ,dp_expiration_date
                                                     ,np_import_id
                                                     ,ip_mode
                                                     ,ip_sftp);
                WHEN UPPER(sp_filename) LIKE '%EFA%' THEN
                    price_list_parser.parse_efa(sp_filename
                                               ,ip_car_id
                                               ,ip_order_type_id
                                               ,ip_supplier_id
                                               ,dp_expiration_date
                                               ,np_import_id
                                               ,ip_mode
                                               ,ip_sftp);
                WHEN UPPER(sp_filename) LIKE '%ŠKODA%' THEN
                    price_list_parser.parse_skoda(sp_filename
                                                 ,ip_car_id
                                                 ,ip_order_type_id
                                                 ,ip_supplier_id
                                                 ,dp_expiration_date
                                                 ,np_import_id
                                                 ,ip_mode
                                                 ,ip_sftp);
                WHEN UPPER(sp_filename) LIKE '%PORSCHE(X)%' THEN
                    price_list_parser.parse_porsche(sp_filename
                                                   ,ip_car_id
                                                   ,ip_order_type_id
                                                   ,ip_supplier_id
                                                   ,dp_expiration_date
                                                   ,np_import_id
                                                   ,ip_mode
                                                   ,ip_sftp);
                WHEN UPPER(sp_filename) LIKE '%AUTOCARAT%' THEN
                    price_list_parser.parse_autocarat_bmw(sp_filename
                                                         ,ip_car_id
                                                         ,ip_order_type_id
                                                         ,ip_supplier_id
                                                         ,dp_expiration_date
                                                         ,np_import_id
                                                         ,ip_mode
                                                         ,ip_sftp);
                WHEN UPPER(sp_filename) LIKE '%PORSCHE PLN%' THEN
                    price_list_parser.parse_porsche_pln(sp_filename
                                                         ,ip_car_id
                                                         ,ip_order_type_id
                                                         ,ip_supplier_id
                                                         ,dp_expiration_date
                                                         ,np_import_id
                                                         ,ip_mode
                                                         ,ip_sftp);
                WHEN UPPER(sp_filename) LIKE 'SKODA PLN%' THEN
                    price_list_parser.parse_skoda_pln(sp_filename
                                                         ,ip_car_id
                                                         ,ip_order_type_id
                                                         ,ip_supplier_id
                                                         ,dp_expiration_date
                                                         ,np_import_id
                                                         ,ip_mode
                                                         ,ip_sftp);
                WHEN UPPER(sp_filename) LIKE '%SKODA %' THEN
                    price_list_parser.parse_skoda2(sp_filename
                                                         ,ip_car_id
                                                         ,ip_order_type_id
                                                         ,ip_supplier_id
                                                         ,dp_expiration_date
                                                         ,np_import_id
                                                         ,ip_mode
                                                         ,ip_sftp);
                WHEN UPPER(sp_filename) LIKE '%PORSCHE LA%' THEN
                    price_list_parser.parse_porsche_la(sp_filename
                                                         ,ip_car_id
                                                         ,ip_order_type_id
                                                         ,ip_supplier_id
                                                         ,dp_expiration_date
                                                         ,np_import_id
                                                         ,ip_mode
                                                         ,ip_sftp);
            END CASE;
        END IF;
    END;
END price_list_parser;
/

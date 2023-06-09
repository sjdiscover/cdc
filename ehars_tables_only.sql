USE [EHARS]
GO
/****** Object:  Table [dbo].[ACK_TRANSFER_DETAIL]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACK_TRANSFER_DETAIL](
	[transfer_uid] [int] NOT NULL,
	[site_cd] [char](4) NOT NULL,
	[document_uid] [char](16) NOT NULL,
	[last_ship_flag] [int] NOT NULL,
	[request_action_type] [char](1) NOT NULL,
	[cdc_action_type] [char](1) NULL,
	[transfer_status] [char](1) NOT NULL,
	[ack_doc_status] [char](1) NOT NULL,
	[error_cd] [int] NULL,
	[error_msg] [varchar](256) NULL,
 CONSTRAINT [PK_ACK_TRANSFER_DETAIL] PRIMARY KEY CLUSTERED 
(
	[transfer_uid] ASC,
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ACK_TRANSFER_DETAILCDC]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACK_TRANSFER_DETAILCDC](
	[transfer_uid] [int] NOT NULL,
	[site_cd] [char](4) NOT NULL,
	[document_uid] [char](16) NOT NULL,
	[last_ship_flag] [int] NOT NULL,
	[request_action_type] [char](1) NOT NULL,
	[cdc_action_type] [char](1) NULL,
	[transfer_status] [char](1) NOT NULL,
	[error_cd] [int] NULL,
	[error_descr] [varchar](256) NULL,
 CONSTRAINT [PK_ACK_TRANSFER_DETAILCDC] PRIMARY KEY CLUSTERED 
(
	[transfer_uid] ASC,
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ACK_TRANSFER_LOG]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACK_TRANSFER_LOG](
	[transfer_uid] [int] NOT NULL,
	[site_cd] [char](4) NULL,
	[process_status] [char](2) NOT NULL,
	[file_type] [varchar](64) NOT NULL,
	[request_file_name] [varchar](256) NULL,
	[response_file_name] [varchar](256) NULL,
	[record_count] [int] NOT NULL,
	[create_dt] [datetime] NOT NULL,
	[acknowledge_dt] [datetime] NULL,
	[error_cd] [int] NULL,
	[error_descr] [varchar](256) NULL,
 CONSTRAINT [PK_ACK_TRANSFER_LOG] PRIMARY KEY CLUSTERED 
(
	[transfer_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ACK_TRANSFER_LOGCDC]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACK_TRANSFER_LOGCDC](
	[transfer_uid] [int] NOT NULL,
	[site_cd] [char](4) NULL,
	[process_status] [char](2) NOT NULL,
	[file_type] [varchar](64) NOT NULL,
	[request_file_name] [varchar](256) NULL,
	[response_file_name] [varchar](256) NULL,
	[record_count] [int] NOT NULL,
	[create_dt] [datetime] NOT NULL,
	[acknowledge_dt] [datetime] NULL,
	[error_cd] [int] NULL,
	[error_descr] [varchar](256) NULL,
	[transfer_uid_state] [int] NULL,
 CONSTRAINT [PK_ACK_TRANSFER_LOGCDC] PRIMARY KEY CLUSTERED 
(
	[transfer_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADDRESS](
	[document_uid] [char](16) NOT NULL,
	[address_seq] [int] NOT NULL,
	[address_type_cd] [char](3) NULL,
	[street_address1] [varchar](50) NULL,
	[street_address2] [varchar](50) NULL,
	[city_fips] [char](5) NULL,
	[city_name] [varchar](128) NULL,
	[county_fips] [char](3) NULL,
	[county_name] [varchar](64) NULL,
	[state_cd] [char](2) NULL,
	[zip_cd] [varchar](10) NULL,
	[country_cd] [char](3) NULL,
	[country_usd] [char](3) NULL,
	[phone] [varchar](10) NULL,
	[census_msa] [varchar](25) NULL,
	[census_tract] [varchar](25) NULL,
	[census_group] [varchar](25) NULL,
	[census_block_group] [varchar](25) NULL,
	[census_congressional_district] [varchar](25) NULL,
	[doc_belongs_to] [varchar](7) NOT NULL,
	[address_dt] [char](8) NULL,
	[address_original_type_cd] [varchar](50) NULL,
	[geographic_level] [char](1) NULL,
 CONSTRAINT [PK_ADDRESS] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[doc_belongs_to] ASC,
	[address_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ARCHIVE_ARV_PROPHYLAXIS]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCHIVE_ARV_PROPHYLAXIS](
	[document_uid] [char](16) NOT NULL,
	[drug_seq] [int] NOT NULL,
	[obs_uid] [char](16) NOT NULL,
	[drug_cd] [varchar](32) NULL,
	[drug_rsn] [varchar](32) NULL,
	[other_drug_rsn] [varchar](255) NULL,
	[drug_start_dt] [char](8) NULL,
	[drug_last_use_dt] [char](8) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[ARCHIVE_BIRTH_HISTORY]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCHIVE_BIRTH_HISTORY](
	[document_uid] [char](16) NOT NULL,
	[birth_place] [varchar](2) NULL,
	[first_pnc_visit_dt] [char](8) NULL,
	[last_pnc_visit_dt] [char](8) NULL,
	[num_pnc_visits] [varchar](2) NULL,
	[num_prev_live_births] [varchar](2) NULL,
	[last_live_birth_dt] [char](8) NULL,
	[last_normal_menses_dt] [char](8) NULL,
	[delivery_method] [char](1) NULL,
	[birth_wt] [varchar](4) NULL,
	[birth_type] [char](1) NULL,
	[birth_defects] [char](1) NULL,
	[birth_defects_cd] [varchar](50) NULL,
	[infant_transfer] [char](1) NULL,
	[breastfed] [char](1) NULL,
	[neonatal_status] [char](1) NULL,
	[neonatal_status_weeks] [char](2) NULL,
	[month_preg_pnc] [char](2) NULL,
	[maternal_dob] [char](8) NULL,
	[maternal_sndx] [char](4) NULL,
	[maternal_stateno] [varchar](35) NULL,
	[maternal_birth_country_cd] [char](3) NULL,
	[maternal_birth_country_usd] [char](3) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[ARCHIVE_OBSERVATION]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCHIVE_OBSERVATION](
	[document_uid] [char](16) NOT NULL,
	[obs_uid] [char](16) NOT NULL,
	[obs_value] [varchar](1000) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[ARCHIVE_PERSON_VIEW_OVERRIDE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCHIVE_PERSON_VIEW_OVERRIDE](
	[ehars_uid] [char](16) NOT NULL,
	[table_name] [varchar](32) NULL,
	[field_name] [varchar](32) NULL,
	[document_uid] [char](16) NOT NULL,
	[id_cd] [varchar](128) NULL,
	[doc_type] [varchar](32) NULL,
	[display_name] [varchar](256) NULL,
	[possible_values] [varchar](4000) NULL,
	[override_flag] [char](1) NULL,
	[create_dt] [char](8) NULL,
	[modify_dt] [char](8) NULL,
	[report_source] [varchar](128) NULL,
	[completed_by] [varchar](128) NULL,
	[override_value] [varchar](256) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[ARCHIVE_PHER_ANTIRETROVIRAL]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCHIVE_PHER_ANTIRETROVIRAL](
	[document_uid] [char](16) NOT NULL,
	[pher_question_uid] [varchar](5) NOT NULL,
	[pher_arv_seq] [int] NOT NULL,
	[drug_cd] [varchar](32) NULL,
	[other_specify] [varchar](50) NULL,
	[drug_refused] [char](1) NULL,
	[receive_dt] [varchar](8) NULL,
	[receive_tm] [varchar](5) NULL,
	[type_of_administration] [varchar](5) NULL,
	[drug_start_dt] [varchar](8) NULL,
	[drug_start_gestational_age] [char](2) NULL,
	[art_completed] [varchar](4) NULL,
	[drug_stopped] [varchar](2) NULL,
	[drug_stop_dt] [varchar](8) NULL,
	[drug_start_tm] [varchar](8) NULL,
	[drug_stop_cd_1] [varchar](4) NULL,
	[drug_stop_cd_2] [varchar](4) NULL,
	[drug_stop_cd_3] [varchar](4) NULL,
	[drug_stop_cd_4] [varchar](4) NULL,
 CONSTRAINT [PK_PHER_ANTIRETROVIRAL] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[pher_question_uid] ASC,
	[pher_arv_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ARCHIVE_PHER_FIELD_DETAIL]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCHIVE_PHER_FIELD_DETAIL](
	[pher_field_uid] [int] NOT NULL,
	[pher_question_uid] [varchar](5) NULL,
	[field_order] [int] NULL,
	[pher_field] [varchar](200) NULL,
	[field1_label_lkup_cd] [varchar](50) NULL,
	[display] [int] NULL,
	[field1_control_lkup_type] [varchar](50) NULL,
	[field1_control_type] [varchar](50) NULL,
	[field2_control_lkup_type] [varchar](50) NULL,
	[field2_control_type] [varchar](50) NULL,
	[table_name] [varchar](50) NULL,
	[field1_max_length] [varchar](10) NULL,
	[field2_max_length] [varchar](10) NULL,
 CONSTRAINT [PK_PHER_FIELD_DETAIL] PRIMARY KEY CLUSTERED 
(
	[pher_field_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ARCHIVE_PHER_OBSERVATION]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCHIVE_PHER_OBSERVATION](
	[document_uid] [char](16) NOT NULL,
	[pher_obs_uid] [varchar](5) NOT NULL,
	[pher_obs_value] [varchar](100) NULL,
	[pher_dt] [varchar](8) NULL,
	[pher_tm] [varchar](5) NULL,
	[other_specify] [varchar](1024) NULL,
	[comments] [varchar](4000) NULL,
 CONSTRAINT [PK_PHER_OBSERVATION] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[pher_obs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ARCHIVE_PHER_OBSERVATION_CODE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCHIVE_PHER_OBSERVATION_CODE](
	[pher_obs_uid] [varchar](5) NOT NULL,
	[pher_question_uid] [varchar](5) NOT NULL,
	[pher_section_uid] [int] NULL,
	[pher_field_uid] [int] NULL,
	[document_type_cd] [varchar](64) NULL,
	[sas_var_name] [varchar](64) NULL,
	[flag_ind] [char](1) NULL,
 CONSTRAINT [PK_PHER_OBSERVATION_CODE] PRIMARY KEY CLUSTERED 
(
	[pher_obs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ARCHIVE_PHER_QUESTION]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCHIVE_PHER_QUESTION](
	[pher_question_uid] [varchar](5) NOT NULL,
	[descr] [varchar](255) NOT NULL,
	[pher_section_uid] [int] NULL,
 CONSTRAINT [PK_PHER_QUESTION] PRIMARY KEY CLUSTERED 
(
	[pher_question_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ARCHIVE_PHER_SECTION]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCHIVE_PHER_SECTION](
	[pher_section_uid] [int] NOT NULL,
	[section_name] [varchar](100) NULL,
 CONSTRAINT [PK_PHER_SECTION] PRIMARY KEY CLUSTERED 
(
	[pher_section_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ARCHIVE_PHER_SIBLING]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARCHIVE_PHER_SIBLING](
	[document_uid] [char](16) NOT NULL,
	[pher_sibl_seq] [int] NOT NULL,
	[doc_belongs_to] [varchar](7) NULL,
	[sibling_dob] [varchar](8) NULL,
	[sibling_sero] [varchar](32) NULL,
	[sibling_stateno] [varchar](35) NULL,
	[sibling_cityno] [varchar](35) NULL,
 CONSTRAINT [PK_PHER_SIBLING] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[pher_sibl_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ARV_PROPHYLAXIS]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARV_PROPHYLAXIS](
	[document_uid] [char](16) NOT NULL,
	[drug_seq] [int] NOT NULL,
	[obs_uid] [char](16) NOT NULL,
	[drug_cd] [varchar](32) NULL,
	[drug_rsn] [varchar](32) NULL,
	[other_drug_rsn] [varchar](255) NULL,
	[drug_start_dt] [char](8) NULL,
	[drug_last_use_dt] [char](8) NULL,
	[other_drug_specify] [varchar](50) NULL,
 CONSTRAINT [PK_ARV_PROPHYLAXIS] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[drug_seq] ASC,
	[obs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[BIRTH_DELIVERY]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIRTH_DELIVERY](
	[document_uid] [char](16) NOT NULL,
	[delivery_seq] [int] NOT NULL,
	[csection_rsn] [char](2) NULL,
	[other_csection_rsn] [varchar](100) NULL,
 CONSTRAINT [PK_BIRTH_DELIVERY] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[delivery_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[BIRTH_HISTORY]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIRTH_HISTORY](
	[document_uid] [char](16) NOT NULL,
	[birth_place] [varchar](2) NULL,
	[delivery_method] [char](1) NULL,
	[birth_wt] [varchar](4) NULL,
	[birth_type] [char](1) NULL,
	[congenital_disorders] [char](1) NULL,
	[congenital_disorders_cd] [varchar](50) NULL,
	[infant_transfer] [char](1) NULL,
	[breastfed_discharge] [char](1) NULL,
	[neonatal_status] [char](1) NULL,
	[neonatal_status_weeks] [char](2) NULL,
	[rupture_dt] [char](8) NULL,
	[rupture_time] [char](8) NULL,
	[delivery_dt] [char](8) NULL,
	[delivery_time] [char](8) NULL,
	[birth_history_avail] [char](1) NULL,
 CONSTRAINT [PK_BIRTH_HISTORY] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[BIRTHING_PERSON_HISTORY]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIRTHING_PERSON_HISTORY](
	[document_uid] [char](16) NOT NULL,
	[month_preg_pnc] [varchar](2) NULL,
	[num_pnc_visits] [varchar](2) NULL,
	[preg_before] [char](1) NULL,
	[num_prev_preg] [varchar](2) NULL,
	[num_prev_live_births] [varchar](2) NULL,
	[bp_cd4_test] [char](1) NULL,
	[bp_vl_test] [char](1) NULL,
	[bp_first_pos_dt] [char](8) NULL,
	[first_pnc_visit_dt] [char](8) NULL,
	[last_normal_menses_dt] [char](8) NULL,
	[last_pnc_visit_dt] [char](8) NULL,
 CONSTRAINT [PK_BIRTHING_PERSON_HISTORY] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[CALC_OBS_DECISIONS]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CALC_OBS_DECISIONS](
	[document_uid] [char](16) NOT NULL,
	[calc_obs_uid] [char](16) NOT NULL,
	[rule_chosen] [varchar](50) NULL,
	[comments] [varchar](2000) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[CALC_OBSERVATION]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CALC_OBSERVATION](
	[document_uid] [char](16) NOT NULL,
	[calc_obs_uid] [char](16) NOT NULL,
	[calc_obs_value] [varchar](100) NULL,
 CONSTRAINT [PK_CALC_OBSERVATION] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[calc_obs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[CALC_OBSERVATION_CODE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CALC_OBSERVATION_CODE](
	[calc_obs_uid] [char](16) NOT NULL,
	[document_type_cd] [varchar](64) NULL,
	[descr] [varchar](255) NULL,
	[hars_var_name] [varchar](21) NULL,
	[sas_var_name] [varchar](64) NULL,
	[display_order] [int] NULL,
	[display] [char](1) NULL,
	[last_modified_version] [varchar](50) NULL,
	[flag_ind] [char](1) NULL,
 CONSTRAINT [PK_CALC_OBSERVATION_CODE] PRIMARY KEY CLUSTERED 
(
	[calc_obs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[CLIA_CODE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIA_CODE](
	[clia_uid] [char](11) NOT NULL,
	[lab_type] [char](2) NULL,
	[lab_name1] [varchar](100) NULL,
	[lab_name2] [varchar](50) NULL,
	[street_address1] [varchar](150) NULL,
	[street_address2] [varchar](50) NULL,
	[city_name] [varchar](128) NULL,
	[state_cd] [char](2) NULL,
	[zip_cd] [varchar](10) NULL,
	[phone] [varchar](10) NULL,
 CONSTRAINT [PK_CLIA_CODE] PRIMARY KEY CLUSTERED 
(
	[clia_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[CLIA_LOOKUP]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIA_LOOKUP](
	[clia_uid] [char](11) NOT NULL,
	[site_cd] [char](4) NOT NULL,
 CONSTRAINT [PK_CLIA_LOOKUP] PRIMARY KEY CLUSTERED 
(
	[clia_uid] ASC,
	[site_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[clia_LOOKUP_OLD]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clia_LOOKUP_OLD](
	[clia_uid] [char](11) NOT NULL,
	[site_cd] [char](4) NOT NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[CONSENT_QUESTIONNAIRE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONSENT_QUESTIONNAIRE](
	[document_uid] [char](16) NOT NULL,
	[cdate1] [char](8) NULL,
	[cconsent1] [char](1) NULL,
	[cconsentvisit1] [char](2) NULL,
	[cdate2] [char](8) NULL,
	[cconsent2] [char](1) NULL,
	[cconsentvisit2] [char](2) NULL,
 CONSTRAINT [PK_CONSENT_QUESTIONAIRE] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[CONVERSION_FIELD_COMPARISON]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONVERSION_FIELD_COMPARISON](
	[field_comparison_seq] [int] IDENTITY(1,1) NOT NULL,
	[conversion_validation_batch_seq] [int] NULL,
	[document_type] [varchar](18) NULL,
	[hars_variable] [varchar](8) NULL,
	[hars_value] [varchar](255) NULL,
	[hars_stateno] [varchar](255) NULL,
	[ehars_table_name] [varchar](50) NULL,
	[ehars_column_name] [varchar](50) NULL,
	[ehars_column_value] [varchar](255) NULL,
	[ehars_code_column_name] [varchar](50) NULL,
	[ehars_document_uid] [varchar](16) NULL,
	[ehars_code_value] [varchar](100) NULL,
 CONSTRAINT [PK_CONVERSION_FIELD_COMPARISON] PRIMARY KEY CLUSTERED 
(
	[field_comparison_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[CONVERSION_MAPPING]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONVERSION_MAPPING](
	[conversion_mapping_seq] [int] IDENTITY(1,1) NOT NULL,
	[hars_variable] [varchar](8) NOT NULL,
	[ehars_table_name] [varchar](50) NOT NULL,
	[ehars_column_name] [varchar](50) NOT NULL,
	[ehars_code_column_name] [varchar](50) NULL,
	[ehars_code_value] [varchar](100) NULL,
	[translation_code] [varchar](50) NULL,
	[special_case_code] [varchar](200) NULL,
	[active_flag] [char](1) NULL,
 CONSTRAINT [PK_CONVERSION_MAPPING] PRIMARY KEY CLUSTERED 
(
	[conversion_mapping_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[CONVERSION_TRANSLATION]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONVERSION_TRANSLATION](
	[hars_value] [varchar](16) NULL,
	[ehars_value] [varchar](16) NULL,
	[translation_code] [varchar](50) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[CONVERSION_VALIDATION_BATCH]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONVERSION_VALIDATION_BATCH](
	[conversion_validation_batch_seq] [int] IDENTITY(1,1) NOT NULL,
	[batch_start_dt] [char](14) NULL,
	[batch_END_dt] [char](14) NULL,
	[comments] [varchar](1000) NULL,
 CONSTRAINT [PK_CONVERSION_VALIDATION_BATCH] PRIMARY KEY CLUSTERED 
(
	[conversion_validation_batch_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[COPHI_PASSWORD]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COPHI_PASSWORD](
	[user_id] [varchar](30) NULL,
	[ehars_uid] [char](16) NULL,
	[document_uid] [char](16) NULL,
	[cophi_risk] [varchar](50) NULL,
	[cophi_risk_descr] [varchar](256) NULL,
	[cophi_password] [char](10) NULL,
	[modify_dt] [datetime] NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[COUNTRY_CODE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COUNTRY_CODE](
	[country_cd] [char](3) NOT NULL,
	[descr] [varchar](60) NULL,
	[type_cd] [char](7) NULL,
	[flag] [char](1) NULL,
	[display_order] [int] NULL,
	[fips_hars] [char](3) NULL,
	[cd_hars] [char](2) NULL,
	[country_cd_alpha] [char](2) NULL,
 CONSTRAINT [PK_COUNTRY_CODE] PRIMARY KEY CLUSTERED 
(
	[country_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[DDL_LOG]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDL_LOG](
	[log_uid] [int] IDENTITY(1,1) NOT NULL,
	[database_name] [varchar](256) NOT NULL,
	[ehars_version_no] [varchar](16) NOT NULL,
	[build_no] [varchar](50) NULL,
	[event_type] [varchar](50) NOT NULL,
	[object_name] [varchar](256) NOT NULL,
	[object_type] [varchar](25) NOT NULL,
	[sql_command] [varchar](max) NOT NULL,
	[event_dt] [datetime] NOT NULL,
	[login_name] [varchar](256) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEATH]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEATH](
	[document_uid] [char](16) NOT NULL,
	[dod] [char](8) NULL,
	[county_fips] [char](3) NULL,
	[county_name] [varchar](64) NULL,
	[state_cd] [char](2) NULL,
	[country_cd] [char](3) NULL,
	[country_usd] [char](3) NULL,
	[place] [char](3) NULL,
	[autopsy] [char](1) NULL,
	[city_fips] [char](5) NULL,
	[city_name] [varchar](128) NULL,
 CONSTRAINT [PK_DEATH] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[DEATH_DX]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEATH_DX](
	[document_uid] [char](16) NOT NULL,
	[line_number] [char](2) NOT NULL,
	[icd_cd] [char](7) NULL,
	[icd_cd_type] [char](2) NULL,
	[descr] [varchar](255) NULL,
	[line] [char](1) NULL,
	[position] [char](10) NULL,
	[nature_of_injury] [varchar](64) NULL,
 CONSTRAINT [PK_DEATH_DX] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[line_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[DML_LOG]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DML_LOG](
	[load_uid] [int] IDENTITY(1,1) NOT NULL,
	[load_name] [varchar](50) NULL,
	[ehars_version_no] [varchar](16) NOT NULL,
	[build_no] [varchar](50) NULL,
	[initial_count] [int] NULL,
	[load_count] [int] NULL,
	[update_count] [int] NULL,
	[delete_count] [int] NULL,
	[after_count] [int] NULL,
	[load_description] [varchar](255) NOT NULL,
	[loaded_by] [varchar](50) NOT NULL,
	[load_dt] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOC_SOURCE_LOOKUP]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOC_SOURCE_LOOKUP](
	[doc_source_uid] [int] IDENTITY(1,1) NOT NULL,
	[lookup_type] [varchar](32) NULL,
	[lookup_cd] [varchar](32) NULL,
	[document_type_cd] [char](3) NULL,
 CONSTRAINT [PK_DOC_SOURCE_LOOKUP] PRIMARY KEY CLUSTERED 
(
	[doc_source_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[DOCUMENT]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCUMENT](
	[document_uid] [char](16) NOT NULL,
	[document_type_cd] [char](3) NULL,
	[document_number] [varchar](35) NULL,
	[surv_method] [varchar](3) NULL,
	[rpt_medium] [varchar](3) NULL,
	[author] [varchar](25) NULL,
	[complete_dt] [char](8) NULL,
	[enter_by] [varchar](30) NULL,
	[enter_dt] [char](8) NULL,
	[site_cd] [char](4) NOT NULL,
	[rep_hlth_dept_cd] [varchar](7) NULL,
	[rep_hlth_dept_name] [varchar](52) NULL,
	[initinvest] [char](1) NULL,
	[initdocuid] [char](16) NULL,
	[pv_categ] [char](1) NULL,
	[pv_hcateg] [char](1) NULL,
	[notes] [varchar](4000) NULL,
	[ehars_uid] [char](16) NULL,
	[modify_dt] [char](8) NULL,
	[status_flag] [char](1) NULL,
	[ship_flag] [int] NULL,
	[author_phone] [varchar](10) NULL,
	[receive_dt] [char](8) NULL,
	[document_source_cd] [varchar](12) NULL,
	[facility_uid] [char](16) NULL,
	[provider_uid] [char](16) NULL,
 CONSTRAINT [PK_DOCUMENT] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[DOCUMENT_DELETE_DETAIL]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCUMENT_DELETE_DETAIL](
	[file_uid] [int] NULL,
	[document_uid] [char](255) NOT NULL,
	[status_flag] [char](1) NULL,
	[document_type_cd] [varchar](3) NULL,
	[ehars_uid] [char](16) NULL,
	[override_flag] [char](1) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[DOCUMENT_DELETE_LOG]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCUMENT_DELETE_LOG](
	[file_uid] [int] IDENTITY(1,1) NOT NULL,
	[file_name] [varchar](35) NULL,
	[file_status] [char](1) NULL,
	[user_id] [varchar](30) NULL,
	[start_time] [datetime] NULL,
	[end_time] [datetime] NULL,
	[error_descr] [varchar](255) NULL,
	[initial_count] [int] NULL,
	[final_count] [int] NULL,
 CONSTRAINT [PK_DOCUMENT_DELETE_LOG] PRIMARY KEY CLUSTERED 
(
	[file_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[DOCUMENT_PURGE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCUMENT_PURGE](
	[document_uid] [char](16) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[EHARS_GROUP]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EHARS_GROUP](
	[ehars_group_uid] [char](16) NOT NULL,
	[name] [varchar](100) NULL,
	[descr] [varchar](255) NULL,
 CONSTRAINT [PK_EHARS_GROUP] PRIMARY KEY CLUSTERED 
(
	[ehars_group_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[EHARS_USER]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EHARS_USER](
	[user_id] [varchar](30) NOT NULL,
	[password] [varchar](24) NULL,
	[name] [varchar](50) NULL,
	[site_cd] [varchar](4) NULL,
	[email] [varchar](50) NULL,
	[phone] [varchar](10) NULL,
 CONSTRAINT [PK_EHARS_USER] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[EVENT_LOG]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVENT_LOG](
	[event_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[document_uid] [char](16) NULL,
	[dt_time] [datetime] NULL,
	[type] [varchar](100) NULL,
	[event] [varchar](50) NULL,
	[comments] [varchar](4000) NULL,
	[user_id] [varchar](30) NULL,
	[current_ehars_uid] [char](16) NULL,
	[former_ehars_uid] [char](16) NULL,
	[pv_override_old] [varchar](256) NULL,
	[pv_override_new] [varchar](256) NULL,
	[fieldname] [varchar](64) NULL,
	[site_cd] [varchar](4) NULL,
 CONSTRAINT [PK_EVENT_LOG] PRIMARY KEY CLUSTERED 
(
	[event_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[event_log_old]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event_log_old](
	[event_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[document_uid] [char](16) NULL,
	[dt_time] [datetime] NULL,
	[type] [varchar](50) NULL,
	[event] [varchar](20) NULL,
	[comments] [varchar](4000) NULL,
	[user_id] [varchar](30) NULL,
	[current_ehars_uid] [char](16) NULL,
	[former_ehars_uid] [char](16) NULL,
	[pv_override_old] [varchar](256) NULL,
	[pv_override_new] [varchar](256) NULL,
	[fieldname] [varchar](64) NULL,
	[site_cd] [varchar](4) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[FACILITY_CODE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACILITY_CODE](
	[facility_uid] [char](16) NOT NULL,
	[name1] [varchar](100) NULL,
	[name2] [varchar](100) NULL,
	[street_address1] [varchar](50) NULL,
	[street_address2] [varchar](50) NULL,
	[city_fips] [char](5) NULL,
	[city_name] [varchar](128) NULL,
	[county_fips] [char](3) NULL,
	[county_name] [varchar](64) NULL,
	[state_cd] [varchar](2) NULL,
	[zip_cd] [varchar](10) NULL,
	[country_cd] [char](3) NULL,
	[country_usd] [char](3) NULL,
	[phone] [varchar](10) NULL,
	[fax] [varchar](10) NULL,
	[email] [varchar](100) NULL,
	[facility_type_cd] [varchar](7) NULL,
	[setting_cd] [varchar](3) NULL,
	[funding_flag] [char](1) NULL,
	[funding_cd] [varchar](2) NULL,
	[ship_flag] [int] NULL,
 CONSTRAINT [PK_FACILITY_CODE] PRIMARY KEY CLUSTERED 
(
	[facility_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[FACILITY_EVENT]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACILITY_EVENT](
	[document_uid] [char](16) NOT NULL,
	[facility_uid] [char](16) NOT NULL,
	[provider_uid] [varchar](16) NULL,
	[event_cd] [char](2) NOT NULL,
	[doc_belongs_to] [varchar](7) NOT NULL,
 CONSTRAINT [PK_FACILITY_EVENT] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[doc_belongs_to] ASC,
	[facility_uid] ASC,
	[event_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[FIPS_CITY]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIPS_CITY](
	[state_fips] [char](2) NOT NULL,
	[city_fips] [char](5) NOT NULL,
	[city_name] [varchar](128) NULL,
	[state_cd] [char](2) NULL,
	[city_name_state_cd] [varchar](132) NULL,
 CONSTRAINT [PK_FIPS_CITY] PRIMARY KEY CLUSTERED 
(
	[state_fips] ASC,
	[city_fips] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[FIPS_CITY_HARS]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIPS_CITY_HARS](
	[state_cd] [char](2) NULL,
	[state_cd_city_fips] [char](7) NULL,
	[state_fips] [char](2) NULL,
	[city_fips] [char](5) NULL,
	[city_name] [varchar](128) NULL,
	[city_fips_hars] [char](4) NULL,
	[city_name_hars] [varchar](27) NULL
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[FIPS_COUNTY]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIPS_COUNTY](
	[state_fips] [char](2) NULL,
	[cnty_fips] [char](3) NOT NULL,
	[cnty_name] [varchar](64) NULL,
	[state_cd] [char](2) NOT NULL,
	[cnty_name_state_code] [varchar](68) NULL,
 CONSTRAINT [PK_FIPS_COUNTY] PRIMARY KEY CLUSTERED 
(
	[cnty_fips] ASC,
	[state_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[FIPS_COUNTY_HARS]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIPS_COUNTY_HARS](
	[state_cd] [char](2) NULL,
	[state_cd_county_fips] [varchar](5) NULL,
	[state_fips] [char](2) NULL,
	[county_fips] [char](3) NULL,
	[county_name] [varchar](64) NULL,
	[county_fips_hars] [char](3) NULL,
	[county_name_hars] [varchar](27) NULL
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[FIPS_STATE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIPS_STATE](
	[state_cd] [char](2) NOT NULL,
	[state_name] [varchar](50) NULL,
	[country_cd] [char](3) NULL,
	[state_fips] [char](2) NULL,
	[ehars_state_cd] [char](2) NULL,
 CONSTRAINT [PK_FIPS_STATE] PRIMARY KEY CLUSTERED 
(
	[state_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[GENOTYPE_SEQ_VALIDATION]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GENOTYPE_SEQ_VALIDATION](
	[genotype_seq_validation_uid] [int] IDENTITY(1,1) NOT NULL,
	[lab_test_cd] [varchar](7) NULL,
	[sequence_max_length] [int] NULL,
 CONSTRAINT [PK_GENOTYPE_SEQ_VALIDATION] PRIMARY KEY CLUSTERED 
(
	[genotype_seq_validation_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ID]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ID](
	[document_uid] [char](16) NOT NULL,
	[id_cd] [varchar](16) NOT NULL,
	[id_seq] [int] NOT NULL,
	[id_value] [varchar](35) NULL,
	[doc_belongs_to] [varchar](7) NOT NULL,
 CONSTRAINT [PK_ID] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[doc_belongs_to] ASC,
	[id_cd] ASC,
	[id_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[ID_PURGED]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ID_PURGED](
	[id_cd] [varchar](16) NOT NULL,
	[id_value] [varchar](35) NOT NULL,
	[dt_time] [datetime] NOT NULL,
 CONSTRAINT [PK_ID_PURGED] PRIMARY KEY CLUSTERED 
(
	[id_cd] ASC,
	[id_value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[id_purged_old]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[id_purged_old](
	[id_cd] [varchar](16) NOT NULL,
	[id_value] [varchar](35) NOT NULL,
	[dt_time] [datetime] NOT NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[IMPORT_DOCUMENT_LOG]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_DOCUMENT_LOG](
	[import_uid] [numeric](18, 0) NOT NULL,
	[document_uid] [char](16) NOT NULL,
 CONSTRAINT [PK_IMPORT_DOCUMENT_LOG] PRIMARY KEY CLUSTERED 
(
	[import_uid] ASC,
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[INSTALLER_LOG]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INSTALLER_LOG](
	[installer_uid] [int] IDENTITY(1,1) NOT NULL,
	[ehars_version_no] [varchar](16) NOT NULL,
	[site_cd] [char](4) NULL,
	[sql_version] [varchar](100) NULL,
	[os_version] [varchar](100) NULL,
	[status_flag] [char](1) NULL,
	[error_message] [varchar](1000) NULL,
	[run_dt] [datetime] NULL,
	[build_no] [varchar](50) NULL,
	[build_type] [varchar](20) NULL,
	[min_ehars_version] [varchar](16) NULL,
	[pvgen_executed] [char](1) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[INVESTIGATION]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVESTIGATION](
	[investigation_uid] [int] NOT NULL,
	[document_uid] [char](16) NULL,
	[status] [char](2) NOT NULL,
	[type] [char](2) NULL,
	[descr] [varchar](1024) NULL,
	[open_dt] [datetime] NOT NULL,
	[assign_dt] [datetime] NULL,
	[assign_to] [varchar](32) NULL,
	[close_dt] [datetime] NULL,
	[close_by] [varchar](32) NULL,
	[source] [char](2) NULL,
	[information_source] [varchar](64) NULL,
	[last_contact_hlth_dept_dt] [datetime] NULL,
	[last_contact_provider_dt] [datetime] NULL,
	[last_medical_review_dt] [datetime] NULL,
	[priority] [char](2) NULL,
	[provider_uid] [char](16) NULL,
	[resolution] [varchar](512) NULL,
	[record_insert_dt] [datetime] NULL,
	[last_modify_dt] [datetime] NULL,
	[last_modify_by] [varchar](32) NULL,
 CONSTRAINT [PK_INVESTIGATION] PRIMARY KEY CLUSTERED 
(
	[investigation_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[INVESTIGATION_CASE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVESTIGATION_CASE](
	[document_uid] [char](16) NOT NULL,
	[invest_case_seq] [int] NOT NULL,
	[invest_type_cd] [varchar](1) NULL,
	[invest_ident_method] [varchar](2) NULL,
	[invest_ident_dt] [varchar](8) NULL,
	[invest_incl] [varchar](1) NULL,
	[invest_start_dt] [varchar](8) NULL,
	[invest_dispo] [varchar](1) NULL,
	[invest_dispo_dt] [varchar](8) NULL,
	[invest_dispo_method] [varchar](1) NULL,
	[int_dispo] [varchar](1) NULL,
	[int_dispo_dt] [varchar](8) NULL,
 CONSTRAINT [PK_INVESTIGATION_CASE] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[invest_case_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[INVESTIGATION_CLUSTER]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVESTIGATION_CLUSTER](
	[document_uid] [char](16) NOT NULL,
	[invest_cluster_seq] [int] NOT NULL,
	[cluster_uid] [varchar](35) NULL,
	[cluster_ident_method] [varchar](2) NULL,
	[person_ident_method] [varchar](1) NULL,
	[person_ident_dt] [varchar](8) NULL,
 CONSTRAINT [PK_INVESTIGATION_CLUSTER] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[invest_cluster_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[LAB]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LAB](
	[document_uid] [char](16) NOT NULL,
	[lab_seq] [int] NOT NULL,
	[sample_id] [varchar](50) NULL,
	[provider_uid] [char](16) NULL,
	[specimen] [char](3) NULL,
	[sample_dt] [char](8) NULL,
	[receive_dt] [char](8) NULL,
	[manufacturer] [varchar](2) NULL,
	[clia_uid] [char](11) NULL,
	[lab_test_type] [varchar](3) NULL,
	[lab_test_cd] [varchar](7) NULL,
	[result_interpretation] [varchar](100) NULL,
	[result] [varchar](15) NULL,
	[result_units] [varchar](4) NULL,
	[result_rpt_dt] [char](8) NULL,
	[case_cd] [char](2) NULL,
	[comments] [varchar](100) NULL,
	[starhs_sample_id] [varchar](15) NULL,
	[accession_number] [varchar](50) NULL,
	[sreason] [char](1) NULL,
	[facility_uid] [char](16) NULL,
	[result_range_lower] [int] NULL,
	[result_range_upper] [int] NULL,
 CONSTRAINT [PK_LAB] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[lab_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[LAB_ANALYTE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LAB_ANALYTE](
	[document_uid] [char](16) NOT NULL,
	[lab_seq] [int] NOT NULL,
	[lab_test_cd] [varchar](7) NOT NULL,
	[result_interpretation] [varchar](100) NULL,
	[result] [varchar](10) NULL,
	[result_units] [varchar](4) NULL,
 CONSTRAINT [PK_LAB_ANALYTE] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[lab_seq] ASC,
	[lab_test_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[LAB_GENOTYPE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LAB_GENOTYPE](
	[DOCUMENT_UID] [char](16) NOT NULL,
	[LAB_SEQ] [int] NOT NULL,
	[GENOTYPE_SEQUENCE] [varchar](max) NULL,
 CONSTRAINT [PK_LAB_GENOTYPE] PRIMARY KEY CLUSTERED 
(
	[DOCUMENT_UID] ASC,
	[LAB_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA] TEXTIMAGE_ON [DATA]
GO
/****** Object:  Table [dbo].[LAB_LOOKUP_CODE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LAB_LOOKUP_CODE](
	[lab_lookup_uid] [int] IDENTITY(1,1) NOT NULL,
	[mod_type] [varchar](32) NULL,
	[lookup_type] [varchar](32) NULL,
	[lookup_cd] [varchar](32) NULL,
	[flag_ind] [char](2) NULL,
	[display_order] [int] NULL,
	[lab_test_cd] [varchar](7) NULL,
 CONSTRAINT [PK_LAB_LOOKUP_CODE] PRIMARY KEY CLUSTERED 
(
	[lab_lookup_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[LAB_TEST_CODE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LAB_TEST_CODE](
	[lab_test_cd] [varchar](7) NOT NULL,
	[mod_type] [varchar](32) NULL,
	[name] [varchar](100) NOT NULL,
	[case_cd] [char](2) NOT NULL,
	[hars_var_name] [varchar](21) NULL,
	[sas_var_name] [varchar](64) NULL,
	[display_ord] [int] NULL,
	[display_specify] [char](1) NOT NULL,
	[category] [varchar](32) NULL,
	[flag_ind] [char](1) NULL,
	[cophi_risk_ind] [char](1) NULL,
 CONSTRAINT [PK_LOINC_CODE] PRIMARY KEY CLUSTERED 
(
	[lab_test_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[LOCAL_FIELD]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOCAL_FIELD](
	[document_uid] [char](16) NOT NULL,
	[local_field_uid] [char](16) NOT NULL,
	[local_field_value] [varchar](100) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[LOCAL_FIELD_CODE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOCAL_FIELD_CODE](
	[local_field_uid] [char](16) NOT NULL,
	[document_type_cd] [varchar](64) NULL,
	[local_field_name] [varchar](50) NULL,
	[descr] [varchar](1024) NULL,
	[value_type] [varchar](20) NULL,
	[value_data_type] [varchar](15) NULL,
	[value_data_len] [int] NULL,
	[legal_values] [varchar](4000) NULL,
	[default_value] [varchar](250) NULL,
	[hars_var_name] [varchar](21) NULL,
	[sas_var_name] [varchar](64) NULL,
	[display] [char](1) NULL,
	[display_order] [int] NULL,
 CONSTRAINT [PK_LOCAL_FIELD_CODE] PRIMARY KEY CLUSTERED 
(
	[local_field_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[LOOKUP_CODE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOOKUP_CODE](
	[lookup_type] [varchar](32) NOT NULL,
	[lookup_cd] [varchar](32) NOT NULL,
	[lookup_name] [varchar](1024) NULL,
	[lookup_descr] [varchar](1024) NULL,
	[sas_var_name] [varchar](64) NULL,
	[hars_var_name] [varchar](21) NULL,
	[display_order] [int] NULL,
	[display] [char](1) NULL,
	[flag_ind] [char](1) NULL,
	[validation_descr] [varchar](256) NULL,
	[status_flag] [char](1) NULL,
 CONSTRAINT [PK_LOOKUP_CODE] PRIMARY KEY CLUSTERED 
(
	[lookup_type] ASC,
	[lookup_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[MATCHABLE_FIELD]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATCHABLE_FIELD](
	[match_field_uid] [int] NOT NULL,
	[field_name] [varchar](50) NULL,
	[display_name] [varchar](100) NULL,
	[field_data_type] [varchar](50) NULL,
	[condition] [varchar](100) NULL,
	[table_name] [varchar](50) NULL,
	[fuzzy_match] [bit] NOT NULL,
	[manual_match] [bit] NOT NULL,
	[generate_match_code] [bit] NOT NULL,
	[manual_match_weightage] [int] NULL,
	[manual_match_field_order] [int] NULL,
	[fuzzy_search_field_order] [int] NULL,
 CONSTRAINT [PK_MATCHABLE_FIELD] PRIMARY KEY CLUSTERED 
(
	[match_field_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[MCGEN_STAGING]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MCGEN_STAGING](
	[mcgen_uid] [int] IDENTITY(1,1) NOT NULL,
	[match_field_uid] [int] NULL,
	[ehars_uid] [char](16) NULL,
	[document_uid] [char](16) NULL,
	[generate_match_code] [bit] NULL,
	[field_value] [varchar](100) NOT NULL,
	[match_cd] [varchar](50) NULL,
 CONSTRAINT [PK_MCGEN_STAGING] PRIMARY KEY CLUSTERED 
(
	[mcgen_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[MJP_DATA_ACCESS]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MJP_DATA_ACCESS](
	[access_uid] [int] IDENTITY(1,1) NOT NULL,
	[ehars_uid] [char](16) NOT NULL,
	[site_cd] [char](4) NOT NULL,
	[document_uid] [char](16) NULL,
	[contribution_type] [char](1) NOT NULL,
	[access_level] [char](1) NOT NULL,
	[expiration_dt] [datetime] NULL,
 CONSTRAINT [PK_MJP_DATA_ACCESS] PRIMARY KEY CLUSTERED 
(
	[access_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[MJP_EHARS_UID_HISTORY]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MJP_EHARS_UID_HISTORY](
	[history_uid] [int] IDENTITY(1,1) NOT NULL,
	[losing_ehars_uid] [char](16) NULL,
	[winning_ehars_uid] [char](16) NULL,
	[losing_stateno] [varchar](50) NULL,
	[winning_stateno] [varchar](50) NULL,
	[document_uid] [char](16) NULL,
	[owners_site_cd] [varchar](250) NULL,
	[action_flag] [char](10) NULL,
	[create_dt] [datetime] NULL,
	[merge_location] [varchar](5) NULL,
	[merge_type] [varchar](6) NULL,
 CONSTRAINT [PK_MJP_LOSING_UID] PRIMARY KEY CLUSTERED 
(
	[history_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[mjp_ehars_uid_history_old]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mjp_ehars_uid_history_old](
	[history_uid] [int] IDENTITY(1,1) NOT NULL,
	[losing_ehars_uid] [char](16) NULL,
	[winning_ehars_uid] [char](16) NULL,
	[losing_stateno] [varchar](50) NULL,
	[winning_stateno] [varchar](50) NULL,
	[document_uid] [char](16) NULL,
	[owners_site_cd] [varchar](250) NULL,
	[action_flag] [char](10) NULL,
	[create_dt] [datetime] NULL,
	[merge_location] [varchar](5) NULL,
	[merge_type] [varchar](6) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[MJP_JURISDICTION_MAPPING]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MJP_JURISDICTION_MAPPING](
	[jbd_uid] [int] IDENTITY(1,1) NOT NULL,
	[site_cd] [char](4) NOT NULL,
	[field_name] [varchar](50) NOT NULL,
	[field_value] [varchar](255) NOT NULL,
	[create_dt] [datetime] NOT NULL,
	[modify_dt] [datetime] NULL,
	[resolved] [char](1) NOT NULL,
 CONSTRAINT [PK_MJP_JBD_UID] PRIMARY KEY CLUSTERED 
(
	[jbd_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[MJP_JURISDICTIONS]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MJP_JURISDICTIONS](
	[site_cd] [char](4) NOT NULL,
	[site_name] [varchar](256) NOT NULL,
	[parent_site_cd] [char](4) NULL,
	[site_type] [char](1) NOT NULL,
 CONSTRAINT [PK_MJP_SITE_CD] PRIMARY KEY CLUSTERED 
(
	[site_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[MJP_OWNERSHIP]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MJP_OWNERSHIP](
	[EHARS_UID] [char](16) NOT NULL,
	[DOCUMENT_UID] [char](16) NOT NULL,
	[PRIMARY_OWNER] [varchar](50) NOT NULL,
	[OWNER_ASSIGNMENT] [char](1) NULL,
	[CASE_SHARED] [char](1) NULL,
 CONSTRAINT [PK_MJP_EHARS_UID] PRIMARY KEY CLUSTERED 
(
	[EHARS_UID] ASC,
	[DOCUMENT_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[MJP_OWNERSHIP_LOG]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MJP_OWNERSHIP_LOG](
	[log_uid] [int] IDENTITY(1,1) NOT NULL,
	[ehars_uid] [char](16) NOT NULL,
	[document_uid] [char](16) NULL,
	[stateno] [varchar](50) NULL,
	[primary_owner_old] [varchar](4) NULL,
	[primary_owner_new] [varchar](4) NULL,
	[owner_assignment_old] [char](1) NULL,
	[owner_assignment_new] [char](1) NULL,
	[user_id] [varchar](30) NULL,
	[create_dt] [datetime] NULL,
 CONSTRAINT [PK_MJP_OWNERSHIP_LOG_1] PRIMARY KEY CLUSTERED 
(
	[log_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[mjp_ownership_log_old]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mjp_ownership_log_old](
	[log_uid] [int] IDENTITY(1,1) NOT NULL,
	[ehars_uid] [char](16) NOT NULL,
	[document_uid] [char](16) NULL,
	[stateno] [varchar](50) NULL,
	[primary_owner_old] [varchar](4) NULL,
	[primary_owner_new] [varchar](4) NULL,
	[owner_assignment_old] [char](1) NULL,
	[owner_assignment_new] [char](1) NULL,
	[user_id] [varchar](30) NULL,
	[create_dt] [datetime] NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[MJP_PACKAGE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MJP_PACKAGE](
	[package_uid] [int] IDENTITY(1,1) NOT NULL,
	[site_cd] [char](4) NOT NULL,
	[transfer_type_uid] [int] NOT NULL,
	[state_transfer_uid] [int] NULL,
	[site_transfer_uid] [int] NULL,
	[create_dt] [datetime] NOT NULL,
	[file_name] [varchar](256) NOT NULL,
	[user_id] [varchar](30) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[MJP_PVGEN]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MJP_PVGEN](
	[PVGEN_UID] [int] IDENTITY(1,1) NOT NULL,
	[EHARS_UID] [char](16) NOT NULL,
	[STATENO] [varchar](50) NULL,
	[ACTION_FLAG] [char](1) NULL,
	[CREATE_DT] [datetime] NOT NULL,
 CONSTRAINT [PK_MJP_PVGEN_UID] PRIMARY KEY CLUSTERED 
(
	[PVGEN_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[MJP_REFERENCE_LOG]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MJP_REFERENCE_LOG](
	[EVENT_UID] [int] IDENTITY(1,1) NOT NULL,
	[REF_TYPE] [varchar](20) NOT NULL,
	[REF_ID] [varchar](20) NOT NULL,
	[TABLE_NAME] [varchar](100) NOT NULL,
	[REF_EVENT] [varchar](50) NOT NULL,
	[USER_ID] [varchar](30) NULL,
	[CREATE_DT] [datetime] NULL,
	[MODIFY_DT] [datetime] NULL,
	[NOTES] [nvarchar](4000) NULL,
 CONSTRAINT [PK_MJP_EVENT_ID] PRIMARY KEY CLUSTERED 
(
	[EVENT_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[MJP_SECONDARY_OWNERSHIP]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MJP_SECONDARY_OWNERSHIP](
	[ehars_uid] [char](16) NOT NULL,
	[secondary_owner] [char](4) NOT NULL,
	[secondary_owner_type] [char](1) NOT NULL,
	[create_modify_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_MJPS_EHARS_UID] PRIMARY KEY CLUSTERED 
(
	[ehars_uid] ASC,
	[secondary_owner] ASC,
	[secondary_owner_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[MJP_STATENO_MERGE_HISTORY]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MJP_STATENO_MERGE_HISTORY](
	[merge_history_uid] [int] IDENTITY(1,1) NOT NULL,
	[transfer_uid] [int] NOT NULL,
	[site_cd] [char](4) NOT NULL,
	[stateno] [varchar](35) NOT NULL,
	[state_ehars_uid] [char](16) NOT NULL,
	[city_ehars_uid] [char](16) NOT NULL,
	[city_person_view_enter_dt] [varchar](10) NOT NULL,
	[state_person_view_enter_dt] [varchar](10) NOT NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[MJP_TRANSFER_DETAIL]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MJP_TRANSFER_DETAIL](
	[transfer_uid] [int] NOT NULL,
	[site_cd] [char](4) NOT NULL,
	[document_uid] [char](16) NOT NULL,
	[ship_flag] [int] NOT NULL,
	[status_flag] [char](1) NULL,
	[error_cd] [int] NULL,
	[error_descr] [varchar](256) NULL,
 CONSTRAINT [PK_MJP_TRANSFER_DETAIL] PRIMARY KEY CLUSTERED 
(
	[transfer_uid] ASC,
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[MJP_TRANSFER_LOG]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MJP_TRANSFER_LOG](
	[transfer_uid] [int] NOT NULL,
	[process_status] [int] NULL,
	[process_detail_status] [int] NULL,
	[transfer_type_uid] [int] NOT NULL,
	[site_cd] [char](4) NULL,
	[request_file_name] [varchar](256) NULL,
	[response_file_name] [varchar](256) NULL,
	[record_count] [int] NOT NULL,
	[create_dt] [datetime] NOT NULL,
	[acknowledge_dt] [datetime] NULL,
	[error_cd] [int] NULL,
	[error_descr] [varchar](256) NULL,
	[transfer_uid_state_city] [int] NULL,
	[user_id] [varchar](30) NULL,
	[end_dt] [datetime] NULL,
 CONSTRAINT [PK_MJP_TRANSFER_LOG] PRIMARY KEY CLUSTERED 
(
	[transfer_uid] ASC,
	[transfer_type_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[OBSERVATION]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBSERVATION](
	[document_uid] [char](16) NOT NULL,
	[obs_uid] [char](16) NOT NULL,
	[obs_value] [varchar](1000) NULL,
 CONSTRAINT [PK_OBSERVATION] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[obs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[OBSERVATION_CODE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBSERVATION_CODE](
	[obs_uid] [char](16) NOT NULL,
	[document_type_cd] [varchar](64) NULL,
	[descr] [varchar](255) NULL,
	[value_type] [char](20) NULL,
	[value_data_len] [int] NULL,
	[hars_var_name] [varchar](21) NULL,
	[sas_var_name] [varchar](64) NULL,
	[flag_ind] [char](1) NULL,
 CONSTRAINT [PK_OBSERVATION_CODE] PRIMARY KEY CLUSTERED 
(
	[obs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[OI]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OI](
	[document_uid] [char](16) NOT NULL,
	[oi_seq] [int] NOT NULL,
	[oi_cd] [char](4) NULL,
	[dx] [char](1) NULL,
	[dx_dt] [char](8) NULL,
 CONSTRAINT [PK_OI] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[oi_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[OTHER_HEALTH_CONDITIONS]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OTHER_HEALTH_CONDITIONS](
	[document_uid] [char](16) NOT NULL,
	[condition_seq] [int] NOT NULL,
	[condition_event_cd] [char](2) NOT NULL,
	[condition_cd] [char](2) NULL,
	[condition_value] [varchar](3) NULL,
	[condition_dt] [char](8) NULL,
	[doc_belongs_to] [varchar](7) NOT NULL,
 CONSTRAINT [PK_OTHER_HEALTH_CONDITIONS] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[condition_seq] ASC,
	[condition_event_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[PERSON]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSON](
	[document_uid] [char](16) NOT NULL,
	[dob] [char](8) NULL,
	[dob_alias] [char](8) NULL,
	[birth_country_cd] [char](3) NULL,
	[birth_country_usd] [char](3) NULL,
	[vital_status] [char](1) NULL,
	[birth_sex] [char](1) NULL,
	[current_sex] [char](1) NULL,
	[gender_identity] [char](3) NULL,
	[race1] [varchar](32) NULL,
	[race2] [varchar](32) NULL,
	[race3] [varchar](32) NULL,
	[race4] [varchar](32) NULL,
	[race5] [varchar](32) NULL,
	[ethnicity1] [varchar](32) NULL,
	[ethnicity2] [varchar](32) NULL,
	[hars_race] [char](1) NULL,
	[hars_xrace] [char](2) NULL,
	[marital_status] [char](1) NULL,
	[hcw] [char](1) NULL,
	[hcw_occup] [char](2) NULL,
	[doc_belongs_to] [varchar](7) NOT NULL,
	[education] [char](2) NULL,
	[other_gender_identity] [varchar](50) NULL,
	[gender_identity_dt] [char](8) NULL,
	[sexual_orientation] [varchar](3) NULL,
	[other_sexual_orientation] [varchar](50) NULL,
	[sexual_orientation_dt] [char](8) NULL,
 CONSTRAINT [PK_PERSON] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[doc_belongs_to] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[PERSON_NAME]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSON_NAME](
	[document_uid] [char](16) NOT NULL,
	[person_name_seq] [int] NOT NULL,
	[name_use_cd] [varchar](3) NOT NULL,
	[last_name] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[middle_name] [varchar](50) NULL,
	[name_suffix] [varchar](10) NULL,
	[name_prefix] [varchar](4) NULL,
	[last_name_sndx] [char](4) NULL,
	[first_name_sndx] [char](4) NULL,
	[doc_belongs_to] [varchar](7) NOT NULL,
	[removal_ind] [char](1) NULL,
 CONSTRAINT [PK_PERSON_NAME] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[doc_belongs_to] ASC,
	[person_name_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[PERSON_VIEW_DETAIL]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSON_VIEW_DETAIL](
	[ehars_uid] [char](16) NOT NULL,
	[table_name] [varchar](32) NULL,
	[field_name] [varchar](32) NULL,
	[document_uid] [char](16) NOT NULL,
	[id_cd] [varchar](128) NULL,
	[doc_type] [varchar](32) NULL,
	[display_name] [varchar](256) NULL,
	[possible_values] [varchar](4000) NULL,
	[override_flag] [char](1) NULL,
	[create_dt] [char](8) NULL,
	[modify_dt] [char](8) NULL,
	[report_source] [varchar](128) NULL,
	[completed_by] [varchar](128) NULL,
	[override_value] [varchar](256) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[PRE_REQ_LOG]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRE_REQ_LOG](
	[pre_req_uid] [int] IDENTITY(1,1) NOT NULL,
	[login_name] [varchar](256) NOT NULL,
	[event_dt] [datetime] NOT NULL,
	[ehars_version_no] [varchar](16) NULL,
	[build_no] [varchar](50) NULL,
	[script_name] [varchar](50) NULL,
	[result] [varchar](10) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[PREFERENCE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PREFERENCE](
	[pref_name] [varchar](50) NOT NULL,
	[pref_type] [varchar](50) NOT NULL,
	[descr] [varchar](1024) NULL,
	[pref_value] [varchar](250) NULL,
	[display] [char](1) NULL,
	[display_order] [char](2) NULL,
	[notes] [varchar](8000) NULL,
 CONSTRAINT [PK_PREFERENCE_NEW] PRIMARY KEY CLUSTERED 
(
	[pref_name] ASC,
	[pref_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[PREGNANCY_OUTCOME]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PREGNANCY_OUTCOME](
	[document_uid] [char](16) NOT NULL,
	[preg_seq] [int] NOT NULL,
	[preg_outcome] [char](1) NOT NULL,
	[preg_outcome_dt] [char](8) NULL,
 CONSTRAINT [PK_PREGNANCY_OUTCOME] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[preg_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[PRETEST_QUESTIONNAIRE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRETEST_QUESTIONNAIRE](
	[document_uid] [char](16) NOT NULL,
	[ucts] [char](1) NULL,
	[uqintd] [varchar](10) NULL,
	[ureas3_1] [char](1) NULL,
	[ureas3_2] [char](1) NULL,
	[ureas3_3] [char](1) NULL,
	[ureas3_4] [char](1) NULL,
	[ureas3_5] [char](1) NULL,
	[ur3_5sp] [varchar](50) NULL,
	[uptests] [char](1) NULL,
	[upastp] [char](1) NULL,
	[ufposd] [varchar](10) NULL,
	[ufposa] [char](1) NULL,
	[ufpstyp] [varchar](7) NULL,
	[ufps_site] [varchar](50) NULL,
	[ufps_state] [char](2) NULL,
	[urs4e_1] [char](1) NULL,
	[urs4e_2] [char](1) NULL,
	[urs4e_3] [char](1) NULL,
	[urs4e_4] [char](1) NULL,
	[urs4e_5] [char](1) NULL,
	[ur4e_5sp] [varchar](50) NULL,
	[ulstnd] [varchar](10) NULL,
	[ulstngs] [varchar](7) NULL,
	[ulstngs_site] [varchar](50) NULL,
	[ulstngs_state] [char](2) NULL,
	[unumtsts] [char](2) NULL,
	[uftstd] [varchar](10) NULL,
	[qhrtnw] [char](1) NULL,
	[ungtst] [char](1) NULL,
	[upnumtsts] [char](2) NULL,
	[ufposd_self] [char](1) NULL,
	[ulstnd_self] [char](1) NULL,
	[unumtsts_self] [char](2) NULL,
 CONSTRAINT [PK_PRETEST_QUESTIONAIRE] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[PRODUCTION_MATCH_CODE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTION_MATCH_CODE](
	[match_code_uid] [int] IDENTITY(1,1) NOT NULL,
	[match_field_uid] [int] NULL,
	[ehars_uid] [char](16) NULL,
	[document_uid] [char](16) NULL,
	[match_cd] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PRODUCTION_MATCH_CODE] PRIMARY KEY CLUSTERED 
(
	[match_code_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[PROVIDER_CODE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVIDER_CODE](
	[provider_uid] [char](16) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[middle_name] [varchar](50) NULL,
	[name_suffix] [varchar](10) NULL,
	[name_prefix] [varchar](4) NULL,
	[phone] [varchar](10) NULL,
	[specialty_cd] [varchar](3) NULL,
	[ship_flag] [int] NULL,
 CONSTRAINT [PK_HC_PROVIDER] PRIMARY KEY CLUSTERED 
(
	[provider_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[PVGEN]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PVGEN](
	[ehars_uid] [char](16) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[REPORT]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REPORT](
	[report_uid] [char](16) NOT NULL,
	[name] [varchar](100) NULL,
	[title] [varchar](100) NULL,
	[descr] [varchar](200) NULL,
	[program_name] [varchar](100) NULL,
	[parameters] [varchar](1024) NULL,
	[subset] [varchar](1024) NULL,
 CONSTRAINT [PK_REPORT] PRIMARY KEY CLUSTERED 
(
	[report_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[RIDR]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RIDR](
	[duplicate_status] [varchar](50) NULL,
	[state_cd] [char](2) NOT NULL,
	[stateno] [varchar](35) NOT NULL,
	[last_verify_dt] [datetime] NULL,
	[verify_by] [varchar](50) NULL,
	[comments] [varchar](1024) NULL,
	[document_uid] [char](16) NOT NULL,
	[ehars_uid] [char](16) NOT NULL,
 CONSTRAINT [PK_RIDR] PRIMARY KEY CLUSTERED 
(
	[state_cd] ASC,
	[stateno] ASC,
	[document_uid] ASC,
	[ehars_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[RISK]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RISK](
	[document_uid] [char](16) NOT NULL,
	[risk_seq] [int] NOT NULL,
	[risk_cd] [char](3) NULL,
	[risk_value] [char](1) NULL,
	[trans_first_dt] [char](8) NULL,
	[trans_last_dt] [char](8) NULL,
	[detail] [char](3) NULL,
	[display] [char](1) NULL,
	[resolution_dt] [varchar](8) NULL,
	[cophi_status] [char](2) NULL,
 CONSTRAINT [PK_RISK] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[risk_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[sample_text]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sample_text](
	[STATUS] [nvarchar](255) NULL,
	[SHIP2CDC] [nvarchar](255) NULL,
	[FORM] [nvarchar](255) NULL,
	[REP_ST] [nvarchar](255) NULL,
	[STATENO] [nvarchar](255) NULL,
	[HIVNO] [nvarchar](255) NULL,
	[REP_CITY] [nvarchar](255) NULL,
	[CTY_FIPS] [nvarchar](255) NULL,
	[RCITY] [nvarchar](255) NULL,
	[CITYNO] [nvarchar](255) NULL,
	[COMPLTED] [nvarchar](255) NULL,
	[ENTERED] [nvarchar](255) NULL,
	[UPDATED] [nvarchar](255) NULL,
	[HAGE_MOS] [nvarchar](255) NULL,
	[CBDATE] [nvarchar](255) NULL,
	[PATNO] [nvarchar](255) NULL,
	[CHOSP] [nvarchar](255) NULL,
	[AGE_MOS] [nvarchar](255) NULL,
	[CHCITY] [nvarchar](255) NULL,
	[CHOSP_ST] [nvarchar](255) NULL,
	[LASTEVAL] [nvarchar](255) NULL,
	[CSNDX] [nvarchar](255) NULL,
	[CSTATENO] [nvarchar](255) NULL,
	[FOLLOWUP] [nvarchar](255) NULL,
	[NAME] [nvarchar](255) NULL,
	[FUP_MOYR] [nvarchar](255) NULL,
	[SNDX] [nvarchar](255) NULL,
	[URN] [nvarchar](255) NULL,
	[ADDRESS] [nvarchar](255) NULL,
	[CURR_ST] [nvarchar](255) NULL,
	[CURCNTRY] [nvarchar](255) NULL,
	[CURRCITY] [nvarchar](255) NULL,
	[CURR_ZIP] [nvarchar](255) NULL,
	[CURRCNTY] [nvarchar](255) NULL,
	[CRGEOCTY] [nvarchar](255) NULL,
	[CRGEOCO] [nvarchar](255) NULL,
	[CRGEOS] [nvarchar](255) NULL,
	[PHYSNAME] [nvarchar](255) NULL,
	[PPHONE] [nvarchar](255) NULL,
	[MEDRECNO] [nvarchar](255) NULL,
	[HISP] [nvarchar](255) NULL,
	[RACE_I] [nvarchar](255) NULL,
	[PERS_COM] [nvarchar](255) NULL,
	[RACE_A] [nvarchar](255) NULL,
	[RACE_B] [nvarchar](255) NULL,
	[RACE_P] [nvarchar](255) NULL,
	[BIRTH] [nvarchar](255) NULL,
	[RACE_W] [nvarchar](255) NULL,
	[STAT] [nvarchar](255) NULL,
	[RACE_U] [nvarchar](255) NULL,
	[DEATH] [nvarchar](255) NULL,
	[DEATHREP] [nvarchar](255) NULL,
	[DEATH_ST] [nvarchar](255) NULL,
	[DTHCNTRY] [nvarchar](255) NULL,
	[SEX] [nvarchar](255) NULL,
	[RACE] [nvarchar](255) NULL,
	[XRACE] [nvarchar](255) NULL,
	[ORIGIN] [nvarchar](255) NULL,
	[ORIG_OTH] [nvarchar](255) NULL,
	[HAGE_YRS] [nvarchar](255) NULL,
	[US_DEPND] [nvarchar](255) NULL,
	[HST] [nvarchar](255) NULL,
	[S_TRNPLT] [nvarchar](255) NULL,
	[HCITY] [nvarchar](255) NULL,
	[RHCNTRY] [nvarchar](255) NULL,
	[HZIP] [nvarchar](255) NULL,
	[ICD10] [nvarchar](255) NULL,
	[HCOUNTY] [nvarchar](255) NULL,
	[HRGEOCTY] [nvarchar](255) NULL,
	[HRGEOCO] [nvarchar](255) NULL,
	[HRGEOS] [nvarchar](255) NULL,
	[HHOSP_DX] [nvarchar](255) NULL,
	[HCOMPLTD] [nvarchar](255) NULL,
	[HHOSP_ST] [nvarchar](255) NULL,
	[HFEDSET] [nvarchar](255) NULL,
	[HHSP_CTY] [nvarchar](255) NULL,
	[H_HCNTRY] [nvarchar](255) NULL,
	[HCITY_DX] [nvarchar](255) NULL,
	[HST_DX] [nvarchar](255) NULL,
	[FEDSET] [nvarchar](255) NULL,
	[HFAC_TYP] [nvarchar](255) NULL,
	[HFACOTHR] [nvarchar](255) NULL,
	[HSOURCE] [nvarchar](255) NULL,
	[HSRCDESC] [nvarchar](255) NULL,
	[AGE_YRS] [nvarchar](255) NULL,
	[ST] [nvarchar](255) NULL,
	[ZIP_CODE] [nvarchar](255) NULL,
	[RCOUNTY] [nvarchar](255) NULL,
	[RGEOCTY] [nvarchar](255) NULL,
	[RGEOCO] [nvarchar](255) NULL,
	[RGEOS] [nvarchar](255) NULL,
	[RCNTRY] [nvarchar](255) NULL,
	[HOSP_DX] [nvarchar](255) NULL,
	[HOSP_ST] [nvarchar](255) NULL,
	[HCNTRY] [nvarchar](255) NULL,
	[HOSP_CTY] [nvarchar](255) NULL,
	[FAC_TYPE] [nvarchar](255) NULL,
	[FAC_OTHR] [nvarchar](255) NULL,
	[SOURCER] [nvarchar](255) NULL,
	[SRC_DESC] [nvarchar](255) NULL,
	[OTHADELV] [nvarchar](255) NULL,
	[DELVSPEC] [nvarchar](255) NULL,
	[OI_MOYR] [nvarchar](255) NULL,
	[TH_CNT] [nvarchar](255) NULL,
	[TH_PCT] [nvarchar](255) NULL,
	[TH_MOYR] [nvarchar](255) NULL,
	[RVCTNO] [nvarchar](255) NULL,
	[STDMISNO] [nvarchar](255) NULL,
	[OIX_MOYR] [nvarchar](255) NULL,
	[INITEVAL] [nvarchar](255) NULL,
	[SIGNS] [nvarchar](255) NULL,
	[DELIVERY] [nvarchar](255) NULL,
	[BWEEKS] [nvarchar](255) NULL,
	[PNVISITS] [nvarchar](255) NULL,
	[CARETAKR] [nvarchar](255) NULL,
	[CHILDREF] [nvarchar](255) NULL,
	[PNCARE] [nvarchar](255) NULL,
	[IMMVALUE] [nvarchar](255) NULL,
	[CLINIC] [nvarchar](255) NULL,
	[ZIDOPREG] [nvarchar](255) NULL,
	[ZIDOWEEK] [nvarchar](255) NULL,
	[ZIDODELV] [nvarchar](255) NULL,
	[OTHAPREG] [nvarchar](255) NULL,
	[OTHASPEC] [nvarchar](255) NULL,
	[ZIDONEOP] [nvarchar](255) NULL,
	[ZINPDATE] [nvarchar](255) NULL,
	[IMM_MOYR] [nvarchar](255) NULL,
	[BRSTFED] [nvarchar](255) NULL,
	[ZIDOPRIO] [nvarchar](255) NULL,
	[HV1LOAD] [nvarchar](255) NULL,
	[HV2LOAD] [nvarchar](255) NULL,
	[HV3LOAD] [nvarchar](255) NULL,
	[HV4LOAD] [nvarchar](255) NULL,
	[HV5LOAD] [nvarchar](255) NULL,
	[HV6LOAD] [nvarchar](255) NULL,
	[HV7LOAD] [nvarchar](255) NULL,
	[HV8LOAD] [nvarchar](255) NULL,
	[HV9LOAD] [nvarchar](255) NULL,
	[BRCNTRY] [nvarchar](255) NULL,
	[TRANPLNT] [nvarchar](255) NULL,
	[ELIS1] [nvarchar](255) NULL,
	[EL1MOYR] [nvarchar](255) NULL,
	[WB1IFA] [nvarchar](255) NULL,
	[WB1MOYR] [nvarchar](255) NULL,
	[HV1TEST] [nvarchar](255) NULL,
	[ELIS2] [nvarchar](255) NULL,
	[EL2MOYR] [nvarchar](255) NULL,
	[WB2IFA] [nvarchar](255) NULL,
	[WB2MOYR] [nvarchar](255) NULL,
	[HV2TEST] [nvarchar](255) NULL,
	[HV2RES] [nvarchar](255) NULL,
	[CITY_DX] [nvarchar](255) NULL,
	[ELIS3] [nvarchar](255) NULL,
	[EL3MOYR] [nvarchar](255) NULL,
	[WB3IFA] [nvarchar](255) NULL,
	[WB3MOYR] [nvarchar](255) NULL,
	[HV3TEST] [nvarchar](255) NULL,
	[HV3RES] [nvarchar](255) NULL,
	[HV3MOYR] [nvarchar](255) NULL,
	[ELIS4] [nvarchar](255) NULL,
	[EL4MOYR] [nvarchar](255) NULL,
	[WB4IFA] [nvarchar](255) NULL,
	[WB4MOYR] [nvarchar](255) NULL,
	[HV4TEST] [nvarchar](255) NULL,
	[HV4RES] [nvarchar](255) NULL,
	[HV4MOYR] [nvarchar](255) NULL,
	[ELIS5] [nvarchar](255) NULL,
	[EL5MOYR] [nvarchar](255) NULL,
	[WB5IFA] [nvarchar](255) NULL,
	[WB5MOYR] [nvarchar](255) NULL,
	[HV5TEST] [nvarchar](255) NULL,
	[HV5RES] [nvarchar](255) NULL,
	[HV5MOYR] [nvarchar](255) NULL,
	[ELIS6] [nvarchar](255) NULL,
	[EL6MOYR] [nvarchar](255) NULL,
	[WB6IFA] [nvarchar](255) NULL,
	[WB6MOYR] [nvarchar](255) NULL,
	[HV6TEST] [nvarchar](255) NULL,
	[HV6RES] [nvarchar](255) NULL,
	[HV6MOYR] [nvarchar](255) NULL,
	[ELIS7] [nvarchar](255) NULL,
	[EL7MOYR] [nvarchar](255) NULL,
	[WB7IFA] [nvarchar](255) NULL,
	[WB7MOYR] [nvarchar](255) NULL,
	[HV7TEST] [nvarchar](255) NULL,
	[HV7RES] [nvarchar](255) NULL,
	[HV7MOYR] [nvarchar](255) NULL,
	[ELIS8] [nvarchar](255) NULL,
	[EL8MOYR] [nvarchar](255) NULL,
	[WB8IFA] [nvarchar](255) NULL,
	[WB8MOYR] [nvarchar](255) NULL,
	[HV8TEST] [nvarchar](255) NULL,
	[HV8RES] [nvarchar](255) NULL,
	[HV8MOYR] [nvarchar](255) NULL,
	[ELIS9] [nvarchar](255) NULL,
	[EL9MOYR] [nvarchar](255) NULL,
	[WB9IFA] [nvarchar](255) NULL,
	[WB9MOYR] [nvarchar](255) NULL,
	[HV9TEST] [nvarchar](255) NULL,
	[HV9RES] [nvarchar](255) NULL,
	[HV9MOYR] [nvarchar](255) NULL,
	[HIV2EIA] [nvarchar](255) NULL,
	[HIV2MOYR] [nvarchar](255) NULL,
	[CANDLUNG] [nvarchar](255) NULL,
	[CLNGMOYR] [nvarchar](255) NULL,
	[CANDESOP] [nvarchar](255) NULL,
	[CESOMOYR] [nvarchar](255) NULL,
	[COCCI] [nvarchar](255) NULL,
	[CCMOYR] [nvarchar](255) NULL,
	[CRYPTOCO] [nvarchar](255) NULL,
	[CTCCMOYR] [nvarchar](255) NULL,
	[CRYPTOSP] [nvarchar](255) NULL,
	[CRYPMOYR] [nvarchar](255) NULL,
	[CMV] [nvarchar](255) NULL,
	[CMVMOYR] [nvarchar](255) NULL,
	[CMVRET] [nvarchar](255) NULL,
	[CMVRMOYR] [nvarchar](255) NULL,
	[DEMENTIA] [nvarchar](255) NULL,
	[DEMMOYR] [nvarchar](255) NULL,
	[HS] [nvarchar](255) NULL,
	[HSMOYR] [nvarchar](255) NULL,
	[HISTO] [nvarchar](255) NULL,
	[HISTMOYR] [nvarchar](255) NULL,
	[ISO] [nvarchar](255) NULL,
	[ISOMOYR] [nvarchar](255) NULL,
	[KS] [nvarchar](255) NULL,
	[KSMOYR] [nvarchar](255) NULL,
	[BURKL] [nvarchar](255) NULL,
	[BURKMOYR] [nvarchar](255) NULL,
	[IBL] [nvarchar](255) NULL,
	[IBLMOYR] [nvarchar](255) NULL,
	[PLB] [nvarchar](255) NULL,
	[PLBMOYR] [nvarchar](255) NULL,
	[MAVIUM] [nvarchar](255) NULL,
	[MAVMOYR] [nvarchar](255) NULL,
	[TB] [nvarchar](255) NULL,
	[TBMOYR] [nvarchar](255) NULL,
	[MYCO] [nvarchar](255) NULL,
	[MYCOMOYR] [nvarchar](255) NULL,
	[PC] [nvarchar](255) NULL,
	[PCMOYR] [nvarchar](255) NULL,
	[PML] [nvarchar](255) NULL,
	[PMLMOYR] [nvarchar](255) NULL,
	[TP] [nvarchar](255) NULL,
	[TPMOYR] [nvarchar](255) NULL,
	[WASTING] [nvarchar](255) NULL,
	[WASTMOYR] [nvarchar](255) NULL,
	[SALS] [nvarchar](255) NULL,
	[SALSMOYR] [nvarchar](255) NULL,
	[BACT] [nvarchar](255) NULL,
	[BACTMOYR] [nvarchar](255) NULL,
	[LIP] [nvarchar](255) NULL,
	[LIPMOYR] [nvarchar](255) NULL,
	[M_SEXHIV] [nvarchar](255) NULL,
	[M_SEXHEM] [nvarchar](255) NULL,
	[M_TRANS] [nvarchar](255) NULL,
	[MHIVSTAT] [nvarchar](255) NULL,
	[M_SEXTRN] [nvarchar](255) NULL,
	[MTYP_HEM] [nvarchar](255) NULL,
	[M_SEXIV] [nvarchar](255) NULL,
	[MSEXORIG] [nvarchar](255) NULL,
	[F_US_DEP] [nvarchar](255) NULL,
	[MHIVMOYR] [nvarchar](255) NULL,
	[AB_MOYR] [nvarchar](255) NULL,
	[CNEGMOYR] [nvarchar](255) NULL,
	[MCOUNSEL] [nvarchar](255) NULL,
	[M_SEXTPL] [nvarchar](255) NULL,
	[CPOSMOYR] [nvarchar](255) NULL,
	[ST_FIPS] [nvarchar](255) NULL,
	[REVIEWED] [nvarchar](255) NULL,
	[ASYMMOYR] [nvarchar](255) NULL,
	[SYMPMOYR] [nvarchar](255) NULL,
	[CPHONE] [nvarchar](255) NULL,
	[PHOSP_DX] [nvarchar](255) NULL,
	[PHOSP_ST] [nvarchar](255) NULL,
	[P_HCNTRY] [nvarchar](255) NULL,
	[PHSP_CTY] [nvarchar](255) NULL,
	[PFEDSET] [nvarchar](255) NULL,
	[PHSPDATE] [nvarchar](255) NULL,
	[PFAC_TYP] [nvarchar](255) NULL,
	[PFACOTHR] [nvarchar](255) NULL,
	[PST_DX] [nvarchar](255) NULL,
	[PCITY_DX] [nvarchar](255) NULL,
	[DIAGSTAT] [nvarchar](255) NULL,
	[TH1CNT] [nvarchar](255) NULL,
	[TH1MOYR] [nvarchar](255) NULL,
	[TH1PCT] [nvarchar](255) NULL,
	[COMBI1] [nvarchar](255) NULL,
	[TH2CNT] [nvarchar](255) NULL,
	[TH2MOYR] [nvarchar](255) NULL,
	[TH2PCT] [nvarchar](255) NULL,
	[COMBI2] [nvarchar](255) NULL,
	[CMB2MOYR] [nvarchar](255) NULL,
	[COMBI3] [nvarchar](255) NULL,
	[CMB3MOYR] [nvarchar](255) NULL,
	[CMB4MOYR] [nvarchar](255) NULL,
	[CMB1MOYR] [nvarchar](255) NULL,
	[CMB5MOYR] [nvarchar](255) NULL,
	[TH3CNT] [nvarchar](255) NULL,
	[TH3MOYR] [nvarchar](255) NULL,
	[TH3PCT] [nvarchar](255) NULL,
	[CMB6MOYR] [nvarchar](255) NULL,
	[CMB7MOYR] [nvarchar](255) NULL,
	[CMB8MOYR] [nvarchar](255) NULL,
	[COMBI4] [nvarchar](255) NULL,
	[COMBI5] [nvarchar](255) NULL,
	[COMBI6] [nvarchar](255) NULL,
	[COMBI7] [nvarchar](255) NULL,
	[TH4CNT] [nvarchar](255) NULL,
	[TH4MOYR] [nvarchar](255) NULL,
	[TH4PCT] [nvarchar](255) NULL,
	[CMB9MOYR] [nvarchar](255) NULL,
	[COMBI8] [nvarchar](255) NULL,
	[COMBI9] [nvarchar](255) NULL,
	[CMRCMOYR] [nvarchar](255) NULL,
	[TH5CNT] [nvarchar](255) NULL,
	[TH5MOYR] [nvarchar](255) NULL,
	[TH5PCT] [nvarchar](255) NULL,
	[TH6CNT] [nvarchar](255) NULL,
	[TH6MOYR] [nvarchar](255) NULL,
	[TH6PCT] [nvarchar](255) NULL,
	[TH7CNT] [nvarchar](255) NULL,
	[TH7MOYR] [nvarchar](255) NULL,
	[TH7PCT] [nvarchar](255) NULL,
	[TH8CNT] [nvarchar](255) NULL,
	[TH8MOYR] [nvarchar](255) NULL,
	[TH8PCT] [nvarchar](255) NULL,
	[TH9CNT] [nvarchar](255) NULL,
	[TH9MOYR] [nvarchar](255) NULL,
	[TH9PCT] [nvarchar](255) NULL,
	[LYMP_LOW] [nvarchar](255) NULL,
	[THTS_LOW] [nvarchar](255) NULL,
	[OTH_IMM] [nvarchar](255) NULL,
	[T10CNT] [nvarchar](255) NULL,
	[T10MOYR] [nvarchar](255) NULL,
	[T10PCT] [nvarchar](255) NULL,
	[T11CNT] [nvarchar](255) NULL,
	[T11MOYR] [nvarchar](255) NULL,
	[T11PCT] [nvarchar](255) NULL,
	[T12CNT] [nvarchar](255) NULL,
	[T12MOYR] [nvarchar](255) NULL,
	[T12PCT] [nvarchar](255) NULL,
	[TH_LOW] [nvarchar](255) NULL,
	[SEX_MALE] [nvarchar](255) NULL,
	[SEX_FMLE] [nvarchar](255) NULL,
	[IV] [nvarchar](255) NULL,
	[S_IV] [nvarchar](255) NULL,
	[S_BI] [nvarchar](255) NULL,
	[S_HEMO] [nvarchar](255) NULL,
	[S_TX] [nvarchar](255) NULL,
	[S_HIV] [nvarchar](255) NULL,
	[S_CTY] [nvarchar](255) NULL,
	[HCW] [nvarchar](255) NULL,
	[OCCUP] [nvarchar](255) NULL,
	[T13CNT] [nvarchar](255) NULL,
	[T13MOYR] [nvarchar](255) NULL,
	[T13PCT] [nvarchar](255) NULL,
	[SCOUNTRY] [nvarchar](255) NULL,
	[BLDPRD] [nvarchar](255) NULL,
	[T14CNT] [nvarchar](255) NULL,
	[T14MOYR] [nvarchar](255) NULL,
	[T14PCT] [nvarchar](255) NULL,
	[TYP_HEMO] [nvarchar](255) NULL,
	[OTH_HEMO] [nvarchar](255) NULL,
	[TRANSFUS] [nvarchar](255) NULL,
	[TRANDTE1] [nvarchar](255) NULL,
	[TRANDTE2] [nvarchar](255) NULL,
	[T15CNT] [nvarchar](255) NULL,
	[T15MOYR] [nvarchar](255) NULL,
	[T15PCT] [nvarchar](255) NULL,
	[T16CNT] [nvarchar](255) NULL,
	[T16MOYR] [nvarchar](255) NULL,
	[T16PCT] [nvarchar](255) NULL,
	[DXMOYR] [nvarchar](255) NULL,
	[DXX_MOYR] [nvarchar](255) NULL,
	[PULM_TB] [nvarchar](255) NULL,
	[PTBMOYR] [nvarchar](255) NULL,
	[HV2MOYR] [nvarchar](255) NULL,
	[HV1MOYR] [nvarchar](255) NULL,
	[HV1RES] [nvarchar](255) NULL,
	[HIV_DET] [nvarchar](255) NULL,
	[DET_MOYR] [nvarchar](255) NULL,
	[DOC_DIAG] [nvarchar](255) NULL,
	[DOC_MOYR] [nvarchar](255) NULL,
	[HIV2WBLT] [nvarchar](255) NULL,
	[HV2WMOYR] [nvarchar](255) NULL,
	[T17CNT] [nvarchar](255) NULL,
	[T17MOYR] [nvarchar](255) NULL,
	[T17PCT] [nvarchar](255) NULL,
	[T18CNT] [nvarchar](255) NULL,
	[T18MOYR] [nvarchar](255) NULL,
	[T18PCT] [nvarchar](255) NULL,
	[TB_F_UP] [nvarchar](255) NULL,
	[MTV_F_UP] [nvarchar](255) NULL,
	[IMM_F_UP] [nvarchar](255) NULL,
	[DOC_RVRT] [nvarchar](255) NULL,
	[DOCRMOYR] [nvarchar](255) NULL,
	[M_HIV] [nvarchar](255) NULL,
	[M_HIVPB] [nvarchar](255) NULL,
	[M_HIVAB] [nvarchar](255) NULL,
	[T19CNT] [nvarchar](255) NULL,
	[T19MOYR] [nvarchar](255) NULL,
	[T19PCT] [nvarchar](255) NULL,
	[T20CNT] [nvarchar](255) NULL,
	[T20MOYR] [nvarchar](255) NULL,
	[T20PCT] [nvarchar](255) NULL,
	[NDI_CNUM] [nvarchar](255) NULL,
	[NDI_DATE] [nvarchar](255) NULL,
	[MODE] [nvarchar](255) NULL,
	[NDI_DST] [nvarchar](255) NULL,
	[MODEX] [nvarchar](255) NULL,
	[NDI_DCTY] [nvarchar](255) NULL,
	[NDI_PLCE] [nvarchar](255) NULL,
	[NDI_RST] [nvarchar](255) NULL,
	[NDI_RCTY] [nvarchar](255) NULL,
	[NDI_MARS] [nvarchar](255) NULL,
	[NDI_HISP] [nvarchar](255) NULL,
	[NDI_RACE] [nvarchar](255) NULL,
	[NDI_DXU] [nvarchar](255) NULL,
	[NDI_DXM1] [nvarchar](255) NULL,
	[NDI_DXM2] [nvarchar](255) NULL,
	[INFORMED] [nvarchar](255) NULL,
	[NDI_DXM3] [nvarchar](255) NULL,
	[NDI_DXM4] [nvarchar](255) NULL,
	[NDI_DXM5] [nvarchar](255) NULL,
	[STATE_DX] [nvarchar](255) NULL,
	[NDI_DXM6] [nvarchar](255) NULL,
	[HHSPDATE] [nvarchar](255) NULL,
	[NDI_DXM7] [nvarchar](255) NULL,
	[HOSPDATE] [nvarchar](255) NULL,
	[CATEG] [nvarchar](255) NULL,
	[NDI_DXM8] [nvarchar](255) NULL,
	[ANTIRETV] [nvarchar](255) NULL,
	[NDI_AUTO] [nvarchar](255) NULL,
	[TRIAL] [nvarchar](255) NULL,
	[NDI_CATD] [nvarchar](255) NULL,
	[INSURNCE] [nvarchar](255) NULL,
	[NDI_LOC1] [nvarchar](255) NULL,
	[HCATEG] [nvarchar](255) NULL,
	[NDI_LOC2] [nvarchar](255) NULL,
	[NDI_LOC3] [nvarchar](255) NULL,
	[NDI_DFC] [nvarchar](255) NULL,
	[NDI_RFC] [nvarchar](255) NULL,
	[PCPPROPH] [nvarchar](255) NULL,
	[IVIGTHER] [nvarchar](255) NULL,
	[ARV_DATE] [nvarchar](255) NULL,
	[OTH_ANT] [nvarchar](255) NULL,
	[OANTDATE] [nvarchar](255) NULL,
	[OANTSPEC] [nvarchar](255) NULL,
	[LAB] [nvarchar](255) NULL,
	[LABID] [nvarchar](255) NULL,
	[CHCNTRY] [nvarchar](255) NULL,
	[BHCNTRY] [nvarchar](255) NULL,
	[BRCITY] [nvarchar](255) NULL,
	[BRES_ST] [nvarchar](255) NULL,
	[BHOSP] [nvarchar](255) NULL,
	[BHOSP_ST] [nvarchar](255) NULL,
	[BHCITY] [nvarchar](255) NULL,
	[HISTORY] [nvarchar](255) NULL,
	[BRESCTY] [nvarchar](255) NULL,
	[BRESZIP] [nvarchar](255) NULL,
	[BWEIGHT] [nvarchar](255) NULL,
	[BIRTHTYP] [nvarchar](255) NULL,
	[BSTATUS] [nvarchar](255) NULL,
	[MBDATE] [nvarchar](255) NULL,
	[MSNDX] [nvarchar](255) NULL,
	[MSTATENO] [nvarchar](255) NULL,
	[M_ORIGIN] [nvarchar](255) NULL,
	[M_ORGOTH] [nvarchar](255) NULL,
	[M_US_DEP] [nvarchar](255) NULL,
	[CLASS] [nvarchar](255) NULL,
	[M_BLDPRD] [nvarchar](255) NULL,
	[M_SEXCTY] [nvarchar](255) NULL,
	[EPOSMOYR] [nvarchar](255) NULL,
	[M_TRNPLT] [nvarchar](255) NULL,
	[ENEGMOYR] [nvarchar](255) NULL,
	[WPOSMOYR] [nvarchar](255) NULL,
	[WNEGMOYR] [nvarchar](255) NULL,
	[HPOSMOYR] [nvarchar](255) NULL,
	[HNEGMOYR] [nvarchar](255) NULL,
	[EIARECNT] [nvarchar](255) NULL,
	[EIARMOYR] [nvarchar](255) NULL,
	[WBRECNT] [nvarchar](255) NULL,
	[WBRCMOYR] [nvarchar](255) NULL,
	[THCRECNT] [nvarchar](255) NULL,
	[THRCMOYR] [nvarchar](255) NULL,
	[CMBRECNT] [nvarchar](255) NULL,
	[HVRECNT] [nvarchar](255) NULL,
	[HVRCMOYR] [nvarchar](255) NULL,
	[THLWRCNT] [nvarchar](255) NULL,
	[THLWMOYR] [nvarchar](255) NULL,
	[THLWPREC] [nvarchar](255) NULL,
	[THPRECNT] [nvarchar](255) NULL,
	[THPLMOYR] [nvarchar](255) NULL,
	[LIVE_INF] [nvarchar](255) NULL,
	[CTG2DATE] [nvarchar](255) NULL,
	[CTG3DATE] [nvarchar](255) NULL,
	[CTG4DATE] [nvarchar](255) NULL,
	[CTG5DATE] [nvarchar](255) NULL,
	[CTG6DATE] [nvarchar](255) NULL,
	[CTG7DATE] [nvarchar](255) NULL,
	[CTG1DATE] [nvarchar](255) NULL,
	[HPOSDATE] [nvarchar](255) NULL,
	[RVRTDATE] [nvarchar](255) NULL,
	[REXPDATE] [nvarchar](255) NULL,
	[REF_MS] [nvarchar](255) NULL,
	[NOTIFIED] [nvarchar](255) NULL,
	[PREGNANT] [nvarchar](255) NULL,
	[BIRTHDEF] [nvarchar](255) NULL,
	[PRENATAL] [nvarchar](255) NULL,
	[REF_SATS] [nvarchar](255) NULL,
	[COMPHONE] [nvarchar](255) NULL,
	[HIV_AB] [nvarchar](255) NULL,
	[ELISA] [nvarchar](255) NULL,
	[IMMGLOB] [nvarchar](255) NULL,
	[F_ORIGIN] [nvarchar](255) NULL,
	[F_ORGOTH] [nvarchar](255) NULL,
	[M_IVDA] [nvarchar](255) NULL,
	[M_SEXHBI] [nvarchar](255) NULL,
	[DEF_TYPE] [nvarchar](255) NULL,
	[DEF2TYPE] [nvarchar](255) NULL,
	[DEF3TYPE] [nvarchar](255) NULL,
	[DEF4TYPE] [nvarchar](255) NULL,
	[DEF5TYPE] [nvarchar](255) NULL,
	[EL_MOYR] [nvarchar](255) NULL,
	[WB_IFA] [nvarchar](255) NULL,
	[WB_MOYR] [nvarchar](255) NULL,
	[COMBIRES] [nvarchar](255) NULL,
	[CMB_MOYR] [nvarchar](255) NULL,
	[PCP_DATE] [nvarchar](255) NULL,
	[HVD1TEST] [nvarchar](255) NULL,
	[HVD2TEST] [nvarchar](255) NULL,
	[HVD3TEST] [nvarchar](255) NULL,
	[HVD4TEST] [nvarchar](255) NULL,
	[HVD5TEST] [nvarchar](255) NULL,
	[HVD6TEST] [nvarchar](255) NULL,
	[HVD7TEST] [nvarchar](255) NULL,
	[HVD8TEST] [nvarchar](255) NULL,
	[HVD9TEST] [nvarchar](255) NULL,
	[HIVPMOYR] [nvarchar](255) NULL,
	[HIVNMOYR] [nvarchar](255) NULL,
	[COMMENT1] [nvarchar](255) NULL,
	[COMMENT2] [nvarchar](255) NULL,
	[COMMENT3] [nvarchar](255) NULL,
	[COMMENT4] [nvarchar](255) NULL,
	[ARS_CMMT] [nvarchar](255) NULL,
	[HV1DET] [nvarchar](255) NULL,
	[HV2DET] [nvarchar](255) NULL,
	[HV3DET] [nvarchar](255) NULL,
	[HV4DET] [nvarchar](255) NULL,
	[HV5DET] [nvarchar](255) NULL,
	[HV6DET] [nvarchar](255) NULL,
	[HV7DET] [nvarchar](255) NULL,
	[HV8DET] [nvarchar](255) NULL,
	[HV9DET] [nvarchar](255) NULL,
	[HVD9MOYR] [nvarchar](255) NULL,
	[HVD1MOYR] [nvarchar](255) NULL,
	[HVD2MOYR] [nvarchar](255) NULL,
	[HVD3MOYR] [nvarchar](255) NULL,
	[HVD4MOYR] [nvarchar](255) NULL,
	[HVD5MOYR] [nvarchar](255) NULL,
	[HVD6MOYR] [nvarchar](255) NULL,
	[HVD7MOYR] [nvarchar](255) NULL,
	[HVD8MOYR] [nvarchar](255) NULL,
	[RP] [nvarchar](255) NULL,
	[RPMOYR] [nvarchar](255) NULL,
	[CERVDIS] [nvarchar](255) NULL,
	[CDISMOYR] [nvarchar](255) NULL,
	[HDPOMOYR] [nvarchar](255) NULL,
	[HDNGMOYR] [nvarchar](255) NULL,
	[HDRCMOYR] [nvarchar](255) NULL,
	[HVDRECNT] [nvarchar](255) NULL,
	[OTH_RISK] [nvarchar](255) NULL,
	[EVAL_MD] [nvarchar](255) NULL,
	[EVALSTAT] [nvarchar](255) NULL,
	[PROPHLXS] [nvarchar](255) NULL,
	[REFERRED] [nvarchar](255) NULL,
	[METHOD] [nvarchar](255) NULL,
	[ALIAS] [nvarchar](255) NULL,
	[ALT_DOB] [nvarchar](255) NULL,
	[SSN] [nvarchar](255) NULL,
	[REGION] [nvarchar](255) NULL,
	[NIR] [nvarchar](255) NULL,
	[STUDY_ID] [nvarchar](255) NULL,
	[ST_INFO] [nvarchar](255) NULL,
	[F8] [nvarchar](255) NULL,
	[F9] [nvarchar](255) NULL,
	[F10] [nvarchar](255) NULL,
	[F11] [nvarchar](255) NULL,
	[F12] [nvarchar](255) NULL,
	[F13] [nvarchar](255) NULL,
	[F14] [nvarchar](255) NULL,
	[F15] [nvarchar](255) NULL,
	[F16] [nvarchar](255) NULL,
	[F17] [nvarchar](255) NULL,
	[F18] [nvarchar](255) NULL,
	[F19] [nvarchar](255) NULL,
	[F20] [nvarchar](255) NULL,
	[F21] [nvarchar](255) NULL,
	[F22] [nvarchar](255) NULL,
	[F23] [nvarchar](255) NULL,
	[F24] [nvarchar](255) NULL,
	[F25] [nvarchar](255) NULL,
	[F26] [nvarchar](255) NULL,
	[F27] [nvarchar](255) NULL,
	[F28] [nvarchar](255) NULL,
	[F29] [nvarchar](255) NULL,
	[F30] [nvarchar](255) NULL,
	[F31] [nvarchar](255) NULL,
	[F32] [nvarchar](255) NULL,
	[F33] [nvarchar](255) NULL,
	[F34] [nvarchar](255) NULL,
	[F35] [nvarchar](255) NULL,
	[F36] [nvarchar](255) NULL,
	[F37] [nvarchar](255) NULL,
	[F38] [nvarchar](255) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[SAMPLING]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAMPLING](
	[sample_uid] [char](16) NOT NULL,
	[project_name] [varchar](64) NOT NULL,
	[type] [char](3) NOT NULL,
	[source] [char](1) NOT NULL,
	[frame_output_indicator] [char](1) NULL,
	[sample_size] [varchar](6) NULL,
	[confidence_level] [varchar](4) NULL,
	[precision_level] [varchar](5) NULL,
	[inflation_factor] [varchar](4) NULL,
	[generate_dt] [datetime] NOT NULL,
	[generate_by] [varchar](30) NULL,
	[update_dt] [datetime] NULL,
	[update_by] [varchar](64) NULL,
	[sample_file_name] [varchar](256) NULL,
	[frame_file_name] [varchar](256) NULL,
 CONSTRAINT [PK_SAMPLING] PRIMARY KEY CLUSTERED 
(
	[sample_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[SAMPLING_CRITERIA]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAMPLING_CRITERIA](
	[sample_uid] [char](16) NOT NULL,
	[sampling_field_cd] [varchar](4) NOT NULL,
	[inclusion_criteria] [varchar](512) NULL,
	[stratification_criteria] [varchar](512) NULL,
	[output_indicator] [char](1) NULL,
	[record_insert_dt] [datetime] NULL,
	[display_descr] [varchar](32) NULL,
 CONSTRAINT [PK_SAMPLING_CRITERIA] PRIMARY KEY CLUSTERED 
(
	[sample_uid] ASC,
	[sampling_field_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[SECURITY_ASSIGNMENT]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SECURITY_ASSIGNMENT](
	[ehars_group_uid] [char](16) NOT NULL,
	[security_item_uid] [int] NOT NULL,
	[insert_flag] [char](1) NULL,
	[update_flag] [char](1) NULL,
	[delete_flag] [char](1) NULL,
	[view_flag] [char](1) NULL,
	[inherit_flag] [char](1) NULL,
 CONSTRAINT [PK_SECURITY_ASSIGNMENTS] PRIMARY KEY CLUSTERED 
(
	[ehars_group_uid] ASC,
	[security_item_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[SECURITY_ITEM]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SECURITY_ITEM](
	[security_item_uid] [int] NOT NULL,
	[name] [varchar](256) NULL,
	[security_type_uid] [int] NULL,
	[parent_uid] [int] NULL,
	[display_order] [int] NULL,
	[descr] [varchar](128) NULL,
	[access_key] [char](1) NULL,
	[item_url] [varchar](256) NULL,
 CONSTRAINT [PK_SECURITY_ITEMS] PRIMARY KEY CLUSTERED 
(
	[security_item_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[SECURITY_TYPE]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SECURITY_TYPE](
	[security_type_uid] [int] NOT NULL,
	[name] [varchar](256) NULL,
 CONSTRAINT [PK_SECURITY_TYPES] PRIMARY KEY CLUSTERED 
(
	[security_type_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[SEQUENCE_COUNTER]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEQUENCE_COUNTER](
	[ehars_uid] [char](16) NOT NULL,
	[seq_counter_id] [varchar](2) NOT NULL,
	[next_seq_number] [int] NOT NULL,
 CONSTRAINT [XPKSEQUENCE_COUNTER] PRIMARY KEY CLUSTERED 
(
	[ehars_uid] ASC,
	[seq_counter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[SSO_USER]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SSO_USER](
	[sso_user_uid] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](30) NOT NULL,
	[directory_user_id] [varchar](64) NULL,
 CONSTRAINT [PK_SSO_USER] PRIMARY KEY CLUSTERED 
(
	[sso_user_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[SUBSTANCE_HISTORY]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBSTANCE_HISTORY](
	[document_uid] [char](16) NOT NULL,
	[substance_seq] [int] NOT NULL,
	[doc_belongs_to] [varchar](7) NOT NULL,
	[substance_event_cd] [char](2) NOT NULL,
	[substance_cd] [char](2) NULL,
	[substance_value] [varchar](4) NULL,
	[substance_detail] [varchar](100) NULL,
	[substance_dt] [char](8) NULL,
 CONSTRAINT [PK_SUBSTANCE_HISTORY] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[substance_seq] ASC,
	[doc_belongs_to] ASC,
	[substance_event_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[tmp_address_county_412]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_address_county_412](
	[document_uid] [char](16) NULL,
	[address_seq] [int] NULL,
	[document_type_cd] [char](3) NULL,
	[state_cd] [varchar](2) NULL,
	[county_fips] [varchar](5) NULL,
	[adr_county_name] [varchar](64) NULL,
	[county_name] [varchar](128) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[tmp_death_county_412]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_death_county_412](
	[document_uid] [char](16) NULL,
	[document_type_cd] [char](3) NULL,
	[state_cd] [varchar](2) NULL,
	[county_fips] [varchar](5) NULL,
	[death_county_name] [varchar](64) NULL,
	[county_name] [varchar](128) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[tmp_fac_county_412]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_fac_county_412](
	[facility_uid] [char](16) NULL,
	[state_cd] [varchar](2) NULL,
	[county_fips] [varchar](5) NULL,
	[fac_county_name] [varchar](64) NULL,
	[county_name] [varchar](128) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[tmp_log]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_log](
	[script_filename] [varchar](500) NULL,
	[rslt] [varchar](500) NULL,
	[err_msg] [varchar](8000) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[TRANSFER_DETAIL]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSFER_DETAIL](
	[transfer_uid] [int] NOT NULL,
	[site_cd] [char](4) NOT NULL,
	[document_uid] [char](16) NOT NULL,
	[last_ship_flag] [int] NOT NULL,
	[request_action_type] [char](1) NOT NULL,
	[cdc_action_type] [char](1) NULL,
	[transfer_status] [char](1) NOT NULL,
	[error_cd] [int] NULL,
	[error_descr] [varchar](256) NULL,
 CONSTRAINT [PK_TRANSFER_DETAIL] PRIMARY KEY CLUSTERED 
(
	[transfer_uid] ASC,
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[TRANSFER_DETAILCDC]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSFER_DETAILCDC](
	[transfer_uid] [int] NOT NULL,
	[site_cd] [char](4) NOT NULL,
	[document_uid] [char](16) NOT NULL,
	[last_ship_flag] [int] NOT NULL,
	[request_action_type] [char](1) NOT NULL,
	[cdc_action_type] [char](1) NULL,
	[transfer_status] [char](1) NOT NULL,
	[error_cd] [int] NULL,
	[error_descr] [varchar](256) NULL,
 CONSTRAINT [PK_TRANSFER_DETAILCDC] PRIMARY KEY CLUSTERED 
(
	[transfer_uid] ASC,
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANSFER_DETAILState]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSFER_DETAILState](
	[transfer_uid] [int] NOT NULL,
	[site_cd] [char](4) NOT NULL,
	[document_uid] [char](16) NOT NULL,
	[last_ship_flag] [int] NOT NULL,
	[request_action_type] [char](1) NOT NULL,
	[cdc_action_type] [char](1) NULL,
	[transfer_status] [char](1) NOT NULL,
	[error_cd] [int] NULL,
	[error_descr] [varchar](256) NULL,
 CONSTRAINT [PK_TRANSFER_DETAILState] PRIMARY KEY CLUSTERED 
(
	[transfer_uid] ASC,
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANSFER_ELEMENT]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSFER_ELEMENT](
	[table_name] [varchar](50) NOT NULL,
	[column_name] [varchar](50) NOT NULL,
	[column_cd] [varchar](50) NOT NULL,
	[category] [char](1) NOT NULL,
 CONSTRAINT [PK_TRANSFER_DICTIONARY] PRIMARY KEY CLUSTERED 
(
	[table_name] ASC,
	[column_name] ASC,
	[column_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[TRANSFER_LOG]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSFER_LOG](
	[transfer_uid] [int] NOT NULL,
	[site_cd] [char](4) NULL,
	[process_status] [char](2) NOT NULL,
	[file_type] [varchar](64) NOT NULL,
	[request_file_name] [varchar](256) NULL,
	[response_file_name] [varchar](256) NULL,
	[record_count] [int] NOT NULL,
	[create_dt] [datetime] NOT NULL,
	[acknowledge_dt] [datetime] NULL,
	[error_cd] [int] NULL,
	[error_descr] [varchar](256) NULL,
	[transfer_uid_state] [int] NULL,
 CONSTRAINT [PK_TRANSFER_LOG] PRIMARY KEY CLUSTERED 
(
	[transfer_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO
/****** Object:  Table [dbo].[TRANSFER_LOGCDC]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSFER_LOGCDC](
	[transfer_uid] [int] NOT NULL,
	[site_cd] [char](4) NULL,
	[process_status] [char](2) NOT NULL,
	[file_type] [varchar](64) NOT NULL,
	[request_file_name] [varchar](256) NULL,
	[response_file_name] [varchar](256) NULL,
	[record_count] [int] NOT NULL,
	[create_dt] [datetime] NOT NULL,
	[acknowledge_dt] [datetime] NULL,
	[error_cd] [int] NULL,
	[error_descr] [varchar](256) NULL,
	[transfer_uid_state] [int] NULL,
 CONSTRAINT [PK_TRANSFER_LOGCDC] PRIMARY KEY CLUSTERED 
(
	[transfer_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANSFER_LOGState]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSFER_LOGState](
	[transfer_uid] [int] NOT NULL,
	[site_cd] [char](4) NOT NULL,
	[process_status] [char](2) NOT NULL,
	[file_type] [varchar](64) NOT NULL,
	[request_file_name] [varchar](256) NULL,
	[response_file_name] [varchar](256) NULL,
	[record_count] [int] NOT NULL,
	[create_dt] [datetime] NOT NULL,
	[acknowledge_dt] [datetime] NULL,
	[error_cd] [int] NULL,
	[error_descr] [varchar](256) NULL,
 CONSTRAINT [PK_TRANSFER_LOGState] PRIMARY KEY CLUSTERED 
(
	[transfer_uid] ASC,
	[site_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANSFER_VERSION_TRACKING]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSFER_VERSION_TRACKING](
	[transfer_uid] [int] NOT NULL,
	[ehars_version_no] [varchar](16) NOT NULL,
	[site_cd] [char](4) NOT NULL,
	[sql_version] [varchar](100) NOT NULL,
	[os_version] [varchar](100) NOT NULL,
	[mjp_sharing_level] [varchar](100) NULL,
	[ehars_reporting_setup] [varchar](100) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[USER_GROUP]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER_GROUP](
	[user_id] [varchar](30) NOT NULL,
	[ehars_group_uid] [char](16) NOT NULL,
 CONSTRAINT [PK_USER_GROUP] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[ehars_group_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
/****** Object:  Table [dbo].[ZIP_CITY]    Script Date: 6/1/2023 8:36:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZIP_CITY](
	[zip_cd] [varchar](10) NOT NULL,
	[city_name_state_cd] [varchar](56) NULL,
	[city_list] [varchar](500) NOT NULL,
	[cnty_list] [varchar](255) NULL,
	[state_cd] [char](2) NULL,
 CONSTRAINT [PK_ZIP_CITY] PRIMARY KEY CLUSTERED 
(
	[zip_cd] ASC,
	[city_list] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [META_DATA]
) ON [META_DATA]
GO
ALTER TABLE [dbo].[DDL_LOG] ADD  DEFAULT (NULL) FOR [build_no]
GO
ALTER TABLE [dbo].[DDL_LOG] ADD  CONSTRAINT [DF_DDL_LOG_EVENT_DATE]  DEFAULT (getdate()) FOR [event_dt]
GO
ALTER TABLE [dbo].[DML_LOG] ADD  DEFAULT ((0)) FOR [initial_count]
GO
ALTER TABLE [dbo].[DML_LOG] ADD  DEFAULT ((0)) FOR [load_count]
GO
ALTER TABLE [dbo].[DML_LOG] ADD  DEFAULT ((0)) FOR [update_count]
GO
ALTER TABLE [dbo].[DML_LOG] ADD  DEFAULT ((0)) FOR [delete_count]
GO
ALTER TABLE [dbo].[DML_LOG] ADD  DEFAULT ((0)) FOR [after_count]
GO
ALTER TABLE [dbo].[DML_LOG] ADD  CONSTRAINT [DF_DML_LOG_CREATED_BY]  DEFAULT (suser_sname()) FOR [loaded_by]
GO
ALTER TABLE [dbo].[DML_LOG] ADD  CONSTRAINT [DF_DML_LOG_LOAD_DATE]  DEFAULT (getdate()) FOR [load_dt]
GO
ALTER TABLE [dbo].[INSTALLER_LOG] ADD  DEFAULT ('0') FOR [pvgen_executed]
GO
ALTER TABLE [dbo].[LAB_TEST_CODE] ADD  CONSTRAINT [Default_Value_No_318291064]  DEFAULT ('N') FOR [flag_ind]
GO
ALTER TABLE [dbo].[LOOKUP_CODE] ADD  CONSTRAINT [DF_LOOKUP_CODE_STATUS_FLAG]  DEFAULT (NULL) FOR [status_flag]
GO
ALTER TABLE [dbo].[MATCHABLE_FIELD] ADD  CONSTRAINT [DF_MATCHABLE_FIELD_FUZZY_MATCH]  DEFAULT ((0)) FOR [fuzzy_match]
GO
ALTER TABLE [dbo].[MATCHABLE_FIELD] ADD  CONSTRAINT [DF_MATCHABLE_FIELD_MANUAL_MATCH]  DEFAULT ((0)) FOR [manual_match]
GO
ALTER TABLE [dbo].[MATCHABLE_FIELD] ADD  CONSTRAINT [DF_MATCHABLE_FIELD_GENERATE_MATCH_CODE]  DEFAULT ((0)) FOR [generate_match_code]
GO
ALTER TABLE [dbo].[MCGEN_STAGING] ADD  CONSTRAINT [DF_MCGEN_STAGING_GENERATE_MATCH_CODE]  DEFAULT ((0)) FOR [generate_match_code]
GO
ALTER TABLE [dbo].[PRE_REQ_LOG] ADD  DEFAULT (suser_sname()) FOR [login_name]
GO
ALTER TABLE [dbo].[PRE_REQ_LOG] ADD  DEFAULT (getdate()) FOR [event_dt]
GO
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESS_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_ADDRESS_DOCUMENT]
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_ANTIRETROVIRAL]  WITH CHECK ADD  CONSTRAINT [FK_PHER_ARV_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_ANTIRETROVIRAL] CHECK CONSTRAINT [FK_PHER_ARV_DOCUMENT]
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_ANTIRETROVIRAL]  WITH CHECK ADD  CONSTRAINT [FK_PHER_ARV_QUESTION] FOREIGN KEY([pher_question_uid])
REFERENCES [dbo].[ARCHIVE_PHER_QUESTION] ([pher_question_uid])
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_ANTIRETROVIRAL] CHECK CONSTRAINT [FK_PHER_ARV_QUESTION]
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_FIELD_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_PHER_FIELD_QUESTION] FOREIGN KEY([pher_question_uid])
REFERENCES [dbo].[ARCHIVE_PHER_QUESTION] ([pher_question_uid])
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_FIELD_DETAIL] CHECK CONSTRAINT [FK_PHER_FIELD_QUESTION]
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_OBSERVATION]  WITH CHECK ADD  CONSTRAINT [FK_PHER_OBS_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_OBSERVATION] CHECK CONSTRAINT [FK_PHER_OBS_DOCUMENT]
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_OBSERVATION]  WITH CHECK ADD  CONSTRAINT [FK_PHER_OBS_OBS_CODE] FOREIGN KEY([pher_obs_uid])
REFERENCES [dbo].[ARCHIVE_PHER_OBSERVATION_CODE] ([pher_obs_uid])
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_OBSERVATION] CHECK CONSTRAINT [FK_PHER_OBS_OBS_CODE]
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_OBSERVATION_CODE]  WITH CHECK ADD  CONSTRAINT [FK_PHER_OBS_CODE_FIELD] FOREIGN KEY([pher_field_uid])
REFERENCES [dbo].[ARCHIVE_PHER_FIELD_DETAIL] ([pher_field_uid])
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_OBSERVATION_CODE] CHECK CONSTRAINT [FK_PHER_OBS_CODE_FIELD]
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_OBSERVATION_CODE]  WITH CHECK ADD  CONSTRAINT [FK_PHER_OBS_CODE_QUESTION] FOREIGN KEY([pher_question_uid])
REFERENCES [dbo].[ARCHIVE_PHER_QUESTION] ([pher_question_uid])
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_OBSERVATION_CODE] CHECK CONSTRAINT [FK_PHER_OBS_CODE_QUESTION]
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_OBSERVATION_CODE]  WITH CHECK ADD  CONSTRAINT [FK_PHER_OBS_CODE_SECTION] FOREIGN KEY([pher_section_uid])
REFERENCES [dbo].[ARCHIVE_PHER_SECTION] ([pher_section_uid])
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_OBSERVATION_CODE] CHECK CONSTRAINT [FK_PHER_OBS_CODE_SECTION]
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_QUESTION]  WITH CHECK ADD  CONSTRAINT [FK_PHER_QUESTION_SECTION] FOREIGN KEY([pher_section_uid])
REFERENCES [dbo].[ARCHIVE_PHER_SECTION] ([pher_section_uid])
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_QUESTION] CHECK CONSTRAINT [FK_PHER_QUESTION_SECTION]
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_SIBLING]  WITH CHECK ADD  CONSTRAINT [FK_PHER_SIBLING_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[ARCHIVE_PHER_SIBLING] CHECK CONSTRAINT [FK_PHER_SIBLING_DOCUMENT]
GO
ALTER TABLE [dbo].[ARV_PROPHYLAXIS]  WITH CHECK ADD  CONSTRAINT [FK_ARV_PROPHYLAXIS_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[ARV_PROPHYLAXIS] CHECK CONSTRAINT [FK_ARV_PROPHYLAXIS_DOCUMENT]
GO
ALTER TABLE [dbo].[ARV_PROPHYLAXIS]  WITH CHECK ADD  CONSTRAINT [FK_ARV_PROPHYLAXIS_OBS_CODE] FOREIGN KEY([obs_uid])
REFERENCES [dbo].[OBSERVATION_CODE] ([obs_uid])
GO
ALTER TABLE [dbo].[ARV_PROPHYLAXIS] CHECK CONSTRAINT [FK_ARV_PROPHYLAXIS_OBS_CODE]
GO
ALTER TABLE [dbo].[BIRTH_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_BIRTH_HISTORY_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[BIRTH_HISTORY] CHECK CONSTRAINT [FK_BIRTH_HISTORY_DOCUMENT]
GO
ALTER TABLE [dbo].[CALC_OBSERVATION]  WITH CHECK ADD  CONSTRAINT [FK_CALC_OBSERVATION_CALC_OBSERVATION_CODE] FOREIGN KEY([calc_obs_uid])
REFERENCES [dbo].[CALC_OBSERVATION_CODE] ([calc_obs_uid])
GO
ALTER TABLE [dbo].[CALC_OBSERVATION] CHECK CONSTRAINT [FK_CALC_OBSERVATION_CALC_OBSERVATION_CODE]
GO
ALTER TABLE [dbo].[CALC_OBSERVATION]  WITH CHECK ADD  CONSTRAINT [FK_CALC_OBSERVATION_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[CALC_OBSERVATION] CHECK CONSTRAINT [FK_CALC_OBSERVATION_DOCUMENT]
GO
ALTER TABLE [dbo].[CONSENT_QUESTIONNAIRE]  WITH CHECK ADD  CONSTRAINT [FK_CONSENT_QUESTIONNAIRE_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[CONSENT_QUESTIONNAIRE] CHECK CONSTRAINT [FK_CONSENT_QUESTIONNAIRE_DOCUMENT]
GO
ALTER TABLE [dbo].[CONVERSION_FIELD_COMPARISON]  WITH CHECK ADD  CONSTRAINT [FK_CONVERSION_FIELD_COMPARISON] FOREIGN KEY([conversion_validation_batch_seq])
REFERENCES [dbo].[CONVERSION_VALIDATION_BATCH] ([conversion_validation_batch_seq])
GO
ALTER TABLE [dbo].[CONVERSION_FIELD_COMPARISON] CHECK CONSTRAINT [FK_CONVERSION_FIELD_COMPARISON]
GO
ALTER TABLE [dbo].[DEATH]  WITH CHECK ADD  CONSTRAINT [FK_DEATH_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[DEATH] CHECK CONSTRAINT [FK_DEATH_DOCUMENT]
GO
ALTER TABLE [dbo].[DEATH_DX]  WITH CHECK ADD  CONSTRAINT [FK_DEATH_DX_DEATH] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[DEATH_DX] CHECK CONSTRAINT [FK_DEATH_DX_DEATH]
GO
ALTER TABLE [dbo].[DOCUMENT]  WITH CHECK ADD  CONSTRAINT [FK_DOCUMENT_FACILITY_CODE] FOREIGN KEY([facility_uid])
REFERENCES [dbo].[FACILITY_CODE] ([facility_uid])
GO
ALTER TABLE [dbo].[DOCUMENT] CHECK CONSTRAINT [FK_DOCUMENT_FACILITY_CODE]
GO
ALTER TABLE [dbo].[DOCUMENT]  WITH CHECK ADD  CONSTRAINT [FK_DOCUMENT_PROVIDER_CODE] FOREIGN KEY([provider_uid])
REFERENCES [dbo].[PROVIDER_CODE] ([provider_uid])
GO
ALTER TABLE [dbo].[DOCUMENT] CHECK CONSTRAINT [FK_DOCUMENT_PROVIDER_CODE]
GO
ALTER TABLE [dbo].[DOCUMENT_DELETE_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_DOCUMENT_DELETE_DETAIL_DOCUMENT_DELETE_LOG] FOREIGN KEY([file_uid])
REFERENCES [dbo].[DOCUMENT_DELETE_LOG] ([file_uid])
GO
ALTER TABLE [dbo].[DOCUMENT_DELETE_DETAIL] CHECK CONSTRAINT [FK_DOCUMENT_DELETE_DETAIL_DOCUMENT_DELETE_LOG]
GO
ALTER TABLE [dbo].[FACILITY_EVENT]  WITH CHECK ADD  CONSTRAINT [FK_FACILITY_EVENT_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[FACILITY_EVENT] CHECK CONSTRAINT [FK_FACILITY_EVENT_DOCUMENT]
GO
ALTER TABLE [dbo].[FACILITY_EVENT]  WITH CHECK ADD  CONSTRAINT [FK_FACILITY_EVENT_FACILITY_CODE] FOREIGN KEY([facility_uid])
REFERENCES [dbo].[FACILITY_CODE] ([facility_uid])
GO
ALTER TABLE [dbo].[FACILITY_EVENT] CHECK CONSTRAINT [FK_FACILITY_EVENT_FACILITY_CODE]
GO
ALTER TABLE [dbo].[ID]  WITH CHECK ADD  CONSTRAINT [FK_ID_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[ID] CHECK CONSTRAINT [FK_ID_DOCUMENT]
GO
ALTER TABLE [dbo].[INVESTIGATION]  WITH CHECK ADD  CONSTRAINT [FK_INVESTIGATION_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[INVESTIGATION] CHECK CONSTRAINT [FK_INVESTIGATION_DOCUMENT]
GO
ALTER TABLE [dbo].[INVESTIGATION]  WITH CHECK ADD  CONSTRAINT [FK_INVESTIGATION_PROVIDER] FOREIGN KEY([provider_uid])
REFERENCES [dbo].[PROVIDER_CODE] ([provider_uid])
GO
ALTER TABLE [dbo].[INVESTIGATION] CHECK CONSTRAINT [FK_INVESTIGATION_PROVIDER]
GO
ALTER TABLE [dbo].[INVESTIGATION_CASE]  WITH CHECK ADD  CONSTRAINT [FK_INVESTIGATION_CASE_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[INVESTIGATION_CASE] CHECK CONSTRAINT [FK_INVESTIGATION_CASE_DOCUMENT]
GO
ALTER TABLE [dbo].[INVESTIGATION_CLUSTER]  WITH CHECK ADD  CONSTRAINT [FK_INVESTIGATION_CLUSTER_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[INVESTIGATION_CLUSTER] CHECK CONSTRAINT [FK_INVESTIGATION_CLUSTER_DOCUMENT]
GO
ALTER TABLE [dbo].[LAB]  WITH CHECK ADD  CONSTRAINT [FK_LAB_CLIA_CODE] FOREIGN KEY([clia_uid])
REFERENCES [dbo].[CLIA_CODE] ([clia_uid])
GO
ALTER TABLE [dbo].[LAB] CHECK CONSTRAINT [FK_LAB_CLIA_CODE]
GO
ALTER TABLE [dbo].[LAB]  WITH CHECK ADD  CONSTRAINT [FK_LAB_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[LAB] CHECK CONSTRAINT [FK_LAB_DOCUMENT]
GO
ALTER TABLE [dbo].[LAB]  WITH CHECK ADD  CONSTRAINT [FK_LAB_FACILITY_CODE] FOREIGN KEY([facility_uid])
REFERENCES [dbo].[FACILITY_CODE] ([facility_uid])
GO
ALTER TABLE [dbo].[LAB] CHECK CONSTRAINT [FK_LAB_FACILITY_CODE]
GO
ALTER TABLE [dbo].[LAB]  WITH CHECK ADD  CONSTRAINT [FK_LAB_LOINC_CODE] FOREIGN KEY([lab_test_cd])
REFERENCES [dbo].[LAB_TEST_CODE] ([lab_test_cd])
GO
ALTER TABLE [dbo].[LAB] CHECK CONSTRAINT [FK_LAB_LOINC_CODE]
GO
ALTER TABLE [dbo].[LAB]  WITH CHECK ADD  CONSTRAINT [FK_LAB_PROVIDER_CODE] FOREIGN KEY([provider_uid])
REFERENCES [dbo].[PROVIDER_CODE] ([provider_uid])
GO
ALTER TABLE [dbo].[LAB] CHECK CONSTRAINT [FK_LAB_PROVIDER_CODE]
GO
ALTER TABLE [dbo].[LAB_ANALYTE]  WITH CHECK ADD  CONSTRAINT [FK_LAB_ANALYTE_LAB] FOREIGN KEY([document_uid], [lab_seq])
REFERENCES [dbo].[LAB] ([document_uid], [lab_seq])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LAB_ANALYTE] CHECK CONSTRAINT [FK_LAB_ANALYTE_LAB]
GO
ALTER TABLE [dbo].[LAB_GENOTYPE]  WITH CHECK ADD  CONSTRAINT [FK_LAB_GENOTYPE_LAB] FOREIGN KEY([DOCUMENT_UID], [LAB_SEQ])
REFERENCES [dbo].[LAB] ([document_uid], [lab_seq])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LAB_GENOTYPE] CHECK CONSTRAINT [FK_LAB_GENOTYPE_LAB]
GO
ALTER TABLE [dbo].[LOCAL_FIELD]  WITH CHECK ADD  CONSTRAINT [FK_LOCAL_FIELD_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[LOCAL_FIELD] CHECK CONSTRAINT [FK_LOCAL_FIELD_DOCUMENT]
GO
ALTER TABLE [dbo].[LOCAL_FIELD]  WITH CHECK ADD  CONSTRAINT [FK_LOCAL_FIELD_LOCAL_FIELD_CODE] FOREIGN KEY([local_field_uid])
REFERENCES [dbo].[LOCAL_FIELD_CODE] ([local_field_uid])
GO
ALTER TABLE [dbo].[LOCAL_FIELD] CHECK CONSTRAINT [FK_LOCAL_FIELD_LOCAL_FIELD_CODE]
GO
ALTER TABLE [dbo].[MJP_EHARS_UID_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_MJP_EHARS_UID_HISTORY_MJP_EHARS_UID_HISTORY] FOREIGN KEY([history_uid])
REFERENCES [dbo].[MJP_EHARS_UID_HISTORY] ([history_uid])
GO
ALTER TABLE [dbo].[MJP_EHARS_UID_HISTORY] CHECK CONSTRAINT [FK_MJP_EHARS_UID_HISTORY_MJP_EHARS_UID_HISTORY]
GO
ALTER TABLE [dbo].[MJP_OWNERSHIP]  WITH CHECK ADD  CONSTRAINT [FK_DOCUMENT_DOCUMENTUID_EHARSUID] FOREIGN KEY([DOCUMENT_UID])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[MJP_OWNERSHIP] CHECK CONSTRAINT [FK_DOCUMENT_DOCUMENTUID_EHARSUID]
GO
ALTER TABLE [dbo].[MJP_PACKAGE]  WITH CHECK ADD  CONSTRAINT [FK_MJP_PACKAGE_EHARS_USER] FOREIGN KEY([user_id])
REFERENCES [dbo].[EHARS_USER] ([user_id])
GO
ALTER TABLE [dbo].[MJP_PACKAGE] CHECK CONSTRAINT [FK_MJP_PACKAGE_EHARS_USER]
GO
ALTER TABLE [dbo].[MJP_REFERENCE_LOG]  WITH CHECK ADD  CONSTRAINT [FK_MJP_REFERENCE_LOG_EHARS_USER] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[EHARS_USER] ([user_id])
GO
ALTER TABLE [dbo].[MJP_REFERENCE_LOG] CHECK CONSTRAINT [FK_MJP_REFERENCE_LOG_EHARS_USER]
GO
ALTER TABLE [dbo].[OBSERVATION]  WITH CHECK ADD  CONSTRAINT [FK_OBSERVATION_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[OBSERVATION] CHECK CONSTRAINT [FK_OBSERVATION_DOCUMENT]
GO
ALTER TABLE [dbo].[OBSERVATION]  WITH CHECK ADD  CONSTRAINT [FK_OBSERVATION_OBSERVATION_CODE] FOREIGN KEY([obs_uid])
REFERENCES [dbo].[OBSERVATION_CODE] ([obs_uid])
GO
ALTER TABLE [dbo].[OBSERVATION] CHECK CONSTRAINT [FK_OBSERVATION_OBSERVATION_CODE]
GO
ALTER TABLE [dbo].[OI]  WITH CHECK ADD  CONSTRAINT [FK_OI_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[OI] CHECK CONSTRAINT [FK_OI_DOCUMENT]
GO
ALTER TABLE [dbo].[PERSON]  WITH CHECK ADD  CONSTRAINT [FK_PERSON_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[PERSON] CHECK CONSTRAINT [FK_PERSON_DOCUMENT]
GO
ALTER TABLE [dbo].[PERSON_NAME]  WITH CHECK ADD  CONSTRAINT [FK_PERSON_NAME_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[PERSON_NAME] CHECK CONSTRAINT [FK_PERSON_NAME_DOCUMENT]
GO
ALTER TABLE [dbo].[PERSON_VIEW_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_PERSON_VIEW_DETAIL_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[PERSON_VIEW_DETAIL] CHECK CONSTRAINT [FK_PERSON_VIEW_DETAIL_DOCUMENT]
GO
ALTER TABLE [dbo].[PRETEST_QUESTIONNAIRE]  WITH CHECK ADD  CONSTRAINT [FK_PRETEST_QUESTIONNAIRE_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[PRETEST_QUESTIONNAIRE] CHECK CONSTRAINT [FK_PRETEST_QUESTIONNAIRE_DOCUMENT]
GO
ALTER TABLE [dbo].[PRODUCTION_MATCH_CODE]  WITH CHECK ADD  CONSTRAINT [FK_PROD_MATCH_CODE_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[PRODUCTION_MATCH_CODE] CHECK CONSTRAINT [FK_PROD_MATCH_CODE_DOCUMENT]
GO
ALTER TABLE [dbo].[PRODUCTION_MATCH_CODE]  WITH CHECK ADD  CONSTRAINT [FK_PROD_MATCH_CODE_MATCHABLE_FIELD] FOREIGN KEY([match_field_uid])
REFERENCES [dbo].[MATCHABLE_FIELD] ([match_field_uid])
GO
ALTER TABLE [dbo].[PRODUCTION_MATCH_CODE] CHECK CONSTRAINT [FK_PROD_MATCH_CODE_MATCHABLE_FIELD]
GO
ALTER TABLE [dbo].[RIDR]  WITH CHECK ADD  CONSTRAINT [FK_RIDR_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[RIDR] CHECK CONSTRAINT [FK_RIDR_DOCUMENT]
GO
ALTER TABLE [dbo].[RISK]  WITH CHECK ADD  CONSTRAINT [FK_RISK_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[RISK] CHECK CONSTRAINT [FK_RISK_DOCUMENT]
GO
ALTER TABLE [dbo].[SAMPLING_CRITERIA]  WITH CHECK ADD  CONSTRAINT [FK_SAMPLING_CRITERIA_SAMPLING] FOREIGN KEY([sample_uid])
REFERENCES [dbo].[SAMPLING] ([sample_uid])
GO
ALTER TABLE [dbo].[SAMPLING_CRITERIA] CHECK CONSTRAINT [FK_SAMPLING_CRITERIA_SAMPLING]
GO
ALTER TABLE [dbo].[SECURITY_ITEM]  WITH CHECK ADD  CONSTRAINT [FK_SECURITY_ITEMS_SECURITY_TYPES] FOREIGN KEY([security_type_uid])
REFERENCES [dbo].[SECURITY_TYPE] ([security_type_uid])
GO
ALTER TABLE [dbo].[SECURITY_ITEM] CHECK CONSTRAINT [FK_SECURITY_ITEMS_SECURITY_TYPES]
GO
ALTER TABLE [dbo].[SSO_USER]  WITH CHECK ADD  CONSTRAINT [FK_EHARS_USER_SSO_USER] FOREIGN KEY([user_id])
REFERENCES [dbo].[EHARS_USER] ([user_id])
GO
ALTER TABLE [dbo].[SSO_USER] CHECK CONSTRAINT [FK_EHARS_USER_SSO_USER]
GO
ALTER TABLE [dbo].[TRANSFER_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_TRANSFER_DETAIL_TRANSFER_LOG] FOREIGN KEY([transfer_uid])
REFERENCES [dbo].[TRANSFER_LOG] ([transfer_uid])
GO
ALTER TABLE [dbo].[TRANSFER_DETAIL] CHECK CONSTRAINT [FK_TRANSFER_DETAIL_TRANSFER_LOG]
GO
ALTER TABLE [dbo].[TRANSFER_DETAILCDC]  WITH CHECK ADD  CONSTRAINT [FK_TRANSFER_DETAIL_TRANSFER_LOGCDC] FOREIGN KEY([transfer_uid])
REFERENCES [dbo].[TRANSFER_LOGCDC] ([transfer_uid])
GO
ALTER TABLE [dbo].[TRANSFER_DETAILCDC] CHECK CONSTRAINT [FK_TRANSFER_DETAIL_TRANSFER_LOGCDC]
GO
ALTER TABLE [dbo].[TRANSFER_DETAILState]  WITH CHECK ADD  CONSTRAINT [FK_TRANSFER_DETAIL_TRANSFER_LOGState] FOREIGN KEY([transfer_uid], [site_cd])
REFERENCES [dbo].[TRANSFER_LOGState] ([transfer_uid], [site_cd])
GO
ALTER TABLE [dbo].[TRANSFER_DETAILState] CHECK CONSTRAINT [FK_TRANSFER_DETAIL_TRANSFER_LOGState]
GO
ALTER TABLE [dbo].[LAB_TEST_CODE]  WITH CHECK ADD  CONSTRAINT [ALR_558047049] CHECK  (([flag_ind]='A' OR [flag_ind]='L' OR [flag_ind]='R'))
GO
ALTER TABLE [dbo].[LAB_TEST_CODE] CHECK CONSTRAINT [ALR_558047049]
GO
ALTER TABLE [dbo].[LOOKUP_CODE]  WITH CHECK ADD  CONSTRAINT [CK_LOOKUP_CODE_STATUS_FLAG] CHECK  (([status_flag]='R' OR [status_flag]='L' OR [status_flag]='A' OR [status_flag]=NULL))
GO
ALTER TABLE [dbo].[LOOKUP_CODE] CHECK CONSTRAINT [CK_LOOKUP_CODE_STATUS_FLAG]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A sequence identifier for a person''s addresses.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'address_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of a person''s  address. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'address_type_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person''s street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'street_address1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person''s street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'street_address2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The city FIPS code for a person''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'city_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual city name for the person''s address from the FIPS table. If there is no match to the FIPS table the text is stored as entered by the user and prefixed with an asterick.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'city_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The FIPS county code for a person''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'county_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual county name for the person''s address from the FIPS table. If there is no match to the FIPS table the text is stored as entered by the user and prefixed with an asterisk.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'county_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state postal code for a person''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'state_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for a person''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'zip_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code for a person''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'country_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The FIPS U.S. Dependency country code for the person''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'country_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value indicating a person''s telephone number the format includes the storage of dashes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An optional field that designates the person''s census metropolitan statistical area (MSA).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'census_msa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An optional field that designates the person''s census tract.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'census_tract'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An optional field that designates the person''s census group.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'census_group'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An optional field that designates the person''s census block group.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'census_block_group'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An optional field that designates the person''s census congressional district.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'census_congressional_district'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A  textual description that designates if the data belongs to the PERSON, MOTHER, CHILDx. For this table it only applies to the birth certificate and indicates if the information collected is for the mother or child''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS', @level2type=N'COLUMN',@level2name=N'doc_belongs_to'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information on a person''s addresses and locations.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ADDRESS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From BC, the type of place where the child was born,  like home or hospital.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'birth_place'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF and BC, the method of delivery (e.g., vaginal, cesarean) ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'delivery_method'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From PCRF and BC, the child''s birth weight (grams).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'birth_wt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From PCRF and BC, the type of birth (single, twin etc.) ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'birth_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF, if the child has birth defects (yes, no, unknown value).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'congenital_disorders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF and BC, birth defect codes. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'congenital_disorders_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the BC, was the infant transferred to another facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'infant_transfer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF and BC, if the child was breastfed.  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'breastfed_discharge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF, the child''s neonatal status. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'neonatal_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF and BC, the gestational age of the child.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'neonatal_status_weeks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information pertaining to the child''s birth or the mother''s prenatal care, labor and delivery. This information is collected on the birth history section of the PCRF and the birth certificate.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CALC_OBSERVATION', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a calculated observation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CALC_OBSERVATION', @level2type=N'COLUMN',@level2name=N'calc_obs_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The calculated observation''s value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CALC_OBSERVATION', @level2type=N'COLUMN',@level2name=N'calc_obs_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information on a person''s calculated observations.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CALC_OBSERVATION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a calculated observation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CALC_OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'calc_obs_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the documents that caputure this calculated observation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CALC_OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'document_type_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the calcuated observation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CALC_OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The HARS variable name where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CALC_OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'hars_var_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The SAS variable name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CALC_OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'sas_var_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field used by the application for display purposes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CALC_OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'display_order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field used by the application for display purposes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CALC_OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code table describing the type of calculated observation (variables) that are generated for a person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CALC_OBSERVATION_CODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The laboratory''s CLIA number (Provider Identification).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_CODE', @level2type=N'COLUMN',@level2name=N'clia_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of CLIA lab. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_CODE', @level2type=N'COLUMN',@level2name=N'lab_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary name of the laboratory.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_CODE', @level2type=N'COLUMN',@level2name=N'lab_name1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The secondary or alternate name of the library.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_CODE', @level2type=N'COLUMN',@level2name=N'lab_name2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of the laboratory''s street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_CODE', @level2type=N'COLUMN',@level2name=N'street_address1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of the laboratory''s street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_CODE', @level2type=N'COLUMN',@level2name=N'street_address2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual city name for the laboratory''s address from the FIPS table. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_CODE', @level2type=N'COLUMN',@level2name=N'city_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state postal code for laboratory''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_CODE', @level2type=N'COLUMN',@level2name=N'state_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for the laboratory''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_CODE', @level2type=N'COLUMN',@level2name=N'zip_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value indicating a laboratory''s telephone number the format includes the storage of dashes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_CODE', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code table containing Clinical Laboratory Improvement Amendments Provider Identification (CLIA) codes of laboratories that are CLIA certified from the Health Care Finance Administration (HCFA) CLIA OSCAR. Updated Februaray 2003 from the PHPPO website.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_CODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The laboratory''s CLIA number (Provider Identification).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_LOOKUP', @level2type=N'COLUMN',@level2name=N'clia_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used by the application to indicate display preference.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_LOOKUP', @level2type=N'COLUMN',@level2name=N'site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table used by the application allowing a user to modify the laboratory drop down list.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CLIA_LOOKUP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CONSENT_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the person was approached for consent.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CONSENT_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'cdate1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Did the person consent to participate in STARHS when approached the first time?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CONSENT_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'cconsent1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of visit when the person was approached to consent in STARHS the first time.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CONSENT_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'cconsentvisit1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The second date the person was approached for consent.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CONSENT_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'cdate2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Did the person consent to participate in STARHS when approached the second time?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CONSENT_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'cconsent2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of visit when the person was approached to consent in STARHS the second time.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CONSENT_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'cconsentvisit2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information pertaining to a person''s consent for STARHS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CONSENT_QUESTIONNAIRE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The eHARS user who applied the password that changed the risk factor value to CDC confirmed.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COPHI_PASSWORD', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COPHI_PASSWORD', @level2type=N'COLUMN',@level2name=N'ehars_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COPHI_PASSWORD', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The risk factor database code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COPHI_PASSWORD', @level2type=N'COLUMN',@level2name=N'cophi_risk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The risk factor description.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COPHI_PASSWORD', @level2type=N'COLUMN',@level2name=N'cophi_risk_descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The encrypted password applied to change a risk factor to CDC confirmed.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COPHI_PASSWORD', @level2type=N'COLUMN',@level2name=N'cophi_password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the risk factor value was change to CDC confirmed.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COPHI_PASSWORD', @level2type=N'COLUMN',@level2name=N'modify_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table used by the application for COPHI password maintainence.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COPHI_PASSWORD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates a country.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COUNTRY_CODE', @level2type=N'COLUMN',@level2name=N'country_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of the country.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COUNTRY_CODE', @level2type=N'COLUMN',@level2name=N'descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Textual description of the standards organization coding scheme utilized (FIPS, ISO, LEGACY)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COUNTRY_CODE', @level2type=N'COLUMN',@level2name=N'type_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used by the application for display purposes. 1 indicates ISO, 2 indicates US Dependency. 3 is for legacy FIPS country codes,. 4 is for legacy FIPS U.S. dependency codes that will be written to the eHARS country_usd field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COUNTRY_CODE', @level2type=N'COLUMN',@level2name=N'flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used by the application to indicate the display order.  ISO US = 0, ISO US DEP = 1, OTHER = 2, USPS US DEP = 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COUNTRY_CODE', @level2type=N'COLUMN',@level2name=N'display_order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The legacy HARS application FIPS code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COUNTRY_CODE', @level2type=N'COLUMN',@level2name=N'fips_hars'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The legacy HARS application U.S. Postal code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COUNTRY_CODE', @level2type=N'COLUMN',@level2name=N'cd_hars'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code table describing countries, U.S. Dependencies and legacy HARS code and the code value used to represent the entity (ISO, FIPS).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'COUNTRY_CODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s date of death.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH', @level2type=N'COLUMN',@level2name=N'dod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The county FIPS where the person died.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH', @level2type=N'COLUMN',@level2name=N'county_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual county name for where the person died.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH', @level2type=N'COLUMN',@level2name=N'county_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state postal code for where the person died.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH', @level2type=N'COLUMN',@level2name=N'state_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code for where the person died. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH', @level2type=N'COLUMN',@level2name=N'country_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The U.S. Dependency code where the person died.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH', @level2type=N'COLUMN',@level2name=N'country_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The place where the person died (e.g., hospital, at home, DOA). LOOKUP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH', @level2type=N'COLUMN',@level2name=N'place'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Was an autopsy performed?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH', @level2type=N'COLUMN',@level2name=N'autopsy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The city FIPS code for where the person died. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH', @level2type=N'COLUMN',@level2name=N'city_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual city name for where the person died. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH', @level2type=N'COLUMN',@level2name=N'city_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information on a person''s death.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_DX', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A number indicating the position on the death certificate, document or NCHS tape.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_DX', @level2type=N'COLUMN',@level2name=N'line_number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ICD code assigned.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_DX', @level2type=N'COLUMN',@level2name=N'icd_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of ICD code assigned, either ICD 9 (represented by 9) or ICD 10 (represented by 10).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_DX', @level2type=N'COLUMN',@level2name=N'icd_cd_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the cause of death.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_DX', @level2type=N'COLUMN',@level2name=N'descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For NCHS electronic data, the line number on the tape.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_DX', @level2type=N'COLUMN',@level2name=N'line'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For NCHS electronic data, the sequence or position number on the tape.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_DX', @level2type=N'COLUMN',@level2name=N'position'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For NCHS electronic data, the nature of injury flag.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_DX', @level2type=N'COLUMN',@level2name=N'nature_of_injury'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information on a person''s death diagnosis or conditions.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_DX'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Auto generated unique record identifier.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOC_SOURCE_LOOKUP', @level2type=N'COLUMN',@level2name=N'doc_source_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of lookup. The value is SOURCE for document source codes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOC_SOURCE_LOOKUP', @level2type=N'COLUMN',@level2name=N'lookup_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The document source code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOC_SOURCE_LOOKUP', @level2type=N'COLUMN',@level2name=N'lookup_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The document on which the document source code may be displayed.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOC_SOURCE_LOOKUP', @level2type=N'COLUMN',@level2name=N'document_type_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code indicating the type of document (i.e., HIV/AIDS Case report Form, Death Certificate, Birth Certificate)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'document_type_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating the number of the document. For example, the death certificate number associated with the document if the doc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'document_number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating whether the report was obtained via active or passive surveillance. LOOKUP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'surv_method'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the medium used to transport the information on the document.  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'rpt_medium'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person who completed the document. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the form or document was completed or populated with information (I.e., when the chart abstraction was complete)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'complete_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The userid of the person who entered the information into the system.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'enter_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The system date the document was entered into the system.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'enter_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier representing the reporting site or location i.e., where the system is installed.Four characters- state code + two digits.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reporting health department - reporting to the site.  Either the three digit FIPS county code(state+fips county code)  or the five digit FIPS place code (state + fips place code)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'rep_hlth_dept_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the reporting health department.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'rep_hlth_dept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Captures if this document initiated a follow up investigation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'initinvest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this document contains follow up information, this field captures the document uid of the document that intiated the investigation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'initdocuid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Person View AIDS category at the time the document was entered into the system.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'pv_categ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Person View HIV category at the time the document was entered into the system.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'pv_hcateg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notes or comments regarding the document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'ehars_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the document was last modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'modify_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A value indicating the status of the document or person view. LOOKUP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'status_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A value indicating if the document/person view needs to be transferred to state health department (satellite installations) or to the CDC. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'ship_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the person who completed the document. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'author_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the document was received at the health department.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'receive_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source of report for the document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'document_source_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For case report forms only, indicates the facility completing the form. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT', @level2type=N'COLUMN',@level2name=N'facility_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information about a document (e.g., report).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DOCUMENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique ID for each group.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EHARS_GROUP', @level2type=N'COLUMN',@level2name=N'ehars_group_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The short name of the group for display purposes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EHARS_GROUP', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the group.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EHARS_GROUP', @level2type=N'COLUMN',@level2name=N'descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that maintains information on users who have access to the eHARS application.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EHARS_GROUP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user id of the eHARS user.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EHARS_USER', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The encrypted password of the eHARS user.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EHARS_USER', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the eHARS user.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EHARS_USER', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The site code associated with the eHARS user.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EHARS_USER', @level2type=N'COLUMN',@level2name=N'site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The email address of the eHARS user.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EHARS_USER', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the eHARS user.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EHARS_USER', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table containing information on eHARS users.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EHARS_USER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the event.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG', @level2type=N'COLUMN',@level2name=N'event_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date and time this event occurred.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG', @level2type=N'COLUMN',@level2name=N'dt_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description indicating the type of event.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual name for the event.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG', @level2type=N'COLUMN',@level2name=N'event'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Details of the event as defined by the application.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG', @level2type=N'COLUMN',@level2name=N'comments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user id of the eHARS user who initiated the event.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The current eHARS user id of the person (only applies to when a user id is modified)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG', @level2type=N'COLUMN',@level2name=N'current_ehars_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The former eHARS user id of the person (only applies to when a user id is modified)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG', @level2type=N'COLUMN',@level2name=N'former_ehars_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Person View override old value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG', @level2type=N'COLUMN',@level2name=N'pv_override_old'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Person View override new value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG', @level2type=N'COLUMN',@level2name=N'pv_override_new'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The field name that was associated with the event, where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG', @level2type=N'COLUMN',@level2name=N'fieldname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The site code where the event occurred.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG', @level2type=N'COLUMN',@level2name=N'site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information pertaining to application events (e.g., when a person logs onto the system, when particular data elements are modified in the Person View)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'EVENT_LOG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unique identifier for a health care facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'facility_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual field containg the primary name of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'name1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual field containing the secondary or shortened name of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'name2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'street_address1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line two of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'street_address2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The city FIPS code for the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'city_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual city name of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'city_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The county FIPS code of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'county_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual county name for the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'county_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state code of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'state_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'zip_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'country_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The U.S. Dependency code for the facility''s address- where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'country_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fax number of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The email address of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of health care facility. LOOKUP:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'facility_type_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the funding setting. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'setting_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating if the facility receives HRSA funding.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'funding_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of HRSA funding a facility recieves.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'funding_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TBD: A field used by the application to determine if the information for this facility needs to be transferred.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE', @level2type=N'COLUMN',@level2name=N'ship_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information about a health care facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_EVENT', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier of the facility associated with this event.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_EVENT', @level2type=N'COLUMN',@level2name=N'facility_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier of the provider associated with this event (optional).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_EVENT', @level2type=N'COLUMN',@level2name=N'provider_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of event that occurred.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_EVENT', @level2type=N'COLUMN',@level2name=N'event_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A  textual description that designates if the data belongs to the PERSON, MOTHER, CHILDx. This applies to the ACRF and collects the hospital at birth for the children linked to a mother. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_EVENT', @level2type=N'COLUMN',@level2name=N'doc_belongs_to'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information pertaining to a person''s event''s that involve a facility (e.g., facility at birth, facility at HIV diagnosis). ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_EVENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The FIPS code for the state.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY', @level2type=N'COLUMN',@level2name=N'state_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The FIPS code for the city.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY', @level2type=N'COLUMN',@level2name=N'city_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the city.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY', @level2type=N'COLUMN',@level2name=N'city_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The postal code for the state.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY', @level2type=N'COLUMN',@level2name=N'state_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description containing the city name and state postal code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY', @level2type=N'COLUMN',@level2name=N'city_name_state_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code table describing cities (places) and the code value used to represent the entity (FIPS).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The postal code for the state.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY_HARS', @level2type=N'COLUMN',@level2name=N'state_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description containing the city name and state postal code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY_HARS', @level2type=N'COLUMN',@level2name=N'state_cd_city_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The postal code for the state.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY_HARS', @level2type=N'COLUMN',@level2name=N'state_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The FIPS code for the city.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY_HARS', @level2type=N'COLUMN',@level2name=N'city_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the city.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY_HARS', @level2type=N'COLUMN',@level2name=N'city_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The HARS FIPS code for the city.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY_HARS', @level2type=N'COLUMN',@level2name=N'city_fips_hars'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the city from HARS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY_HARS', @level2type=N'COLUMN',@level2name=N'city_name_hars'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains eHARS (FIPS) to HARS (geocode) city code data conversion information.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_CITY_HARS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The postal code for the state.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY', @level2type=N'COLUMN',@level2name=N'state_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The FIPS code for the county.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY', @level2type=N'COLUMN',@level2name=N'cnty_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the county.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY', @level2type=N'COLUMN',@level2name=N'cnty_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The postal code for the state.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY', @level2type=N'COLUMN',@level2name=N'state_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description containing the county name and state postal code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY', @level2type=N'COLUMN',@level2name=N'cnty_name_state_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code table describing counties and the code value used to represent the entity (FIPS).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The postal code for the state.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY_HARS', @level2type=N'COLUMN',@level2name=N'state_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description containing the county name and state postal code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY_HARS', @level2type=N'COLUMN',@level2name=N'state_cd_county_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The postal code for the state.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY_HARS', @level2type=N'COLUMN',@level2name=N'state_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The FIPS code for the county.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY_HARS', @level2type=N'COLUMN',@level2name=N'county_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the county.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY_HARS', @level2type=N'COLUMN',@level2name=N'county_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The HARS FIPS code for the county.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY_HARS', @level2type=N'COLUMN',@level2name=N'county_fips_hars'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the county from HARS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY_HARS', @level2type=N'COLUMN',@level2name=N'county_name_hars'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains eHARS (FIPS) to HARS (geocode) county code data conversion information.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIPS_COUNTY_HARS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ID', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code that designates the type of a person''s identifier assigned. LOOKUP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ID', @level2type=N'COLUMN',@level2name=N'id_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sequence identifier for a person''s identification codes. A person can have mulitiple  identification code types (id_cd_type) on the person view document only.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ID', @level2type=N'COLUMN',@level2name=N'id_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the person''s identifier.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ID', @level2type=N'COLUMN',@level2name=N'id_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A  textual description that designates if the data belongs to the PERSON, MOTHER, CHILDx. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ID', @level2type=N'COLUMN',@level2name=N'doc_belongs_to'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information on a person''s identifiers.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the type of ID code that was purged' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ID_PURGED', @level2type=N'COLUMN',@level2name=N'id_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the stateno of the case that was purged' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ID_PURGED', @level2type=N'COLUMN',@level2name=N'id_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date and time of when the case was purged' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ID_PURGED', @level2type=N'COLUMN',@level2name=N'dt_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Table used to check if a state number being assigned to a case has ever been used (across existing and purged documents) during document creation (Script validation/ Server Side validation).When  documents are imported in the validator framework' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ID_PURGED'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for an investigation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'investigation_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the document linked to the investigation (optional)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of the investigation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of investigation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the investigation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the investigation was opened.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'open_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the investigation was assigned.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'assign_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person assigned to the investigation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'assign_to'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the investigation was closed.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'close_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person who closed the investigation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'close_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source of the information.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source of the information.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'information_source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last time the health department was contacted regarding this person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'last_contact_hlth_dept_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last the health care provider was contacted regarding this person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'last_contact_provider_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last time the person''s medical record was reviewed.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'last_medical_review_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The priority of the investigation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'priority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier of the provider who was contacted regarding this investigation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'provider_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of resolution.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'resolution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the investigation was created.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'record_insert_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date information pertaining to this investigation was last modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'last_modify_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person who last modified information in the system regarding this investigation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION', @level2type=N'COLUMN',@level2name=N'last_modify_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information pertaining to investigation tracking (pending reports that do not yet constitute a case or follow-up on existing cases).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INVESTIGATION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sequence identifier for a person''s laboratory results.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'lab_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A identification number assigned by the laboratory performing the test. Also referred to as the specimen number or accession number.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'sample_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier of the provider who ordered the test.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'provider_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of specimen collected.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'specimen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the specimen was collected.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'sample_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the lab that performed the test received the specimen from either a health care provider or another laboratory.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'receive_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The manufacturer of the test (applicable to viral load tests only)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'manufacturer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Clinical Laboratory Improvement Amendments Provider Identification of the laboratory that performed the test.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'clia_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of viral load test, or the type of STARHS assay' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'lab_test_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Logical Observation Identifier Names and Codes (LOINC) code value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'lab_test_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An interpretation of the lab result, values include within range =, below range(limit) <, above range (limit) > for viral load. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'result_interpretation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result value. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reported units.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'result_units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the test result was reported or processed at the lab.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'result_rpt_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For application use, a code associating a diagnostic test with with the HIV/AIDS case definition algorithm.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'case_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notes or comments regarding the lab test, this data is transferred to the CDC.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'comments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If this is a confirmatory test aliquoted for STARHS, the STARHS specimen id.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB', @level2type=N'COLUMN',@level2name=N'starhs_sample_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information on a person''s diagnostic tests and STARHS results.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique LOINC code that designates the type of laboratory test.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_TEST_CODE', @level2type=N'COLUMN',@level2name=N'lab_test_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates which area of the case report form to display the diagnostic test (application use only).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_TEST_CODE', @level2type=N'COLUMN',@level2name=N'mod_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the LOINC code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_TEST_CODE', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A value indicating where this particular test falls within the case definition.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_TEST_CODE', @level2type=N'COLUMN',@level2name=N'case_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The legacy HARS variable name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_TEST_CODE', @level2type=N'COLUMN',@level2name=N'hars_var_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The SAS variable name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_TEST_CODE', @level2type=N'COLUMN',@level2name=N'sas_var_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates which order to display the diagnostic test (application use only).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_TEST_CODE', @level2type=N'COLUMN',@level2name=N'display_ord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates which document type to display the diagnostic test (application use only).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_TEST_CODE', @level2type=N'COLUMN',@level2name=N'display_specify'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A value indicating which category the test belongs.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_TEST_CODE', @level2type=N'COLUMN',@level2name=N'category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Specifies whether the lab test is retired from usage for new documents.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_TEST_CODE', @level2type=N'COLUMN',@level2name=N'flag_ind'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code table describing Logical Observation Identifier Names and Codes (LOINC) codes for diagnostic tests.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_TEST_CODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a local field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD', @level2type=N'COLUMN',@level2name=N'local_field_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local field''s value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD', @level2type=N'COLUMN',@level2name=N'local_field_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information on locally defined variables.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a local field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE', @level2type=N'COLUMN',@level2name=N'local_field_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates which document types to display the local field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE', @level2type=N'COLUMN',@level2name=N'document_type_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The label or local field name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE', @level2type=N'COLUMN',@level2name=N'local_field_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the local field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE', @level2type=N'COLUMN',@level2name=N'descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of value of the local field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE', @level2type=N'COLUMN',@level2name=N'value_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The data type of the local field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE', @level2type=N'COLUMN',@level2name=N'value_data_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The length of the local field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE', @level2type=N'COLUMN',@level2name=N'value_data_len'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The legal values that are allowed for this local field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE', @level2type=N'COLUMN',@level2name=N'legal_values'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The default value for the local field where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE', @level2type=N'COLUMN',@level2name=N'default_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The HARS variable name where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE', @level2type=N'COLUMN',@level2name=N'hars_var_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The SAS variable name for the local field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE', @level2type=N'COLUMN',@level2name=N'sas_var_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates where to display the local field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE', @level2type=N'COLUMN',@level2name=N'display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates which order to display the local field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE', @level2type=N'COLUMN',@level2name=N'display_order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code table describing locally defined variables.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD_CODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code that designates the lookup.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOOKUP_CODE', @level2type=N'COLUMN',@level2name=N'lookup_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the value that represents the description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOOKUP_CODE', @level2type=N'COLUMN',@level2name=N'lookup_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of the lookup code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOOKUP_CODE', @level2type=N'COLUMN',@level2name=N'lookup_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of the code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOOKUP_CODE', @level2type=N'COLUMN',@level2name=N'lookup_descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The SAS variable name for the variable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOOKUP_CODE', @level2type=N'COLUMN',@level2name=N'sas_var_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The HARS variable name where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOOKUP_CODE', @level2type=N'COLUMN',@level2name=N'hars_var_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field used by the application indicating the order to display the values.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOOKUP_CODE', @level2type=N'COLUMN',@level2name=N'display_order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field used by the application indicating if the value needs to be displayed.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOOKUP_CODE', @level2type=N'COLUMN',@level2name=N'display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates which screens the values should be applied to (local use only)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOOKUP_CODE', @level2type=N'COLUMN',@level2name=N'flag_ind'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field used by the application that stores information pertaining to a particular lookup type and it''s relation to a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOOKUP_CODE', @level2type=N'COLUMN',@level2name=N'validation_descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table containing codes not specified in specific code tables that represent the valid choices for a particular variable or column in a table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOOKUP_CODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a access_uid.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_DATA_ACCESS', @level2type=N'COLUMN',@level2name=N'access_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of ehars_uid.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_DATA_ACCESS', @level2type=N'COLUMN',@level2name=N'ehars_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The site_cd value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_DATA_ACCESS', @level2type=N'COLUMN',@level2name=N'site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The document_uid value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_DATA_ACCESS', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The contribution type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_DATA_ACCESS', @level2type=N'COLUMN',@level2name=N'contribution_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The access level.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_DATA_ACCESS', @level2type=N'COLUMN',@level2name=N'access_level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The expiration date.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_DATA_ACCESS', @level2type=N'COLUMN',@level2name=N'expiration_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information of mjp data access.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_DATA_ACCESS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a jbd_uid.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_JURISDICTION_MAPPING', @level2type=N'COLUMN',@level2name=N'jbd_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of site code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_JURISDICTION_MAPPING', @level2type=N'COLUMN',@level2name=N'site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The filed name value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_JURISDICTION_MAPPING', @level2type=N'COLUMN',@level2name=N'field_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The field value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_JURISDICTION_MAPPING', @level2type=N'COLUMN',@level2name=N'field_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The create date.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_JURISDICTION_MAPPING', @level2type=N'COLUMN',@level2name=N'create_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The modify date.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_JURISDICTION_MAPPING', @level2type=N'COLUMN',@level2name=N'modify_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The resolved value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_JURISDICTION_MAPPING', @level2type=N'COLUMN',@level2name=N'resolved'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information of mjp jurisdiction mapping.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_JURISDICTION_MAPPING'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a site_cd.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_JURISDICTIONS', @level2type=N'COLUMN',@level2name=N'site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The site name value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_JURISDICTIONS', @level2type=N'COLUMN',@level2name=N'site_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The parent site code value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_JURISDICTIONS', @level2type=N'COLUMN',@level2name=N'parent_site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The site type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_JURISDICTIONS', @level2type=N'COLUMN',@level2name=N'site_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information of mjp jurisdiction mapping.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_JURISDICTIONS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a ehars_uid.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_OWNERSHIP', @level2type=N'COLUMN',@level2name=N'EHARS_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_OWNERSHIP', @level2type=N'COLUMN',@level2name=N'DOCUMENT_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary owner''s value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_OWNERSHIP', @level2type=N'COLUMN',@level2name=N'PRIMARY_OWNER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The owner_assignment''s value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_OWNERSHIP', @level2type=N'COLUMN',@level2name=N'OWNER_ASSIGNMENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The case shared value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_OWNERSHIP', @level2type=N'COLUMN',@level2name=N'CASE_SHARED'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information mjp ownership.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_OWNERSHIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a ehars_uid.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_SECONDARY_OWNERSHIP', @level2type=N'COLUMN',@level2name=N'ehars_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier of secondary_owner.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_SECONDARY_OWNERSHIP', @level2type=N'COLUMN',@level2name=N'secondary_owner'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier of secondary owner type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_SECONDARY_OWNERSHIP', @level2type=N'COLUMN',@level2name=N'secondary_owner_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The create modify date.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_SECONDARY_OWNERSHIP', @level2type=N'COLUMN',@level2name=N'create_modify_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information of mjp secondary ownership.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MJP_SECONDARY_OWNERSHIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An internal unique identifier for a document. For person based local fields the ehars_uid is stored in this field.  For document based local fields the document_uid is stored in this field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An internal unique identifier for an observation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION', @level2type=N'COLUMN',@level2name=N'obs_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the observed object.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION', @level2type=N'COLUMN',@level2name=N'obs_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information on a person''s observations.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An internal unique identifier for a observation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'obs_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The document where the observation originates.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'document_type_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A text field describing the observation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating the value type of observation- text field, date, list.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'value_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the length of the observation. For example, if char (25), a 25 would be in this field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'value_data_len'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A mapping of the HARS PRODAS and SAS variable name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'hars_var_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The e-HARS or SAS variable name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION_CODE', @level2type=N'COLUMN',@level2name=N'sas_var_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code table describing the type of observation (variables) that are collected.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION_CODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OI', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sequence identifier for a person''s AIDS defining conditions.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OI', @level2type=N'COLUMN',@level2name=N'oi_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates a person''s aid''s defining conditions.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OI', @level2type=N'COLUMN',@level2name=N'oi_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code indicating if the diagnosis was presumptive or defintive.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OI', @level2type=N'COLUMN',@level2name=N'dx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the aid''s defining condition was diagnosed.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OI', @level2type=N'COLUMN',@level2name=N'dx_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information on a person''s opportunistic infections (diseases indicative of AIDS).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first known date of birth.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'dob'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The second known or alias date of birth.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'dob_alias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the person''s country of birth.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'birth_country_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating which U.S.Possession or Other country of birth.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'birth_country_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the person''s living status at time form was completed- alive, dead or unknown.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'vital_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s biological sex at birth noted on person''s birth certificate.  M (Male) or F (Female).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'birth_sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Physiological anatomy and biology that determines if someone is male, female, or intersexed. The state determines if they want to display this field upon installing eHARS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'current_sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s current gender or psychosocial construct that most people use to classify a person as male, female, both or neither.The state determines if they want to display this field upon installing eHARS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'gender_identity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'race1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'race2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'race3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'race4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'race5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating if the person is of Hispanic or Latino origin. A person of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish Culture or origin, regardless of race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'ethnicity1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating if the person is of Hispanic or Latino origin. A person of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish Culture or origin, regardless of race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'ethnicity2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For legacy HARS data, a read only field, indicating the person''s pre OMB race code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'hars_race'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HARS expanded race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'hars_xrace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s marital status.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'marital_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this person a health care worker (optional field)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'hcw'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of health care worker (optional field)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'hcw_occup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A  textual description that designates if the data belongs to the PERSON, MOTHER, CHILDx. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'doc_belongs_to'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s educational atttainment (optional field).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON', @level2type=N'COLUMN',@level2name=N'education'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains demographic information about a person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_NAME', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sequence identifiers for a person''s name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_NAME', @level2type=N'COLUMN',@level2name=N'person_name_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of name being used. Examples include, maiden, birth, biological etc. The default value is legal.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_NAME', @level2type=N'COLUMN',@level2name=N'name_use_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s last name. For hyphenated or last names containing two words. The standard is as follows:  Smith Jones.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_NAME', @level2type=N'COLUMN',@level2name=N'last_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s first name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_NAME', @level2type=N'COLUMN',@level2name=N'first_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s middle name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_NAME', @level2type=N'COLUMN',@level2name=N'middle_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s name suffix.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_NAME', @level2type=N'COLUMN',@level2name=N'name_suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s name prefix.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_NAME', @level2type=N'COLUMN',@level2name=N'name_prefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s last name in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_NAME', @level2type=N'COLUMN',@level2name=N'last_name_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s first name in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_NAME', @level2type=N'COLUMN',@level2name=N'first_name_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A  textual description that designates if the data belongs to the PERSON, MOTHER, CHILD. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_NAME', @level2type=N'COLUMN',@level2name=N'doc_belongs_to'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field used by the application to determine if the name removal untility has been applied to this row.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_NAME', @level2type=N'COLUMN',@level2name=N'removal_ind'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains  information on a person''s name and soundex.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_NAME'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'ehars_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'table_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the column.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'field_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'To store the id code (obs_uid, calc_obs_uid, risk_cd etc) applicable data.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'id_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'doc_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The display name for this data variable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'display_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A list of possible values for this data variable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'possible_values'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the data variable has an override flag.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'override_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date this was created in the person view.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'create_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the variable was modified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'modify_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source of report.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'report_source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the name of the person completing' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'completed_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The override value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL', @level2type=N'COLUMN',@level2name=N'override_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that maintains person view override information.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PERSON_VIEW_DETAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name of the preference.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PREFERENCE', @level2type=N'COLUMN',@level2name=N'pref_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of preference.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PREFERENCE', @level2type=N'COLUMN',@level2name=N'pref_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the preference.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PREFERENCE', @level2type=N'COLUMN',@level2name=N'descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the preference.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PREFERENCE', @level2type=N'COLUMN',@level2name=N'pref_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating if the field is displayed.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PREFERENCE', @level2type=N'COLUMN',@level2name=N'display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating the field''s display order.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PREFERENCE', @level2type=N'COLUMN',@level2name=N'display_order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Comments or notes regarding the preference.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PREFERENCE', @level2type=N'COLUMN',@level2name=N'notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that maintains information pertaining to preferences that are set for a particular eHARS installation site (e.g., display optional fields, reporting status)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PREFERENCE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Related to document_uid from the document table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies if testing history questionnaire was interview/self-administration or from CTS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ucts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date of interview (today''s date) - (q1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'uqintd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Possibly exposed to HIV in the past 6 months (q3-1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ureas3_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Testing HIV status routinely (q3-2)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ureas3_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Why you (got/are getting) this HIV test today , because you were just checking to make sure you are HIV negative (q3-3)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ureas3_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Why you (got/are getting) this HIV test today, because it was required by either insurance, the military, a court order, or for some other required reason? ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ureas3_4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Why you (got/are getting) this HIV test today , because there is some other reason you want to get tested (q3-5)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ureas3_5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Why you (got/are getting) this HIV test today , because there is some other reason you want to get tested (q3-5)SPECIFY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ur3_5sp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Have you been tested for HIV before today? (q4)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'uptests'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Have you ever had a positive HIV test result?(q4a)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'upastp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When was the first time you ever tested postive for HIV ? - (q4b)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ufposd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Was the first positive HIV test anonymous? (q4c)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ufposa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of site where participant first tested positive for HIV (q4d)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ufpstyp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Site where participant first tested positive for HIV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ufps_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State where participant first tested positive for HIV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ufps_state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Possibly exposed to HIV in the past 6 months (q4e-1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'urs4e_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Why you got your first positive HIV test, because you get tested routinely, and it was time for you to get tested again(q4e-2)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'urs4e_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Why you got your first positive HIV test, because you were just checking to make sure you are HIV negative(q4e-3)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'urs4e_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HIV test required (q4e-4)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'urs4e_4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Why you got your first positive HIV test, because there was some other reason you wanted to get tested(q4e-5)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'urs4e_5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Why you got your first positive HIV test, because there was some other reason you wanted to get tested(q4e-5)SPECIFY' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ur4e_5sp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last HIV negative test date before first positive (or before current test if never tested positive) - (q4f)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ulstnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of site where participant last tested negative for HIV (q4g)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ulstngs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Site where participant last tested negative for HIV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ulstngs_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State where participant last tested negative for HIV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ulstngs_state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of HIV tests in last 2 years (before first positive) (q5)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'unumtsts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First HIV test date - (q6)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'uftstd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Are you taking any HAART on the card now? (q7c)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'qhrtnw'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Have you ever had an HIV test that was negative?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'ungtst'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For those with a  positive test before: in the two years before your first positive test, how many times did you get tested for HIV (Q12)? ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE', @level2type=N'COLUMN',@level2name=N'upnumtsts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information on a person''s pretest questionnaire for incidence surveillance.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PRETEST_QUESTIONNAIRE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a health care provider.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROVIDER_CODE', @level2type=N'COLUMN',@level2name=N'provider_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last name of the health care provider.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROVIDER_CODE', @level2type=N'COLUMN',@level2name=N'last_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first name of the health care provider.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROVIDER_CODE', @level2type=N'COLUMN',@level2name=N'first_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The middle name of the health care provider.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROVIDER_CODE', @level2type=N'COLUMN',@level2name=N'middle_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name suffix of the health care provider.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROVIDER_CODE', @level2type=N'COLUMN',@level2name=N'name_suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name prefix of the health care provider.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROVIDER_CODE', @level2type=N'COLUMN',@level2name=N'name_prefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the health care provider.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROVIDER_CODE', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of speciality for this health care provider.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROVIDER_CODE', @level2type=N'COLUMN',@level2name=N'specialty_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field used by the application to determine if the information for this provider needs to be transferred.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROVIDER_CODE', @level2type=N'COLUMN',@level2name=N'ship_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information about a health care provider.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PROVIDER_CODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A simple unique identifier for the given report.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REPORT', @level2type=N'COLUMN',@level2name=N'report_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the report to be displayed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REPORT', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The default title to be used for the report' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REPORT', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description of the report.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REPORT', @level2type=N'COLUMN',@level2name=N'descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The file reference and name of the .SAS file used to generate the report.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REPORT', @level2type=N'COLUMN',@level2name=N'program_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Default parameters to be used when generating the report' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REPORT', @level2type=N'COLUMN',@level2name=N'parameters'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is a specific SAS parameter that can be passed for some reports as needed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REPORT', @level2type=N'COLUMN',@level2name=N'subset'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that maintains information pertaining to parameters for analysis reports.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'REPORT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The duplicate status value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RIDR', @level2type=N'COLUMN',@level2name=N'duplicate_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state code (statex).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RIDR', @level2type=N'COLUMN',@level2name=N'state_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state STATENO (statenox)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RIDR', @level2type=N'COLUMN',@level2name=N'stateno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date duplicate status was verified.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RIDR', @level2type=N'COLUMN',@level2name=N'last_verify_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person who reviewed the duplicate status entry.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RIDR', @level2type=N'COLUMN',@level2name=N'verify_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Notes or comments entered by the user pertaining to the duplicate status information entered for this person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RIDR', @level2type=N'COLUMN',@level2name=N'comments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RIDR', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a person.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RIDR', @level2type=N'COLUMN',@level2name=N'ehars_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information pertaining to a person''s duplicate status review.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RIDR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RISK', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sequence identifier for a person''s modes of exposure.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RISK', @level2type=N'COLUMN',@level2name=N'risk_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code that designates the person''s risk factor.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RISK', @level2type=N'COLUMN',@level2name=N'risk_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code indicating the risk factorvalue- yes, no, unknown.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RISK', @level2type=N'COLUMN',@level2name=N'risk_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For risk factor- patient received transfusion of blood/blood components- first date the patient received transfusion.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RISK', @level2type=N'COLUMN',@level2name=N'trans_first_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For risk factor- patient received transfusion of blood/blood components- last date the patient received transfusion.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RISK', @level2type=N'COLUMN',@level2name=N'trans_last_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This field captures detailed information about risk factor- type of clotting factor the person had or the occupation, if occupational exposure.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RISK', @level2type=N'COLUMN',@level2name=N'detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field used by the application for display purposes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RISK', @level2type=N'COLUMN',@level2name=N'display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the NIR investigation or COPHI investigation was resolved.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RISK', @level2type=N'COLUMN',@level2name=N'resolution_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code that designates the COPHI investigation status (where applicable).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RISK', @level2type=N'COLUMN',@level2name=N'cophi_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information on a person''s risk factors.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RISK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier (number) assigned to a sample dataset request. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'sample_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name associated with the generated sample dataset.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'project_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of sample to be generated (simple random sample or stratified simple random sample).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source dataset from which the sample will be generated (person- or document-based).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether or not the sampling frame will be saved during sample generation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'frame_output_indicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of observations to be sampled from the sampling frame when generating the sample dataset (entered by user).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'sample_size'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The probability value (1-?) associated with a confidence interval to be used when generating the sample dataset (percentage set at 95).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'confidence_level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of precision (half the width of the confidence interval) to be used when generating the sample dataset (entered by user).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'precision_level'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent increase in sample size to account for non responses to be used when generating the sample dataset (selected by user). ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'inflation_factor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date when the sample was requested and generated. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'generate_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user_id of the person requesting the sample dataset.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'generate_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date when the sample dataset was updated via data import.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'update_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user_id of the person updating the sample dataset via import.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The file name of the sample dataset.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'sample_file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The file name of the sampling frame from which the sample dataset was generated.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING', @level2type=N'COLUMN',@level2name=N'frame_file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table containing information about sample dataset requests and criteria for sample generation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier (number) assigned to a sample dataset request. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING_CRITERIA', @level2type=N'COLUMN',@level2name=N'sample_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If sampling criteria has been selected, the code for the field on which criteria should be applied.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING_CRITERIA', @level2type=N'COLUMN',@level2name=N'sampling_field_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If the field has been selected as inclusion criteria, the value or values selected.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING_CRITERIA', @level2type=N'COLUMN',@level2name=N'inclusion_criteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If the field has been selected as stratification criteria, the value or values selected.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING_CRITERIA', @level2type=N'COLUMN',@level2name=N'stratification_criteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the field should be included on the output generated sample dataset.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING_CRITERIA', @level2type=N'COLUMN',@level2name=N'output_indicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the row was inserted into the table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING_CRITERIA', @level2type=N'COLUMN',@level2name=N'record_insert_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used by the application to display all sampling criteria' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING_CRITERIA', @level2type=N'COLUMN',@level2name=N'display_descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table containing information about fields and field values specified as sample dataset criteria.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SAMPLING_CRITERIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the eHARS group.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ASSIGNMENT', @level2type=N'COLUMN',@level2name=N'ehars_group_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a security item.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ASSIGNMENT', @level2type=N'COLUMN',@level2name=N'security_item_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the person has insert permissions.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ASSIGNMENT', @level2type=N'COLUMN',@level2name=N'insert_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the person has update permissions.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ASSIGNMENT', @level2type=N'COLUMN',@level2name=N'update_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the person has delete permissions.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ASSIGNMENT', @level2type=N'COLUMN',@level2name=N'delete_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if the person has view permissions.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ASSIGNMENT', @level2type=N'COLUMN',@level2name=N'view_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field that indicates if the children inherit the parent''s security.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ASSIGNMENT', @level2type=N'COLUMN',@level2name=N'inherit_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that assigns permissions that a user has within the application (e.g., add, edit, delete documents, access Administration features)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ASSIGNMENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a security item.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ITEM', @level2type=N'COLUMN',@level2name=N'security_item_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the security item.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ITEM', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a security type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ITEM', @level2type=N'COLUMN',@level2name=N'security_type_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier of the parent where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ITEM', @level2type=N'COLUMN',@level2name=N'parent_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field that indicates the display order.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ITEM', @level2type=N'COLUMN',@level2name=N'display_order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the security item.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ITEM', @level2type=N'COLUMN',@level2name=N'descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field that indicates if hot keys apply to this security item.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ITEM', @level2type=N'COLUMN',@level2name=N'access_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URL of the security item.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ITEM', @level2type=N'COLUMN',@level2name=N'item_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that is related to the security_assignment table and classifies similar items (features/functions) within the application (documents, searching) and associates a user''s permissions to these items.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_ITEM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a security type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_TYPE', @level2type=N'COLUMN',@level2name=N'security_type_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the security type.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_TYPE', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that is related to the security_assignment table and groups permissions to document, link, tab or module.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SECURITY_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foregin key to transfer_log table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAIL', @level2type=N'COLUMN',@level2name=N'transfer_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The site identifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAIL', @level2type=N'COLUMN',@level2name=N'site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Document UID which identifies the document which is being processed in the transferred' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAIL', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ship_flag of the document which is set in the document table at the time of transfer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAIL', @level2type=N'COLUMN',@level2name=N'last_ship_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of action requested. Possible values: "I" (Insert), "U" (Update), "D" (Delete), "R" (Remove)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAIL', @level2type=N'COLUMN',@level2name=N'request_action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of action performed at CDC. Possible values: "I" (Insert), "U" (Update), "D" (Delete), "R" (Remove)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAIL', @level2type=N'COLUMN',@level2name=N'cdc_action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status of the transfer. Possible values: "S" (Sent), "A" (Acknowledged)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAIL', @level2type=N'COLUMN',@level2name=N'transfer_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Error Code which denotes the reason for the failure of the transfer if in case for that particular document' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAIL', @level2type=N'COLUMN',@level2name=N'error_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Error message which details the reason for the failure of the transfer if in case for that particular document' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAIL', @level2type=N'COLUMN',@level2name=N'error_descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that is related to the transfer_detail table maintains information pertaining to the actual documents that were transferred and if the document was acknowledged.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foregin key to transfer_logCDC.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILCDC', @level2type=N'COLUMN',@level2name=N'transfer_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'	The site identifier.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILCDC', @level2type=N'COLUMN',@level2name=N'site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Document UID which identifies the document which is being processed in the transfer process.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILCDC', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ship flag of the document which is set in the document table at the time of transfer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILCDC', @level2type=N'COLUMN',@level2name=N'last_ship_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of action requested. Possible values: "I" (Insert), "U" (Update), "D" (Delete), "R" (Remove).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILCDC', @level2type=N'COLUMN',@level2name=N'request_action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of action performed at CDC. Possible values: "I" (Insert), "U" (Update), "D" (Delete), "R" (Remove).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILCDC', @level2type=N'COLUMN',@level2name=N'cdc_action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status of the transfer. Possible values: "S" (Sent), "A" (Acknowledged).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILCDC', @level2type=N'COLUMN',@level2name=N'transfer_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Error Code which denotes the reason for the failure of the transfer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILCDC', @level2type=N'COLUMN',@level2name=N'error_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Error message which details the reason for the failure of the transfer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILCDC', @level2type=N'COLUMN',@level2name=N'error_descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that maintains information pertaining to the transfer files that are being generated by the state.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILCDC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Foregin key to transfer_logState.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILState', @level2type=N'COLUMN',@level2name=N'transfer_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'	The site identifier.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILState', @level2type=N'COLUMN',@level2name=N'site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Document UID which identifies the document which is being processed in the transfer process.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILState', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ship flag of the document which is set in the document table at the time of transfer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILState', @level2type=N'COLUMN',@level2name=N'last_ship_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of action requested. Possible values: "I" (Insert), "U" (Update), "D" (Delete), "R" (Remove).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILState', @level2type=N'COLUMN',@level2name=N'request_action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of action performed at CDC. Possible values: "I" (Insert), "U" (Update), "D" (Delete), "R" (Remove).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILState', @level2type=N'COLUMN',@level2name=N'cdc_action_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Status of the transfer. Possible values: "S" (Sent), "A" (Acknowledged).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILState', @level2type=N'COLUMN',@level2name=N'transfer_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Error Code which denotes the reason for the failure of the transfer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILState', @level2type=N'COLUMN',@level2name=N'error_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Error message which details the reason for the failure of the transfer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILState', @level2type=N'COLUMN',@level2name=N'error_descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that maintains information pertaining to the transfer files that are being generated by the state.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_DETAILState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the table which needs to be referred for data transfer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_ELEMENT', @level2type=N'COLUMN',@level2name=N'table_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the column which needs to be referred in the table specified in the table_name column.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_ELEMENT', @level2type=N'COLUMN',@level2name=N'column_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code or uid value which needs to be referred(if applicable) in the column specified in the column_name column.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_ELEMENT', @level2type=N'COLUMN',@level2name=N'column_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Category code which denotes whether the transfer process needs to refer just the column name or both column name and its value. (1 - Column name alone. 2 - Column name and its value)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_ELEMENT', @level2type=N'COLUMN',@level2name=N'category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Used in the data transfer process to determine the transfer fields based on the data stored in this table' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_ELEMENT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for the transfer_log tabe which identifes each data transfer invocations' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOG', @level2type=N'COLUMN',@level2name=N'transfer_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The site identifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOG', @level2type=N'COLUMN',@level2name=N'site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the current status of the data transfer process' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOG', @level2type=N'COLUMN',@level2name=N'process_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of file which is being transferred' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOG', @level2type=N'COLUMN',@level2name=N'file_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the transfer data file which was sent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOG', @level2type=N'COLUMN',@level2name=N'request_file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the acknowledgement file which was received ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOG', @level2type=N'COLUMN',@level2name=N'response_file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of records which was transferred' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOG', @level2type=N'COLUMN',@level2name=N'record_count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Time when the transferred was invocked' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOG', @level2type=N'COLUMN',@level2name=N'create_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Time when the transferred was acknowledged' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOG', @level2type=N'COLUMN',@level2name=N'acknowledge_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Error Code which denotes the reason for the failure of the transfer if in case' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOG', @level2type=N'COLUMN',@level2name=N'error_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Error message which details the reason for the failure of the transfer if in case' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOG', @level2type=N'COLUMN',@level2name=N'error_descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'States transfer uid.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOG', @level2type=N'COLUMN',@level2name=N'transfer_uid_state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that maintains information pertaining to the transfer files that are being generated (who created the file, when it created, filename etc.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for the transfer_log tabe which identifes each data transfer invocations.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGCDC', @level2type=N'COLUMN',@level2name=N'transfer_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The site identifier.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGCDC', @level2type=N'COLUMN',@level2name=N'site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the current status of the data transfer process.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGCDC', @level2type=N'COLUMN',@level2name=N'process_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of file which is being transferred.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGCDC', @level2type=N'COLUMN',@level2name=N'file_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the transfer data file which was sent.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGCDC', @level2type=N'COLUMN',@level2name=N'request_file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the acknowledgement file which was received.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGCDC', @level2type=N'COLUMN',@level2name=N'response_file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of records which was transferred.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGCDC', @level2type=N'COLUMN',@level2name=N'record_count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Time when the transferred was invocked.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGCDC', @level2type=N'COLUMN',@level2name=N'create_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Time when the transferred was acknowledged.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGCDC', @level2type=N'COLUMN',@level2name=N'acknowledge_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Error Code which denotes the reason for the failure of the transfer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGCDC', @level2type=N'COLUMN',@level2name=N'error_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Error message which details the reason for the failure of the transfer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGCDC', @level2type=N'COLUMN',@level2name=N'error_descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'States Transfer UID.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGCDC', @level2type=N'COLUMN',@level2name=N'transfer_uid_state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that maintains information pertaining to the transfer files that are being generated by the state.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGCDC'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for the transfer_log tabe which identifes each data transfer invocations.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGState', @level2type=N'COLUMN',@level2name=N'transfer_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The site identifier.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGState', @level2type=N'COLUMN',@level2name=N'site_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the current status of the data transfer process.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGState', @level2type=N'COLUMN',@level2name=N'process_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of file which is being transferred.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGState', @level2type=N'COLUMN',@level2name=N'file_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the transfer data file which was sent.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGState', @level2type=N'COLUMN',@level2name=N'request_file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the acknowledgement file which was received.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGState', @level2type=N'COLUMN',@level2name=N'response_file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of records which was transferred.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGState', @level2type=N'COLUMN',@level2name=N'record_count'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Time when the transferred was invocked.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGState', @level2type=N'COLUMN',@level2name=N'create_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Time when the transferred was acknowledged.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGState', @level2type=N'COLUMN',@level2name=N'acknowledge_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Error Code which denotes the reason for the failure of the transfer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGState', @level2type=N'COLUMN',@level2name=N'error_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Error message which details the reason for the failure of the transfer.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGState', @level2type=N'COLUMN',@level2name=N'error_descr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that maintains information pertaining to the transfer files that are being generated by the state.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TRANSFER_LOGState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'unique key for user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_GROUP', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ehars group uid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_GROUP', @level2type=N'COLUMN',@level2name=N'ehars_group_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system table that assigns users to groups.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_GROUP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZIP_CITY', @level2type=N'COLUMN',@level2name=N'zip_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual field containing the city name and state code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZIP_CITY', @level2type=N'COLUMN',@level2name=N'city_name_state_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual field that contains all cities belonging to this zip code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZIP_CITY', @level2type=N'COLUMN',@level2name=N'city_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual field containing all counties belonging to this zip code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZIP_CITY', @level2type=N'COLUMN',@level2name=N'cnty_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state postal code.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZIP_CITY', @level2type=N'COLUMN',@level2name=N'state_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code table describing zip codes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ZIP_CITY'
GO

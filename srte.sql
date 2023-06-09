USE [NBS_SRTE]
GO
/****** Object:  Table [dbo].[Anatomic_site_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Anatomic_site_code](
	[anatomic_site_uid] [bigint] NOT NULL,
	[code_set_nm] [varchar](256) NOT NULL,
	[seq_num] [smallint] NOT NULL,
	[code] [varchar](20) NOT NULL,
	[anatomic_site_desc_txt] [varchar](300) NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[nbs_uid] [bigint] NULL,
	[is_modifiable_ind] [char](1) NULL CONSTRAINT [DF__Anatomic___is_mo__32767D0B]  DEFAULT ('N'),
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [PK_Anatomic_site_code234] PRIMARY KEY CLUSTERED 
(
	[anatomic_site_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UQ__Anatomic_site_co__318258D2] UNIQUE NONCLUSTERED 
(
	[nbs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[City_code_value]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City_code_value](
	[code] [varchar](20) NOT NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_desc_txt] [varchar](255) NULL,
	[code_short_desc_txt] [varchar](50) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[excluded_txt] [varchar](256) NULL,
	[indent_level_nbr] [smallint] NULL,
	[is_modifiable_ind] [char](1) NULL,
	[parent_is_cd] [varchar](20) NULL,
	[status_cd] [varchar](1) NULL,
	[status_time] [datetime] NULL,
	[code_set_nm] [varchar](256) NULL,
	[seq_num] [smallint] NULL,
	[nbs_uid] [int] NULL,
	[source_concept_id] [varchar](20) NULL,
 CONSTRAINT [PK_City_code_value] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cntycity_code_value]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cntycity_code_value](
	[cnty_code] [varchar](20) NOT NULL,
	[city_code] [varchar](20) NOT NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
 CONSTRAINT [PK_Cntycity_code_value] PRIMARY KEY CLUSTERED 
(
	[cnty_code] ASC,
	[city_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Code_to_condition]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Code_to_condition](
	[code_system_cd] [varchar](256) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[code] [varchar](20) NULL,
	[code_desc_txt] [varchar](256) NULL,
	[code_system_version_id] [varchar](256) NULL,
	[condition_cd] [varchar](20) NULL,
	[disease_nm] [varchar](200) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[nbs_uid] [int] NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Code_value_clinical]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Code_value_clinical](
	[code_set_nm] [varchar](256) NOT NULL,
	[seq_num] [smallint] NOT NULL,
	[code] [varchar](20) NOT NULL,
	[snomed_cd] [varchar](20) NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[order_number] [smallint] NOT NULL,
	[code_desc_txt] [varchar](300) NULL,
	[code_short_desc_txt] [varchar](50) NULL,
	[code_system_code] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[common_name] [varchar](300) NULL,
	[other_names] [varchar](300) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [PK_Clinical_code_value257] PRIMARY KEY CLUSTERED 
(
	[code_set_nm] ASC,
	[seq_num] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Code_value_general]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Code_value_general](
	[code_set_nm] [varchar](256) NOT NULL,
	[code] [varchar](20) NOT NULL,
	[code_desc_txt] [varchar](300) NULL,
	[code_short_desc_txt] [varchar](100) NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[indent_level_nbr] [smallint] NULL,
	[is_modifiable_ind] [char](1) NULL CONSTRAINT [DF__Code_valu__is_mo__7B905C75]  DEFAULT ('Y'),
	[nbs_uid] [int] NULL,
	[parent_is_cd] [varchar](20) NULL,
	[source_concept_id] [varchar](20) NULL,
	[super_code_set_nm] [varchar](256) NULL,
	[super_code] [varchar](20) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[concept_type_cd] [varchar](20) NULL,
	[concept_code] [varchar](256) NULL,
	[concept_nm] [varchar](256) NULL,
	[concept_preferred_nm] [varchar](256) NULL,
	[concept_status_cd] [varchar](256) NULL,
	[concept_status_time] [datetime] NULL,
	[code_system_version_nbr] [varchar](256) NULL,
	[concept_order_nbr] [int] NULL,
	[admin_comments] [varchar](2000) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
 CONSTRAINT [PK_Code_value_general] PRIMARY KEY CLUSTERED 
(
	[code_set_nm] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Codeset]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Codeset](
	[code_set_nm] [varchar](256) NOT NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_set_desc_txt] [varchar](2000) NULL,
	[class_cd] [varchar](30) NOT NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[is_modifiable_ind] [char](1) NULL,
	[nbs_uid] [int] NULL,
	[source_version_txt] [varchar](20) NULL,
	[source_domain_nm] [varchar](50) NULL,
	[status_cd] [varchar](1) NULL,
	[status_to_time] [datetime] NULL,
	[code_set_group_id] [bigint] NULL,
	[admin_comments] [varchar](2000) NULL,
	[value_set_nm] [varchar](256) NULL,
	[ldf_picklist_ind_cd] [char](1) NULL,
	[value_set_code] [varchar](256) NULL,
	[value_set_type_cd] [varchar](20) NULL,
	[value_set_oid] [varchar](256) NULL,
	[value_set_status_cd] [varchar](256) NULL,
	[value_set_status_time] [datetime] NULL,
	[parent_is_cd] [bigint] NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
 CONSTRAINT [PK_Codeset] PRIMARY KEY CLUSTERED 
(
	[class_cd] ASC,
	[code_set_nm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Codeset_Group_Metadata]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Codeset_Group_Metadata](
	[code_set_nm] [varchar](256) NOT NULL,
	[code_set_group_id] [bigint] NOT NULL,
	[vads_value_set_code] [varchar](256) NULL,
	[code_set_desc_txt] [varchar](2000) NULL,
	[code_set_short_desc_txt] [varchar](2000) NULL,
	[ldf_picklist_ind_cd] [char](1) NULL,
	[phin_std_val_ind] [char](1) NULL,
 CONSTRAINT [PK_Codeset_group41] PRIMARY KEY NONCLUSTERED 
(
	[code_set_group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Condition_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Condition_code](
	[condition_cd] [varchar](20) NOT NULL,
	[condition_codeset_nm] [varchar](256) NULL,
	[condition_seq_num] [smallint] NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[condition_desc_txt] [varchar](300) NULL,
	[condition_short_nm] [varchar](50) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[indent_level_nbr] [smallint] NULL,
	[investigation_form_cd] [varchar](50) NULL,
	[is_modifiable_ind] [char](1) NULL,
	[nbs_uid] [bigint] NULL,
	[nnd_ind] [char](1) NOT NULL,
	[parent_is_cd] [varchar](20) NULL,
	[prog_area_cd] [varchar](20) NULL,
	[reportable_morbidity_ind] [char](1) NOT NULL,
	[reportable_summary_ind] [char](1) NOT NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[nnd_entity_identifier] [varchar](200) NULL,
	[nnd_summary_entity_identifier] [varchar](200) NULL,
	[summary_investigation_form_cd] [varchar](50) NULL,
	[contact_tracing_enable_ind] [char](1) NULL CONSTRAINT [DF_Condition_code_3101]  DEFAULT ('Y'),
	[vaccine_enable_ind] [char](1) NULL,
	[treatment_enable_ind] [char](1) NULL,
	[lab_report_enable_ind] [char](1) NULL,
	[morb_report_enable_ind] [char](1) NULL,
	[port_req_ind_cd] [char](1) NULL,
	[family_cd] [varchar](256) NULL,
	[coinfection_grp_cd] [varchar](20) NULL,
	[rhap_parse_nbs_ind] [varchar](1) NULL,
	[rhap_action_value] [varchar](200) NULL,
 CONSTRAINT [PK_Condition_code182] PRIMARY KEY CLUSTERED 
(
	[condition_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country_code](
	[code] [varchar](20) NOT NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_desc_txt] [varchar](255) NULL,
	[code_short_desc_txt] [varchar](50) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[excluded_txt] [varchar](1300) NULL,
	[key_info_txt] [varchar](2000) NULL,
	[indent_level_nbr] [smallint] NULL,
	[is_modifiable_ind] [char](1) NULL,
	[parent_is_cd] [varchar](20) NULL,
	[status_cd] [varchar](1) NULL,
	[status_time] [datetime] NULL,
	[code_set_nm] [varchar](256) NULL,
	[seq_num] [smallint] NULL,
	[nbs_uid] [int] NULL,
	[source_concept_id] [varchar](20) NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
 CONSTRAINT [PK_Country_code] PRIMARY KEY NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country_Code_ISO]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country_Code_ISO](
	[code_set_nm] [varchar](256) NOT NULL,
	[seq_num] [smallint] NOT NULL,
	[code] [varchar](20) NOT NULL,
	[code_desc_txt] [varchar](100) NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[code_short_desc_txt] [varchar](100) NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[status_cd] [varchar](1) NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [PK_CntryCd_codeSetNmSeqNumCCd] PRIMARY KEY NONCLUSTERED 
(
	[code_set_nm] ASC,
	[seq_num] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Country_XREF]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country_XREF](
	[country_xref_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[from_code_set_nm] [varchar](256) NOT NULL,
	[from_seq_num] [smallint] NOT NULL,
	[from_code] [varchar](20) NOT NULL,
	[from_code_desc_txt] [varchar](100) NULL,
	[to_code_set_nm] [varchar](256) NOT NULL,
	[to_seq_num] [smallint] NOT NULL,
	[to_code] [varchar](20) NOT NULL,
	[to_code_desc_txt] [varchar](50) NULL,
	[to_code_system_cd] [varchar](300) NULL,
	[status_cd] [varchar](1) NULL,
	[status_time] [datetime] NULL,
	[alpha2_to_code] [varchar](2) NULL,
 CONSTRAINT [PK_CntryXR_countryXrefUid] PRIMARY KEY NONCLUSTERED 
(
	[country_xref_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ELR_XREF]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ELR_XREF](
	[from_code_set_nm] [varchar](256) NOT NULL,
	[from_seq_num] [smallint] NOT NULL,
	[from_code] [varchar](20) NOT NULL,
	[to_code_set_nm] [varchar](256) NOT NULL,
	[to_seq_num] [smallint] NOT NULL,
	[to_code] [varchar](20) NOT NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[laboratory_id] [varchar](20) NULL,
	[nbs_uid] [int] NULL,
 CONSTRAINT [PK_ELR_XREF190] PRIMARY KEY CLUSTERED 
(
	[from_code_set_nm] ASC,
	[from_seq_num] ASC,
	[from_code] ASC,
	[to_code_set_nm] ASC,
	[to_seq_num] ASC,
	[to_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IMRDBMapping]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IMRDBMapping](
	[IMRDBMapping_id] [int] IDENTITY(1,1) NOT NULL,
	[unique_cd] [varchar](255) NULL,
	[unique_name] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[DB_table] [varchar](255) NULL,
	[DB_field] [varchar](255) NULL,
	[RDB_table] [varchar](255) NULL,
	[RDB_attribute] [varchar](255) NULL,
	[other_attributes] [varchar](255) NULL,
	[condition_cd] [varchar](255) NULL,
 CONSTRAINT [PK_IMRDBMapping] PRIMARY KEY CLUSTERED 
(
	[IMRDBMapping_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Investigation_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Investigation_code](
	[investigation_cd] [varchar](20) NOT NULL,
	[investigation_desc_txt] [varchar](255) NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](80) NULL,
	[code_version] [varchar](10) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[status_cd] [varchar](1) NULL,
	[status_time] [datetime] NULL,
	[nbs_uid] [smallint] NULL,
	[source_concept_id] [varchar](20) NULL,
	[code_set_nm] [varchar](256) NOT NULL,
	[seq_num] [smallint] NOT NULL,
 CONSTRAINT [PK_investigation_code212] PRIMARY KEY CLUSTERED 
(
	[investigation_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jurisdiction_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Jurisdiction_code](
	[code] [varchar](20) NOT NULL,
	[type_cd] [varchar](20) NOT NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_desc_txt] [varchar](255) NULL,
	[code_short_desc_txt] [varchar](50) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[indent_level_nbr] [smallint] NULL,
	[is_modifiable_ind] [char](1) NULL CONSTRAINT [DF__Jurisdict__is_mo__060DEAE8]  DEFAULT ('Y'),
	[parent_is_cd] [varchar](20) NULL,
	[state_domain_cd] [varchar](20) NULL,
	[status_cd] [varchar](1) NULL CONSTRAINT [DF__Jurisdict__statu__07020F21]  DEFAULT ('A'),
	[status_time] [datetime] NULL,
	[code_set_nm] [varchar](256) NULL,
	[code_seq_num] [smallint] NULL,
	[nbs_uid] [int] NULL,
	[source_concept_id] [varchar](20) NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[export_ind] [char](1) NULL,
 CONSTRAINT [PK_Jurisdiction_code] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jurisdiction_participation]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Jurisdiction_participation](
	[jurisdiction_cd] [varchar](20) NOT NULL,
	[fips_cd] [varchar](20) NOT NULL,
	[type_cd] [varchar](20) NOT NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
 CONSTRAINT [PK_City_Jurisdiction176] PRIMARY KEY CLUSTERED 
(
	[jurisdiction_cd] ASC,
	[fips_cd] ASC,
	[type_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lab_coding_system]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lab_coding_system](
	[laboratory_id] [varchar](20) NOT NULL,
	[laboratory_system_desc_txt] [varchar](100) NULL,
	[coding_system_cd] [varchar](20) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[electronic_lab_ind] [char](1) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[nbs_uid] [bigint] NULL,
 CONSTRAINT [PK_Lab199] PRIMARY KEY CLUSTERED 
(
	[laboratory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lab_result]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lab_result](
	[lab_result_cd] [varchar](20) NOT NULL,
	[laboratory_id] [varchar](20) NOT NULL,
	[lab_result_desc_txt] [varchar](50) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[nbs_uid] [bigint] NULL,
	[default_prog_area_cd] [varchar](20) NULL,
	[organism_name_ind] [char](1) NULL,
	[default_condition_cd] [varchar](20) NULL,
	[pa_derivation_exclude_cd] [char](1) NULL CONSTRAINT [df_pa_derivation_exclude_cd2]  DEFAULT ('N'),
	[code_system_cd] [varchar](300) NULL,
	[code_set_nm] [varchar](256) NULL,
 CONSTRAINT [PK_Lab_result204] PRIMARY KEY CLUSTERED 
(
	[lab_result_cd] ASC,
	[laboratory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lab_result_Snomed]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lab_result_Snomed](
	[lab_result_cd] [varchar](20) NOT NULL,
	[laboratory_id] [varchar](20) NOT NULL,
	[snomed_cd] [varchar](20) NOT NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [PK_Lab_result_SNOMED205] PRIMARY KEY CLUSTERED 
(
	[lab_result_cd] ASC,
	[laboratory_id] ASC,
	[snomed_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lab_test]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lab_test](
	[lab_test_cd] [varchar](20) NOT NULL,
	[laboratory_id] [varchar](20) NOT NULL,
	[lab_test_desc_txt] [varchar](100) NULL,
	[test_type_cd] [varchar](20) NOT NULL,
	[nbs_uid] [bigint] NOT NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[default_prog_area_cd] [varchar](20) NULL,
	[default_condition_cd] [varchar](20) NULL,
	[drug_test_ind] [char](1) NULL,
	[organism_result_test_ind] [char](1) NULL,
	[indent_level_nbr] [smallint] NULL,
	[pa_derivation_exclude_cd] [char](1) NULL CONSTRAINT [df_pa_derivation_exclude_cd1]  DEFAULT ('N'),
 CONSTRAINT [PK_Lab_test183] PRIMARY KEY CLUSTERED 
(
	[lab_test_cd] ASC,
	[laboratory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Labtest_loinc]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Labtest_loinc](
	[lab_test_cd] [varchar](20) NOT NULL,
	[laboratory_id] [varchar](20) NOT NULL,
	[loinc_cd] [varchar](20) NOT NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [PK_T_98189] PRIMARY KEY CLUSTERED 
(
	[lab_test_cd] ASC,
	[laboratory_id] ASC,
	[loinc_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Labtest_Progarea_Mapping]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Labtest_Progarea_Mapping](
	[lab_test_cd] [varchar](20) NOT NULL,
	[laboratory_id] [varchar](20) NOT NULL,
	[lab_test_desc_txt] [varchar](100) NULL,
	[test_type_cd] [varchar](20) NOT NULL,
	[condition_cd] [varchar](20) NULL,
	[condition_short_nm] [varchar](50) NULL,
	[condition_desc_txt] [varchar](300) NULL,
	[prog_area_cd] [varchar](20) NOT NULL,
	[prog_area_desc_txt] [varchar](50) NOT NULL,
	[organism_result_test_ind] [char](1) NULL,
	[indent_level_nbr] [smallint] NULL,
 CONSTRAINT [PK_Labtest_Progarea_Mapping] PRIMARY KEY CLUSTERED 
(
	[lab_test_cd] ASC,
	[laboratory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Language_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Language_code](
	[code] [varchar](20) NOT NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_desc_txt] [varchar](255) NULL,
	[code_short_desc_txt] [varchar](50) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[key_info_txt] [varchar](2000) NULL,
	[indent_level_nbr] [smallint] NULL,
	[is_modifiable_ind] [char](1) NULL CONSTRAINT [DF__Language___is_mo__15502E78]  DEFAULT ('Y'),
	[parent_is_cd] [varchar](20) NULL,
	[nbs_uid] [int] IDENTITY(1,1) NOT NULL,
	[status_cd] [varchar](1) NULL CONSTRAINT [DF__Language___statu__164452B1]  DEFAULT ('A'),
	[status_time] [datetime] NULL,
	[code_set_nm] [varchar](256) NULL,
	[seq_num] [smallint] NULL,
	[source_concept_id] [varchar](20) NULL,
 CONSTRAINT [PK_ISO_language_code_value] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LDF_page_set]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LDF_page_set](
	[ldf_page_id] [varchar](20) NOT NULL,
	[business_object_nm] [varchar](20) NULL,
	[condition_cd] [varchar](20) NULL,
	[ui_display] [varchar](10) NULL,
	[indent_level_nbr] [smallint] NULL,
	[parent_is_cd] [varchar](20) NULL,
	[code_set_nm] [varchar](256) NULL,
	[seq_num] [smallint] NULL,
	[code_version] [varchar](10) NULL,
	[nbs_uid] [int] NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[code_short_desc_txt] [varchar](50) NULL,
	[display_row] [smallint] NULL,
	[display_column] [smallint] NULL,
 CONSTRAINT [PK_LDF_PAGE_SET] PRIMARY KEY CLUSTERED 
(
	[ldf_page_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOINC_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOINC_code](
	[loinc_cd] [varchar](20) NOT NULL,
	[component_name] [varchar](200) NULL,
	[property] [varchar](10) NULL,
	[time_aspect] [varchar](10) NULL,
	[system_cd] [varchar](50) NULL,
	[scale_type] [varchar](20) NULL,
	[method_type] [varchar](50) NULL,
	[display_nm] [varchar](300) NULL,
	[nbs_uid] [bigint] NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[related_class_cd] [varchar](50) NULL,
	[pa_derivation_exclude_cd] [char](1) NULL CONSTRAINT [df_pa_derivation_exclude_cd3]  DEFAULT ('N'),
 CONSTRAINT [PK_LOINC_code179] PRIMARY KEY CLUSTERED 
(
	[loinc_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Loinc_condition]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Loinc_condition](
	[loinc_cd] [varchar](20) NOT NULL,
	[condition_cd] [varchar](20) NOT NULL,
	[disease_nm] [varchar](200) NULL,
	[reported_value] [varchar](20) NULL,
	[reported_numeric_value] [varchar](20) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
 CONSTRAINT [PK_loinc_cd] PRIMARY KEY CLUSTERED 
(
	[loinc_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Loinc_snomed_condition]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Loinc_snomed_condition](
	[loinc_snomed_cc_uid] [bigint] NOT NULL,
	[snomed_cd] [varchar](20) NULL,
	[loinc_cd] [varchar](20) NOT NULL,
	[condition_cd] [varchar](20) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
 CONSTRAINT [PK_Dwyer_event187] PRIMARY KEY CLUSTERED 
(
	[loinc_snomed_cc_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NAICS_Industry_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NAICS_Industry_code](
	[code] [varchar](20) NOT NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_desc_txt] [varchar](255) NULL,
	[code_short_desc_txt] [varchar](50) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[key_info_txt] [varchar](2000) NULL,
	[indent_level_nbr] [smallint] NULL,
	[is_modifiable_ind] [char](1) NULL CONSTRAINT [DF__NAICS_Ind__is_mo__1ED998B2]  DEFAULT ('Y'),
	[parent_is_cd] [varchar](20) NULL,
	[status_cd] [varchar](1) NULL CONSTRAINT [DF__NAICS_Ind__statu__1FCDBCEB]  DEFAULT ('A'),
	[status_time] [datetime] NULL,
	[code_set_nm] [varchar](256) NULL,
	[seq_num] [smallint] NULL,
	[nbs_uid] [int] NULL,
	[source_concept_id] [varchar](20) NULL,
 CONSTRAINT [PK_NAICS] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Occupation_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Occupation_code](
	[code] [varchar](20) NOT NULL,
	[naics_industry_cd] [varchar](20) NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_desc_txt] [varchar](255) NULL,
	[code_short_desc_txt] [varchar](100) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[key_info_txt] [varchar](2000) NULL,
	[indent_level_nbr] [smallint] NULL,
	[is_modifiable_ind] [char](1) NULL,
	[parent_is_cd] [varchar](20) NULL,
	[status_cd] [varchar](1) NULL,
	[status_time] [datetime] NULL,
	[code_set_nm] [varchar](256) NULL,
	[seq_num] [smallint] NULL,
	[nbs_uid] [int] NULL,
	[source_concept_id] [varchar](20) NULL,
 CONSTRAINT [PK_Occupation_code] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[organizationUidLabel]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[organizationUidLabel](
	[organization_uid] [bigint] NOT NULL,
	[display_nm] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Participation_type]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Participation_type](
	[act_class_cd] [varchar](20) NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[subject_class_cd] [varchar](20) NOT NULL,
	[type_cd] [varchar](50) NOT NULL,
	[type_desc_txt] [varchar](100) NOT NULL,
	[question_identifier] [varchar](50) NOT NULL,
	[type_prefix] [varchar](8) NOT NULL DEFAULT ((0)),
 CONSTRAINT [PK_participation_type] PRIMARY KEY CLUSTERED 
(
	[act_class_cd] ASC,
	[subject_class_cd] ASC,
	[type_cd] ASC,
	[question_identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Program_area_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Program_area_code](
	[prog_area_cd] [varchar](20) NOT NULL,
	[prog_area_desc_txt] [varchar](50) NULL,
	[nbs_uid] [int] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[code_set_nm] [varchar](256) NULL,
	[code_seq] [smallint] NULL,
 CONSTRAINT [PK_Program_area_code196] PRIMARY KEY CLUSTERED 
(
	[prog_area_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Race_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Race_code](
	[code] [varchar](20) NOT NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_desc_txt] [varchar](255) NULL,
	[code_short_desc_txt] [varchar](50) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[excluded_txt] [varchar](256) NULL,
	[key_info_txt] [varchar](2000) NULL,
	[indent_level_nbr] [smallint] NULL,
	[is_modifiable_ind] [char](1) NULL CONSTRAINT [DF__Race_code__is_mo__2E1BDC42]  DEFAULT ('Y'),
	[parent_is_cd] [varchar](20) NULL,
	[status_cd] [varchar](1) NULL CONSTRAINT [DF__Race_code__statu__2F10007B]  DEFAULT ('A'),
	[status_time] [datetime] NULL,
	[code_set_nm] [varchar](256) NULL,
	[seq_num] [smallint] NULL,
	[nbs_uid] [int] NULL,
	[source_concept_id] [varchar](20) NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
 CONSTRAINT [PK_Race_code] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Snomed_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Snomed_code](
	[snomed_cd] [varchar](20) NOT NULL,
	[snomed_desc_txt] [varchar](100) NULL,
	[source_concept_id] [varchar](20) NOT NULL,
	[source_version_id] [varchar](20) NOT NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[nbs_uid] [int] NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[pa_derivation_exclude_cd] [char](1) NULL CONSTRAINT [df_pa_derivation_exclude_cd4]  DEFAULT ('N'),
 CONSTRAINT [PK_SNOMED_code180] PRIMARY KEY NONCLUSTERED 
(
	[snomed_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Snomed_condition]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Snomed_condition](
	[snomed_cd] [varchar](20) NOT NULL,
	[condition_cd] [varchar](20) NOT NULL,
	[disease_nm] [varchar](200) NULL,
	[organism_set_nm] [varchar](100) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Specimen_source_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Specimen_source_code](
	[specimen_source_uid] [bigint] NOT NULL,
	[code_set_nm] [varchar](256) NOT NULL,
	[seq_num] [smallint] NOT NULL,
	[code] [varchar](20) NOT NULL,
	[specimen_source_desc_txt] [varchar](300) NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[is_modifiable_ind] [char](1) NULL CONSTRAINT [DF__Specimen___is_mo__373B3228]  DEFAULT ('N'),
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [PK_Specimen_source_code233] PRIMARY KEY CLUSTERED 
(
	[specimen_source_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Standard_XREF]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Standard_XREF](
	[standard_xref_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[from_code_set_nm] [varchar](256) NOT NULL,
	[from_seq_num] [smallint] NOT NULL,
	[from_code] [varchar](20) NOT NULL,
	[from_code_desc_txt] [varchar](300) NULL,
	[to_code_set_nm] [varchar](256) NOT NULL,
	[to_seq_num] [smallint] NOT NULL,
	[to_code] [varchar](20) NOT NULL,
	[to_code_desc_txt] [varchar](300) NULL,
	[to_code_system_cd] [varchar](300) NULL,
	[status_cd] [varchar](1) NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [PK_StdXREF_standardXrefUid] PRIMARY KEY NONCLUSTERED 
(
	[standard_xref_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State_code](
	[state_cd] [varchar](20) NOT NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[state_nm] [varchar](2) NULL,
	[code_desc_txt] [varchar](50) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[excluded_txt] [varchar](1300) NULL,
	[indent_level_nbr] [smallint] NULL,
	[is_modifiable_ind] [char](1) NULL,
	[key_info_txt] [varchar](2000) NULL,
	[parent_is_cd] [varchar](20) NULL,
	[status_cd] [varchar](1) NULL,
	[status_time] [datetime] NULL,
	[code_set_nm] [varchar](256) NULL,
	[seq_num] [smallint] NULL,
	[nbs_uid] [int] NULL,
	[source_concept_id] [varchar](20) NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
 CONSTRAINT [PK_State_code] PRIMARY KEY CLUSTERED 
(
	[state_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State_county_code_value]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State_county_code_value](
	[code] [varchar](20) NOT NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_desc_txt] [varchar](255) NULL,
	[code_short_desc_txt] [varchar](50) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[excluded_txt] [varchar](256) NULL,
	[Indent_level_nbr] [smallint] NULL,
	[is_modifiable_ind] [char](1) NULL,
	[parent_is_cd] [varchar](20) NULL,
	[status_cd] [varchar](1) NULL,
	[status_time] [datetime] NULL,
	[code_set_nm] [varchar](256) NULL,
	[seq_num] [smallint] NULL,
	[nbs_uid] [int] NULL,
	[source_concept_id] [varchar](20) NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
 CONSTRAINT [PK_State_county_code_value_1] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State_model]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State_model](
	[business_trigger_code_set_nm] [varchar](256) NOT NULL,
	[business_trigger_set_seq_num] [smallint] NOT NULL,
	[business_trigger_code] [varchar](20) NOT NULL,
	[module_cd] [varchar](20) NOT NULL,
	[record_status_code_set_nm] [varchar](256) NOT NULL,
	[record_status_from_code] [varchar](20) NOT NULL,
	[record_status_to_code] [varchar](20) NOT NULL,
	[record_status_seq_nm] [smallint] NOT NULL,
	[object_status_code_set_nm] [varchar](256) NOT NULL,
	[object_status_from_code] [varchar](20) NOT NULL,
	[object_status_to_code] [varchar](20) NOT NULL,
	[object_status_seq_nm] [smallint] NOT NULL,
	[nbs_uid] [int] NULL,
 CONSTRAINT [PK_State_model172] PRIMARY KEY CLUSTERED 
(
	[business_trigger_code_set_nm] ASC,
	[business_trigger_set_seq_num] ASC,
	[business_trigger_code] ASC,
	[module_cd] ASC,
	[record_status_from_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TotalIDM]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TotalIDM](
	[TotalIDM_id] [int] IDENTITY(1,1) NOT NULL,
	[unique_cd] [nvarchar](255) NULL,
	[SRT_reference] [nvarchar](255) NULL,
	[format] [nvarchar](255) NULL,
	[label] [nvarchar](255) NULL,
 CONSTRAINT [PK_TotalIDM] PRIMARY KEY CLUSTERED 
(
	[TotalIDM_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Treatment_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment_code](
	[treatment_cd] [varchar](20) NOT NULL,
	[treatment_desc_txt] [varchar](300) NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](80) NULL,
	[code_version] [varchar](10) NULL,
	[treatment_type_cd] [char](1) NULL,
	[nbs_uid] [smallint] NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[status_cd] [varchar](1) NULL,
	[status_time] [datetime] NULL,
	[source_concept_id] [varchar](20) NULL,
	[code_set_nm] [varchar](256) NULL,
	[seq_num] [smallint] NOT NULL,
	[drug_cd] [varchar](20) NULL,
	[drug_desc_txt] [varchar](255) NULL,
	[dose_qty] [varchar](20) NULL,
	[dose_qty_unit_cd] [varchar](10) NULL,
	[route_cd] [varchar](20) NULL,
	[route_desc_txt] [varchar](255) NULL,
	[interval_cd] [varchar](20) NULL,
	[interval_desc_txt] [varchar](300) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
 CONSTRAINT [PK_Treatment_code211] PRIMARY KEY CLUSTERED 
(
	[treatment_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Unit_code]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unit_code](
	[unit_uid] [bigint] NOT NULL,
	[code_set_nm] [varchar](256) NOT NULL,
	[seq_num] [smallint] NOT NULL,
	[code] [varchar](20) NOT NULL,
	[unit_desc_txt] [varchar](300) NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[nbs_uid] [bigint] NULL,
	[is_modifiable_ind] [char](1) NULL CONSTRAINT [DF__Unit_code__is_mo__40C49C62]  DEFAULT ('N'),
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [PK_Unit_code235] PRIMARY KEY CLUSTERED 
(
	[unit_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UQ__Unit_code__3FD07829] UNIQUE NONCLUSTERED 
(
	[nbs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[XSS_Filter_Pattern]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[XSS_Filter_Pattern](
	[XSS_Filter_Pattern_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[reg_exp] [varchar](250) NOT NULL,
	[flag] [varchar](250) NOT NULL,
	[desc_txt] [varchar](200) NULL,
	[status_cd] [varchar](50) NOT NULL,
	[status_time] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Zip_code_value]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zip_code_value](
	[code] [varchar](20) NOT NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[code_desc_txt] [varchar](255) NULL,
	[code_short_desc_txt] [varchar](50) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[excluded_txt] [varchar](256) NULL,
	[indent_level_nbr] [smallint] NULL,
	[is_modifiable_ind] [char](1) NULL,
	[parent_is_cd] [varchar](20) NULL,
	[status_cd] [varchar](1) NULL,
	[status_time] [datetime] NULL,
	[code_set_nm] [varchar](256) NULL,
	[seq_num] [smallint] NULL,
	[nbs_uid] [int] NULL,
	[source_concept_id] [varchar](20) NULL,
 CONSTRAINT [PK_Zip_code_value] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Zipcnty_code_value]    Script Date: 6/1/2023 8:14:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zipcnty_code_value](
	[zip_code] [varchar](20) NOT NULL,
	[cnty_code] [varchar](20) NOT NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
 CONSTRAINT [PK_Zipcnty_code_value] PRIMARY KEY CLUSTERED 
(
	[zip_code] ASC,
	[cnty_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Cntycity_code_value]  WITH NOCHECK ADD  CONSTRAINT [FK_Cntycity_code_value276] FOREIGN KEY([cnty_code])
REFERENCES [dbo].[State_county_code_value] ([code])
GO
ALTER TABLE [dbo].[Cntycity_code_value] CHECK CONSTRAINT [FK_Cntycity_code_value276]
GO
ALTER TABLE [dbo].[Cntycity_code_value]  WITH NOCHECK ADD  CONSTRAINT [FK_Cntycity_code_value277] FOREIGN KEY([city_code])
REFERENCES [dbo].[City_code_value] ([code])
GO
ALTER TABLE [dbo].[Cntycity_code_value] CHECK CONSTRAINT [FK_Cntycity_code_value277]
GO
ALTER TABLE [dbo].[Code_value_clinical]  WITH NOCHECK ADD  CONSTRAINT [FK_Clinical_code_value472] FOREIGN KEY([snomed_cd])
REFERENCES [dbo].[Snomed_code] ([snomed_cd])
GO
ALTER TABLE [dbo].[Code_value_clinical] CHECK CONSTRAINT [FK_Clinical_code_value472]
GO
ALTER TABLE [dbo].[Codeset]  WITH CHECK ADD  CONSTRAINT [FK_Codeset_codeSetGrpId] FOREIGN KEY([code_set_group_id])
REFERENCES [dbo].[Codeset_Group_Metadata] ([code_set_group_id])
GO
ALTER TABLE [dbo].[Codeset] CHECK CONSTRAINT [FK_Codeset_codeSetGrpId]
GO
ALTER TABLE [dbo].[Condition_code]  WITH NOCHECK ADD  CONSTRAINT [FK_Condition_code336] FOREIGN KEY([prog_area_cd])
REFERENCES [dbo].[Program_area_code] ([prog_area_cd])
GO
ALTER TABLE [dbo].[Condition_code] CHECK CONSTRAINT [FK_Condition_code336]
GO
ALTER TABLE [dbo].[Country_XREF]  WITH CHECK ADD  CONSTRAINT [FK_CntryXR_toCdCdSetNmSeqNm] FOREIGN KEY([to_code_set_nm], [to_seq_num], [to_code])
REFERENCES [dbo].[Country_Code_ISO] ([code_set_nm], [seq_num], [code])
GO
ALTER TABLE [dbo].[Country_XREF] CHECK CONSTRAINT [FK_CntryXR_toCdCdSetNmSeqNm]
GO
ALTER TABLE [dbo].[Jurisdiction_participation]  WITH NOCHECK ADD  CONSTRAINT [FK_Jurisdiction_participation298] FOREIGN KEY([jurisdiction_cd])
REFERENCES [dbo].[Jurisdiction_code] ([code])
GO
ALTER TABLE [dbo].[Jurisdiction_participation] CHECK CONSTRAINT [FK_Jurisdiction_participation298]
GO
ALTER TABLE [dbo].[Lab_result]  WITH NOCHECK ADD  CONSTRAINT [FK_Lab_result_Lab_coding_system] FOREIGN KEY([laboratory_id])
REFERENCES [dbo].[Lab_coding_system] ([laboratory_id])
GO
ALTER TABLE [dbo].[Lab_result] CHECK CONSTRAINT [FK_Lab_result_Lab_coding_system]
GO
ALTER TABLE [dbo].[Lab_result]  WITH NOCHECK ADD  CONSTRAINT [FK_Lab_result_prog] FOREIGN KEY([default_prog_area_cd])
REFERENCES [dbo].[Program_area_code] ([prog_area_cd])
GO
ALTER TABLE [dbo].[Lab_result] CHECK CONSTRAINT [FK_Lab_result_prog]
GO
ALTER TABLE [dbo].[Lab_result]  WITH CHECK ADD  CONSTRAINT [FK_Lab_result361] FOREIGN KEY([default_condition_cd])
REFERENCES [dbo].[Condition_code] ([condition_cd])
GO
ALTER TABLE [dbo].[Lab_result] CHECK CONSTRAINT [FK_Lab_result361]
GO
ALTER TABLE [dbo].[Lab_result_Snomed]  WITH NOCHECK ADD  CONSTRAINT [FK_Lab_result_Snomed_Lab_result] FOREIGN KEY([lab_result_cd], [laboratory_id])
REFERENCES [dbo].[Lab_result] ([lab_result_cd], [laboratory_id])
GO
ALTER TABLE [dbo].[Lab_result_Snomed] CHECK CONSTRAINT [FK_Lab_result_Snomed_Lab_result]
GO
ALTER TABLE [dbo].[Lab_result_Snomed]  WITH NOCHECK ADD  CONSTRAINT [FK_Lab_result_SNOMED345] FOREIGN KEY([snomed_cd])
REFERENCES [dbo].[Snomed_code] ([snomed_cd])
GO
ALTER TABLE [dbo].[Lab_result_Snomed] CHECK CONSTRAINT [FK_Lab_result_SNOMED345]
GO
ALTER TABLE [dbo].[Lab_test]  WITH NOCHECK ADD  CONSTRAINT [FK_Lab_test_progare12] FOREIGN KEY([default_prog_area_cd])
REFERENCES [dbo].[Program_area_code] ([prog_area_cd])
GO
ALTER TABLE [dbo].[Lab_test] CHECK CONSTRAINT [FK_Lab_test_progare12]
GO
ALTER TABLE [dbo].[Lab_test]  WITH NOCHECK ADD  CONSTRAINT [FK_Lab_test123] FOREIGN KEY([default_condition_cd])
REFERENCES [dbo].[Condition_code] ([condition_cd])
GO
ALTER TABLE [dbo].[Lab_test] CHECK CONSTRAINT [FK_Lab_test123]
GO
ALTER TABLE [dbo].[Lab_test]  WITH NOCHECK ADD  CONSTRAINT [FK_Lab_test333] FOREIGN KEY([laboratory_id])
REFERENCES [dbo].[Lab_coding_system] ([laboratory_id])
GO
ALTER TABLE [dbo].[Lab_test] CHECK CONSTRAINT [FK_Lab_test333]
GO
ALTER TABLE [dbo].[Labtest_loinc]  WITH NOCHECK ADD  CONSTRAINT [FK_Labtest_loinc_Lab_test] FOREIGN KEY([lab_test_cd], [laboratory_id])
REFERENCES [dbo].[Lab_test] ([lab_test_cd], [laboratory_id])
GO
ALTER TABLE [dbo].[Labtest_loinc] CHECK CONSTRAINT [FK_Labtest_loinc_Lab_test]
GO
ALTER TABLE [dbo].[Labtest_loinc]  WITH NOCHECK ADD  CONSTRAINT [FK_lonic_labtest] FOREIGN KEY([loinc_cd])
REFERENCES [dbo].[LOINC_code] ([loinc_cd])
GO
ALTER TABLE [dbo].[Labtest_loinc] CHECK CONSTRAINT [FK_lonic_labtest]
GO
ALTER TABLE [dbo].[Labtest_Progarea_Mapping]  WITH NOCHECK ADD  CONSTRAINT [FK_Labtest_Condition_Mapping1] FOREIGN KEY([lab_test_cd], [laboratory_id])
REFERENCES [dbo].[Lab_test] ([lab_test_cd], [laboratory_id])
GO
ALTER TABLE [dbo].[Labtest_Progarea_Mapping] CHECK CONSTRAINT [FK_Labtest_Condition_Mapping1]
GO
ALTER TABLE [dbo].[LDF_page_set]  WITH NOCHECK ADD  CONSTRAINT [FK_LDF_page_set_Condition_code] FOREIGN KEY([condition_cd])
REFERENCES [dbo].[Condition_code] ([condition_cd])
GO
ALTER TABLE [dbo].[LDF_page_set] CHECK CONSTRAINT [FK_LDF_page_set_Condition_code]
GO
ALTER TABLE [dbo].[Loinc_condition]  WITH CHECK ADD  CONSTRAINT [FK_Dwyer_participation309] FOREIGN KEY([condition_cd])
REFERENCES [dbo].[Condition_code] ([condition_cd])
GO
ALTER TABLE [dbo].[Loinc_condition] CHECK CONSTRAINT [FK_Dwyer_participation309]
GO
ALTER TABLE [dbo].[Loinc_condition]  WITH NOCHECK ADD  CONSTRAINT [FK_Dwyer_participation310] FOREIGN KEY([loinc_cd])
REFERENCES [dbo].[LOINC_code] ([loinc_cd])
GO
ALTER TABLE [dbo].[Loinc_condition] CHECK CONSTRAINT [FK_Dwyer_participation310]
GO
ALTER TABLE [dbo].[Loinc_snomed_condition]  WITH NOCHECK ADD  CONSTRAINT [FK_Dwyer_event314] FOREIGN KEY([snomed_cd])
REFERENCES [dbo].[Snomed_code] ([snomed_cd])
GO
ALTER TABLE [dbo].[Loinc_snomed_condition] CHECK CONSTRAINT [FK_Dwyer_event314]
GO
ALTER TABLE [dbo].[Loinc_snomed_condition]  WITH NOCHECK ADD  CONSTRAINT [FK_Loinc_Snomed_CC_part315] FOREIGN KEY([condition_cd])
REFERENCES [dbo].[Condition_code] ([condition_cd])
GO
ALTER TABLE [dbo].[Loinc_snomed_condition] CHECK CONSTRAINT [FK_Loinc_Snomed_CC_part315]
GO
ALTER TABLE [dbo].[Loinc_snomed_condition]  WITH NOCHECK ADD  CONSTRAINT [FK_Loinc_snomed_condition334] FOREIGN KEY([loinc_cd])
REFERENCES [dbo].[LOINC_code] ([loinc_cd])
GO
ALTER TABLE [dbo].[Loinc_snomed_condition] CHECK CONSTRAINT [FK_Loinc_snomed_condition334]
GO
ALTER TABLE [dbo].[Occupation_code]  WITH NOCHECK ADD  CONSTRAINT [FK_Occupation_code_value_NAICS_Industry_code] FOREIGN KEY([naics_industry_cd])
REFERENCES [dbo].[NAICS_Industry_code] ([code])
GO
ALTER TABLE [dbo].[Occupation_code] CHECK CONSTRAINT [FK_Occupation_code_value_NAICS_Industry_code]
GO
ALTER TABLE [dbo].[Occupation_code]  WITH NOCHECK ADD  CONSTRAINT [FK_Occupation_code_value272] FOREIGN KEY([naics_industry_cd])
REFERENCES [dbo].[NAICS_Industry_code] ([code])
GO
ALTER TABLE [dbo].[Occupation_code] CHECK CONSTRAINT [FK_Occupation_code_value272]
GO
ALTER TABLE [dbo].[Snomed_condition]  WITH NOCHECK ADD  CONSTRAINT [FK_Snomed_participation311] FOREIGN KEY([condition_cd])
REFERENCES [dbo].[Condition_code] ([condition_cd])
GO
ALTER TABLE [dbo].[Snomed_condition] CHECK CONSTRAINT [FK_Snomed_participation311]
GO
ALTER TABLE [dbo].[Snomed_condition]  WITH NOCHECK ADD  CONSTRAINT [FK_Snomed_participation312] FOREIGN KEY([snomed_cd])
REFERENCES [dbo].[Snomed_code] ([snomed_cd])
GO
ALTER TABLE [dbo].[Snomed_condition] CHECK CONSTRAINT [FK_Snomed_participation312]
GO
ALTER TABLE [dbo].[Zipcnty_code_value]  WITH NOCHECK ADD  CONSTRAINT [FK_Zipcity_code_value280] FOREIGN KEY([zip_code])
REFERENCES [dbo].[Zip_code_value] ([code])
GO
ALTER TABLE [dbo].[Zipcnty_code_value] CHECK CONSTRAINT [FK_Zipcity_code_value280]
GO
ALTER TABLE [dbo].[Zipcnty_code_value]  WITH NOCHECK ADD  CONSTRAINT [FK_Zipcity_code_value281] FOREIGN KEY([cnty_code])
REFERENCES [dbo].[State_county_code_value] ([code])
GO
ALTER TABLE [dbo].[Zipcnty_code_value] CHECK CONSTRAINT [FK_Zipcity_code_value281]
GO

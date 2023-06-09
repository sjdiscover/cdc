USE [NBS_ODSE]
GO
/****** Object:  Table [dbo].[Act]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Act](
	[act_uid] [bigint] NOT NULL,
	[class_cd] [varchar](10) NOT NULL,
	[mood_cd] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[act_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Act_id]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Act_id](
	[act_uid] [bigint] NOT NULL,
	[act_id_seq] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[root_extension_txt] [varchar](199) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[type_cd] [varchar](50) NULL,
	[type_desc_txt] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[valid_from_time] [datetime] NULL,
	[valid_to_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[act_uid] ASC,
	[act_id_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Act_id_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Act_id_hist](
	[act_uid] [bigint] NOT NULL,
	[act_id_seq] [smallint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[root_extension_txt] [varchar](199) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[type_cd] [varchar](50) NULL,
	[type_desc_txt] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[valid_from_time] [datetime] NULL,
	[valid_to_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[act_uid] ASC,
	[act_id_seq] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Act_locator_participation]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Act_locator_participation](
	[act_uid] [bigint] NOT NULL,
	[locator_uid] [bigint] NOT NULL,
	[entity_uid] [bigint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[to_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[type_cd] [varchar](50) NULL,
	[type_desc_txt] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[entity_uid] ASC,
	[locator_uid] ASC,
	[act_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Act_locator_participation_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Act_locator_participation_hist](
	[act_uid] [bigint] NOT NULL,
	[locator_uid] [bigint] NOT NULL,
	[entity_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[to_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[type_cd] [varchar](50) NULL,
	[type_desc_txt] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[entity_uid] ASC,
	[locator_uid] ASC,
	[act_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Act_relationship]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Act_relationship](
	[target_act_uid] [bigint] NOT NULL,
	[source_act_uid] [bigint] NOT NULL,
	[type_cd] [varchar](50) NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[sequence_nbr] [smallint] NULL,
	[source_class_cd] [varchar](10) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[target_class_cd] [varchar](10) NULL,
	[to_time] [datetime] NULL,
	[type_desc_txt] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[source_act_uid] ASC,
	[target_act_uid] ASC,
	[type_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Act_relationship_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Act_relationship_hist](
	[target_act_uid] [bigint] NOT NULL,
	[source_act_uid] [bigint] NOT NULL,
	[type_cd] [varchar](50) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[sequence_nbr] [smallint] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[source_class_cd] [varchar](10) NULL,
	[target_class_cd] [varchar](10) NULL,
	[to_time] [datetime] NULL,
	[type_desc_txt] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[source_act_uid] ASC,
	[target_act_uid] ASC,
	[type_cd] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Activity_log]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Activity_log](
	[activity_log_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[doc_type] [varchar](50) NULL,
	[doc_nm] [varchar](250) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[message_txt] [text] NULL,
	[action_txt] [varchar](50) NULL,
	[source_type_cd] [varchar](50) NULL,
	[target_type_cd] [varchar](50) NULL,
	[source_Id] [varchar](50) NULL,
	[target_Id] [varchar](50) NULL,
	[add_user_id] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
 CONSTRAINT [PK_Activity_Log] PRIMARY KEY CLUSTERED 
(
	[activity_log_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alert]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alert](
	[alert_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[type_cd] [varchar](20) NOT NULL,
	[condition_cd] [varchar](20) NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[last_chg_time] [datetime] NULL,
	[record_status_cd] [varchar](20) NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_user_id] [bigint] NULL,
	[severity_cd] [varchar](20) NULL,
	[alert_msg_txt] [varchar](max) NULL,
 CONSTRAINT [PK_Alert] PRIMARY KEY CLUSTERED 
(
	[alert_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alert_Email_Message]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alert_Email_Message](
	[alert_email_message_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[type_cd] [varchar](20) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[severity_cd] [varchar](20) NOT NULL,
	[severity] [varchar](50) NOT NULL,
	[simulated_alert] [char](1) NULL,
	[jurisdiction_cd] [varchar](20) NOT NULL,
	[jurisdiction_description] [varchar](100) NOT NULL,
	[associated_condition_cd] [varchar](20) NULL,
	[associated_condition_desc] [varchar](100) NULL,
	[event_add_time] [datetime] NOT NULL,
	[alert_add_time] [datetime] NOT NULL,
	[event_local_id] [varchar](50) NOT NULL,
	[transmission_status] [varchar](20) NOT NULL,
	[Prog_area_cd] [varchar](20) NULL,
	[Prog_area_description] [varchar](100) NULL,
	[alert_uid] [bigint] NOT NULL,
	[email_sent_time] [datetime] NULL,
 CONSTRAINT [PK_Alert_Email_Message] PRIMARY KEY CLUSTERED 
(
	[alert_email_message_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alert_Log]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alert_Log](
	[alert_log_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[alert_uid] [bigint] NOT NULL,
	[event_local_id] [varchar](50) NULL,
	[activity_log] [varchar](2000) NULL,
	[add_time] [datetime] NOT NULL,
 CONSTRAINT [PK_Alert_Log] PRIMARY KEY CLUSTERED 
(
	[alert_log_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alert_Log_Detail]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alert_Log_Detail](
	[alert_log_detail_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[alert_log_uid] [bigint] NOT NULL,
	[alert_activity_detail_log] [varchar](2000) NULL,
 CONSTRAINT [PK_Alert_Log_Detail] PRIMARY KEY CLUSTERED 
(
	[alert_log_detail_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alert_User]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alert_User](
	[alert_user_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[alert_uid] [bigint] NOT NULL,
	[nedss_entry_id] [bigint] NOT NULL,
 CONSTRAINT [PK_Alert_User] PRIMARY KEY CLUSTERED 
(
	[alert_user_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[amds_servers]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[amds_servers](
	[servername] [nvarchar](100) NULL,
	[serverurl] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Auth_bus_obj_rt]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auth_bus_obj_rt](
	[auth_bus_obj_rt_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[auth_perm_set_uid] [bigint] NOT NULL,
	[auth_bus_obj_type_uid] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[auth_bus_obj_rt_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auth_bus_obj_type]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auth_bus_obj_type](
	[auth_bus_obj_type_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[bus_obj_nm] [varchar](100) NULL,
	[bus_obj_disp_nm] [varchar](1000) NULL,
	[prog_area_ind] [char](1) NULL,
	[jurisdiction_ind] [char](1) NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[operation_sequence] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[auth_bus_obj_type_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auth_bus_op_rt]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auth_bus_op_rt](
	[auth_bus_op_rt_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[auth_bus_op_type_uid] [bigint] NOT NULL,
	[auth_bus_obj_rt_uid] [bigint] NOT NULL,
	[bus_op_user_rt] [char](1) NULL,
	[bus_op_guest_rt] [char](1) NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[auth_bus_op_rt_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auth_bus_op_type]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auth_bus_op_type](
	[auth_bus_op_type_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[bus_op_nm] [varchar](100) NULL,
	[bus_op_disp_nm] [varchar](1000) NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[operation_sequence] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[auth_bus_op_type_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auth_perm_set]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auth_perm_set](
	[auth_perm_set_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[perm_set_nm] [varchar](100) NULL,
	[perm_set_desc] [varchar](1000) NULL,
	[sys_defined_perm_set_ind] [char](1) NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[auth_perm_set_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auth_prog_area_admin]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auth_prog_area_admin](
	[auth_prog_area_admin_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[prog_area_cd] [varchar](100) NULL,
	[auth_user_uid] [bigint] NOT NULL,
	[Auth_user_ind] [char](1) NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[auth_prog_area_admin_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auth_user]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auth_user](
	[auth_user_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [varchar](256) NULL,
	[user_type] [varchar](100) NULL,
	[user_title] [varchar](100) NULL,
	[user_department] [varchar](100) NULL,
	[user_first_nm] [varchar](100) NULL,
	[user_last_nm] [varchar](100) NULL,
	[user_work_email] [varchar](100) NULL,
	[user_work_phone] [varchar](100) NULL,
	[user_mobile_phone] [varchar](100) NULL,
	[master_sec_admin_ind] [char](1) NULL,
	[prog_area_admin_ind] [char](1) NULL,
	[nedss_entry_id] [bigint] NOT NULL,
	[external_org_uid] [bigint] NULL,
	[user_password] [varchar](100) NULL,
	[user_comments] [varchar](100) NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[jurisdiction_derivation_ind] [char](1) NULL,
	[provider_uid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[auth_user_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_Auth_user_id] UNIQUE NONCLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Auth_user_role]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Auth_user_role](
	[auth_user_role_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[auth_role_nm] [varchar](100) NULL,
	[prog_area_cd] [varchar](100) NULL,
	[jurisdiction_cd] [varchar](100) NULL,
	[auth_user_uid] [bigint] NOT NULL,
	[auth_perm_set_uid] [bigint] NOT NULL,
	[role_guest_ind] [char](1) NULL,
	[read_only_ind] [char](1) NULL,
	[disp_seq_nbr] [int] NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[auth_user_role_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bus_obj_df_sf_mdata_group]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bus_obj_df_sf_mdata_group](
	[business_object_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[df_sf_metadata_group_uid] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[business_object_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[case_management]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[case_management](
	[case_management_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[public_health_case_uid] [bigint] NOT NULL,
	[status_900] [varchar](20) NULL,
	[ehars_id] [varchar](10) NULL,
	[epi_link_id] [varchar](20) NULL,
	[field_foll_up_ooj_outcome] [varchar](20) NULL,
	[field_record_number] [varchar](20) NULL,
	[fld_foll_up_dispo] [varchar](20) NULL,
	[fld_foll_up_dispo_date] [datetime] NULL,
	[fld_foll_up_exam_date] [datetime] NULL,
	[fld_foll_up_expected_date] [datetime] NULL,
	[fld_foll_up_expected_in] [varchar](20) NULL,
	[fld_foll_up_internet_outcome] [varchar](20) NULL,
	[fld_foll_up_notification_plan] [varchar](20) NULL,
	[fld_foll_up_prov_diagnosis] [varchar](20) NULL,
	[fld_foll_up_prov_exm_reason] [varchar](20) NULL,
	[init_foll_up] [varchar](20) NULL,
	[init_foll_up_clinic_code] [varchar](50) NULL,
	[init_foll_up_closed_date] [datetime] NULL,
	[init_foll_up_notifiable] [varchar](20) NULL,
	[internet_foll_up] [varchar](20) NULL,
	[ooj_agency] [varchar](20) NULL,
	[ooj_due_date] [datetime] NULL,
	[ooj_number] [varchar](20) NULL,
	[pat_intv_status_cd] [varchar](20) NULL,
	[subj_complexion] [varchar](20) NULL,
	[subj_hair] [varchar](20) NULL,
	[subj_height] [varchar](20) NULL,
	[subj_oth_idntfyng_info] [varchar](2000) NULL,
	[subj_size_build] [varchar](20) NULL,
	[surv_closed_date] [datetime] NULL,
	[surv_patient_foll_up] [varchar](20) NULL,
	[surv_prov_diagnosis] [varchar](20) NULL,
	[surv_prov_exm_reason] [varchar](20) NULL,
	[surv_provider_contact] [varchar](20) NULL,
	[act_ref_type_cd] [varchar](20) NULL,
	[initiating_agncy] [varchar](20) NULL,
	[ooj_initg_agncy_outc_due_date] [datetime] NULL,
	[ooj_initg_agncy_outc_snt_date] [datetime] NULL,
	[ooj_initg_agncy_recd_date] [datetime] NULL,
	[case_review_status] [varchar](20) NULL,
	[surv_assigned_date] [datetime] NULL,
	[foll_up_assigned_date] [datetime] NULL,
	[init_foll_up_assigned_date] [datetime] NULL,
	[interview_assigned_date] [datetime] NULL,
	[init_interview_assigned_date] [datetime] NULL,
	[case_closed_date] [datetime] NULL,
	[case_review_status_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[case_management_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[case_management_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[case_management_hist](
	[case_management_hist_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[case_management_uid] [bigint] NOT NULL,
	[public_health_case_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[status_900] [varchar](20) NULL,
	[ehars_id] [varchar](10) NULL,
	[epi_link_id] [varchar](20) NULL,
	[field_foll_up_ooj_outcome] [varchar](20) NULL,
	[field_record_number] [varchar](20) NULL,
	[fld_foll_up_dispo] [varchar](20) NULL,
	[fld_foll_up_dispo_date] [datetime] NULL,
	[fld_foll_up_exam_date] [datetime] NULL,
	[fld_foll_up_expected_date] [datetime] NULL,
	[fld_foll_up_expected_in] [varchar](20) NULL,
	[fld_foll_up_internet_outcome] [varchar](20) NULL,
	[fld_foll_up_notification_plan] [varchar](20) NULL,
	[fld_foll_up_prov_diagnosis] [varchar](20) NULL,
	[fld_foll_up_prov_exm_reason] [varchar](20) NULL,
	[init_foll_up] [varchar](20) NULL,
	[init_foll_up_clinic_code] [varchar](50) NULL,
	[init_foll_up_closed_date] [datetime] NULL,
	[init_foll_up_notifiable] [varchar](20) NULL,
	[internet_foll_up] [varchar](20) NULL,
	[ooj_agency] [varchar](20) NULL,
	[ooj_due_date] [datetime] NULL,
	[ooj_number] [varchar](20) NULL,
	[pat_intv_status_cd] [varchar](20) NULL,
	[subj_complexion] [varchar](20) NULL,
	[subj_hair] [varchar](20) NULL,
	[subj_height] [varchar](20) NULL,
	[subj_oth_idntfyng_info] [varchar](2000) NULL,
	[subj_size_build] [varchar](20) NULL,
	[surv_closed_date] [datetime] NULL,
	[surv_patient_foll_up] [varchar](20) NULL,
	[surv_prov_diagnosis] [varchar](20) NULL,
	[surv_prov_exm_reason] [varchar](20) NULL,
	[surv_provider_contact] [varchar](20) NULL,
	[act_ref_type_cd] [varchar](20) NULL,
	[initiating_agncy] [varchar](20) NULL,
	[ooj_initg_agncy_outc_due_date] [datetime] NULL,
	[ooj_initg_agncy_outc_snt_date] [datetime] NULL,
	[ooj_initg_agncy_recd_date] [datetime] NULL,
	[case_review_status] [varchar](20) NULL,
	[surv_assigned_date] [datetime] NULL,
	[foll_up_assigned_date] [datetime] NULL,
	[init_foll_up_assigned_date] [datetime] NULL,
	[interview_assigned_date] [datetime] NULL,
	[init_interview_assigned_date] [datetime] NULL,
	[case_closed_date] [datetime] NULL,
	[case_review_status_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[case_management_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CDF_subform_import_data_log]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CDF_subform_import_data_log](
	[import_log_uid] [bigint] NOT NULL,
	[data_oid] [varchar](50) NOT NULL,
	[data_type] [varchar](20) NOT NULL,
	[action_type] [varchar](20) NULL,
	[import_time] [datetime] NULL,
	[log_message_txt] [varchar](2000) NULL,
	[process_cd] [varchar](20) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[import_log_uid] ASC,
	[data_oid] ASC,
	[data_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CDF_subform_import_log]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CDF_subform_import_log](
	[import_log_uid] [bigint] NOT NULL,
	[log_message_txt] [varchar](2000) NULL,
	[import_time] [datetime] NULL,
	[import_version_nbr] [bigint] NOT NULL,
	[process_cd] [varchar](20) NULL,
	[source_nm] [varchar](200) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[admin_comment] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[import_log_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Chart_report_metadata]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chart_report_metadata](
	[chart_report_metadata_uid] [bigint] NOT NULL,
	[chart_report_cd] [varchar](20) NOT NULL,
	[chart_report_desc_txt] [varchar](250) NOT NULL,
	[external_class_nm] [varchar](250) NULL,
	[external_method_nm] [varchar](250) NULL,
	[x_axis_title] [varchar](250) NULL,
	[y_axis_title] [varchar](250) NULL,
	[secured_ind_cd] [char](1) NULL,
	[chart_type_uid] [bigint] NOT NULL,
	[chart_report_short_desc_txt] [varchar](30) NOT NULL,
	[object_nm] [varchar](30) NULL,
	[operation_nm] [varchar](30) NULL,
	[secured_by_object_operation] [char](1) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[add_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[last_chg_time] [datetime] NULL,
	[default_ind_cd] [char](1) NULL,
 CONSTRAINT [PK_Chart_report_metadata] PRIMARY KEY CLUSTERED 
(
	[chart_report_metadata_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Chart_type]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Chart_type](
	[chart_type_uid] [bigint] NOT NULL,
	[chart_type_cd] [varchar](20) NOT NULL,
	[chart_type_desc_txt] [varchar](250) NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[add_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[last_chg_time] [datetime] NULL,
 CONSTRAINT [PK_Chart_type] PRIMARY KEY CLUSTERED 
(
	[chart_type_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clinical_document]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clinical_document](
	[clinical_document_uid] [bigint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[copy_from_time] [datetime] NULL,
	[copy_to_time] [datetime] NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[practice_setting_cd] [varchar](20) NULL,
	[practice_setting_desc_txt] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[txt] [varchar](2000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[version_nbr] [smallint] NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[clinical_document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clinical_document_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clinical_document_hist](
	[clinical_document_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[copy_from_time] [datetime] NULL,
	[copy_to_time] [datetime] NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[practice_setting_cd] [varchar](20) NULL,
	[practice_setting_desc_txt] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[txt] [varchar](2000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[version_nbr] [smallint] NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[clinical_document_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CN_transportq_out]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CN_transportq_out](
	[cn_transportq_out_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[message_payload] [text] NULL,
	[notification_uid] [bigint] NOT NULL,
	[notification_local_id] [varchar](50) NULL,
	[public_health_case_local_id] [varchar](50) NULL,
	[report_status_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[version_ctrl_nbr] [smallint] NULL,
 CONSTRAINT [PK_CNtransQOut_cnTransOutUid] PRIMARY KEY NONCLUSTERED 
(
	[cn_transportq_out_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Confirmation_method]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Confirmation_method](
	[public_health_case_uid] [bigint] NOT NULL,
	[confirmation_method_cd] [varchar](20) NOT NULL,
	[confirmation_method_desc_txt] [varchar](100) NULL,
	[confirmation_method_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[public_health_case_uid] ASC,
	[confirmation_method_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Confirmation_method_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Confirmation_method_hist](
	[public_health_case_uid] [bigint] NOT NULL,
	[confirmation_method_cd] [varchar](20) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[confirmation_method_desc_txt] [varchar](80) NULL,
	[confirmation_method_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[public_health_case_uid] ASC,
	[confirmation_method_cd] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Consequence_indicator]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Consequence_indicator](
	[conseq_ind_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[conseq_ind_code] [varchar](1) NULL,
	[conseq_ind_desc_txt] [varchar](100) NULL,
	[conseq_ind_type] [varchar](25) NULL,
 CONSTRAINT [PK_Conseq_ind_conseqIndUid] PRIMARY KEY NONCLUSTERED 
(
	[conseq_ind_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_contact]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_contact](
	[ct_contact_uid] [bigint] NOT NULL,
	[local_id] [varchar](50) NOT NULL,
	[subject_entity_uid] [bigint] NOT NULL,
	[contact_entity_uid] [bigint] NOT NULL,
	[subject_entity_phc_uid] [bigint] NOT NULL,
	[contact_entity_phc_uid] [bigint] NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[prog_area_cd] [varchar](20) NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind_cd] [char](1) NULL,
	[contact_status] [varchar](20) NULL,
	[priority_cd] [varchar](20) NULL,
	[group_name_cd] [varchar](20) NULL,
	[investigator_assigned_date] [datetime] NULL,
	[disposition_cd] [varchar](20) NULL,
	[disposition_date] [datetime] NULL,
	[named_on_date] [datetime] NULL,
	[relationship_cd] [varchar](20) NULL,
	[health_status_cd] [varchar](20) NULL,
	[txt] [varchar](2000) NULL,
	[symptom_cd] [varchar](20) NULL,
	[symptom_onset_date] [datetime] NULL,
	[symptom_txt] [varchar](2000) NULL,
	[risk_factor_cd] [varchar](20) NULL,
	[risk_factor_txt] [varchar](2000) NULL,
	[evaluation_completed_cd] [varchar](20) NULL,
	[evaluation_date] [datetime] NULL,
	[evaluation_txt] [varchar](2000) NULL,
	[treatment_initiated_cd] [varchar](20) NULL,
	[treatment_start_date] [datetime] NULL,
	[treatment_not_start_rsn_cd] [varchar](20) NULL,
	[treatment_end_cd] [varchar](20) NULL,
	[treatment_end_date] [datetime] NULL,
	[treatment_not_end_rsn_cd] [varchar](20) NULL,
	[treatment_txt] [varchar](2000) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[shared_ind] [char](1) NULL,
	[third_party_entity_uid] [bigint] NULL,
	[third_party_entity_phc_uid] [bigint] NULL,
	[processing_decision_cd] [varchar](20) NULL,
	[subject_entity_epi_link_id] [varchar](20) NULL,
	[contact_entity_epi_link_id] [varchar](20) NULL,
	[named_during_interview_uid] [bigint] NULL,
	[contact_referral_basis_cd] [varchar](20) NULL,
 CONSTRAINT [PK_CT_contact] PRIMARY KEY CLUSTERED 
(
	[ct_contact_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_CT_contact_3101] UNIQUE NONCLUSTERED 
(
	[contact_entity_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_contact_answer]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_contact_answer](
	[ct_contact_answer_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[ct_contact_uid] [bigint] NOT NULL,
	[answer_txt] [varchar](2000) NULL,
	[nbs_question_uid] [bigint] NOT NULL,
	[nbs_question_version_ctrl_nbr] [smallint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[seq_nbr] [smallint] NULL,
	[answer_large_txt] [text] NULL,
	[answer_group_seq_nbr] [int] NULL,
 CONSTRAINT [PK_CT_contact_answer] PRIMARY KEY CLUSTERED 
(
	[ct_contact_answer_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_contact_answer_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_contact_answer_hist](
	[ct_contact_answer_hist_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[ct_contact_answer_uid] [bigint] NOT NULL,
	[ct_contact_uid] [bigint] NOT NULL,
	[answer_txt] [varchar](2000) NULL,
	[nbs_question_uid] [bigint] NOT NULL,
	[nbs_question_version_ctrl_nbr] [smallint] NOT NULL,
	[ct_contact_version_ctrl_nbr] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[seq_nbr] [smallint] NULL,
	[answer_large_txt] [text] NULL,
	[answer_group_seq_nbr] [int] NULL,
 CONSTRAINT [PK_CT_contact_answer_hist] PRIMARY KEY CLUSTERED 
(
	[ct_contact_answer_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_contact_attachment]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_contact_attachment](
	[ct_contact_attachment_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[ct_contact_uid] [bigint] NOT NULL,
	[desc_txt] [varchar](2000) NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[attachment] [image] NULL,
	[file_nm_txt] [varchar](250) NULL,
 CONSTRAINT [PK_CT_contact_attachment] PRIMARY KEY CLUSTERED 
(
	[ct_contact_attachment_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_contact_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_contact_hist](
	[ct_contact_hist_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[ct_contact_uid] [bigint] NOT NULL,
	[local_id] [varchar](50) NOT NULL,
	[subject_entity_uid] [bigint] NOT NULL,
	[contact_entity_uid] [bigint] NOT NULL,
	[subject_entity_phc_uid] [bigint] NOT NULL,
	[contact_entity_phc_uid] [bigint] NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[prog_area_cd] [varchar](20) NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind_cd] [char](1) NULL,
	[contact_status] [varchar](20) NULL,
	[priority_cd] [varchar](20) NULL,
	[group_name_cd] [varchar](20) NULL,
	[investigator_assigned_date] [datetime] NULL,
	[disposition_cd] [varchar](20) NULL,
	[disposition_date] [datetime] NULL,
	[named_on_date] [datetime] NULL,
	[relationship_cd] [varchar](20) NULL,
	[health_status_cd] [varchar](20) NULL,
	[txt] [varchar](2000) NULL,
	[symptom_cd] [varchar](20) NULL,
	[symptom_onset_date] [datetime] NULL,
	[symptom_txt] [varchar](2000) NULL,
	[risk_factor_cd] [varchar](20) NULL,
	[risk_factor_txt] [varchar](2000) NULL,
	[evaluation_completed_cd] [varchar](20) NULL,
	[evaluation_date] [datetime] NULL,
	[evaluation_txt] [varchar](2000) NULL,
	[treatment_initiated_cd] [varchar](20) NULL,
	[treatment_start_date] [datetime] NULL,
	[treatment_not_start_rsn_cd] [varchar](20) NULL,
	[treatment_end_cd] [varchar](20) NULL,
	[treatment_end_date] [datetime] NULL,
	[treatment_not_end_rsn_cd] [varchar](20) NULL,
	[treatment_txt] [varchar](2000) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[third_party_entity_uid] [bigint] NULL,
	[third_party_entity_phc_uid] [bigint] NULL,
	[processing_decision_cd] [varchar](20) NULL,
	[subject_entity_epi_link_id] [varchar](20) NULL,
	[contact_entity_epi_link_id] [varchar](20) NULL,
	[named_during_interview_uid] [bigint] NULL,
	[contact_referral_basis_cd] [varchar](20) NULL,
 CONSTRAINT [PK_CT_contact_hist] PRIMARY KEY CLUSTERED 
(
	[ct_contact_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_contact_note]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_contact_note](
	[ct_contact_note_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[ct_contact_uid] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[note] [varchar](2000) NOT NULL,
	[private_ind_cd] [char](1) NOT NULL,
 CONSTRAINT [PK_CT_contact_note] PRIMARY KEY CLUSTERED 
(
	[ct_contact_note_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Custom_queues]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Custom_queues](
	[queue_name] [varchar](100) NOT NULL,
	[source_table] [varchar](100) NOT NULL,
	[query_string_part_1] [varchar](8000) NULL,
	[query_string_part_2] [varchar](8000) NULL,
	[description] [varchar](1000) NOT NULL,
	[list_of_users] [varchar](1000) NOT NULL,
	[search_criteria_desc] [varchar](8000) NOT NULL,
	[search_criteria_cd] [varchar](8000) NOT NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Custom_subform_metadata]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Custom_subform_metadata](
	[custom_subform_metadata_uid] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL DEFAULT (getdate()),
	[admin_comment] [varchar](300) NULL,
	[business_object_nm] [varchar](50) NULL,
	[class_cd] [varchar](20) NULL,
	[condition_cd] [varchar](20) NULL,
	[condition_desc_txt] [varchar](100) NULL,
	[display_order_nbr] [int] NOT NULL,
	[html_data] [text] NULL,
	[import_version_nbr] [bigint] NOT NULL,
	[deployment_cd] [varchar](20) NULL,
	[page_set_id] [varchar](50) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL DEFAULT (getdate()),
	[state_cd] [varchar](20) NULL,
	[status_cd] [char](1) NULL,
	[subform_oid] [varchar](50) NULL,
	[subform_nm] [varchar](100) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[custom_subform_metadata_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Data_migration_batch]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Data_migration_batch](
	[data_migration_batch_uid] [bigint] NOT NULL,
	[batch_nm] [varchar](300) NULL,
	[batch_start_time] [datetime] NULL,
	[batch_end_time] [datetime] NULL,
	[records_to_migrate_nbr] [smallint] NULL,
	[records_migrated_nbr] [smallint] NULL,
	[records_failed_nbr] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[data_migration_batch_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Data_migration_detail]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Data_migration_detail](
	[data_migration_detail_uid] [bigint] NOT NULL,
	[data_migration_batch_uid] [bigint] NOT NULL,
	[data_migration_record_uid] [bigint] NOT NULL,
	[failed_detail_txt] [varchar](4000) NULL,
	[failed_reason_txt] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[data_migration_detail_uid] ASC,
	[data_migration_batch_uid] ASC,
	[data_migration_record_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Data_migration_record]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Data_migration_record](
	[data_migration_record_uid] [bigint] NOT NULL,
	[case_id_txt] [varchar](100) NULL,
	[data_migration_batch_uid] [bigint] NOT NULL,
	[data_migration_sts] [varchar](10) NULL,
	[failed_record_txt] [text] NULL,
	[sub_nm] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[data_migration_record_uid] ASC,
	[data_migration_batch_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Data_Source]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Data_Source](
	[data_source_uid] [bigint] NOT NULL,
	[column_max_len] [smallint] NULL,
	[condition_security] [char](1) NULL,
	[data_source_name] [varchar](50) NULL,
	[data_source_title] [varchar](50) NULL,
	[data_source_type_code] [varchar](20) NULL,
	[desc_txt] [varchar](300) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[jurisdiction_security] [char](1) NULL,
	[org_access_permis] [varchar](2000) NULL,
	[prog_area_access_permis] [varchar](2000) NULL,
	[status_cd] [char](1) NOT NULL,
	[status_time] [datetime] NULL,
	[reporting_facility_security] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[data_source_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Data_Source_CodeData]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Data_Source_CodeData](
	[data_source_codedata_uid] [bigint] NOT NULL,
	[data_source_name] [varchar](300) NULL,
	[column_name] [varchar](300) NULL,
	[codeset_name] [varchar](2000) NOT NULL,
	[code_desc_cd] [varchar](1) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [pk_data_source_codedata] PRIMARY KEY CLUSTERED 
(
	[data_source_codedata_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Data_Source_Codeset]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Data_Source_Codeset](
	[data_source_codeset_uid] [bigint] NOT NULL,
	[column_uid] [bigint] NULL,
	[code_desc_cd] [varchar](20) NULL,
	[codeset_nm] [varchar](256) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [PK_DataSourceCodesetuid] PRIMARY KEY CLUSTERED 
(
	[data_source_codeset_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Data_source_column]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Data_source_column](
	[column_uid] [bigint] NOT NULL,
	[column_max_len] [int] NULL,
	[column_name] [varchar](50) NULL,
	[column_title] [varchar](60) NULL,
	[column_type_code] [varchar](20) NULL,
	[data_source_uid] [bigint] NOT NULL,
	[desc_txt] [varchar](300) NULL,
	[displayable] [char](1) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[filterable] [char](1) NULL,
	[status_cd] [char](1) NOT NULL,
	[status_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[column_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DATA_SOURCE_MASTER]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DATA_SOURCE_MASTER](
	[column_uid] [bigint] NOT NULL,
	[DataSourceName] [varchar](50) NULL,
	[column_name] [varchar](50) NULL,
	[code_desc] [varchar](1) NULL,
	[codeset_nm] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Data_Source_Operator]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Data_Source_Operator](
	[data_source_operator_uid] [bigint] NOT NULL,
	[filter_operator_uid] [bigint] NULL,
	[column_type_code] [varchar](20) NULL,
	[status_cd] [char](1) NOT NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [PK_DataSourceOperatorUid] PRIMARY KEY CLUSTERED 
(
	[data_source_operator_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Deduplication_activity_log]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Deduplication_activity_log](
	[deduplication_activity_log_uid] [bigint] NOT NULL,
	[batch_start_time] [datetime] NULL,
	[batch_end_time] [datetime] NULL,
	[merged_records_identified_nbr] [smallint] NULL,
	[merged_records_survived_nbr] [smallint] NULL,
	[override_ind] [char](1) NULL,
	[similar_group_nbr] [int] NULL,
	[process_type] [varchar](50) NULL,
	[process_exception] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[deduplication_activity_log_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DF_sf_mdata_field_group]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DF_sf_mdata_field_group](
	[df_sf_metadata_group_uid] [bigint] NOT NULL,
	[field_uid] [bigint] NOT NULL,
	[field_type] [varchar](20) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[df_sf_metadata_group_uid] ASC,
	[field_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DF_sf_metadata_group]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DF_sf_metadata_group](
	[df_sf_metadata_group_uid] [bigint] NOT NULL,
	[group_name] [varchar](3000) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[df_sf_metadata_group_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Display_column]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Display_column](
	[display_column_uid] [bigint] NOT NULL,
	[column_uid] [bigint] NOT NULL,
	[data_source_uid] [bigint] NOT NULL,
	[report_uid] [bigint] NOT NULL,
	[sequence_nbr] [smallint] NOT NULL,
	[status_cd] [char](1) NOT NULL,
	[status_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[display_column_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dsm_algorithm]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dsm_algorithm](
	[dsm_algorithm_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[algorithm_nm] [varchar](250) NULL,
	[event_type] [varchar](50) NULL,
	[condition_list] [varchar](250) NULL,
	[frequency] [varchar](50) NULL,
	[apply_to] [varchar](50) NULL,
	[sending_system_list] [varchar](250) NULL,
	[reporting_system_list] [varchar](250) NULL,
	[event_action] [varchar](50) NULL,
	[algorithm_payload] [text] NULL,
	[admin_comment] [varchar](2000) NULL,
	[status_cd] [varchar](50) NOT NULL,
	[status_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[resulted_test_list] [varchar](8000) NULL,
 CONSTRAINT [PK_dsm_algorithm] PRIMARY KEY CLUSTERED 
(
	[dsm_algorithm_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dsm_algorithm_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dsm_algorithm_hist](
	[dsm_algorithm_hist_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[dsm_algorithm_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [int] NULL,
	[algorithm_nm] [varchar](250) NULL,
	[event_type] [varchar](50) NULL,
	[condition_list] [varchar](250) NULL,
	[frequency] [varchar](50) NULL,
	[apply_to] [varchar](50) NULL,
	[sending_system_list] [varchar](250) NULL,
	[reporting_system_list] [varchar](250) NULL,
	[event_action] [varchar](50) NULL,
	[algorithm_payload] [text] NULL,
	[admin_comment] [varchar](2000) NULL,
	[status_cd] [varchar](50) NOT NULL,
	[status_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[resulted_test_list] [varchar](8000) NULL,
 CONSTRAINT [PK_dsm_algorithm_hist] PRIMARY KEY CLUSTERED 
(
	[dsm_algorithm_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EDX_activity_detail_log]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EDX_activity_detail_log](
	[edx_activity_detail_log_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[edx_activity_log_uid] [bigint] NOT NULL,
	[record_id] [varchar](256) NULL,
	[record_type] [varchar](50) NULL,
	[record_nm] [varchar](250) NULL,
	[log_type] [varchar](50) NULL,
	[log_comment] [varchar](2000) NULL,
 CONSTRAINT [PK_EDX_activity_detail_log] PRIMARY KEY CLUSTERED 
(
	[edx_activity_detail_log_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ODS_HIST]
) ON [ODS_HIST]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EDX_activity_log]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EDX_activity_log](
	[edx_activity_log_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[source_uid] [bigint] NULL,
	[target_uid] [bigint] NULL,
	[doc_type] [varchar](50) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[exception_txt] [text] NULL,
	[imp_exp_ind_cd] [char](1) NULL,
	[source_type_cd] [varchar](50) NULL,
	[target_type_cd] [varchar](50) NULL,
	[business_obj_localId] [varchar](50) NULL,
	[doc_nm] [varchar](250) NULL,
	[source_nm] [varchar](250) NULL,
	[algorithm_action] [varchar](10) NULL,
	[algorithm_name] [varchar](250) NULL,
	[Message_id] [varchar](255) NULL,
	[Entity_nm] [varchar](255) NULL,
	[Accession_nbr] [varchar](100) NULL,
 CONSTRAINT [PK_EDX_Activity_Log] PRIMARY KEY CLUSTERED 
(
	[edx_activity_log_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EDX_Document]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EDX_Document](
	[EDX_Document_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[act_uid] [bigint] NULL,
	[payload] [xml] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[doc_type_cd] [varchar](20) NOT NULL,
	[nbs_document_metadata_uid] [bigint] NOT NULL,
	[original_payload] [varchar](max) NULL,
	[original_doc_type_cd] [varchar](20) NULL,
	[edx_document_parent_uid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[EDX_Document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EDX_entity_match]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EDX_entity_match](
	[edx_entity_match_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[entity_UID] [bigint] NOT NULL,
	[match_string] [varchar](2000) NOT NULL,
	[type_cd] [varchar](100) NOT NULL,
	[match_string_hashcode] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[edx_entity_match_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EDX_event_process]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EDX_event_process](
	[edx_event_process_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[nbs_document_uid] [bigint] NULL,
	[nbs_event_uid] [bigint] NOT NULL,
	[source_event_id] [varchar](250) NULL,
	[doc_event_type_cd] [varchar](50) NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[EDX_event_process] ADD [parsed_ind] [char](1) NULL
ALTER TABLE [dbo].[EDX_event_process] ADD [edx_document_uid] [bigint] NULL
 CONSTRAINT [PK_edx_event_process] PRIMARY KEY CLUSTERED 
(
	[edx_event_process_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EDX_patient_match]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EDX_patient_match](
	[EDX_patient_match_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[Patient_uid] [bigint] NOT NULL,
	[match_string] [varchar](2000) NOT NULL,
	[type_cd] [varchar](100) NOT NULL,
	[match_string_hashcode] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EDX_patient_match_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ELR_activity_log]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ELR_activity_log](
	[msg_observation_uid] [bigint] NOT NULL,
	[elr_activity_log_seq] [smallint] NOT NULL,
	[filler_nbr] [varchar](100) NULL,
	[id] [varchar](100) NULL,
	[ods_observation_uid] [varchar](50) NULL,
	[status_cd] [char](1) NOT NULL,
	[process_time] [datetime] NOT NULL,
	[process_cd] [varchar](20) NOT NULL,
	[subject_nm] [varchar](100) NULL,
	[report_fac_nm] [varchar](100) NULL,
	[detail_txt] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[msg_observation_uid] ASC,
	[elr_activity_log_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ELRWorkerQueue]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ELRWorkerQueue](
	[recordId] [bigint] IDENTITY(1,1) NOT NULL,
	[messageId] [varchar](255) NULL,
	[payloadName] [varchar](255) NULL,
	[payloadBinaryContent] [image] NULL,
	[payloadTextContent] [text] NULL,
	[localFileName] [varchar](255) NULL,
	[service] [varchar](255) NOT NULL,
	[action] [varchar](255) NOT NULL,
	[arguments] [varchar](255) NULL,
	[fromPartyId] [varchar](255) NULL,
	[messageRecipient] [varchar](255) NULL,
	[errorCode] [varchar](255) NULL,
	[errorMessage] [varchar](255) NULL,
	[processingStatus] [varchar](255) NULL,
	[applicationStatus] [varchar](255) NULL,
	[encryption] [varchar](10) NULL,
	[receivedTime] [varchar](255) NULL,
	[lastUpdateTime] [varchar](255) NULL,
	[processId] [varchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entity]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entity](
	[entity_uid] [bigint] NOT NULL,
	[class_cd] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[entity_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entity_group]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entity_group](
	[entity_group_uid] [bigint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[description] [varchar](1000) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[group_cnt] [smallint] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[nm] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[to_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[entity_group_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entity_group_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entity_group_hist](
	[entity_group_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[description] [varchar](1000) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[group_cnt] [smallint] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[nm] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[to_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[entity_group_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entity_id]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entity_id](
	[entity_uid] [bigint] NOT NULL,
	[entity_id_seq] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[root_extension_txt] [varchar](100) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[type_cd] [varchar](50) NULL,
	[type_desc_txt] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[valid_from_time] [datetime] NULL,
	[valid_to_time] [datetime] NULL,
	[as_of_date] [datetime] NULL,
	[assigning_authority_id_type] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[entity_uid] ASC,
	[entity_id_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entity_id_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entity_id_hist](
	[entity_uid] [bigint] NOT NULL,
	[entity_id_seq] [smallint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[assigning_authority_cd] [varchar](199) NULL,
	[assigning_authority_desc_txt] [varchar](100) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[root_extension_txt] [varchar](100) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[type_cd] [varchar](50) NULL,
	[type_desc_txt] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[valid_from_time] [datetime] NULL,
	[valid_to_time] [datetime] NULL,
	[as_of_date] [datetime] NULL,
	[assigning_authority_id_type] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[entity_uid] ASC,
	[entity_id_seq] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entity_loc_participation_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entity_loc_participation_hist](
	[entity_uid] [bigint] NOT NULL,
	[locator_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[class_cd] [varchar](10) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[locator_desc_txt] [varchar](2000) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NOT NULL,
	[status_time] [datetime] NOT NULL,
	[to_time] [datetime] NULL,
	[use_cd] [varchar](20) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[valid_time_txt] [varchar](100) NULL,
	[as_of_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[entity_uid] ASC,
	[locator_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Entity_locator_participation]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entity_locator_participation](
	[entity_uid] [bigint] NOT NULL,
	[locator_uid] [bigint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[class_cd] [varchar](10) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[locator_desc_txt] [varchar](2000) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[to_time] [datetime] NULL,
	[use_cd] [varchar](20) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[valid_time_txt] [varchar](100) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[as_of_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[entity_uid] ASC,
	[locator_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Error_message]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Error_message](
	[error_message_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[error_cd] [varchar](20) NOT NULL,
	[error_desc_txt] [varchar](150) NULL,
 CONSTRAINT [PK_ErrorMessage_errorMsgUid] PRIMARY KEY NONCLUSTERED 
(
	[error_message_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Export_receiving_facility]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Export_receiving_facility](
	[export_receiving_facility_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [varchar](50) NOT NULL,
	[receiving_system_nm] [varchar](100) NULL,
	[receiving_system_oid] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[message_recipient] [varchar](255) NULL,
	[public_key_ldapAddress] [varchar](255) NULL,
	[public_key_ldapBaseDN] [varchar](50) NULL,
	[public_key_ldapDN] [varchar](255) NULL,
	[priority_int] [smallint] NULL,
	[encrypt] [char](10) NULL,
	[signature] [char](10) NULL,
	[receiving_system_short_nm] [varchar](10) NOT NULL,
	[receiving_system_owner] [varchar](10) NOT NULL,
	[receiving_system_desc_txt] [varchar](2000) NULL,
	[sending_ind_cd] [char](1) NOT NULL,
	[receiving_ind_cd] [char](1) NULL,
	[allow_transfer_ind_cd] [char](1) NULL,
	[admin_comment] [varchar](2000) NULL,
	[receiving_system_owner_oid] [varchar](100) NOT NULL,
	[jur_derive_ind_cd] [varchar](10) NULL,
	[type_cd] [varchar](20) NULL,
 CONSTRAINT [PK_Export_Receiving_Facility] PRIMARY KEY CLUSTERED 
(
	[export_receiving_facility_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Filter_code]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Filter_code](
	[filter_uid] [bigint] NOT NULL,
	[code_table] [varchar](50) NOT NULL,
	[desc_txt] [varchar](300) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[filter_code] [varchar](20) NULL,
	[filter_code_set_nm] [varchar](256) NULL,
	[filter_type] [varchar](20) NULL,
	[filter_name] [varchar](50) NULL,
	[status_cd] [char](1) NULL DEFAULT ('A'),
	[status_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[filter_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Filter_Operator]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Filter_Operator](
	[filter_operator_uid] [bigint] NOT NULL,
	[filter_operator_code] [varchar](20) NULL,
	[filter_operator_desc] [varchar](200) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [PK_FilterOperatorUid] PRIMARY KEY CLUSTERED 
(
	[filter_operator_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Filter_value]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Filter_value](
	[value_uid] [bigint] NOT NULL,
	[report_filter_uid] [bigint] NOT NULL,
	[sequence_nbr] [smallint] NULL,
	[value_type] [varchar](20) NULL,
	[column_uid] [bigint] NULL,
	[operator] [varchar](20) NULL,
	[value_txt] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[value_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Form_Rule_Instance]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Form_Rule_Instance](
	[form_rule_instance_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[rule_instance_uid] [bigint] NOT NULL,
	[form_code] [varchar](20) NOT NULL,
	[record_status_cd] [varchar](20) NULL,
 CONSTRAINT [PK_Form_Rule_Instance] PRIMARY KEY CLUSTERED 
(
	[form_rule_instance_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Geocoding_activity_log]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Geocoding_activity_log](
	[geocoding_activity_log_uid] [bigint] NOT NULL,
	[batch_run_mode] [varchar](1) NULL,
	[batch_start_time] [datetime] NULL,
	[batch_end_time] [datetime] NULL,
	[completed_ind] [varchar](1) NULL,
	[completion_reason] [varchar](1000) NULL,
	[total_nbr] [int] NULL,
	[single_match_nbr] [int] NULL,
	[multi_match_nbr] [int] NULL,
	[zero_match_nbr] [int] NULL,
	[error_record_nbr] [int] NULL,
	[error_nbr] [int] NULL,
 CONSTRAINT [PK_GeoCodingActivityLogUID] PRIMARY KEY NONCLUSTERED 
(
	[geocoding_activity_log_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Geocoding_Result]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Geocoding_Result](
	[geocoding_result_uid] [bigint] NOT NULL,
	[postal_locator_uid] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NULL,
	[firm_name] [varchar](50) NULL,
	[street_addr1] [varchar](100) NULL,
	[street_addr2] [varchar](100) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](2) NULL,
	[zip_cd] [varchar](10) NULL,
	[country] [varchar](50) NULL,
	[cnty_cd] [varchar](10) NULL,
	[house_number] [varchar](20) NULL,
	[prefix_direction] [varchar](10) NULL,
	[street_name] [varchar](50) NULL,
	[street_type] [varchar](10) NULL,
	[postfix_direction] [varchar](10) NULL,
	[unit_number] [varchar](20) NULL,
	[unit_type] [varchar](10) NULL,
	[zip5_cd] [varchar](10) NULL,
	[zip4_cd] [varchar](10) NULL,
	[longitude] [int] NULL,
	[latitude] [int] NULL,
	[census_block_id] [varchar](20) NULL,
	[segment_id] [varchar](20) NULL,
	[data_type] [varchar](1) NULL,
	[location_quality_cd] [varchar](10) NULL,
	[match_cd] [varchar](10) NULL,
	[score] [numeric](11, 2) NULL,
	[result_type] [varchar](1) NOT NULL,
	[num_matches] [tinyint] NOT NULL,
	[next_score_diff] [numeric](11, 2) NULL,
	[next_score_count] [tinyint] NULL,
	[entity_uid] [bigint] NULL,
	[entity_class_cd] [varchar](10) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
 CONSTRAINT [PK_GeoRslt_geocodingResultUid] PRIMARY KEY NONCLUSTERED 
(
	[geocoding_result_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Geocoding_Result_Hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Geocoding_Result_Hist](
	[geocoding_result_uid] [bigint] NOT NULL,
	[postal_locator_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NULL,
	[firm_name] [varchar](50) NULL,
	[street_addr1] [varchar](100) NULL,
	[street_addr2] [varchar](100) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](2) NULL,
	[zip_cd] [varchar](10) NULL,
	[country] [varchar](50) NULL,
	[cnty_cd] [varchar](10) NULL,
	[house_number] [varchar](20) NULL,
	[prefix_direction] [varchar](10) NULL,
	[street_name] [varchar](50) NULL,
	[street_type] [varchar](10) NULL,
	[postfix_direction] [varchar](10) NULL,
	[unit_number] [varchar](20) NULL,
	[unit_type] [varchar](20) NULL,
	[zip5_cd] [varchar](10) NULL,
	[zip4_cd] [varchar](10) NULL,
	[longitude] [int] NULL,
	[latitude] [int] NULL,
	[census_block_id] [varchar](20) NULL,
	[segment_id] [varchar](20) NULL,
	[data_type] [varchar](1) NULL,
	[location_quality_cd] [varchar](10) NULL,
	[match_cd] [varchar](10) NULL,
	[score] [numeric](11, 2) NULL,
	[result_type] [varchar](1) NOT NULL,
	[num_matches] [tinyint] NOT NULL,
	[next_score_diff] [numeric](11, 2) NULL,
	[next_score_count] [tinyint] NULL,
	[entity_uid] [bigint] NULL,
	[entity_class_cd] [varchar](10) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
 CONSTRAINT [PK_GeoRsltHist_geocodingResultUid] PRIMARY KEY NONCLUSTERED 
(
	[geocoding_result_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gmapcentroid]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gmapcentroid](
	[regionname] [nvarchar](50) NULL,
	[regiontype] [nvarchar](50) NULL,
	[regionlongitude] [nvarchar](50) NULL,
	[regionlatitude] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gmaplist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gmaplist](
	[regiontype] [nvarchar](50) NULL,
	[regionid] [nvarchar](50) NULL,
	[regionparent] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gmappolygon]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gmappolygon](
	[regionname] [nvarchar](50) NULL,
	[regiontype] [nvarchar](50) NULL,
	[locationstring] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Intervention]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Intervention](
	[intervention_uid] [bigint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[cd_system_cd] [varchar](20) NULL,
	[cd_system_desc_txt] [varchar](100) NULL,
	[class_cd] [varchar](10) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[method_cd] [varchar](20) NULL,
	[method_desc_txt] [varchar](100) NULL,
	[prog_area_cd] [varchar](20) NULL,
	[priority_cd] [varchar](20) NULL,
	[priority_desc_txt] [varchar](100) NULL,
	[qty_amt] [varchar](20) NULL,
	[qty_unit_cd] [varchar](20) NULL,
	[reason_cd] [varchar](20) NULL,
	[reason_desc_txt] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[repeat_nbr] [smallint] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[target_site_cd] [varchar](20) NULL,
	[target_site_desc_txt] [varchar](100) NULL,
	[txt] [varchar](1000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[material_cd] [varchar](20) NULL,
	[age_at_vacc] [smallint] NULL,
	[age_at_vacc_unit_cd] [varchar](20) NULL,
	[vacc_mfgr_cd] [varchar](20) NULL,
	[material_lot_nm] [varchar](50) NULL,
	[material_expiration_time] [datetime] NULL,
	[vacc_dose_nbr] [smallint] NULL,
	[vacc_info_source_cd] [varchar](20) NULL,
	[electronic_ind] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[intervention_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Intervention_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Intervention_hist](
	[intervention_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[cd_system_cd] [varchar](20) NULL,
	[cd_system_desc_txt] [varchar](100) NULL,
	[class_cd] [varchar](10) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[method_cd] [varchar](20) NULL,
	[method_desc_txt] [varchar](100) NULL,
	[priority_cd] [varchar](20) NULL,
	[priority_desc_txt] [varchar](100) NULL,
	[prog_area_cd] [varchar](20) NULL,
	[qty_amt] [varchar](20) NULL,
	[qty_unit_cd] [varchar](20) NULL,
	[reason_cd] [varchar](20) NULL,
	[reason_desc_txt] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[repeat_nbr] [smallint] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[target_site_cd] [varchar](20) NULL,
	[target_site_desc_txt] [varchar](100) NULL,
	[txt] [varchar](1000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[electronic_ind] [char](1) NULL,
	[material_cd] [varchar](20) NULL,
	[age_at_vacc] [smallint] NULL,
	[age_at_vacc_unit_cd] [varchar](20) NULL,
	[vacc_mfgr_cd] [varchar](20) NULL,
	[material_lot_nm] [varchar](50) NULL,
	[material_expiration_time] [datetime] NULL,
	[vacc_dose_nbr] [smallint] NULL,
	[vacc_info_source_cd] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[intervention_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Interview]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Interview](
	[interview_uid] [bigint] NOT NULL,
	[interview_status_cd] [varchar](20) NULL,
	[interview_date] [datetime] NULL,
	[interviewee_role_cd] [varchar](20) NULL,
	[interview_type_cd] [varchar](20) NULL,
	[interview_loc_cd] [varchar](20) NULL,
	[local_id] [varchar](50) NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[interview_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Interview_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Interview_hist](
	[interview_hist_uid] [bigint] NOT NULL,
	[interview_uid] [bigint] NOT NULL,
	[interview_status_cd] [varchar](20) NULL,
	[interview_date] [datetime] NULL,
	[interviewee_role_cd] [varchar](20) NULL,
	[interview_type_cd] [varchar](20) NULL,
	[interview_loc_cd] [varchar](20) NULL,
	[local_id] [varchar](50) NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[interview_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lab_event]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lab_event](
	[lab_event_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[observation_uid] [bigint] NULL,
	[investigation_uid] [bigint] NULL,
	[notification_uid] [bigint] NULL,
	[result_uid] [bigint] NULL,
	[susceptibility_uid] [bigint] NULL,
	[lab_result_status_cd] [char](1) NULL,
	[ref_range_frm] [varchar](20) NULL,
	[ref_range_to] [varchar](20) NULL,
	[specimen_qty] [varchar](20) NULL,
	[ordered_lab_test_cd] [varchar](50) NULL,
	[numeric_value_2] [numeric](38, 5) NULL,
	[comparator_cd_1] [varchar](10) NULL,
	[numeric_value_1] [varchar](100) NULL,
	[separator_cd] [varchar](10) NULL,
	[numeric_unit_cd] [varchar](20) NULL,
	[interpretation_cd] [varchar](2000) NULL,
	[reason_for_test_cd] [varchar](2000) NULL,
	[target_site_cd] [varchar](20) NULL,
	[lab_rpt_status_cd] [char](1) NULL,
	[result_rpt_dt] [datetime] NULL,
	[lab_result_txt_val] [varchar](2000) NULL,
	[resultedtest_cd] [varchar](20) NULL,
	[specimen_analyzed_dt] [datetime] NULL,
	[specimen_src_desc] [varchar](100) NULL,
	[person_uid] [bigint] NULL,
	[specimen_collection_dt] [datetime] NULL,
	[accession_nbr] [varchar](100) NULL,
	[specimen_qty_unit] [varchar](20) NULL,
	[lab_result_comments] [varchar](2000) NULL,
	[test_method_cd] [varchar](2000) NULL,
	[organization_uid] [bigint] NULL,
	[specimen_src_cd] [varchar](50) NULL,
	[resulted_lab_test_cd] [varchar](50) NULL,
	[resulted_lab_test_drug_cd] [varchar](50) NULL,
	[suscep_lab_result_txt_val] [varchar](2000) NULL,
	[suscep_resultedtest_cd] [varchar](20) NULL,
	[suscep_comparator_cd_1] [varchar](10) NULL,
	[suscep_numeric_value_1] [varchar](100) NULL,
	[suscep_separator_cd] [varchar](10) NULL,
	[suscep_numeric_value_2] [numeric](15, 5) NULL,
	[suscep_numeric_unit_cd] [varchar](20) NULL,
	[suscep_ref_range_frm] [varchar](20) NULL,
	[suscep_ref_range_to] [varchar](20) NULL,
	[suscep_lab_result_comments] [varchar](2000) NULL,
	[suscep_lab_rslt_status_cd] [char](1) NULL,
	[suscep_test_method_cd] [varchar](2000) NULL,
	[suscep_interpretation_cd] [varchar](20) NULL,
	[suscep_lab_rpt_status_cd] [char](1) NULL,
	[suscep_accession_nbr] [varchar](100) NULL,
	[suscep_ordered_lab_test_cd] [varchar](50) NULL,
	[suscep_specimen_collection_dt] [datetime] NULL,
	[suscep_result_rpt_dt] [datetime] NULL,
 CONSTRAINT [PK_Lab_Event] PRIMARY KEY CLUSTERED 
(
	[lab_event_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lab_event_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lab_event_hist](
	[lab_event_hist_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[lab_event_uid] [bigint] NOT NULL,
	[observation_uid] [bigint] NULL,
	[investigation_uid] [bigint] NULL,
	[notification_uid] [bigint] NULL,
	[result_uid] [bigint] NULL,
	[susceptibility_uid] [bigint] NULL,
	[add_time] [datetime] NULL,
	[lab_result_status_cd] [char](1) NULL,
	[ref_range_frm] [varchar](20) NULL,
	[ref_range_to] [varchar](20) NULL,
	[specimen_qty] [varchar](20) NULL,
	[ordered_lab_test_cd] [varchar](50) NULL,
	[numeric_value_2] [numeric](38, 5) NULL,
	[comparator_cd_1] [varchar](10) NULL,
	[numeric_value_1] [varchar](100) NULL,
	[separator_cd] [varchar](10) NULL,
	[numeric_unit_cd] [varchar](20) NULL,
	[interpretation_cd] [varchar](2000) NULL,
	[reason_for_test_cd] [varchar](2000) NULL,
	[target_site_cd] [varchar](20) NULL,
	[lab_rpt_status_cd] [char](1) NULL,
	[result_rpt_dt] [datetime] NULL,
	[lab_result_txt_val] [varchar](2000) NULL,
	[resultedtest_cd] [varchar](20) NULL,
	[specimen_analyzed_dt] [datetime] NULL,
	[specimen_src_desc] [varchar](100) NULL,
	[person_uid] [bigint] NULL,
	[specimen_collection_dt] [datetime] NULL,
	[accession_nbr] [varchar](100) NULL,
	[specimen_qty_unit] [varchar](20) NULL,
	[lab_result_comments] [varchar](2000) NULL,
	[test_method_cd] [varchar](2000) NULL,
	[organization_uid] [bigint] NULL,
	[specimen_src_cd] [varchar](50) NULL,
	[resulted_lab_test_cd] [varchar](50) NULL,
	[resulted_lab_test_drug_cd] [varchar](50) NULL,
	[suscep_lab_result_txt_val] [varchar](2000) NULL,
	[suscep_resultedtest_cd] [varchar](20) NULL,
	[suscep_comparator_cd_1] [varchar](10) NULL,
	[suscep_numeric_value_1] [varchar](100) NULL,
	[suscep_separator_cd] [varchar](10) NULL,
	[suscep_numeric_value_2] [numeric](15, 5) NULL,
	[suscep_numeric_unit_cd] [varchar](20) NULL,
	[suscep_ref_range_frm] [varchar](20) NULL,
	[suscep_ref_range_to] [varchar](20) NULL,
	[suscep_lab_result_comments] [varchar](2000) NULL,
	[suscep_lab_rslt_status_cd] [char](1) NULL,
	[suscep_test_method_cd] [varchar](2000) NULL,
	[suscep_interpretation_cd] [varchar](20) NULL,
	[suscep_lab_rpt_status_cd] [char](1) NULL,
	[suscep_accession_nbr] [varchar](100) NULL,
	[suscep_ordered_lab_test_cd] [varchar](50) NULL,
	[suscep_specimen_collection_dt] [datetime] NULL,
	[suscep_result_rpt_dt] [datetime] NULL,
 CONSTRAINT [PK_Lab_Event_Hist] PRIMARY KEY CLUSTERED 
(
	[lab_event_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Local_UID_generator]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Local_UID_generator](
	[class_name_cd] [varchar](50) NOT NULL,
	[type_cd] [varchar](10) NOT NULL,
	[UID_prefix_cd] [varchar](10) NULL,
	[UID_suffix_CD] [varchar](10) NULL,
	[seed_value_nbr] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[class_name_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOOKUP_ANSWER]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOOKUP_ANSWER](
	[LOOKUP_ANSWER_UID] [bigint] IDENTITY(1,1) NOT NULL,
	[LOOKUP_QUESTION_UID] [bigint] NOT NULL,
	[FROM_ANSWER_CODE] [varchar](250) NULL,
	[FROM_ANS_DISPLAY_NM] [varchar](250) NULL,
	[FROM_CODE_SYSTEM_CD] [varchar](250) NULL,
	[FROM_CODE_SYSTEM_DESC_TXT] [varchar](250) NULL,
	[TO_ANSWER_CODE] [varchar](250) NULL,
	[TO_ANS_DISPLAY_NM] [varchar](250) NULL,
	[TO_CODE_SYSTEM_CD] [varchar](250) NULL,
	[TO_CODE_SYSTEM_DESC_TXT] [varchar](250) NULL,
	[ADD_TIME] [datetime] NOT NULL,
	[ADD_USER_ID] [bigint] NOT NULL,
	[LAST_CHG_TIME] [datetime] NOT NULL,
	[LAST_CHG_USER_ID] [bigint] NOT NULL,
	[STATUS_CD] [varchar](1) NOT NULL,
	[STATUS_TIME] [datetime] NOT NULL,
 CONSTRAINT [PK_LOOKUP_ANSWER] PRIMARY KEY CLUSTERED 
(
	[LOOKUP_ANSWER_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOOKUP_QUESTION]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOOKUP_QUESTION](
	[LOOKUP_QUESTION_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[FROM_QUESTION_IDENTIFIER] [varchar](250) NULL,
	[FROM_QUESTION_DISPLAY_NAME] [varchar](250) NULL,
	[FROM_CODE_SYSTEM_CD] [varchar](250) NULL,
	[FROM_CODE_SYSTEM_DESC_TXT] [varchar](250) NULL,
	[FROM_DATA_TYPE] [varchar](250) NULL,
	[FROM_CODE_SET] [varchar](250) NULL,
	[FROM_FORM_CD] [varchar](250) NULL,
	[TO_QUESTION_IDENTIFIER] [varchar](250) NULL,
	[TO_QUESTION_DISPLAY_NAME] [varchar](250) NULL,
	[TO_CODE_SYSTEM_CD] [varchar](250) NULL,
	[TO_CODE_SYSTEM_DESC_TXT] [varchar](250) NULL,
	[TO_DATA_TYPE] [varchar](250) NULL,
	[TO_CODE_SET] [varchar](250) NULL,
	[TO_FORM_CD] [varchar](250) NULL,
	[RDB_COLUMN_NM] [varchar](30) NULL,
	[ADD_TIME] [datetime] NOT NULL,
	[ADD_USER_ID] [bigint] NOT NULL,
	[LAST_CHG_TIME] [datetime] NOT NULL,
	[LAST_CHG_USER_ID] [bigint] NOT NULL,
	[STATUS_CD] [varchar](1) NOT NULL,
	[STATUS_TIME] [datetime] NOT NULL,
 CONSTRAINT [PK_LOOKUP_QUESTION] PRIMARY KEY CLUSTERED 
(
	[LOOKUP_QUESTION_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manufactured_material]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manufactured_material](
	[material_uid] [bigint] NOT NULL,
	[manufactured_material_seq] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[expiration_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[lot_nm] [varchar](50) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[stability_from_time] [datetime] NULL,
	[stability_to_time] [datetime] NULL,
	[stability_duration_cd] [varchar](20) NULL,
	[stability_duration_unit_cd] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[material_uid] ASC,
	[manufactured_material_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manufactured_material_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manufactured_material_hist](
	[material_uid] [bigint] NOT NULL,
	[manufactured_material_seq] [smallint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[expiration_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[lot_nm] [varchar](50) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[stability_from_time] [datetime] NULL,
	[stability_to_time] [datetime] NULL,
	[stability_duration_cd] [varchar](20) NULL,
	[stability_duration_unit_cd] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[material_uid] ASC,
	[manufactured_material_seq] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Material]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Material](
	[material_uid] [bigint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[description] [varchar](1000) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[form_cd] [varchar](20) NULL,
	[form_desc_txt] [varchar](100) NULL,
	[handling_cd] [varchar](20) NULL,
	[handling_desc_txt] [varchar](100) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[nm] [varchar](100) NULL,
	[qty] [varchar](20) NULL,
	[qty_unit_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[risk_cd] [varchar](20) NULL,
	[risk_desc_txt] [varchar](100) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[material_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Material_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Material_hist](
	[material_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[description] [varchar](1000) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[form_cd] [varchar](20) NULL,
	[form_desc_txt] [varchar](100) NULL,
	[handling_cd] [varchar](20) NULL,
	[handling_desc_txt] [varchar](100) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[nm] [varchar](100) NULL,
	[qty] [varchar](20) NULL,
	[qty_unit_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[risk_cd] [varchar](20) NULL,
	[risk_desc_txt] [varchar](100) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[material_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[message_log]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[message_log](
	[message_log_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[message_txt] [varchar](2000) NOT NULL,
	[condition_cd] [varchar](50) NULL,
	[person_uid] [bigint] NULL,
	[assigned_to_uid] [bigint] NULL,
	[event_uid] [bigint] NULL,
	[event_type_cd] [varchar](20) NULL,
	[message_status_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[message_log_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_act_entity]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_act_entity](
	[nbs_act_entity_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[act_uid] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[entity_uid] [bigint] NOT NULL,
	[entity_version_ctrl_nbr] [smallint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[type_cd] [varchar](50) NULL,
 CONSTRAINT [PK_NBSActEnt_nbsActEntUID] PRIMARY KEY CLUSTERED 
(
	[nbs_act_entity_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_act_entity_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_act_entity_hist](
	[nbs_act_entity_hist_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[act_uid] [bigint] NOT NULL,
	[act_version_ctrl_nbr] [smallint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[entity_uid] [bigint] NOT NULL,
	[entity_version_ctrl_nbr] [smallint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[nbs_act_entity_uid] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[type_cd] [varchar](50) NULL,
 CONSTRAINT [PK_NBSActEnHist_NBSActEnHstUid] PRIMARY KEY CLUSTERED 
(
	[nbs_act_entity_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_aggregate]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[NBS_aggregate](
	[nbs_aggregate_uid] [bigint] NOT NULL,
	[label] [varchar](250) NULL,
	[desc_txt] [varchar](2000) NULL,
	[tool_tip] [varchar](2000) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[code] [varchar](20) NOT NULL,
	[nbs_question_uid] [bigint] NOT NULL,
 CONSTRAINT [PK_NBS_aggregate] PRIMARY KEY CLUSTERED 
(
	[nbs_aggregate_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nbs_answer]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nbs_answer](
	[nbs_answer_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[act_uid] [bigint] NOT NULL,
	[answer_txt] [varchar](2000) NULL,
	[nbs_question_uid] [bigint] NOT NULL,
	[nbs_question_version_ctrl_nbr] [smallint] NOT NULL,
	[seq_nbr] [smallint] NULL,
	[answer_large_txt] [text] NULL,
	[answer_group_seq_nbr] [int] NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
 CONSTRAINT [PK_NBS_ANSWER_Log] PRIMARY KEY CLUSTERED 
(
	[nbs_answer_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nbs_answer_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nbs_answer_hist](
	[nbs_answer_hist_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[nbs_answer_uid] [bigint] NOT NULL,
	[act_uid] [bigint] NOT NULL,
	[answer_txt] [varchar](2000) NULL,
	[nbs_question_uid] [bigint] NOT NULL,
	[nbs_question_version_ctrl_nbr] [smallint] NOT NULL,
	[seq_nbr] [smallint] NULL,
	[answer_large_txt] [text] NULL,
	[answer_group_seq_nbr] [int] NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
 CONSTRAINT [PK_NBS_ANSWER_HIST_Log] PRIMARY KEY CLUSTERED 
(
	[nbs_answer_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_attachment]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_attachment](
	[nbs_attachment_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[attachment_parent_uid] [bigint] NOT NULL,
	[desc_txt] [varchar](2000) NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[attachment] [image] NULL,
	[file_nm_txt] [varchar](250) NULL,
	[type_cd] [varchar](20) NOT NULL,
 CONSTRAINT [PK_NBS_attachment] PRIMARY KEY CLUSTERED 
(
	[nbs_attachment_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ODS_TEXTFILE]
) ON [ODS_TEXTFILE] TEXTIMAGE_ON [ODS_TEXTFILE]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_BUS_OBJ_metadata]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_BUS_OBJ_metadata](
	[group_nm] [varchar](20) NOT NULL,
	[class_cd] [varchar](10) NOT NULL,
	[bus_obj_type] [varchar](20) NOT NULL,
	[description_txt] [varchar](250) NOT NULL,
	[core_ods_table] [varchar](1000) NULL,
	[answer_table] [varchar](50) NULL,
	[core_rdb_table] [varchar](50) NULL,
	[core_repeat_rdb_table] [varchar](50) NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_case_answer]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_case_answer](
	[nbs_case_answer_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[act_uid] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[answer_txt] [varchar](2000) NULL,
	[nbs_question_uid] [bigint] NOT NULL,
	[nbs_question_version_ctrl_nbr] [int] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[seq_nbr] [int] NULL,
	[answer_large_txt] [text] NULL,
	[nbs_table_metadata_uid] [bigint] NULL,
	[nbs_ui_metadata_ver_ctrl_nbr] [int] NULL,
	[answer_group_seq_nbr] [int] NULL,
 CONSTRAINT [PK_NBSCaseAnswer_NBSanswerUid] PRIMARY KEY CLUSTERED 
(
	[nbs_case_answer_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_case_answer_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_case_answer_hist](
	[nbs_case_answer_hist_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[act_uid] [bigint] NOT NULL,
	[act_version_ctrl_nbr] [smallint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[answer_txt] [varchar](2000) NULL,
	[nbs_question_version_ctrl_nbr] [int] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[nbs_case_answer_uid] [bigint] NOT NULL,
	[nbs_question_uid] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[seq_nbr] [int] NULL,
	[answer_large_txt] [text] NULL,
	[nbs_table_metadata_uid] [bigint] NULL,
	[nbs_ui_metadata_ver_ctrl_nbr] [int] NULL,
	[answer_group_seq_nbr] [int] NULL,
 CONSTRAINT [PK_NBSAnsHist_nbsCaseAnsHisUid] PRIMARY KEY CLUSTERED 
(
	[nbs_case_answer_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_configuration]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_configuration](
	[config_key] [varchar](200) NOT NULL,
	[config_value] [varchar](2000) NULL,
	[short_name] [varchar](80) NULL,
	[desc_txt] [varchar](2000) NULL,
	[default_value] [varchar](2000) NULL,
	[valid_values] [varchar](2000) NULL,
	[category] [varchar](50) NULL,
	[add_release] [varchar](50) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[status_cd] [char](1) NOT NULL,
	[status_time] [datetime] NOT NULL,
	[admin_comment] [varchar](2000) NULL,
	[system_usage] [varchar](2000) NULL,
 CONSTRAINT [PK_NBS_CONFIGURATION] PRIMARY KEY CLUSTERED 
(
	[config_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_conversion_condition]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_conversion_condition](
	[nbs_conversion_condition_uid] [bigint] NOT NULL,
	[condition_cd] [varchar](50) NOT NULL,
	[condition_cd_group_id] [bigint] NULL,
	[NBS_Conversion_Page_Mgmt_uid] [bigint] NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[NBS_conversion_condition] ADD [status_cd] [varchar](20) NULL
ALTER TABLE [dbo].[NBS_conversion_condition] ADD [add_time] [datetime] NULL
ALTER TABLE [dbo].[NBS_conversion_condition] ADD [last_chg_time] [datetime] NULL
 CONSTRAINT [PK_NBSCnvCond_nbsCnvCondUid] PRIMARY KEY CLUSTERED 
(
	[nbs_conversion_condition_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_conversion_error]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_conversion_error](
	[nbs_conversion_error_uid] [bigint] IDENTITY(1,1000) NOT NULL,
	[error_cd] [varchar](250) NOT NULL,
	[error_message_txt] [varchar](4000) NOT NULL,
	[nbs_conversion_master_uid] [bigint] NULL,
	[condition_cd_group_id] [bigint] NULL,
	[nbs_conversion_mapping_uid] [bigint] NULL,
 CONSTRAINT [PK_NBSCnvError_nbsCnvErrorUid] PRIMARY KEY CLUSTERED 
(
	[nbs_conversion_error_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_conversion_mapping]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_conversion_mapping](
	[nbs_conversion_mapping_uid] [bigint] NOT NULL,
	[from_code] [varchar](2000) NULL,
	[from_code_set_nm] [varchar](256) NULL,
	[from_data_type] [varchar](50) NULL,
	[from_question_id] [varchar](30) NULL,
	[condition_cd_group_id] [bigint] NULL,
	[to_code] [varchar](2000) NULL,
	[to_code_set_nm] [varchar](256) NULL,
	[to_data_type] [varchar](30) NULL,
	[to_question_id] [varchar](30) NULL,
	[translation_required_ind] [varchar](20) NOT NULL,
	[from_db_location] [varchar](50) NOT NULL,
	[to_db_location] [varchar](50) NOT NULL,
	[from_label] [varchar](200) NULL,
	[to_label] [varchar](200) NULL,
	[legacy_block_ind] [varchar](50) NULL,
	[block_id_nbr] [int] NULL,
	[other_ind] [char](1) NULL,
	[unit_ind] [char](1) NULL,
	[unit_type_cd] [varchar](50) NULL,
	[unit_value] [varchar](50) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[NBS_conversion_mapping] ADD [trigger_question_id] [varchar](30) NULL
ALTER TABLE [dbo].[NBS_conversion_mapping] ADD [trigger_question_value] [varchar](50) NULL
ALTER TABLE [dbo].[NBS_conversion_mapping] ADD [from_other_question_id] [varchar](30) NULL
ALTER TABLE [dbo].[NBS_conversion_mapping] ADD [conversion_type] [varchar](50) NULL
ALTER TABLE [dbo].[NBS_conversion_mapping] ADD [answer_group_seq_nbr] [int] NULL
 CONSTRAINT [PK_NBSCnvMapping_nbsCnvMapUid] PRIMARY KEY CLUSTERED 
(
	[nbs_conversion_mapping_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_conversion_master]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_conversion_master](
	[nbs_conversion_master_uid] [bigint] IDENTITY(1,1000) NOT NULL,
	[act_uid] [bigint] NULL,
	[end_time] [datetime] NULL,
	[start_time] [datetime] NULL,
	[process_type_ind] [varchar](50) NOT NULL,
	[process_message_txt] [varchar](2000) NULL,
	[status_cd] [varchar](50) NULL,
	[nbs_conversion_condition_uid] [bigint] NULL,
 CONSTRAINT [PK_NBSCnvMast_nbsCnvMasterUid] PRIMARY KEY CLUSTERED 
(
	[nbs_conversion_master_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_Conversion_Page_Mgmt]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_Conversion_Page_Mgmt](
	[NBS_Conversion_Page_Mgmt_uid] [bigint] IDENTITY(1000001,1) NOT NULL,
	[map_name] [varchar](100) NOT NULL,
	[from_page_form_cd] [varchar](50) NOT NULL,
	[to_page_form_cd] [varchar](50) NOT NULL,
	[mapping_status_cd] [varchar](20) NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[xml_PayLoad] [text] NULL,
 CONSTRAINT [PK_NBS_CONV_PAGE_MGMT_UID] PRIMARY KEY CLUSTERED 
(
	[NBS_Conversion_Page_Mgmt_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_document]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_document](
	[nbs_document_uid] [bigint] NOT NULL,
	[doc_payload] [text] NOT NULL,
	[doc_type_cd] [varchar](20) NOT NULL,
	[local_id] [varchar](50) NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[prog_area_cd] [varchar](20) NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[txt] [varchar](2000) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[cd] [varchar](50) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[doc_purpose_cd] [varchar](50) NULL,
	[doc_status_cd] [varchar](20) NULL,
	[cd_desc_txt] [varchar](250) NULL,
	[sending_facility_nm] [varchar](250) NULL,
	[nbs_interface_uid] [bigint] NOT NULL,
	[sending_app_event_id] [varchar](250) NULL,
	[sending_app_patient_id] [varchar](50) NULL,
	[phdc_doc_derived] [text] NULL,
	[payload_view_ind_cd] [varchar](20) NULL,
	[nbs_document_metadata_uid] [bigint] NOT NULL DEFAULT ((1002)),
	[external_version_ctrl_nbr] [smallint] NULL,
	[processing_decision_txt] [varchar](1000) NULL,
	[processing_decision_cd] [varchar](1000) NULL,
 CONSTRAINT [PK_NBS_document] PRIMARY KEY CLUSTERED 
(
	[nbs_document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_document_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_document_hist](
	[nbs_document_hist_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[doc_payload] [text] NOT NULL,
	[doc_type_cd] [varchar](20) NOT NULL,
	[local_id] [varchar](50) NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[prog_area_cd] [varchar](20) NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[txt] [varchar](2000) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[cd] [varchar](50) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[doc_purpose_cd] [varchar](50) NULL,
	[doc_status_cd] [varchar](20) NULL,
	[cd_desc_txt] [varchar](250) NULL,
	[sending_facility_nm] [varchar](250) NULL,
	[nbs_interface_uid] [bigint] NOT NULL,
	[sending_app_event_id] [varchar](50) NULL,
	[sending_app_patient_id] [varchar](50) NULL,
	[nbs_document_uid] [bigint] NOT NULL,
	[phdc_doc_derived] [text] NULL,
	[payload_view_ind_cd] [varchar](20) NULL,
	[nbs_document_metadata_uid] [bigint] NOT NULL DEFAULT ((1002)),
	[external_version_ctrl_nbr] [smallint] NULL,
	[processing_decision_txt] [varchar](1000) NULL,
	[processing_decision_cd] [varchar](1000) NULL,
 CONSTRAINT [PK_NBS_document_hist] PRIMARY KEY CLUSTERED 
(
	[nbs_document_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_document_metadata]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_document_metadata](
	[nbs_document_metadata_uid] [bigint] NOT NULL,
	[xml_schema_location] [varchar](250) NOT NULL,
	[document_view_xsl] [text] NOT NULL,
	[description] [varchar](250) NULL,
	[doc_type_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[xmlbean_factory_class_nm] [varchar](100) NULL,
	[parser_class_nm] [varchar](100) NULL,
	[document_view_cda_xsl] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[NBS_document_metadata] ADD [DOC_TYPE_VERSION_TXT] [varchar](250) NULL
 CONSTRAINT [PK_NBS_document_metadata] PRIMARY KEY CLUSTERED 
(
	[nbs_document_metadata_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_indicator]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[NBS_indicator](
	[nbs_indicator_uid] [bigint] NOT NULL,
	[label] [varchar](250) NULL,
	[desc_txt] [varchar](2000) NULL,
	[tool_tip] [varchar](2000) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[code] [varchar](20) NOT NULL,
	[nbs_question_uid] [bigint] NOT NULL,
 CONSTRAINT [PK_NBS_indicator] PRIMARY KEY CLUSTERED 
(
	[nbs_indicator_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_metadata_rule]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_metadata_rule](
	[nbs_metadata_rule_uid] [bigint] NOT NULL,
	[component_uid] [bigint] NOT NULL,
	[component_identifier] [varchar](50) NULL,
	[component_type] [varchar](20) NULL,
 CONSTRAINT [PK_NBS_Metadata_Rule] PRIMARY KEY CLUSTERED 
(
	[nbs_metadata_rule_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_note]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_note](
	[nbs_note_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[note_parent_uid] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[note] [varchar](2000) NOT NULL,
	[private_ind_cd] [char](1) NOT NULL,
	[type_cd] [varchar](20) NOT NULL,
 CONSTRAINT [PK_NBS_note] PRIMARY KEY CLUSTERED 
(
	[nbs_note_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ODS_TEXTFILE]
) ON [ODS_TEXTFILE]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_page]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_page](
	[nbs_page_uid] [bigint] NOT NULL,
	[wa_template_uid] [bigint] NOT NULL,
	[form_cd] [varchar](50) NULL,
	[desc_txt] [varchar](2000) NULL,
	[jsp_payload] [image] NULL,
	[datamart_nm] [varchar](21) NULL,
	[local_id] [varchar](50) NULL,
	[bus_obj_type] [varchar](50) NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
 CONSTRAINT [PK_NBS_page] PRIMARY KEY CLUSTERED 
(
	[nbs_page_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_page_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_page_hist](
	[nbs_page_hist_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[nbs_page_uid] [bigint] NOT NULL,
	[wa_template_uid] [bigint] NOT NULL,
	[form_cd] [varchar](50) NULL,
	[desc_txt] [varchar](2000) NULL,
	[jsp_payload] [image] NULL,
	[datamart_nm] [varchar](21) NULL,
	[local_id] [varchar](50) NULL,
	[bus_obj_type] [varchar](50) NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[version_ctrl_nbr] [int] NOT NULL,
 CONSTRAINT [PK_NBS_page_hist] PRIMARY KEY CLUSTERED 
(
	[nbs_page_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_question]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_question](
	[nbs_question_uid] [bigint] NOT NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[code_set_group_id] [bigint] NULL,
	[data_cd] [varchar](50) NULL,
	[data_location] [varchar](150) NULL,
	[question_identifier] [varchar](50) NOT NULL,
	[question_oid] [varchar](150) NULL,
	[question_oid_system_txt] [varchar](100) NULL,
	[question_unit_identifier] [varchar](20) NULL,
	[data_type] [varchar](20) NULL,
	[data_use_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[question_label] [varchar](300) NULL,
	[question_tool_tip] [varchar](2000) NULL,
	[datamart_column_nm] [varchar](30) NULL,
	[part_type_cd] [varchar](50) NULL,
	[default_value] [varchar](300) NULL,
	[version_ctrl_nbr] [int] NULL CONSTRAINT [DF_NBS_Question_version_ctrl_nbr]  DEFAULT ((1)),
	[unit_parent_identifier] [varchar](20) NULL,
	[question_group_seq_nbr] [int] NULL,
	[future_date_ind_cd] [char](1) NULL,
	[legacy_data_location] [varchar](150) NULL,
	[repeats_ind_cd] [char](1) NULL,
 CONSTRAINT [PK_NBS_question] PRIMARY KEY CLUSTERED 
(
	[nbs_question_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_question_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_question_hist](
	[nbs_question_hist_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[nbs_question_uid] [bigint] NOT NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[code_set_group_id] [bigint] NULL,
	[data_cd] [varchar](50) NULL,
	[data_location] [varchar](150) NULL,
	[question_identifier] [varchar](50) NOT NULL,
	[question_oid] [varchar](150) NULL,
	[question_oid_system_txt] [varchar](100) NULL,
	[question_unit_identifier] [varchar](20) NULL,
	[data_type] [varchar](20) NULL,
	[data_use_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[question_label] [varchar](300) NULL,
	[question_tool_tip] [varchar](2000) NULL,
	[datamart_column_nm] [varchar](30) NULL,
	[part_type_cd] [varchar](50) NULL,
	[default_value] [varchar](300) NULL,
	[version_ctrl_nbr] [int] NULL,
	[unit_parent_identifier] [varchar](20) NULL,
	[question_group_seq_nbr] [int] NULL,
	[future_date_ind_cd] [char](1) NULL,
	[legacy_data_location] [varchar](150) NULL,
	[repeats_ind_cd] [char](1) NULL,
 CONSTRAINT [PK_NBSQuestHist_NBSQuestHstUid] PRIMARY KEY NONCLUSTERED 
(
	[nbs_question_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_rdb_metadata]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_rdb_metadata](
	[nbs_rdb_metadata_uid] [bigint] NOT NULL,
	[nbs_page_uid] [bigint] NULL,
	[nbs_ui_metadata_uid] [bigint] NOT NULL,
	[rdb_table_nm] [varchar](30) NULL,
	[user_defined_column_nm] [varchar](30) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[local_id] [varchar](50) NULL,
	[rpt_admin_column_nm] [varchar](50) NULL,
	[rdb_column_nm] [varchar](30) NULL,
	[block_pivot_nbr] [int] NULL,
 CONSTRAINT [PK_NBS_rdb_metadata] PRIMARY KEY CLUSTERED 
(
	[nbs_rdb_metadata_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_rdb_metadata_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_rdb_metadata_hist](
	[nbs_rdb_metadata_hist_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[nbs_rdb_metadata_uid] [bigint] NOT NULL,
	[nbs_page_uid] [bigint] NULL,
	[nbs_ui_metadata_uid] [bigint] NOT NULL,
	[rdb_table_nm] [varchar](30) NULL,
	[user_defined_column_nm] [varchar](30) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[local_id] [varchar](50) NULL,
	[rpt_admin_column_nm] [varchar](50) NULL,
	[rdb_column_nm] [varchar](30) NULL,
	[version_ctrl_nbr] [int] NOT NULL,
	[block_pivot_nbr] [int] NULL,
 CONSTRAINT [PK_NBS_rdb_metadata_hist] PRIMARY KEY CLUSTERED 
(
	[nbs_rdb_metadata_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_Release]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_Release](
	[NBS_release_uid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Version] [varchar](25) NOT NULL,
	[Description] [varchar](4000) NOT NULL,
	[Publish_date] [datetime] NOT NULL,
	[Deployment_Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NBS_release_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_table]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[NBS_table](
	[nbs_table_uid] [bigint] NOT NULL,
	[nbs_table_nm] [varchar](250) NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
 CONSTRAINT [PK_NBS_table] PRIMARY KEY CLUSTERED 
(
	[nbs_table_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_table_metadata]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[NBS_table_metadata](
	[nbs_table_metadata_uid] [bigint] NOT NULL,
	[nbs_table_uid] [bigint] NOT NULL,
	[nbs_indicator_uid] [bigint] NOT NULL,
	[nbs_aggregate_uid] [bigint] NOT NULL,
	[nbs_question_uid] [bigint] NOT NULL,
	[datamart_column_nm] [varchar](30) NULL,
	[aggregate_seq_nbr] [int] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[indicator_seq_nbr] [int] NOT NULL,
	[msg_exclude_ind_cd] [varchar](20) NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[NBS_table_metadata] ADD [question_identifier] [varchar](50) NULL
 CONSTRAINT [PK_NBS_table_metadata] PRIMARY KEY CLUSTERED 
(
	[nbs_table_metadata_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_ui_component]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_ui_component](
	[nbs_ui_component_uid] [bigint] NOT NULL,
	[type_cd] [varchar](10) NULL,
	[type_cd_desc] [varchar](50) NULL,
	[ldf_available_ind] [char](10) NULL,
	[display_order] [int] NULL,
	[component_behavior] [varchar](20) NULL,
 CONSTRAINT [PK_NBS_UI_Component] PRIMARY KEY CLUSTERED 
(
	[nbs_ui_component_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_ui_metadata]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_ui_metadata](
	[nbs_ui_metadata_uid] [bigint] NOT NULL,
	[nbs_ui_component_uid] [bigint] NOT NULL,
	[nbs_question_uid] [bigint] NULL,
	[parent_uid] [bigint] NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[admin_comment] [varchar](2000) NULL,
	[css_style] [varchar](50) NULL,
	[default_value] [varchar](300) NULL,
	[display_ind] [varchar](1) NULL,
	[enable_ind] [varchar](1) NULL,
	[field_size] [varchar](10) NULL,
	[investigation_form_cd] [varchar](50) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[ldf_position] [varchar](10) NULL,
	[ldf_page_id] [varchar](20) NULL,
	[ldf_status_cd] [varchar](20) NULL,
	[ldf_status_time] [datetime] NULL,
	[max_length] [bigint] NULL,
	[order_nbr] [int] NULL,
	[question_label] [varchar](300) NULL,
	[question_tool_tip] [varchar](2000) NULL,
	[required_ind] [varchar](2) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[tab_order_id] [int] NULL,
	[tab_name] [varchar](50) NULL,
	[version_ctrl_nbr] [int] NOT NULL CONSTRAINT [DF_NBS_UI_Metadata_version_ctrl_nbr]  DEFAULT ((1)),
	[future_date_ind_cd] [char](1) NULL,
	[nbs_table_uid] [bigint] NULL,
	[code_set_group_id] [bigint] NULL,
	[data_cd] [varchar](50) NULL,
	[data_location] [varchar](150) NULL,
	[data_type] [varchar](20) NULL,
	[data_use_cd] [varchar](20) NULL,
	[legacy_data_location] [varchar](150) NULL,
	[part_type_cd] [varchar](50) NULL,
	[question_group_seq_nbr] [int] NULL,
	[question_identifier] [varchar](50) NULL,
	[question_oid] [varchar](150) NULL,
	[question_oid_system_txt] [varchar](100) NULL,
	[question_unit_identifier] [varchar](20) NULL,
	[repeats_ind_cd] [char](1) NULL,
	[unit_parent_identifier] [varchar](20) NULL,
	[group_nm] [varchar](50) NULL,
	[sub_group_nm] [varchar](50) NULL,
	[desc_txt] [varchar](256) NULL,
	[mask] [varchar](50) NULL,
	[min_value] [bigint] NULL,
	[max_value] [bigint] NULL,
	[nbs_page_uid] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[standard_nnd_ind_cd] [char](1) NULL,
	[unit_type_cd] [varchar](20) NULL,
	[unit_value] [varchar](50) NULL,
	[other_value_ind_cd] [char](1) NULL,
	[batch_table_appear_ind_cd] [char](1) NULL,
	[batch_table_header] [varchar](50) NULL,
	[batch_table_column_width] [int] NULL,
	[coinfection_ind_cd] [char](1) NULL,
	[block_nm] [varchar](30) NULL,
 CONSTRAINT [PK_NBS_UI_Metadata] PRIMARY KEY CLUSTERED 
(
	[nbs_ui_metadata_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_ui_metadata_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_ui_metadata_hist](
	[nbs_ui_metadata_hist_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[nbs_ui_metadata_uid] [bigint] NOT NULL,
	[nbs_ui_component_uid] [bigint] NOT NULL,
	[nbs_question_uid] [bigint] NULL,
	[parent_uid] [bigint] NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[admin_comment] [varchar](2000) NULL,
	[css_style] [varchar](50) NULL,
	[default_value] [varchar](300) NULL,
	[display_ind] [varchar](1) NULL,
	[enable_ind] [varchar](1) NULL,
	[field_size] [varchar](10) NULL,
	[investigation_form_cd] [varchar](50) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[ldf_position] [varchar](10) NULL,
	[ldf_page_id] [varchar](20) NULL,
	[ldf_status_cd] [varchar](20) NULL,
	[ldf_status_time] [datetime] NULL,
	[max_length] [bigint] NULL,
	[order_nbr] [int] NULL,
	[question_label] [varchar](300) NULL,
	[question_tool_tip] [varchar](2000) NULL,
	[required_ind] [varchar](2) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[tab_order_id] [int] NULL,
	[tab_name] [varchar](50) NULL,
	[version_ctrl_nbr] [int] NOT NULL,
	[future_date_ind_cd] [char](1) NULL,
	[nbs_table_uid] [bigint] NULL,
	[code_set_group_id] [bigint] NULL,
	[data_cd] [varchar](50) NULL,
	[data_location] [varchar](150) NULL,
	[data_type] [varchar](20) NULL,
	[data_use_cd] [varchar](20) NULL,
	[legacy_data_location] [varchar](150) NULL,
	[part_type_cd] [varchar](50) NULL,
	[question_group_seq_nbr] [int] NULL,
	[question_identifier] [varchar](50) NULL,
	[question_oid] [varchar](150) NULL,
	[question_oid_system_txt] [varchar](100) NULL,
	[question_unit_identifier] [varchar](20) NULL,
	[repeats_ind_cd] [char](1) NULL,
	[unit_parent_identifier] [varchar](20) NULL,
	[group_nm] [varchar](50) NULL,
	[sub_group_nm] [varchar](50) NULL,
	[desc_txt] [varchar](256) NULL,
	[mask] [varchar](50) NULL,
	[min_value] [bigint] NULL,
	[max_value] [bigint] NULL,
	[nbs_page_uid] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[standard_nnd_ind_cd] [char](1) NULL,
	[unit_type_cd] [varchar](20) NULL,
	[unit_value] [varchar](50) NULL,
	[other_value_ind_cd] [char](1) NULL,
	[batch_table_appear_ind_cd] [char](1) NULL,
	[batch_table_header] [varchar](50) NULL,
	[batch_table_column_width] [int] NULL,
	[coinfection_ind_cd] [char](1) NULL,
	[block_nm] [varchar](30) NULL,
 CONSTRAINT [PK_NBS_UI_Metadata_Hist] PRIMARY KEY CLUSTERED 
(
	[nbs_ui_metadata_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NND_Activity_log]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NND_Activity_log](
	[nnd_activity_log_uid] [bigint] NOT NULL,
	[nnd_activity_log_seq] [smallint] NOT NULL,
	[error_message_txt] [varchar](2000) NOT NULL,
	[local_id] [varchar](50) NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL DEFAULT (getdate()),
	[status_cd] [char](1) NOT NULL,
	[status_time] [datetime] NOT NULL DEFAULT (getdate()),
	[service] [varchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[nnd_activity_log_uid] ASC,
	[nnd_activity_log_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NND_metadata]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NND_metadata](
	[nnd_metadata_uid] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[HL7_segment_field] [varchar](30) NULL,
	[investigation_form_cd] [varchar](50) NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[order_group_id] [varchar](5) NULL,
	[question_identifier_nnd] [varchar](50) NULL,
	[question_identifier] [varchar](50) NOT NULL,
	[question_label_nnd] [varchar](150) NULL,
	[question_required_nnd] [char](1) NOT NULL,
	[question_data_type_nnd] [varchar](10) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[translation_table_nm] [varchar](30) NULL,
	[repeat_group_seq_nbr] [int] NULL,
	[question_order_nnd] [int] NULL,
	[msg_trigger_ind_cd] [char](1) NULL,
	[xml_path] [varchar](2000) NULL,
	[xml_tag] [varchar](300) NULL,
	[xml_data_type] [varchar](50) NULL,
	[part_type_cd] [varchar](50) NULL,
	[nbs_page_uid] [bigint] NULL,
	[nbs_ui_metadata_uid] [bigint] NULL,
	[question_map] [varchar](2000) NULL,
	[indicator_cd] [varchar](2000) NULL,
 CONSTRAINT [PK_NND_Metadata1] PRIMARY KEY CLUSTERED 
(
	[nnd_metadata_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NND_metadata_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NND_metadata_hist](
	[nnd_metadata_hist_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[nnd_metadata_uid] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[HL7_segment_field] [varchar](30) NULL,
	[investigation_form_cd] [varchar](50) NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[order_group_id] [varchar](5) NULL,
	[question_identifier_nnd] [varchar](50) NULL,
	[question_identifier] [varchar](50) NOT NULL,
	[question_label_nnd] [varchar](150) NULL,
	[question_required_nnd] [char](1) NOT NULL,
	[question_data_type_nnd] [varchar](10) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[translation_table_nm] [varchar](30) NULL,
	[repeat_group_seq_nbr] [int] NULL,
	[question_order_nnd] [int] NULL,
	[msg_trigger_ind_cd] [char](1) NULL,
	[xml_path] [varchar](2000) NULL,
	[xml_tag] [varchar](300) NULL,
	[xml_data_type] [varchar](50) NULL,
	[part_type_cd] [varchar](50) NULL,
	[nbs_page_uid] [bigint] NULL,
	[nbs_ui_metadata_uid] [bigint] NULL,
	[version_ctrl_nbr] [int] NOT NULL,
	[question_map] [varchar](2000) NULL,
	[indicator_cd] [varchar](2000) NULL,
 CONSTRAINT [PK_NNDMetHist_NNDHstUid] PRIMARY KEY NONCLUSTERED 
(
	[nnd_metadata_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Non_Person_living_subject]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Non_Person_living_subject](
	[non_person_uid] [bigint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[birth_sex_cd] [char](1) NULL,
	[birth_order_nbr] [smallint] NULL,
	[birth_time] [datetime] NULL,
	[breed_cd] [varchar](20) NULL,
	[breed_desc_txt] [varchar](100) NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[deceased_ind_cd] [char](1) NULL,
	[deceased_time] [datetime] NULL,
	[description] [varchar](1000) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[multiple_birth_ind] [char](1) NULL,
	[nm] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[taxonomic_classification_cd] [varchar](20) NULL,
	[taxonomic_classification_desc] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[non_person_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Non_Person_living_subject_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Non_Person_living_subject_hist](
	[non_person_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[birth_sex_cd] [char](1) NULL,
	[birth_order_nbr] [smallint] NULL,
	[birth_time] [datetime] NULL,
	[breed_cd] [varchar](20) NULL,
	[breed_desc_txt] [varchar](100) NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[deceased_ind_cd] [char](1) NULL,
	[deceased_time] [datetime] NULL,
	[description] [varchar](1000) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[multiple_birth_ind] [char](1) NULL,
	[nm] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[taxonomic_classification_cd] [varchar](20) NULL,
	[taxonomic_classification_desc] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[non_person_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notification](
	[notification_uid] [bigint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[case_class_cd] [varchar](20) NULL,
	[case_condition_cd] [varchar](20) NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[confirmation_method_cd] [varchar](20) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[message_txt] [text] NULL,
	[method_cd] [varchar](20) NULL,
	[method_desc_txt] [varchar](100) NULL,
	[mmwr_week] [varchar](10) NULL,
	[mmwr_year] [varchar](10) NULL,
	[nedss_version_nbr] [varchar](10) NULL,
	[prog_area_cd] [varchar](20) NULL,
	[reason_cd] [varchar](20) NULL,
	[reason_desc_txt] [varchar](100) NULL,
	[record_count] [varchar](10) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[repeat_nbr] [smallint] NULL,
	[rpt_sent_time] [datetime] NULL,
	[rpt_source_cd] [varchar](20) NULL,
	[rpt_source_type_cd] [varchar](20) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[txt] [varchar](1000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[auto_resend_ind] [char](1) NULL,
	[export_receiving_facility_uid] [bigint] NULL,
	[nbs_interface_uid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[notification_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notification_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notification_hist](
	[notification_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[case_class_cd] [varchar](20) NULL,
	[case_condition_cd] [varchar](20) NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[confirmation_method_cd] [varchar](20) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[message_txt] [text] NULL,
	[method_cd] [varchar](20) NULL,
	[method_desc_txt] [varchar](100) NULL,
	[mmwr_week] [varchar](10) NULL,
	[mmwr_year] [varchar](10) NULL,
	[nedss_version_nbr] [varchar](10) NULL,
	[prog_area_cd] [varchar](20) NULL,
	[reason_cd] [varchar](20) NULL,
	[reason_desc_txt] [varchar](100) NULL,
	[record_count] [varchar](10) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[repeat_nbr] [smallint] NULL,
	[rpt_sent_time] [datetime] NULL,
	[rpt_source_cd] [varchar](20) NULL,
	[rpt_source_type_cd] [varchar](20) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[txt] [varchar](1000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[auto_resend_ind] [char](1) NULL,
	[export_receiving_facility_uid] [bigint] NULL,
	[nbs_interface_uid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[notification_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obs_value_coded]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obs_value_coded](
	[observation_uid] [bigint] NOT NULL,
	[code] [varchar](20) NOT NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[code_version] [varchar](10) NULL,
	[display_name] [varchar](300) NULL,
	[original_txt] [varchar](300) NULL,
	[alt_cd] [varchar](50) NULL,
	[alt_cd_desc_txt] [varchar](100) NULL,
	[alt_cd_system_cd] [varchar](300) NULL,
	[alt_cd_system_desc_txt] [varchar](100) NULL,
	[code_derived_ind] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obs_value_coded_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obs_value_coded_hist](
	[observation_uid] [bigint] NOT NULL,
	[code] [varchar](20) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[code_system_cd] [varchar](300) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[code_version] [varchar](10) NULL,
	[display_name] [varchar](300) NULL,
	[original_txt] [varchar](300) NULL,
	[alt_cd] [varchar](50) NULL,
	[alt_cd_desc_txt] [varchar](100) NULL,
	[alt_cd_system_cd] [varchar](300) NULL,
	[alt_cd_system_desc_txt] [varchar](100) NULL,
	[code_derived_ind] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[code] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obs_value_coded_mod]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obs_value_coded_mod](
	[observation_uid] [bigint] NOT NULL,
	[code] [varchar](20) NOT NULL,
	[code_mod_cd] [varchar](20) NOT NULL,
	[code_system_cd] [varchar](20) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[code_version] [varchar](10) NULL,
	[display_name] [varchar](300) NULL,
	[original_txt] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[code] ASC,
	[code_mod_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obs_value_coded_mod_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obs_value_coded_mod_hist](
	[observation_uid] [bigint] NOT NULL,
	[code] [varchar](20) NOT NULL,
	[code_mod_cd] [varchar](20) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[code_system_cd] [varchar](20) NULL,
	[code_system_desc_txt] [varchar](100) NULL,
	[code_version] [varchar](10) NULL,
	[display_name] [varchar](300) NULL,
	[original_txt] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[code] ASC,
	[code_mod_cd] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obs_value_date]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obs_value_date](
	[observation_uid] [bigint] NOT NULL,
	[obs_value_date_seq] [smallint] NOT NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[to_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[obs_value_date_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obs_value_date_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obs_value_date_hist](
	[observation_uid] [bigint] NOT NULL,
	[obs_value_date_seq] [smallint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[to_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[obs_value_date_seq] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obs_value_numeric]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obs_value_numeric](
	[observation_uid] [bigint] NOT NULL,
	[obs_value_numeric_seq] [smallint] NOT NULL,
	[high_range] [varchar](20) NULL,
	[low_range] [varchar](20) NULL,
	[comparator_cd_1] [varchar](10) NULL,
	[numeric_value_1] [numeric](15, 5) NULL,
	[numeric_value_2] [numeric](15, 5) NULL,
	[numeric_unit_cd] [varchar](20) NULL,
	[separator_cd] [varchar](10) NULL,
	[numeric_scale_1] [smallint] NULL,
	[numeric_scale_2] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[obs_value_numeric_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obs_value_numeric_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obs_value_numeric_hist](
	[observation_uid] [bigint] NOT NULL,
	[obs_value_numeric_seq] [smallint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[high_range] [varchar](20) NULL,
	[low_range] [varchar](20) NULL,
	[comparator_cd_1] [varchar](10) NULL,
	[numeric_value_1] [numeric](15, 5) NULL,
	[numeric_value_2] [numeric](15, 5) NULL,
	[numeric_unit_cd] [varchar](20) NULL,
	[separator_cd] [varchar](10) NULL,
	[numeric_scale_1] [smallint] NULL,
	[numeric_scale_2] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[obs_value_numeric_seq] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obs_value_txt]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obs_value_txt](
	[observation_uid] [bigint] NOT NULL,
	[obs_value_txt_seq] [smallint] NOT NULL,
	[data_subtype_cd] [varchar](20) NULL,
	[encoding_type_cd] [varchar](20) NULL,
	[txt_type_cd] [varchar](20) NULL,
	[value_image_txt] [image] NULL,
	[value_txt] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[obs_value_txt_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obs_value_txt_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obs_value_txt_hist](
	[observation_uid] [bigint] NOT NULL,
	[obs_value_txt_seq] [smallint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[data_subtype_cd] [varchar](20) NULL,
	[encoding_type_cd] [varchar](20) NULL,
	[txt_type_cd] [varchar](20) NULL,
	[value_image_txt] [image] NULL,
	[value_txt] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[obs_value_txt_seq] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Observation]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Observation](
	[observation_uid] [bigint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](1000) NULL,
	[cd_system_cd] [varchar](300) NULL,
	[cd_system_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[ctrl_cd_display_form] [varchar](20) NULL,
	[ctrl_cd_user_defined_1] [varchar](20) NULL,
	[ctrl_cd_user_defined_2] [varchar](20) NULL,
	[ctrl_cd_user_defined_3] [varchar](20) NULL,
	[ctrl_cd_user_defined_4] [varchar](20) NULL,
	[derivation_exp] [smallint] NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[electronic_ind] [char](1) NULL,
	[group_level_cd] [varchar](10) NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[lab_condition_cd] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[method_cd] [varchar](2000) NULL,
	[method_desc_txt] [varchar](2000) NULL,
	[obs_domain_cd] [varchar](20) NULL,
	[obs_domain_cd_st_1] [varchar](20) NULL,
	[pnu_cd] [char](1) NULL,
	[priority_cd] [varchar](20) NULL,
	[priority_desc_txt] [varchar](100) NULL,
	[prog_area_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[repeat_nbr] [smallint] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[subject_person_uid] [bigint] NULL,
	[target_site_cd] [varchar](20) NULL,
	[target_site_desc_txt] [varchar](100) NULL,
	[txt] [varchar](1000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[value_cd] [varchar](20) NULL,
	[ynu_cd] [char](1) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[alt_cd] [varchar](50) NULL,
	[alt_cd_desc_txt] [varchar](1000) NULL,
	[alt_cd_system_cd] [varchar](300) NULL,
	[alt_cd_system_desc_txt] [varchar](100) NULL,
	[cd_derived_ind] [char](1) NULL,
	[rpt_to_state_time] [datetime] NULL,
	[cd_version] [varchar](50) NULL,
	[processing_decision_cd] [varchar](20) NULL,
	[pregnant_ind_cd] [varchar](20) NULL,
	[pregnant_week] [smallint] NULL,
	[processing_decision_txt] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Observation_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Observation_hist](
	[observation_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](1000) NULL,
	[cd_system_cd] [varchar](300) NULL,
	[cd_system_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[ctrl_cd_display_form] [varchar](20) NULL,
	[ctrl_cd_user_defined_1] [varchar](20) NULL,
	[ctrl_cd_user_defined_2] [varchar](20) NULL,
	[ctrl_cd_user_defined_3] [varchar](20) NULL,
	[ctrl_cd_user_defined_4] [varchar](20) NULL,
	[derivation_exp] [smallint] NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[electronic_ind] [char](1) NULL,
	[group_level_cd] [varchar](10) NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[lab_condition_cd] [varchar](20) NULL,
	[local_id] [varchar](50) NULL,
	[obs_domain_cd] [varchar](20) NULL,
	[obs_domain_cd_st_1] [varchar](10) NULL,
	[pnu_cd] [char](1) NULL,
	[priority_cd] [varchar](20) NULL,
	[priority_desc_txt] [varchar](100) NULL,
	[prog_area_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[repeat_nbr] [smallint] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[subject_person_uid] [bigint] NULL,
	[target_site_cd] [varchar](20) NULL,
	[target_site_desc_txt] [varchar](100) NULL,
	[txt] [varchar](1000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[value_cd] [varchar](20) NULL,
	[ynu_cd] [char](1) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[alt_cd] [varchar](50) NULL,
	[alt_cd_desc_txt] [varchar](1000) NULL,
	[alt_cd_system_cd] [varchar](300) NULL,
	[alt_cd_system_desc_txt] [varchar](100) NULL,
	[cd_derived_ind] [char](1) NULL,
	[rpt_to_state_time] [datetime] NULL,
	[cd_version] [varchar](50) NULL,
	[processing_decision_cd] [varchar](20) NULL,
	[pregnant_ind_cd] [varchar](20) NULL,
	[pregnant_week] [smallint] NULL,
	[processing_decision_txt] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Observation_interp]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Observation_interp](
	[observation_uid] [bigint] NOT NULL,
	[interpretation_cd] [varchar](20) NOT NULL,
	[interpretation_desc_txt] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[interpretation_cd] ASC,
	[interpretation_desc_txt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Observation_interp_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Observation_interp_hist](
	[observation_uid] [bigint] NOT NULL,
	[interpretation_cd] [varchar](20) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[interpretation_txt] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[interpretation_cd] ASC,
	[version_ctrl_nbr] ASC,
	[interpretation_txt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Observation_reason]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Observation_reason](
	[observation_uid] [bigint] NOT NULL,
	[reason_cd] [varchar](20) NOT NULL,
	[reason_desc_txt] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[reason_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Observation_reason_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Observation_reason_hist](
	[observation_uid] [bigint] NOT NULL,
	[reason_cd] [varchar](20) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[reason_desc_txt] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[observation_uid] ASC,
	[reason_cd] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Operator_type]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Operator_type](
	[operator_type_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[operator_type_code] [varchar](20) NULL,
	[operator_type_desc_txt] [varchar](50) NULL,
 CONSTRAINT [PK_Operator_operatorUid] PRIMARY KEY NONCLUSTERED 
(
	[operator_type_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organization](
	[organization_uid] [bigint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[description] [varchar](1000) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[standard_industry_class_cd] [varchar](20) NULL,
	[standard_industry_desc_txt] [varchar](100) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[to_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[display_nm] [varchar](100) NULL,
	[street_addr1] [varchar](100) NULL,
	[street_addr2] [varchar](100) NULL,
	[city_cd] [varchar](20) NULL,
	[city_desc_txt] [varchar](100) NULL,
	[state_cd] [varchar](20) NULL,
	[cnty_cd] [varchar](20) NULL,
	[cntry_cd] [varchar](20) NULL,
	[zip_cd] [varchar](20) NULL,
	[phone_nbr] [varchar](20) NULL,
	[phone_cntry_cd] [varchar](20) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[electronic_ind] [char](1) NULL,
	[edx_ind] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[organization_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organization_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organization_hist](
	[organization_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[description] [varchar](1000) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[standard_industry_class_cd] [varchar](20) NULL,
	[standard_industry_desc_txt] [varchar](100) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[to_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[display_nm] [varchar](100) NULL,
	[street_addr1] [varchar](100) NULL,
	[street_addr2] [varchar](100) NULL,
	[city_cd] [varchar](20) NULL,
	[city_desc_txt] [varchar](100) NULL,
	[state_cd] [varchar](20) NULL,
	[cnty_cd] [varchar](20) NULL,
	[cntry_cd] [varchar](20) NULL,
	[zip_cd] [varchar](20) NULL,
	[phone_nbr] [varchar](20) NULL,
	[phone_cntry_cd] [varchar](20) NULL,
	[electronic_ind] [char](1) NULL,
	[edx_ind] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[organization_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organization_name]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organization_name](
	[organization_uid] [bigint] NOT NULL,
	[organization_name_seq] [smallint] NOT NULL,
	[nm_txt] [varchar](100) NULL,
	[nm_use_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[default_nm_ind] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[organization_uid] ASC,
	[organization_name_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Organization_name_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organization_name_hist](
	[organization_uid] [bigint] NOT NULL,
	[organization_name_seq] [smallint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[nm_txt] [varchar](100) NULL,
	[nm_use_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[default_nm_ind] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[organization_uid] ASC,
	[organization_name_seq] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Page_cond_mapping]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Page_cond_mapping](
	[page_cond_mapping_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[wa_template_uid] [bigint] NOT NULL,
	[condition_cd] [varchar](20) NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
 CONSTRAINT [PK_Page_cond_mapping] PRIMARY KEY CLUSTERED 
(
	[page_cond_mapping_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Page_cond_mapping_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Page_cond_mapping_hist](
	[page_cond_mapping_hist_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[page_cond_mapping_uid] [bigint] NOT NULL,
	[wa_template_uid] [bigint] NOT NULL,
	[condition_cd] [varchar](20) NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
 CONSTRAINT [PK_Page_cond_mapping_hist] PRIMARY KEY CLUSTERED 
(
	[page_cond_mapping_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Participation]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Participation](
	[subject_entity_uid] [bigint] NOT NULL,
	[act_uid] [bigint] NOT NULL,
	[type_cd] [varchar](50) NOT NULL,
	[act_class_cd] [varchar](10) NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[awareness_cd] [varchar](20) NULL,
	[awareness_desc_txt] [varchar](100) NULL,
	[cd] [varchar](40) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[role_seq] [bigint] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[subject_class_cd] [varchar](10) NULL,
	[to_time] [datetime] NULL,
	[type_desc_txt] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[subject_entity_uid] ASC,
	[act_uid] ASC,
	[type_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Participation_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Participation_hist](
	[subject_entity_uid] [bigint] NOT NULL,
	[act_uid] [bigint] NOT NULL,
	[type_cd] [varchar](50) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[act_class_cd] [varchar](7) NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[awareness_cd] [varchar](20) NULL,
	[awareness_desc_txt] [varchar](100) NULL,
	[cd] [varchar](50) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[role_seq] [bigint] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[subject_class_cd] [varchar](7) NULL,
	[to_time] [datetime] NULL,
	[type_desc_txt] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[subject_entity_uid] ASC,
	[act_uid] ASC,
	[type_cd] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Patient_encounter]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patient_encounter](
	[patient_encounter_uid] [bigint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[acuity_level_cd] [varchar](20) NULL,
	[acuity_level_desc_txt] [varchar](100) NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[admission_source_cd] [varchar](20) NULL,
	[admission_source_desc_txt] [varchar](100) NULL,
	[birth_encounter_ind] [char](1) NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[priority_cd] [varchar](20) NULL,
	[priority_desc_txt] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[referral_source_cd] [varchar](20) NULL,
	[referral_source_desc_txt] [varchar](100) NULL,
	[repeat_nbr] [smallint] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[txt] [varchar](1000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[patient_encounter_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Patient_encounter_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patient_encounter_hist](
	[patient_encounter_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[acuity_level_cd] [varchar](20) NULL,
	[acuity_level_desc_txt] [varchar](100) NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[admission_source_cd] [varchar](20) NULL,
	[admission_source_desc_txt] [varchar](100) NULL,
	[birth_encounter_ind] [char](1) NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[priority_cd] [varchar](20) NULL,
	[priority_desc_txt] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[referral_source_cd] [varchar](20) NULL,
	[referral_source_desc_txt] [varchar](100) NULL,
	[repeat_nbr] [smallint] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[txt] [varchar](1000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[patient_encounter_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[person_uid] [bigint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[administrative_gender_cd] [varchar](20) NULL,
	[age_calc] [smallint] NULL,
	[age_calc_time] [datetime] NULL,
	[age_calc_unit_cd] [char](1) NULL,
	[age_category_cd] [varchar](20) NULL,
	[age_reported] [varchar](10) NULL,
	[age_reported_time] [datetime] NULL,
	[age_reported_unit_cd] [varchar](20) NULL,
	[birth_gender_cd] [char](1) NULL,
	[birth_order_nbr] [smallint] NULL,
	[birth_time] [datetime] NULL,
	[birth_time_calc] [datetime] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[curr_sex_cd] [char](1) NULL,
	[deceased_ind_cd] [varchar](20) NULL,
	[deceased_time] [datetime] NULL,
	[description] [varchar](2000) NULL,
	[education_level_cd] [varchar](20) NULL,
	[education_level_desc_txt] [varchar](100) NULL,
	[ethnic_group_ind] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[marital_status_cd] [varchar](20) NULL,
	[marital_status_desc_txt] [varchar](100) NULL,
	[mothers_maiden_nm] [varchar](50) NULL,
	[multiple_birth_ind] [varchar](20) NULL,
	[occupation_cd] [varchar](20) NULL,
	[preferred_gender_cd] [varchar](20) NULL,
	[prim_lang_cd] [varchar](20) NULL,
	[prim_lang_desc_txt] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[survived_ind_cd] [char](1) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[first_nm] [varchar](50) NULL,
	[last_nm] [varchar](50) NULL,
	[middle_nm] [varchar](50) NULL,
	[nm_prefix] [varchar](20) NULL,
	[nm_suffix] [varchar](20) NULL,
	[preferred_nm] [varchar](50) NULL,
	[hm_street_addr1] [varchar](100) NULL,
	[hm_street_addr2] [varchar](100) NULL,
	[hm_city_cd] [varchar](20) NULL,
	[hm_city_desc_txt] [varchar](100) NULL,
	[hm_state_cd] [varchar](20) NULL,
	[hm_zip_cd] [varchar](20) NULL,
	[hm_cnty_cd] [varchar](20) NULL,
	[hm_cntry_cd] [varchar](20) NULL,
	[hm_phone_nbr] [varchar](20) NULL,
	[hm_phone_cntry_cd] [varchar](20) NULL,
	[hm_email_addr] [varchar](100) NULL,
	[cell_phone_nbr] [varchar](20) NULL,
	[wk_street_addr1] [varchar](100) NULL,
	[wk_street_addr2] [varchar](100) NULL,
	[wk_city_cd] [varchar](20) NULL,
	[wk_city_desc_txt] [varchar](100) NULL,
	[wk_state_cd] [varchar](20) NULL,
	[wk_zip_cd] [varchar](20) NULL,
	[wk_cnty_cd] [varchar](20) NULL,
	[wk_cntry_cd] [varchar](20) NULL,
	[wk_phone_nbr] [varchar](20) NULL,
	[wk_phone_cntry_cd] [varchar](20) NULL,
	[wk_email_addr] [varchar](100) NULL,
	[SSN] [varchar](100) NULL,
	[medicaid_num] [varchar](100) NULL,
	[dl_num] [varchar](100) NULL,
	[dl_state_cd] [varchar](20) NULL,
	[race_cd] [varchar](20) NULL,
	[race_seq_nbr] [smallint] NULL,
	[race_category_cd] [varchar](20) NULL,
	[ethnicity_group_cd] [varchar](20) NULL,
	[ethnic_group_seq_nbr] [smallint] NULL,
	[adults_in_house_nbr] [smallint] NULL,
	[children_in_house_nbr] [smallint] NULL,
	[birth_city_cd] [varchar](20) NULL,
	[birth_city_desc_txt] [varchar](100) NULL,
	[birth_cntry_cd] [varchar](20) NULL,
	[birth_state_cd] [varchar](20) NULL,
	[race_desc_txt] [varchar](100) NULL,
	[ethnic_group_desc_txt] [varchar](100) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[as_of_date_admin] [datetime] NULL,
	[as_of_date_ethnicity] [datetime] NULL,
	[as_of_date_general] [datetime] NULL,
	[as_of_date_morbidity] [datetime] NULL,
	[as_of_date_sex] [datetime] NULL,
	[electronic_ind] [char](1) NULL,
	[person_parent_uid] [bigint] NULL,
	[dedup_match_ind] [char](1) NULL,
	[group_nbr] [int] NULL,
	[group_time] [datetime] NULL,
	[edx_ind] [varchar](1) NULL,
	[speaks_english_cd] [varchar](20) NULL,
	[additional_gender_cd] [varchar](50) NULL,
	[ehars_id] [varchar](20) NULL,
	[ethnic_unk_reason_cd] [varchar](20) NULL,
	[sex_unk_reason_cd] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[person_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person_ethnic_group]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person_ethnic_group](
	[person_uid] [bigint] NOT NULL,
	[ethnic_group_cd] [varchar](20) NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[ethnic_group_desc_txt] [varchar](100) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[person_uid] ASC,
	[ethnic_group_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person_ethnic_group_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person_ethnic_group_hist](
	[person_uid] [bigint] NOT NULL,
	[ethnic_group_cd] [varchar](20) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[ethnic_group_desc_txt] [varchar](100) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[person_uid] ASC,
	[ethnic_group_cd] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person_hist](
	[person_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[administrative_gender_cd] [varchar](20) NULL,
	[age_calc] [smallint] NULL,
	[age_calc_time] [datetime] NULL,
	[age_calc_unit_cd] [char](1) NULL,
	[age_category_cd] [varchar](20) NULL,
	[age_reported] [varchar](10) NULL,
	[age_reported_time] [datetime] NULL,
	[age_reported_unit_cd] [varchar](20) NULL,
	[birth_gender_cd] [char](1) NULL,
	[birth_order_nbr] [smallint] NULL,
	[birth_time] [datetime] NULL,
	[birth_time_calc] [datetime] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[curr_sex_cd] [char](1) NULL,
	[deceased_ind_cd] [varchar](20) NULL,
	[deceased_time] [datetime] NULL,
	[description] [varchar](2000) NULL,
	[education_level_cd] [varchar](20) NULL,
	[education_level_desc_txt] [varchar](100) NULL,
	[ethnic_group_ind] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[marital_status_cd] [varchar](20) NULL,
	[marital_status_desc_txt] [varchar](20) NULL,
	[mothers_maiden_nm] [varchar](50) NULL,
	[multiple_birth_ind] [varchar](20) NULL,
	[occupation_cd] [varchar](20) NULL,
	[preferred_gender_cd] [varchar](20) NULL,
	[prim_lang_cd] [varchar](20) NULL,
	[prim_lang_desc_txt] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[survived_ind_cd] [char](1) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[first_nm] [varchar](50) NULL,
	[last_nm] [varchar](50) NULL,
	[middle_nm] [varchar](50) NULL,
	[nm_prefix] [varchar](20) NULL,
	[nm_suffix] [varchar](20) NULL,
	[preferred_nm] [varchar](50) NULL,
	[hm_street_addr1] [varchar](100) NULL,
	[hm_street_addr2] [varchar](100) NULL,
	[hm_city_cd] [varchar](20) NULL,
	[hm_city_desc_txt] [varchar](100) NULL,
	[hm_state_cd] [varchar](20) NULL,
	[hm_zip_cd] [varchar](20) NULL,
	[hm_cnty_cd] [varchar](20) NULL,
	[hm_cntry_cd] [varchar](20) NULL,
	[hm_phone_nbr] [varchar](20) NULL,
	[hm_phone_cntry_cd] [varchar](20) NULL,
	[hm_email_addr] [varchar](100) NULL,
	[cell_phone_nbr] [varchar](20) NULL,
	[wk_street_addr1] [varchar](100) NULL,
	[wk_street_addr2] [varchar](100) NULL,
	[wk_city_cd] [varchar](20) NULL,
	[wk_city_desc_txt] [varchar](100) NULL,
	[wk_state_cd] [varchar](20) NULL,
	[wk_zip_cd] [varchar](20) NULL,
	[wk_cnty_cd] [varchar](20) NULL,
	[wk_cntry_cd] [varchar](20) NULL,
	[wk_phone_nbr] [varchar](20) NULL,
	[wk_phone_cntry_cd] [varchar](20) NULL,
	[wk_email_addr] [varchar](100) NULL,
	[SSN] [varchar](100) NULL,
	[medicaid_num] [varchar](100) NULL,
	[dl_num] [varchar](100) NULL,
	[dl_state_cd] [varchar](20) NULL,
	[race_cd] [varchar](20) NULL,
	[race_seq_nbr] [smallint] NULL,
	[race_category_cd] [varchar](20) NULL,
	[ethnicity_group_cd] [varchar](20) NULL,
	[ethnicity_group_seq_nbr] [smallint] NULL,
	[adults_in_house_nbr] [smallint] NULL,
	[children_in_house_nbr] [smallint] NULL,
	[birth_city_cd] [varchar](20) NULL,
	[birth_city_desc_txt] [varchar](100) NULL,
	[birth_cntry_cd] [varchar](20) NULL,
	[birth_state_cd] [varchar](20) NULL,
	[race_desc_txt] [varchar](100) NULL,
	[ethnic_group_desc_txt] [varchar](100) NULL,
	[as_of_date_admin] [datetime] NULL,
	[as_of_date_ethnicity] [datetime] NULL,
	[as_of_date_general] [datetime] NULL,
	[as_of_date_morbidity] [datetime] NULL,
	[as_of_date_sex] [datetime] NULL,
	[electronic_ind] [char](1) NULL,
	[person_parent_uid] [bigint] NULL,
	[dedup_match_ind] [char](1) NULL,
	[group_nbr] [int] NULL,
	[group_time] [datetime] NULL,
	[edx_ind] [varchar](1) NULL,
	[speaks_english_cd] [varchar](20) NULL,
	[additional_gender_cd] [varchar](50) NULL,
	[ehars_id] [varchar](20) NULL,
	[ethnic_unk_reason_cd] [varchar](20) NULL,
	[sex_unk_reason_cd] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[person_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person_merge]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person_merge](
	[superced_person_uid] [bigint] NOT NULL,
	[superceded_version_ctrl_nbr] [smallint] NOT NULL,
	[superceded_parent_uid] [bigint] NOT NULL,
	[surviving_person_uid] [bigint] NOT NULL,
	[surviving_version_ctrl_nbr] [smallint] NULL,
	[surviving_parent_uid] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[merge_user_id] [varchar](20) NULL,
	[merge_time] [datetime] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[superced_person_uid] ASC,
	[superceded_version_ctrl_nbr] ASC,
	[surviving_person_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person_name]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person_name](
	[person_uid] [bigint] NOT NULL,
	[person_name_seq] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[default_nm_ind] [char](1) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[first_nm] [varchar](50) NULL,
	[first_nm_sndx] [varchar](50) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[last_nm] [varchar](50) NULL,
	[last_nm_sndx] [varchar](50) NULL,
	[last_nm2] [varchar](50) NULL,
	[last_nm2_sndx] [varchar](50) NULL,
	[middle_nm] [varchar](50) NULL,
	[middle_nm2] [varchar](50) NULL,
	[nm_degree] [varchar](20) NULL,
	[nm_prefix] [varchar](20) NULL,
	[nm_suffix] [varchar](20) NULL,
	[nm_use_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NOT NULL,
	[status_time] [datetime] NOT NULL,
	[to_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[as_of_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[person_uid] ASC,
	[person_name_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person_name_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person_name_hist](
	[person_uid] [bigint] NOT NULL,
	[person_name_seq] [smallint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[default_nm_ind] [char](1) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[first_nm] [varchar](50) NULL,
	[first_nm_sndx] [varchar](50) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[last_nm] [varchar](50) NULL,
	[last_nm_sndx] [varchar](50) NULL,
	[last_nm2] [varchar](50) NULL,
	[last_nm2_sndx] [varchar](50) NULL,
	[middle_nm] [varchar](50) NULL,
	[middle_nm2] [varchar](50) NULL,
	[nm_degree] [varchar](20) NULL,
	[nm_prefix] [varchar](20) NULL,
	[nm_suffix] [varchar](20) NULL,
	[nm_use_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NOT NULL,
	[status_time] [datetime] NOT NULL,
	[to_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[as_of_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[person_uid] ASC,
	[person_name_seq] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person_race]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person_race](
	[person_uid] [bigint] NOT NULL,
	[race_cd] [varchar](20) NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[race_category_cd] [varchar](20) NULL,
	[race_desc_txt] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[as_of_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[person_uid] ASC,
	[race_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Person_race_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person_race_hist](
	[person_uid] [bigint] NOT NULL,
	[race_cd] [varchar](20) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[race_category_cd] [varchar](20) NULL,
	[race_desc_txt] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[as_of_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[person_uid] ASC,
	[race_cd] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Physical_locator]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Physical_locator](
	[physical_locator_uid] [bigint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[image_txt] [image] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[locator_txt] [varchar](1000) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[physical_locator_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Physical_locator_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Physical_locator_hist](
	[physical_locator_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[image_txt] [image] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[locator_txt] [varchar](1000) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[physical_locator_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Place]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Place](
	[place_uid] [bigint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[description] [varchar](1000) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[nm] [varchar](50) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[to_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[street_addr1] [varchar](100) NULL,
	[street_addr2] [varchar](100) NULL,
	[city_cd] [varchar](20) NULL,
	[city_desc_txt] [varchar](100) NULL,
	[state_cd] [varchar](20) NULL,
	[zip_cd] [varchar](20) NULL,
	[cnty_cd] [varchar](20) NULL,
	[cntry_cd] [varchar](20) NULL,
	[phone_nbr] [varchar](20) NULL,
	[phone_cntry_cd] [varchar](20) NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[place_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Place_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Place_hist](
	[place_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[description] [varchar](1000) NULL,
	[duration_amt] [varchar](20) NULL,
	[duration_unit_cd] [varchar](20) NULL,
	[from_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[nm] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [char](1) NOT NULL,
	[status_time] [datetime] NOT NULL,
	[to_time] [datetime] NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[street_addr1] [varchar](100) NULL,
	[street_addr2] [varchar](100) NULL,
	[city_cd] [varchar](20) NULL,
	[city_desc_txt] [varchar](100) NULL,
	[state_cd] [varchar](20) NULL,
	[zip_cd] [varchar](20) NULL,
	[cnty_cd] [varchar](20) NULL,
	[cntry_cd] [varchar](20) NULL,
	[phone_nbr] [varchar](20) NULL,
	[phone_cntry_cd] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[place_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Postal_locator]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Postal_locator](
	[postal_locator_uid] [bigint] NOT NULL,
	[add_reason_cd] [varchar](80) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[census_block_cd] [varchar](20) NULL,
	[census_minor_civil_division_cd] [varchar](20) NULL,
	[census_track_cd] [varchar](20) NULL,
	[city_cd] [varchar](20) NULL,
	[city_desc_txt] [varchar](100) NULL,
	[cntry_cd] [varchar](20) NULL,
	[cntry_desc_txt] [varchar](100) NULL,
	[cnty_cd] [varchar](20) NULL,
	[cnty_desc_txt] [varchar](100) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[MSA_congress_district_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[region_district_cd] [varchar](20) NULL,
	[state_cd] [varchar](20) NULL,
	[street_addr1] [varchar](100) NULL,
	[street_addr2] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[zip_cd] [varchar](20) NULL,
	[geocode_match_ind] [varchar](1) NULL,
	[within_city_limits_ind] [varchar](3) NULL,
	[census_tract] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[postal_locator_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Postal_locator_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Postal_locator_hist](
	[postal_locator_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[census_block_cd] [varchar](20) NULL,
	[census_minor_civil_division_cd] [varchar](20) NULL,
	[census_track_cd] [varchar](20) NULL,
	[city_cd] [varchar](20) NULL,
	[city_desc_txt] [varchar](100) NULL,
	[cntry_cd] [varchar](20) NULL,
	[cntry_desc_txt] [varchar](100) NULL,
	[cnty_cd] [varchar](20) NULL,
	[cnty_desc_txt] [varchar](100) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[MSA_congress_district_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[region_district_cd] [varchar](20) NULL,
	[state_cd] [varchar](30) NULL,
	[street_addr1] [varchar](100) NULL,
	[street_addr2] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[zip_cd] [varchar](20) NULL,
	[geocode_match_ind] [varchar](1) NULL,
	[within_city_limits_ind] [varchar](3) NULL,
	[census_tract] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[postal_locator_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Procedure1]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Procedure1](
	[intervention_uid] [bigint] NOT NULL,
	[approach_site_cd] [varchar](20) NULL,
	[approach_site_desc_txt] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[intervention_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Procedure1_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Procedure1_hist](
	[intervention_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[approach_site_cd] [varchar](20) NULL,
	[approach_site_desc_txt] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[intervention_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Public_health_case]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Public_health_case](
	[public_health_case_uid] [bigint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[case_class_cd] [varchar](20) NULL,
	[case_type_cd] [char](1) NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[cd_system_cd] [varchar](20) NULL,
	[cd_system_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[detection_method_cd] [varchar](20) NULL,
	[detection_method_desc_txt] [varchar](100) NULL,
	[diagnosis_time] [datetime] NULL,
	[disease_imported_cd] [varchar](20) NULL,
	[disease_imported_desc_txt] [varchar](100) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[group_case_cnt] [smallint] NULL,
	[investigation_status_cd] [varchar](20) NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[mmwr_week] [varchar](10) NULL,
	[mmwr_year] [varchar](10) NULL,
	[outbreak_ind] [varchar](20) NULL,
	[outbreak_from_time] [datetime] NULL,
	[outbreak_to_time] [datetime] NULL,
	[outbreak_name] [varchar](100) NULL,
	[outcome_cd] [varchar](20) NULL,
	[pat_age_at_onset] [varchar](20) NULL,
	[pat_age_at_onset_unit_cd] [varchar](20) NULL,
	[patient_group_id] [bigint] NULL,
	[prog_area_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[repeat_nbr] [smallint] NULL,
	[rpt_cnty_cd] [varchar](20) NULL,
	[rpt_form_cmplt_time] [datetime] NULL,
	[rpt_source_cd] [varchar](20) NULL,
	[rpt_source_cd_desc_txt] [varchar](100) NULL,
	[rpt_to_county_time] [datetime] NULL,
	[rpt_to_state_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[transmission_mode_cd] [varchar](20) NULL,
	[transmission_mode_desc_txt] [varchar](100) NULL,
	[txt] [varchar](2000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[investigator_assigned_time] [datetime] NULL,
	[hospitalized_ind_cd] [varchar](20) NULL,
	[hospitalized_admin_time] [datetime] NULL,
	[hospitalized_discharge_time] [datetime] NULL,
	[hospitalized_duration_amt] [numeric](18, 0) NULL,
	[pregnant_ind_cd] [varchar](20) NULL,
	[day_care_ind_cd] [varchar](20) NULL,
	[food_handler_ind_cd] [varchar](20) NULL,
	[imported_country_cd] [varchar](20) NULL,
	[imported_state_cd] [varchar](20) NULL,
	[imported_city_desc_txt] [varchar](250) NULL,
	[imported_county_cd] [varchar](20) NULL,
	[deceased_time] [datetime] NULL,
	[count_interval_cd] [varchar](20) NULL,
	[priority_cd] [varchar](50) NULL,
	[contact_inv_txt] [varchar](2000) NULL,
	[infectious_from_date] [datetime] NULL,
	[infectious_to_date] [datetime] NULL,
	[contact_inv_status_cd] [varchar](50) NULL,
	[referral_basis_cd] [varchar](20) NULL,
	[curr_process_state_cd] [varchar](20) NULL,
	[inv_priority_cd] [varchar](20) NULL,
	[coinfection_id] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[public_health_case_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Public_health_case_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Public_health_case_hist](
	[public_health_case_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[cd_system_cd] [varchar](20) NULL,
	[cd_system_desc_txt] [varchar](100) NULL,
	[case_class_cd] [varchar](20) NULL,
	[case_type_cd] [char](1) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[detection_method_cd] [varchar](20) NULL,
	[detection_method_desc_txt] [varchar](100) NULL,
	[diagnosis_time] [datetime] NULL,
	[disease_imported_cd] [varchar](20) NULL,
	[disease_imported_desc_txt] [varchar](100) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[group_case_cnt] [smallint] NULL,
	[investigation_status_cd] [varchar](20) NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[mmwr_year] [varchar](10) NULL,
	[mmwr_week] [varchar](10) NULL,
	[outbreak_ind] [varchar](20) NULL,
	[outbreak_from_time] [datetime] NULL,
	[outbreak_to_time] [datetime] NULL,
	[outbreak_name] [varchar](100) NULL,
	[outcome_cd] [varchar](20) NULL,
	[pat_age_at_onset] [varchar](10) NULL,
	[pat_age_at_onset_unit_cd] [varchar](20) NULL,
	[patient_group_id] [bigint] NULL,
	[prog_area_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[repeat_nbr] [smallint] NULL,
	[rpt_cnty_cd] [varchar](20) NULL,
	[rpt_form_cmplt_time] [datetime] NULL,
	[rpt_source_cd] [varchar](20) NULL,
	[rpt_source_cd_desc_txt] [varchar](100) NULL,
	[rpt_to_county_time] [datetime] NULL,
	[rpt_to_state_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[transmission_mode_cd] [varchar](20) NULL,
	[transmission_mode_desc_txt] [varchar](100) NULL,
	[txt] [varchar](2000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[investigator_assigned_time] [datetime] NULL,
	[hospitalized_ind_cd] [varchar](20) NULL,
	[hospitalized_admin_time] [datetime] NULL,
	[hospitalized_discharge_time] [datetime] NULL,
	[hospitalized_duration_amt] [numeric](18, 0) NULL,
	[pregnant_ind_cd] [varchar](20) NULL,
	[day_care_ind_cd] [varchar](20) NULL,
	[food_handler_ind_cd] [varchar](20) NULL,
	[imported_country_cd] [varchar](20) NULL,
	[imported_state_cd] [varchar](20) NULL,
	[imported_city_desc_txt] [varchar](250) NULL,
	[imported_county_cd] [varchar](20) NULL,
	[deceased_time] [datetime] NULL,
	[count_interval_cd] [varchar](20) NULL,
	[priority_cd] [varchar](50) NULL,
	[contact_inv_txt] [varchar](2000) NULL,
	[infectious_from_date] [datetime] NULL,
	[infectious_to_date] [datetime] NULL,
	[contact_inv_status_cd] [varchar](50) NULL,
	[referral_basis_cd] [varchar](20) NULL,
	[curr_process_state_cd] [varchar](20) NULL,
	[inv_priority_cd] [varchar](20) NULL,
	[coinfection_id] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[public_health_case_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PublicHealthCaseFact]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PublicHealthCaseFact](
	[public_health_case_uid] [bigint] NOT NULL,
	[adults_in_house_nbr] [smallint] NULL,
	[ageInMonths] [smallint] NULL,
	[ageInYears] [smallint] NULL,
	[age_category_cd] [varchar](20) NULL,
	[age_reported_time] [datetime] NULL,
	[age_reported_unit_cd] [varchar](20) NULL,
	[age_reported] [numeric](8, 0) NULL,
	[awareness_cd] [varchar](20) NULL,
	[awareness_desc_txt] [varchar](100) NULL,
	[birth_gender_cd] [char](1) NULL,
	[birth_order_nbr] [smallint] NULL,
	[birth_time] [datetime] NULL,
	[birth_time_calc] [datetime] NULL,
	[birth_time_std] [datetime] NULL,
	[case_class_cd] [varchar](20) NOT NULL,
	[case_type_cd] [char](1) NULL,
	[cd_system_cd] [varchar](20) NULL,
	[cd_system_desc_txt] [varchar](100) NULL,
	[census_block_cd] [varchar](20) NULL,
	[census_minor_civil_division_cd] [varchar](20) NULL,
	[census_track_cd] [varchar](20) NULL,
	[cnty_code_desc_txt] [varchar](200) NULL,
	[children_in_house_nbr] [smallint] NULL,
	[city_cd] [varchar](20) NULL,
	[city_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[confirmation_method_cd] [varchar](300) NULL,
	[confirmation_method_time] [datetime] NULL,
	[county] [varchar](255) NULL,
	[cntry_cd] [varchar](20) NULL,
	[cnty_cd] [varchar](20) NULL,
	[curr_sex_cd] [char](1) NULL,
	[deceased_ind_cd] [varchar](20) NULL,
	[deceased_time] [datetime] NULL,
	[detection_method_cd] [varchar](20) NULL,
	[detection_method_desc_txt] [varchar](100) NULL,
	[diagnosis_date] [datetime] NULL,
	[disease_imported_cd] [varchar](20) NULL,
	[disease_imported_desc_txt] [varchar](100) NULL,
	[education_level_cd] [varchar](20) NULL,
	[ELP_class_cd] [varchar](10) NULL,
	[ELP_from_time] [datetime] NULL,
	[ELP_to_time] [datetime] NULL,
	[ethnic_group_ind] [varchar](20) NULL,
	[ethnic_group_ind_desc] [varchar](50) NULL,
	[event_date] [datetime] NULL,
	[event_type] [varchar](10) NULL,
	[education_level_desc_txt] [varchar](100) NULL,
	[firstNotificationSenddate] [datetime] NULL,
	[firstNotificationdate] [datetime] NULL,
	[firstNotificationStatus] [varchar](20) NULL,
	[firstNotificationSubmittedBy] [bigint] NULL,
	[geoLatitude] [real] NULL,
	[geoLongitude] [real] NULL,
	[group_case_cnt] [numeric](11, 5) NULL,
	[investigation_status_cd] [varchar](20) NULL,
	[investigatorAssigneddate] [datetime] NULL,
	[investigatorName] [varchar](102) NULL,
	[investigatorPhone] [varchar](20) NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[lastNotificationdate] [datetime] NULL,
	[lastNotificationSenddate] [datetime] NULL,
	[lastNotificationSubmittedBy] [bigint] NULL,
	[marital_status_cd] [varchar](20) NULL,
	[marital_status_desc_txt] [varchar](100) NULL,
	[mart_record_creation_date] [datetime] NULL,
	[mart_record_creation_time] [datetime] NULL,
	[mmwr_week] [numeric](8, 0) NULL,
	[mmwr_year] [numeric](8, 0) NULL,
	[MSA_congress_district_cd] [varchar](20) NULL,
	[multiple_birth_ind] [varchar](20) NULL,
	[notifCreatedCount] [int] NULL,
	[notificationdate] [datetime] NULL,
	[notifSentCount] [int] NULL,
	[occupation_cd] [varchar](20) NULL,
	[onSetDate] [datetime] NULL,
	[organizationName] [varchar](100) NULL,
	[outcome_cd] [varchar](20) NULL,
	[outbreak_from_time] [datetime] NULL,
	[outbreak_ind] [varchar](20) NULL,
	[outbreak_name] [varchar](100) NULL,
	[outbreak_to_time] [datetime] NULL,
	[PAR_type_cd] [varchar](50) NULL,
	[pat_age_at_onset] [numeric](8, 0) NULL,
	[pat_age_at_onset_unit_cd] [varchar](20) NULL,
	[postal_locator_uid] [bigint] NULL,
	[person_cd] [varchar](50) NULL,
	[person_code_desc] [varchar](100) NULL,
	[person_uid] [bigint] NULL,
	[PHC_add_time] [datetime] NULL,
	[PHC_code] [varchar](50) NOT NULL,
	[PHC_code_desc] [varchar](100) NOT NULL,
	[PHC_code_short_desc] [varchar](50) NULL,
	[prim_lang_cd] [varchar](20) NULL,
	[prim_lang_desc_txt] [varchar](100) NULL,
	[prog_area_cd] [varchar](20) NOT NULL,
	[providerPhone] [varchar](20) NULL,
	[providerName] [varchar](102) NULL,
	[PST_record_status_time] [datetime] NULL,
	[PST_record_status_cd] [varchar](20) NULL,
	[race_concatenated_txt] [varchar](100) NULL,
	[race_concatenated_desc_txt] [varchar](500) NULL,
	[region_district_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[reporterName] [varchar](102) NULL,
	[reporterPhone] [varchar](20) NULL,
	[rpt_cnty_cd] [varchar](20) NULL,
	[rpt_form_cmplt_time] [datetime] NULL,
	[rpt_source_cd] [varchar](20) NULL,
	[rpt_source_desc_txt] [varchar](100) NULL,
	[rpt_to_county_time] [datetime] NULL,
	[rpt_to_state_time] [datetime] NULL,
	[shared_ind] [varchar](1) NULL,
	[state] [varchar](255) NULL,
	[state_cd] [varchar](20) NULL,
	[state_code_short_desc_txt] [varchar](200) NULL,
	[status_cd] [char](1) NULL,
	[street_addr1] [varchar](100) NULL,
	[street_addr2] [varchar](100) NULL,
	[ELP_use_cd] [varchar](20) NULL,
	[zip_cd] [varchar](20) NULL,
	[patientName] [varchar](102) NULL,
	[jurisdiction] [varchar](50) NULL,
	[investigationstartdate] [datetime] NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[report_date] [datetime] NULL,
	[person_parent_uid] [bigint] NULL,
	[person_local_id] [varchar](50) NULL,
	[sub_addr_as_of_date] [datetime] NULL,
	[state_case_id] [varchar](199) NULL,
	[LOCAL_ID] [varchar](50) NULL,
	[NOTIFCURRENTSTATE] [varchar](50) NULL,
	[age_reported_unit_desc_txt] [varchar](300) NULL,
	[birth_gender_desc_txt] [varchar](300) NULL,
	[case_class_desc_txt] [varchar](300) NULL,
	[cntry_desc_txt] [varchar](300) NULL,
	[curr_sex_desc_txt] [varchar](300) NULL,
	[investigation_status_desc_txt] [varchar](300) NULL,
	[occupation_desc_txt] [varchar](300) NULL,
	[outcome_desc_txt] [varchar](300) NULL,
	[pat_age_at_onset_unit_desc_txt] [varchar](300) NULL,
	[prog_area_desc_txt] [varchar](300) NULL,
	[rpt_cnty_desc_txt] [varchar](300) NULL,
	[outbreak_name_desc] [varchar](300) NULL,
	[confirmation_method_desc_txt] [varchar](300) NULL,
	[LASTUPDATE] [datetime] NULL,
	[PHCTXT] [varchar](2000) NULL,
	[NOTITXT] [varchar](2000) NULL,
	[NOTIFICATION_LOCAL_ID] [varchar](50) NULL,
	[HSPTL_ADMISSION_DT] [datetime] NULL,
	[HSPTL_DISCHARGE_DT] [datetime] NULL,
	[hospitalized_ind] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[public_health_case_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[publicHealthCases]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publicHealthCases](
	[public_health_case_uid] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Referral]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Referral](
	[referral_uid] [bigint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[reason_txt] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[referral_desc_txt] [varchar](100) NULL,
	[repeat_nbr] [smallint] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[txt] [varchar](1000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[referral_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Referral_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Referral_hist](
	[referral_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[reason_txt] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[referral_desc_txt] [varchar](100) NULL,
	[repeat_nbr] [smallint] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[txt] [varchar](1000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[referral_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Report]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Report](
	[report_uid] [bigint] NOT NULL,
	[data_source_uid] [bigint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_uid] [bigint] NULL,
	[desc_txt] [varchar](300) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[filter_mode] [char](1) NULL,
	[is_modifiable_ind] [char](1) NULL,
	[location] [varchar](300) NULL,
	[owner_uid] [bigint] NULL,
	[org_access_permis] [varchar](2000) NULL,
	[prog_area_access_permis] [varchar](2000) NULL,
	[report_title] [varchar](100) NULL,
	[report_type_code] [varchar](20) NULL,
	[shared] [char](1) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[category] [varchar](20) NULL,
	[section_cd] [varchar](5) NOT NULL DEFAULT ('1000'),
PRIMARY KEY CLUSTERED 
(
	[data_source_uid] ASC,
	[report_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Report_Filter]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Report_Filter](
	[report_filter_uid] [bigint] NOT NULL,
	[report_uid] [bigint] NOT NULL,
	[data_source_uid] [bigint] NOT NULL,
	[filter_uid] [bigint] NOT NULL,
	[status_cd] [char](1) NULL,
	[max_value_cnt] [int] NULL,
	[min_value_cnt] [int] NULL,
	[column_uid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[report_filter_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Report_Filter_Validation]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Report_Filter_Validation](
	[report_filter_validation_uid] [bigint] NOT NULL,
	[report_filter_uid] [bigint] NOT NULL,
	[report_filter_ind] [varchar](1) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [PK_ReportFilter_ReportFilterValidUid] PRIMARY KEY CLUSTERED 
(
	[report_filter_validation_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Report_Section]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Report_Section](
	[report_section_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[section_cd] [varchar](50) NOT NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[comments] [varchar](250) NULL,
	[last_chg_user_id] [bigint] NULL,
	[last_chg_time] [datetime] NULL,
	[section_desc_txt] [varchar](100) NOT NULL,
	[status_cd] [varchar](10) NULL,
 CONSTRAINT [PK_Report_Section] PRIMARY KEY CLUSTERED 
(
	[report_section_uid] ASC,
	[section_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uqc_section_cd] UNIQUE NONCLUSTERED 
(
	[section_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Report_Sort_Column]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Report_Sort_Column](
	[report_sort_column_uid] [bigint] NOT NULL,
	[report_sort_order_code] [varchar](4) NULL,
	[report_sort_sequence_num] [int] NULL,
	[data_source_uid] [bigint] NULL,
	[report_uid] [bigint] NULL,
	[column_uid] [bigint] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
 CONSTRAINT [PK_ReportSortColumnUid] PRIMARY KEY CLUSTERED 
(
	[report_sort_column_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[subject_entity_uid] [bigint] NOT NULL,
	[cd] [varchar](40) NOT NULL,
	[role_seq] [bigint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[scoping_class_cd] [varchar](10) NULL,
	[scoping_entity_uid] [bigint] NULL,
	[scoping_role_cd] [varchar](20) NULL,
	[scoping_role_seq] [smallint] NULL,
	[status_cd] [char](1) NOT NULL,
	[status_time] [datetime] NULL,
	[subject_class_cd] [varchar](10) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
 CONSTRAINT [PK__Role__2EDAF651] PRIMARY KEY CLUSTERED 
(
	[subject_entity_uid] ASC,
	[role_seq] ASC,
	[cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role_hist](
	[subject_entity_uid] [bigint] NOT NULL,
	[cd] [varchar](40) NOT NULL,
	[role_seq] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[scoping_class_cd] [varchar](10) NULL,
	[scoping_entity_uid] [bigint] NULL,
	[scoping_role_cd] [varchar](20) NULL,
	[scoping_role_seq] [smallint] NULL,
	[status_time] [datetime] NOT NULL,
	[status_cd] [char](1) NULL,
	[subject_class_cd] [varchar](10) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
 CONSTRAINT [PK__Role_hist__30C33EC3] PRIMARY KEY CLUSTERED 
(
	[subject_entity_uid] ASC,
	[role_seq] ASC,
	[cd] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rule]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rule](
	[rule_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[rule_name] [varchar](50) NULL,
	[rule_type_uid] [bigint] NOT NULL,
	[comments] [varchar](255) NULL,
 CONSTRAINT [PK_Rule_ruleUid] PRIMARY KEY NONCLUSTERED 
(
	[rule_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rule_Instance]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rule_Instance](
	[rule_instance_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[conseq_ind_uid] [bigint] NOT NULL,
	[rule_uid] [bigint] NOT NULL,
	[comments] [varchar](255) NULL,
 CONSTRAINT [PK_Rule_instance_ruleInstUid] PRIMARY KEY NONCLUSTERED 
(
	[rule_instance_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rule_Type]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rule_Type](
	[rule_type_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[rule_type_code] [char](1) NOT NULL,
	[rule_type_description] [varchar](100) NULL,
 CONSTRAINT [PK_Rule_type_ruleTypeUid] PRIMARY KEY NONCLUSTERED 
(
	[rule_type_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Security_log]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Security_log](
	[security_log_uid] [bigint] NOT NULL,
	[user_id] [varchar](256) NULL,
	[event_type_cd] [varchar](20) NULL,
	[event_time] [datetime] NULL,
	[session_id] [varchar](500) NULL,
	[user_ip_addr] [varchar](500) NULL,
	[nedss_entry_id] [bigint] NULL,
	[first_nm] [varchar](256) NULL,
	[last_nm] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[security_log_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Source_Field]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Source_Field](
	[source_field_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[nbs_metadata_rule_uid] [bigint] NOT NULL,
	[rule_instance_uid] [bigint] NOT NULL,
	[source_field_seq_nbr] [int] NULL,
 CONSTRAINT [PK_SourceField_sourceFieldUid] PRIMARY KEY NONCLUSTERED 
(
	[source_field_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Source_Value]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Source_Value](
	[source_value_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[source_field_uid] [bigint] NOT NULL,
	[source_value] [varchar](50) NULL,
	[operator_type_uid] [bigint] NOT NULL,
 CONSTRAINT [PK_SourceValue_sourceValueUid] PRIMARY KEY NONCLUSTERED 
(
	[source_value_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[state_defined_field_data]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[state_defined_field_data](
	[ldf_uid] [bigint] NOT NULL,
	[business_object_uid] [bigint] NOT NULL,
	[add_time] [datetime] NULL,
	[business_object_nm] [varchar](50) NOT NULL,
	[last_chg_time] [datetime] NULL,
	[ldf_value] [varchar](2000) NULL,
	[version_ctrl_nbr] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ldf_uid] ASC,
	[business_object_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[state_defined_field_data_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[state_defined_field_data_hist](
	[ldf_uid] [bigint] NOT NULL,
	[business_object_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_time] [datetime] NULL,
	[business_object_nm] [varchar](50) NOT NULL,
	[last_chg_time] [datetime] NULL,
	[ldf_value] [varchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ldf_uid] ASC,
	[business_object_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[state_defined_field_metadata]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[state_defined_field_metadata](
	[ldf_uid] [bigint] NOT NULL,
	[active_ind] [char](1) NULL,
	[add_time] [datetime] NOT NULL,
	[admin_comment] [varchar](300) NULL,
	[business_object_nm] [varchar](50) NULL,
	[category_type] [varchar](50) NULL,
	[cdc_national_id] [varchar](50) NULL,
	[class_cd] [varchar](20) NULL,
	[code_set_nm] [varchar](256) NULL,
	[condition_cd] [varchar](10) NULL,
	[condition_desc_txt] [varchar](100) NULL,
	[data_type] [varchar](50) NULL,
	[deployment_cd] [varchar](10) NULL,
	[display_order_nbr] [int] NULL,
	[field_size] [varchar](10) NULL,
	[label_txt] [varchar](300) NULL,
	[ldf_page_id] [varchar](50) NULL,
	[required_ind] [char](1) NULL,
	[state_cd] [varchar](10) NULL,
	[validation_txt] [varchar](50) NULL,
	[validation_jscript_txt] [varchar](3000) NULL,
	[record_status_time] [datetime] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[custom_subform_metadata_uid] [bigint] NULL,
	[html_tag] [varchar](50) NULL,
	[import_version_nbr] [bigint] NULL,
	[nnd_ind] [char](1) NULL,
	[ldf_oid] [varchar](50) NULL,
	[version_ctrl_nbr] [smallint] NULL,
	[NBS_QUESTION_UID] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ldf_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubjectRaceInfo]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubjectRaceInfo](
	[morbReport_uid] [bigint] NULL,
	[public_health_case_uid] [bigint] NULL,
	[race_cd] [varchar](20) NULL,
	[race_category_cd] [varchar](20) NULL,
	[race_desc_txt] [varchar](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Substance_administration]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Substance_administration](
	[intervention_uid] [bigint] NOT NULL,
	[dose_qty] [varchar](10) NULL,
	[dose_qty_unit_cd] [varchar](20) NULL,
	[form_cd] [varchar](20) NULL,
	[form_desc_txt] [varchar](100) NULL,
	[rate_qty] [varchar](10) NULL,
	[rate_qty_unit_cd] [varchar](20) NULL,
	[route_cd] [varchar](20) NULL,
	[route_desc_txt] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[intervention_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Substance_administration_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Substance_administration_hist](
	[intervention_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[dose_qty] [varchar](10) NULL,
	[dose_qty_unit_cd] [varchar](20) NULL,
	[form_cd] [varchar](20) NULL,
	[form_desc_txt] [varchar](100) NULL,
	[rate_qty] [varchar](10) NULL,
	[rate_qty_unit_cd] [varchar](20) NULL,
	[route_cd] [varchar](20) NULL,
	[route_desc_txt] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[intervention_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SUSPCT_MEAT_OBTND_DATA]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SUSPCT_MEAT_OBTND_DATA](
	[business_object_uid] [bigint] NOT NULL,
	[ldf_uid] [bigint] NOT NULL,
	[ldf_value] [varchar](2000) NULL,
	[version_ctrl_nbr] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Target_Field]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Target_Field](
	[target_field_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[nbs_metadata_rule_uid] [bigint] NOT NULL,
	[rule_instance_uid] [bigint] NOT NULL,
 CONSTRAINT [PK_Target_Field_targetFldUid] PRIMARY KEY NONCLUSTERED 
(
	[target_field_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Target_Value]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Target_Value](
	[target_value_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[target_field_uid] [bigint] NOT NULL,
	[target_value] [varchar](50) NULL,
	[error_message_uid] [bigint] NOT NULL,
	[operator_type_uid] [bigint] NULL,
	[conseq_ind_uid] [bigint] NOT NULL,
 CONSTRAINT [PK_TargetValue_targetValueUid] PRIMARY KEY NONCLUSTERED 
(
	[target_value_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tele_locator]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tele_locator](
	[tele_locator_uid] [bigint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cntry_cd] [varchar](20) NULL,
	[email_address] [varchar](100) NULL,
	[extension_txt] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[phone_nbr_txt] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[url_address] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[tele_locator_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tele_locator_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tele_locator_hist](
	[tele_locator_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cntry_cd] [varchar](20) NULL,
	[email_address] [varchar](100) NULL,
	[extension_txt] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[phone_nbr_txt] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[url_address] [varchar](100) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[tele_locator_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMP_CNTRY_BIRTH]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMP_CNTRY_BIRTH](
	[public_health_case_uid] [bigint] NOT NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[code] [varchar](2000) NULL,
	[person_uid] [bigint] NOT NULL,
	[local_id] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Treatment]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment](
	[treatment_uid] [bigint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](150) NULL,
	[cd_system_cd] [varchar](20) NULL,
	[cd_system_desc_txt] [varchar](100) NULL,
	[cd_version] [varchar](10) NULL,
	[class_cd] [varchar](10) NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[prog_area_cd] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[shared_ind] [char](1) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[txt] [varchar](1000) NULL,
	[version_ctrl_nbr] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[treatment_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Treatment_administered]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment_administered](
	[treatment_uid] [bigint] NOT NULL,
	[treatment_administered_seq] [smallint] NOT NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[cd_system_cd] [varchar](20) NULL,
	[cd_system_desc_txt] [varchar](100) NULL,
	[cd_version] [varchar](10) NULL,
	[dose_qty] [varchar](20) NULL,
	[dose_qty_unit_cd] [varchar](20) NULL,
	[effective_duration_amt] [varchar](10) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[form_cd] [varchar](20) NULL,
	[form_desc_txt] [varchar](100) NULL,
	[interval_cd] [varchar](20) NULL,
	[interval_desc_txt] [varchar](100) NULL,
	[rate_qty] [varchar](10) NULL,
	[rate_qty_unit_cd] [varchar](20) NULL,
	[route_cd] [varchar](20) NULL,
	[route_desc_txt] [varchar](100) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[treatment_uid] ASC,
	[treatment_administered_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Treatment_administered_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment_administered_hist](
	[treatment_uid] [bigint] NOT NULL,
	[treatment_administered_seq] [smallint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[cd_system_cd] [varchar](20) NULL,
	[cd_system_desc_txt] [varchar](100) NULL,
	[cd_version] [varchar](10) NULL,
	[dose_qty] [varchar](20) NULL,
	[dose_qty_unit_cd] [varchar](20) NULL,
	[effective_duration_amt] [varchar](10) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[form_cd] [varchar](20) NULL,
	[form_desc_txt] [varchar](100) NULL,
	[interval_cd] [varchar](20) NULL,
	[interval_desc_txt] [varchar](100) NULL,
	[rate_qty] [varchar](10) NULL,
	[rate_unit_cd] [varchar](20) NULL,
	[route_cd] [varchar](20) NULL,
	[route_desc_txt] [varchar](100) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[treatment_uid] ASC,
	[treatment_administered_seq] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Treatment_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment_hist](
	[treatment_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](150) NULL,
	[cd_system_cd] [varchar](20) NULL,
	[cd_system_desc_txt] [varchar](100) NULL,
	[cd_version] [varchar](10) NULL,
	[class_cd] [varchar](10) NULL,
	[jurisdiction_cd] [varchar](20) NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[prog_area_cd] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[shared_ind] [char](1) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[txt] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[treatment_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Treatment_procedure]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment_procedure](
	[treatment_uid] [bigint] NOT NULL,
	[treatment_procedure_seq] [smallint] NOT NULL,
	[approach_site_cd] [varchar](20) NULL,
	[approach_site_desc_txt] [varchar](100) NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[cd_system_cd] [varchar](20) NULL,
	[cd_system_desc_txt] [varchar](100) NULL,
	[cd_version] [varchar](10) NULL,
	[effective_duration_amt] [varchar](10) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[treatment_uid] ASC,
	[treatment_procedure_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Treatment_procedure_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatment_procedure_hist](
	[treatment_uid] [bigint] NOT NULL,
	[treatment_procedure_seq] [smallint] NOT NULL,
	[version_ctlr_nbr] [smallint] NOT NULL,
	[approach_site_cd] [varchar](20) NULL,
	[approach_site_desc_txt] [varchar](100) NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[cd_system_cd] [varchar](20) NULL,
	[cd_system_desc_txt] [varchar](100) NULL,
	[cd_version] [varchar](10) NULL,
	[effective_duration_amt] [varchar](10) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[treatment_uid] ASC,
	[treatment_procedure_seq] ASC,
	[version_ctlr_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Updated_notification]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Updated_notification](
	[notification_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[case_class_cd] [varchar](20) NULL,
	[case_status_chg_ind] [char](1) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[notification_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Email]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Email](
	[user_email_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[nedss_entry_id] [bigint] NOT NULL,
	[seq_nbr] [int] NOT NULL,
	[email_id] [varchar](100) NULL,
	[add_time] [datetime] NULL,
	[last_chg_time] [datetime] NULL,
	[record_status_cd] [varchar](8) NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_user_id] [bigint] NULL,
 CONSTRAINT [PK_Users_Email] PRIMARY KEY CLUSTERED 
(
	[user_email_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Email_Alert]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Email_Alert](
	[user_email_alert_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[alert_email_message_uid] [bigint] NOT NULL,
	[nedss_entry_uid] [bigint] NOT NULL,
	[email_id] [varchar](100) NULL,
	[seq_nbr] [int] NULL,
 CONSTRAINT [PK_User_Email_Alert] PRIMARY KEY CLUSTERED 
(
	[user_email_alert_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USER_PROFILE]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USER_PROFILE](
	[NEDSS_ENTRY_ID] [bigint] NOT NULL,
	[FIRST_NM] [varchar](100) NULL,
	[LAST_UPD_TIME] [datetime] NULL,
	[LAST_NM] [varchar](100) NULL,
 CONSTRAINT [PK_USER_PROFILE] PRIMARY KEY CLUSTERED 
(
	[NEDSS_ENTRY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WA_Conversion_Mapping]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WA_Conversion_Mapping](
	[WA_Conversion_Mapping_uid] [bigint] IDENTITY(1000001,1) NOT NULL,
	[NBS_Conversion_Page_Mgmt_uid] [bigint] NOT NULL,
	[from_question_id] [varchar](30) NULL,
	[from_answer] [varchar](2000) NULL,
	[to_question_id] [varchar](30) NULL,
	[to_answer] [varchar](2000) NULL,
	[to_code_set_group_id] [bigint] NULL,
	[to_data_type] [varchar](30) NULL,
	[to_nbs_ui_component_uid] [bigint] NULL,
	[block_id_nbr] [int] NULL,
	[mapping_status] [varchar](20) NULL,
	[question_mapped] [varchar](20) NULL,
	[answer_mapped] [varchar](20) NULL,
	[answer_group_seq_nbr] [int] NULL,
	[conversion_type] [varchar](50) NULL,
 CONSTRAINT [PK_WA_CONVERSION_MAPPING_UID] PRIMARY KEY CLUSTERED 
(
	[WA_Conversion_Mapping_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WA_NND_metadata]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WA_NND_metadata](
	[wa_nnd_metadata_uid] [bigint] IDENTITY(1000001,1) NOT NULL,
	[wa_template_uid] [bigint] NOT NULL,
	[question_identifier_nnd] [varchar](50) NULL,
	[question_label_nnd] [varchar](150) NULL,
	[question_required_nnd] [char](1) NOT NULL,
	[question_data_type_nnd] [varchar](10) NOT NULL,
	[hl7_segment_field] [varchar](30) NOT NULL,
	[order_group_id] [varchar](5) NULL,
	[translation_table_nm] [varchar](30) NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[question_identifier] [varchar](50) NULL,
	[xml_path] [varchar](2000) NULL,
	[xml_tag] [varchar](300) NULL,
	[xml_data_type] [varchar](50) NULL,
	[part_type_cd] [varchar](50) NULL,
	[repeat_group_seq_nbr] [int] NULL,
	[question_order_nnd] [int] NULL,
	[local_id] [varchar](50) NULL,
	[wa_ui_metadata_uid] [bigint] NOT NULL,
	[question_map] [varchar](2000) NULL,
	[indicator_cd] [varchar](2000) NULL,
 CONSTRAINT [PK_WA_NND_metadata] PRIMARY KEY CLUSTERED 
(
	[wa_nnd_metadata_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WA_NND_metadata_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WA_NND_metadata_hist](
	[wa_nnd_metadata_hist_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[wa_nnd_metadata_uid] [bigint] NOT NULL,
	[wa_template_uid] [bigint] NOT NULL,
	[question_identifier_nnd] [varchar](50) NULL,
	[question_label_nnd] [varchar](150) NULL,
	[question_required_nnd] [char](1) NOT NULL,
	[question_data_type_nnd] [varchar](10) NOT NULL,
	[hl7_segment_field] [varchar](30) NOT NULL,
	[order_group_id] [varchar](5) NULL,
	[translation_table_nm] [varchar](30) NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[question_identifier] [varchar](50) NULL,
	[xml_path] [varchar](2000) NULL,
	[xml_tag] [varchar](300) NULL,
	[xml_data_type] [varchar](50) NULL,
	[part_type_cd] [varchar](50) NULL,
	[repeat_group_seq_nbr] [int] NULL,
	[question_order_nnd] [int] NULL,
	[local_id] [varchar](50) NULL,
	[wa_template_hist_uid] [bigint] NOT NULL,
	[wa_ui_metadata_uid] [bigint] NOT NULL,
	[question_map] [varchar](2000) NULL,
	[indicator_cd] [varchar](2000) NULL,
 CONSTRAINT [PK_WA_NND_metadata_hist] PRIMARY KEY CLUSTERED 
(
	[wa_nnd_metadata_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WA_question]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WA_question](
	[wa_question_uid] [bigint] IDENTITY(1000001,1) NOT NULL,
	[code_set_group_id] [bigint] NULL,
	[data_cd] [varchar](50) NULL,
	[data_location] [varchar](150) NULL,
	[question_identifier] [varchar](50) NOT NULL,
	[question_oid] [varchar](150) NULL,
	[question_oid_system_txt] [varchar](100) NULL,
	[question_unit_identifier] [varchar](20) NULL,
	[data_type] [varchar](20) NULL,
	[data_use_cd] [varchar](20) NULL,
	[question_label] [varchar](300) NULL,
	[question_tool_tip] [varchar](2000) NULL,
	[rdb_column_nm] [varchar](30) NULL,
	[part_type_cd] [varchar](50) NULL,
	[default_value] [varchar](300) NULL,
	[version_ctrl_nbr] [int] NOT NULL,
	[unit_parent_identifier] [varchar](20) NULL,
	[question_group_seq_nbr] [int] NULL,
	[future_date_ind_cd] [char](1) NULL,
	[legacy_data_location] [varchar](150) NULL,
	[repeats_ind_cd] [char](1) NULL,
	[add_user_id] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[question_nm] [varchar](50) NULL,
	[group_nm] [varchar](50) NULL,
	[sub_group_nm] [varchar](50) NULL,
	[desc_txt] [varchar](2000) NULL,
	[mask] [varchar](50) NULL,
	[field_size] [varchar](10) NULL,
	[rpt_admin_column_nm] [varchar](50) NULL,
	[nnd_msg_ind] [char](1) NULL,
	[question_identifier_nnd] [varchar](50) NULL,
	[question_label_nnd] [varchar](150) NULL,
	[question_required_nnd] [char](1) NULL,
	[question_data_type_nnd] [varchar](10) NULL,
	[hl7_segment_field] [varchar](30) NULL,
	[order_group_id] [varchar](5) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NULL,
	[nbs_ui_component_uid] [bigint] NULL,
	[standard_question_ind_cd] [char](1) NULL,
	[entry_method] [varchar](20) NULL,
	[question_type] [varchar](20) NULL,
	[admin_comment] [varchar](2000) NULL,
	[rdb_table_nm] [varchar](30) NULL,
	[user_defined_column_nm] [varchar](30) NULL,
	[min_value] [bigint] NULL,
	[max_value] [bigint] NULL,
	[standard_nnd_ind_cd] [char](1) NULL,
	[legacy_question_identifier] [varchar](50) NULL,
	[unit_type_cd] [varchar](20) NULL,
	[unit_value] [varchar](50) NULL,
	[other_value_ind_cd] [char](1) NULL,
	[source_nm] [varchar](250) NULL,
	[coinfection_ind_cd] [char](1) NULL,
 CONSTRAINT [PK_WA_question] PRIMARY KEY CLUSTERED 
(
	[wa_question_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [uq_wa_question_identifier] UNIQUE NONCLUSTERED 
(
	[question_identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WA_question_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WA_question_hist](
	[wa_question_hist_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[wa_question_uid] [bigint] NOT NULL,
	[code_set_group_id] [bigint] NULL,
	[data_cd] [varchar](50) NULL,
	[data_location] [varchar](150) NULL,
	[question_identifier] [varchar](50) NOT NULL,
	[question_oid] [varchar](150) NULL,
	[question_oid_system_txt] [varchar](100) NULL,
	[question_unit_identifier] [varchar](20) NULL,
	[data_type] [varchar](20) NULL,
	[data_use_cd] [varchar](20) NULL,
	[question_label] [varchar](300) NULL,
	[question_tool_tip] [varchar](2000) NULL,
	[rdb_column_nm] [varchar](30) NULL,
	[part_type_cd] [varchar](50) NULL,
	[default_value] [varchar](300) NULL,
	[version_ctrl_nbr] [int] NOT NULL,
	[unit_parent_identifier] [varchar](20) NULL,
	[question_group_seq_nbr] [int] NULL,
	[future_date_ind_cd] [char](1) NULL,
	[legacy_data_location] [varchar](150) NULL,
	[repeats_ind_cd] [char](1) NULL,
	[add_user_id] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[question_nm] [varchar](50) NULL,
	[group_nm] [varchar](50) NULL,
	[sub_group_nm] [varchar](50) NULL,
	[desc_txt] [varchar](2000) NULL,
	[mask] [varchar](50) NULL,
	[field_size] [varchar](10) NULL,
	[rpt_admin_column_nm] [varchar](50) NULL,
	[nnd_msg_ind] [char](1) NULL,
	[question_identifier_nnd] [varchar](50) NULL,
	[question_label_nnd] [varchar](150) NULL,
	[question_required_nnd] [char](1) NULL,
	[question_data_type_nnd] [varchar](10) NULL,
	[hl7_segment_field] [varchar](30) NULL,
	[order_group_id] [varchar](5) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NULL,
	[nbs_ui_component_uid] [bigint] NULL,
	[standard_question_ind_cd] [char](1) NULL,
	[entry_method] [varchar](20) NULL,
	[question_type] [varchar](20) NULL,
	[admin_comment] [varchar](2000) NULL,
	[rdb_table_nm] [varchar](30) NULL,
	[user_defined_column_nm] [varchar](30) NULL,
	[min_value] [bigint] NULL,
	[max_value] [bigint] NULL,
	[standard_nnd_ind_cd] [char](1) NULL,
	[legacy_question_identifier] [varchar](50) NULL,
	[unit_type_cd] [varchar](20) NULL,
	[unit_value] [varchar](50) NULL,
	[other_value_ind_cd] [char](1) NULL,
	[source_nm] [varchar](250) NULL,
	[coinfection_ind_cd] [char](1) NULL,
 CONSTRAINT [PK_WA_question_hist] PRIMARY KEY CLUSTERED 
(
	[wa_question_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WA_RDB_metadata]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WA_RDB_metadata](
	[wa_rdb_metadata_uid] [bigint] IDENTITY(1000001,1) NOT NULL,
	[wa_template_uid] [bigint] NOT NULL,
	[user_defined_column_nm] [varchar](30) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[wa_ui_metadata_uid] [bigint] NULL,
	[rdb_table_nm] [varchar](30) NULL,
	[rpt_admin_column_nm] [varchar](50) NULL,
	[rdb_column_nm] [varchar](30) NULL,
	[question_identifier] [varchar](50) NULL,
	[block_pivot_nbr] [int] NULL,
 CONSTRAINT [PK_WA_RDB_metadata] PRIMARY KEY CLUSTERED 
(
	[wa_rdb_metadata_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WA_RDB_metadata_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WA_RDB_metadata_hist](
	[wa_rdb_metadata_hist_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[wa_rdb_metadata_uid] [bigint] NOT NULL,
	[wa_template_uid] [bigint] NOT NULL,
	[user_defined_column_nm] [varchar](30) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[wa_template_hist_uid] [bigint] NOT NULL,
	[wa_ui_metadata_uid] [bigint] NULL,
	[rdb_table_nm] [varchar](30) NULL,
	[rpt_admin_column_nm] [varchar](50) NULL,
	[rdb_column_nm] [varchar](30) NULL,
	[question_identifier] [varchar](50) NULL,
	[block_pivot_nbr] [int] NULL,
 CONSTRAINT [PK_WA_RDB_metadata_hist] PRIMARY KEY CLUSTERED 
(
	[wa_rdb_metadata_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WA_rule_metadata]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WA_rule_metadata](
	[wa_rule_metadata_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[wa_template_uid] [bigint] NOT NULL,
	[rule_cd] [varchar](50) NOT NULL,
	[rule_expression] [varchar](4000) NULL,
	[err_msg_txt] [varchar](4000) NOT NULL,
	[source_question_identifier] [varchar](4000) NULL,
	[target_question_identifier] [varchar](4000) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[rule_desc_txt] [varchar](4000) NULL,
	[javascript_function] [text] NOT NULL,
	[javascript_function_nm] [varchar](100) NOT NULL,
	[user_rule_id] [varchar](50) NULL,
	[logic] [varchar](20) NULL,
	[source_values] [varchar](4000) NULL,
	[target_type] [varchar](50) NULL,
 CONSTRAINT [PK_WA_rule_metadata] PRIMARY KEY CLUSTERED 
(
	[wa_rule_metadata_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WA_rule_metadata_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WA_rule_metadata_hist](
	[wa_rule_metadata_hist_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[wa_rule_metadata_uid] [bigint] NOT NULL,
	[wa_template_uid] [bigint] NOT NULL,
	[rule_cd] [varchar](50) NOT NULL,
	[rule_expression] [varchar](4000) NULL,
	[err_msg_txt] [varchar](4000) NOT NULL,
	[source_question_identifier] [varchar](4000) NULL,
	[target_question_identifier] [varchar](4000) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[rule_desc_txt] [varchar](4000) NULL,
	[javascript_function] [text] NOT NULL,
	[javascript_function_nm] [varchar](100) NOT NULL,
	[user_rule_id] [varchar](50) NULL,
	[logic] [varchar](20) NULL,
	[source_values] [varchar](4000) NULL,
	[target_type] [varchar](50) NULL,
 CONSTRAINT [PK_WA_rule_metadata_hist] PRIMARY KEY CLUSTERED 
(
	[wa_rule_metadata_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ODS_HIST]
) ON [ODS_HIST] TEXTIMAGE_ON [ODS_HIST]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WA_template]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WA_template](
	[wa_template_uid] [bigint] IDENTITY(1000001,1) NOT NULL,
	[template_type] [varchar](50) NOT NULL,
	[xml_payload] [text] NULL,
	[publish_version_nbr] [int] NULL,
	[form_cd] [varchar](50) NULL,
	[condition_cd] [varchar](20) NULL,
	[bus_obj_type] [varchar](50) NOT NULL,
	[datamart_nm] [varchar](21) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[local_id] [varchar](50) NULL,
	[desc_txt] [varchar](2000) NULL,
	[template_nm] [varchar](50) NULL,
	[publish_ind_cd] [char](1) NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[nnd_entity_identifier] [varchar](200) NULL,
	[parent_template_uid] [bigint] NULL,
	[source_nm] [varchar](250) NULL,
	[template_version_nbr] [int] NULL,
	[version_note] [varchar](2000) NULL,
 CONSTRAINT [PK_WA_template] PRIMARY KEY CLUSTERED 
(
	[wa_template_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WA_template_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WA_template_hist](
	[wa_template_hist_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[wa_template_uid] [bigint] NOT NULL,
	[template_type] [varchar](50) NOT NULL,
	[xml_payload] [text] NULL,
	[publish_version_nbr] [int] NULL,
	[form_cd] [varchar](50) NULL,
	[condition_cd] [varchar](20) NULL,
	[bus_obj_type] [varchar](50) NOT NULL,
	[datamart_nm] [varchar](21) NULL,
	[record_status_cd] [varchar](20) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[last_chg_time] [datetime] NOT NULL,
	[last_chg_user_id] [bigint] NOT NULL,
	[local_id] [varchar](50) NULL,
	[desc_txt] [varchar](2000) NULL,
	[template_nm] [varchar](50) NULL,
	[publish_ind_cd] [char](1) NULL,
	[add_time] [datetime] NOT NULL,
	[add_user_id] [bigint] NOT NULL,
	[nnd_entity_identifier] [varchar](200) NULL,
	[parent_template_uid] [bigint] NULL,
	[source_nm] [varchar](250) NULL,
	[template_version_nbr] [int] NULL,
	[version_note] [varchar](2000) NULL,
 CONSTRAINT [PK_WA_template_hist] PRIMARY KEY CLUSTERED 
(
	[wa_template_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WA_UI_metadata]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WA_UI_metadata](
	[wa_ui_metadata_uid] [bigint] IDENTITY(1000001,1) NOT NULL,
	[wa_template_uid] [bigint] NOT NULL,
	[nbs_ui_component_uid] [bigint] NOT NULL,
	[parent_uid] [bigint] NULL,
	[question_label] [varchar](300) NULL,
	[question_tool_tip] [varchar](2000) NULL,
	[enable_ind] [varchar](1) NULL,
	[default_value] [varchar](300) NULL,
	[display_ind] [varchar](1) NULL,
	[order_nbr] [int] NULL,
	[required_ind] [varchar](2) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[max_length] [bigint] NULL,
	[admin_comment] [varchar](2000) NULL,
	[version_ctrl_nbr] [int] NOT NULL,
	[field_size] [varchar](10) NULL,
	[future_date_ind_cd] [char](1) NULL,
	[local_id] [varchar](50) NULL,
	[code_set_group_id] [bigint] NULL,
	[data_cd] [varchar](50) NULL,
	[data_location] [varchar](150) NULL,
	[data_type] [varchar](20) NULL,
	[data_use_cd] [varchar](20) NULL,
	[legacy_data_location] [varchar](150) NULL,
	[part_type_cd] [varchar](50) NULL,
	[question_group_seq_nbr] [int] NULL,
	[question_identifier] [varchar](50) NULL,
	[question_oid] [varchar](150) NULL,
	[question_oid_system_txt] [varchar](100) NULL,
	[question_unit_identifier] [varchar](20) NULL,
	[repeats_ind_cd] [char](1) NULL,
	[unit_parent_identifier] [varchar](20) NULL,
	[group_nm] [varchar](50) NULL,
	[sub_group_nm] [varchar](50) NULL,
	[desc_txt] [varchar](2000) NULL,
	[mask] [varchar](50) NULL,
	[entry_method] [varchar](20) NULL,
	[question_type] [varchar](20) NULL,
	[publish_ind_cd] [char](1) NULL,
	[min_value] [bigint] NULL,
	[max_value] [bigint] NULL,
	[standard_question_ind_cd] [char](1) NULL,
	[standard_nnd_ind_cd] [char](1) NULL,
	[question_nm] [varchar](50) NULL,
	[unit_type_cd] [varchar](20) NULL,
	[unit_value] [varchar](50) NULL,
	[other_value_ind_cd] [char](1) NULL,
	[batch_table_appear_ind_cd] [char](1) NULL,
	[batch_table_header] [varchar](50) NULL,
	[batch_table_column_width] [int] NULL,
	[coinfection_ind_cd] [char](1) NULL,
	[block_nm] [varchar](30) NULL,
 CONSTRAINT [PK_WA_UI_metadata] PRIMARY KEY CLUSTERED 
(
	[wa_ui_metadata_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WA_UI_metadata_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WA_UI_metadata_hist](
	[wa_ui_metadata_hist_uid] [bigint] IDENTITY(1001,1) NOT NULL,
	[wa_ui_metadata_uid] [bigint] NOT NULL,
	[wa_template_uid] [bigint] NOT NULL,
	[nbs_ui_component_uid] [bigint] NOT NULL,
	[parent_uid] [bigint] NULL,
	[question_label] [varchar](300) NULL,
	[question_tool_tip] [varchar](2000) NULL,
	[enable_ind] [varchar](1) NULL,
	[default_value] [varchar](300) NULL,
	[display_ind] [varchar](1) NULL,
	[order_nbr] [int] NULL,
	[required_ind] [varchar](2) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[max_length] [bigint] NULL,
	[admin_comment] [varchar](2000) NULL,
	[field_size] [varchar](10) NULL,
	[future_date_ind_cd] [char](1) NULL,
	[local_id] [varchar](50) NULL,
	[wa_template_hist_uid] [bigint] NOT NULL,
	[code_set_group_id] [bigint] NULL,
	[data_cd] [varchar](50) NULL,
	[data_location] [varchar](150) NULL,
	[data_type] [varchar](20) NULL,
	[data_use_cd] [varchar](20) NULL,
	[legacy_data_location] [varchar](150) NULL,
	[part_type_cd] [varchar](50) NULL,
	[question_group_seq_nbr] [int] NULL,
	[question_identifier] [varchar](50) NULL,
	[question_oid] [varchar](150) NULL,
	[question_oid_system_txt] [varchar](100) NULL,
	[question_unit_identifier] [varchar](20) NULL,
	[repeats_ind_cd] [char](1) NULL,
	[unit_parent_identifier] [varchar](20) NULL,
	[group_nm] [varchar](50) NULL,
	[sub_group_nm] [varchar](50) NULL,
	[desc_txt] [varchar](2000) NULL,
	[mask] [varchar](50) NULL,
	[entry_method] [varchar](20) NULL,
	[question_type] [varchar](20) NULL,
	[publish_ind_cd] [char](1) NULL,
	[min_value] [bigint] NULL,
	[max_value] [bigint] NULL,
	[standard_question_ind_cd] [char](1) NULL,
	[standard_nnd_ind_cd] [char](1) NULL,
	[question_nm] [varchar](50) NULL,
	[unit_type_cd] [varchar](20) NULL,
	[unit_value] [varchar](50) NULL,
	[other_value_ind_cd] [char](1) NULL,
	[batch_table_appear_ind_cd] [char](1) NULL,
	[batch_table_header] [varchar](50) NULL,
	[batch_table_column_width] [int] NULL,
	[coinfection_ind_cd] [char](1) NULL,
	[block_nm] [varchar](30) NULL,
 CONSTRAINT [PK_WA_UI_metadata_hist] PRIMARY KEY CLUSTERED 
(
	[wa_ui_metadata_hist_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Workup]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Workup](
	[workup_uid] [bigint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[assign_time] [datetime] NULL,
	[assign_worker_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[diagnosis_cd] [varchar](20) NULL,
	[diagnosis_desc_txt] [varchar](100) NULL,
	[disposition_cd] [varchar](20) NULL,
	[disposition_desc_txt] [varchar](100) NULL,
	[disposition_time] [datetime] NULL,
	[disposition_worker_id] [bigint] NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[exposure_frequency] [varchar](20) NULL,
	[exposure_from_time] [datetime] NULL,
	[exposure_to_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[repeat_nbr] [smallint] NULL,
	[status_cd] [char](1) NOT NULL,
	[status_time] [datetime] NOT NULL,
	[txt] [varchar](1000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[workup_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Workup_hist]    Script Date: 6/1/2023 8:13:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Workup_hist](
	[workup_uid] [bigint] NOT NULL,
	[version_ctrl_nbr] [smallint] NOT NULL,
	[activity_duration_amt] [varchar](20) NULL,
	[activity_duration_unit_cd] [varchar](20) NULL,
	[activity_from_time] [datetime] NULL,
	[activity_to_time] [datetime] NULL,
	[add_reason_cd] [varchar](20) NULL,
	[add_time] [datetime] NULL,
	[add_user_id] [bigint] NULL,
	[assign_time] [datetime] NULL,
	[assign_user_id] [bigint] NULL,
	[cd] [varchar](50) NULL,
	[cd_desc_txt] [varchar](100) NULL,
	[confidentiality_cd] [varchar](20) NULL,
	[confidentiality_desc_txt] [varchar](100) NULL,
	[diagnosis_cd] [varchar](20) NULL,
	[diagnosis_desc_txt] [varchar](100) NULL,
	[disposition_cd] [varchar](20) NULL,
	[disposition_desc_txt] [varchar](100) NULL,
	[disposition_time] [datetime] NULL,
	[disposition_worker_id] [bigint] NULL,
	[effective_duration_amt] [varchar](20) NULL,
	[effective_duration_unit_cd] [varchar](20) NULL,
	[effective_from_time] [datetime] NULL,
	[effective_to_time] [datetime] NULL,
	[exposure_frequency] [varchar](20) NULL,
	[exposure_from_time] [datetime] NULL,
	[exposure_to_time] [datetime] NULL,
	[last_chg_reason_cd] [varchar](20) NULL,
	[last_chg_time] [datetime] NULL,
	[last_chg_user_id] [bigint] NULL,
	[local_id] [varchar](50) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[repeat_nbr] [smallint] NULL,
	[status_cd] [char](1) NOT NULL,
	[status_time] [datetime] NOT NULL,
	[txt] [varchar](1000) NULL,
	[user_affiliation_txt] [varchar](20) NULL,
	[program_jurisdiction_oid] [bigint] NULL,
	[shared_ind] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[workup_uid] ASC,
	[version_ctrl_nbr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Act_id]  WITH CHECK ADD FOREIGN KEY([act_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Act_id_hist]  WITH CHECK ADD FOREIGN KEY([act_uid], [act_id_seq])
REFERENCES [dbo].[Act_id] ([act_uid], [act_id_seq])
GO
ALTER TABLE [dbo].[Act_locator_participation]  WITH CHECK ADD FOREIGN KEY([act_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Act_locator_participation]  WITH CHECK ADD FOREIGN KEY([entity_uid], [locator_uid])
REFERENCES [dbo].[Entity_locator_participation] ([entity_uid], [locator_uid])
GO
ALTER TABLE [dbo].[Act_locator_participation_hist]  WITH CHECK ADD FOREIGN KEY([entity_uid], [locator_uid], [act_uid])
REFERENCES [dbo].[Act_locator_participation] ([entity_uid], [locator_uid], [act_uid])
GO
ALTER TABLE [dbo].[Act_relationship]  WITH CHECK ADD FOREIGN KEY([source_act_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Act_relationship]  WITH CHECK ADD FOREIGN KEY([target_act_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Alert_Email_Message]  WITH CHECK ADD  CONSTRAINT [FK_Alert_Email_Message_Alert] FOREIGN KEY([alert_uid])
REFERENCES [dbo].[Alert] ([alert_uid])
GO
ALTER TABLE [dbo].[Alert_Email_Message] CHECK CONSTRAINT [FK_Alert_Email_Message_Alert]
GO
ALTER TABLE [dbo].[Alert_Log]  WITH CHECK ADD  CONSTRAINT [FK_Alert_Log_Alert] FOREIGN KEY([alert_uid])
REFERENCES [dbo].[Alert] ([alert_uid])
GO
ALTER TABLE [dbo].[Alert_Log] CHECK CONSTRAINT [FK_Alert_Log_Alert]
GO
ALTER TABLE [dbo].[Alert_Log_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Alert_Log_Detail_Alert_Log] FOREIGN KEY([alert_log_uid])
REFERENCES [dbo].[Alert_Log] ([alert_log_uid])
GO
ALTER TABLE [dbo].[Alert_Log_Detail] CHECK CONSTRAINT [FK_Alert_Log_Detail_Alert_Log]
GO
ALTER TABLE [dbo].[Alert_User]  WITH CHECK ADD  CONSTRAINT [FK_Alert_User_Alert] FOREIGN KEY([alert_uid])
REFERENCES [dbo].[Alert] ([alert_uid])
GO
ALTER TABLE [dbo].[Alert_User] CHECK CONSTRAINT [FK_Alert_User_Alert]
GO
ALTER TABLE [dbo].[Auth_bus_obj_rt]  WITH CHECK ADD  CONSTRAINT [FK_auth_bus_obj_rt_perm_set_uid] FOREIGN KEY([auth_perm_set_uid])
REFERENCES [dbo].[Auth_perm_set] ([auth_perm_set_uid])
GO
ALTER TABLE [dbo].[Auth_bus_obj_rt] CHECK CONSTRAINT [FK_auth_bus_obj_rt_perm_set_uid]
GO
ALTER TABLE [dbo].[Auth_bus_obj_rt]  WITH CHECK ADD  CONSTRAINT [FK_auth_bus_obj_type_Uid] FOREIGN KEY([auth_bus_obj_type_uid])
REFERENCES [dbo].[Auth_bus_obj_type] ([auth_bus_obj_type_uid])
GO
ALTER TABLE [dbo].[Auth_bus_obj_rt] CHECK CONSTRAINT [FK_auth_bus_obj_type_Uid]
GO
ALTER TABLE [dbo].[Auth_bus_op_rt]  WITH CHECK ADD  CONSTRAINT [FK_auth_bus_op_obj_rt_uid] FOREIGN KEY([auth_bus_obj_rt_uid])
REFERENCES [dbo].[Auth_bus_obj_rt] ([auth_bus_obj_rt_uid])
GO
ALTER TABLE [dbo].[Auth_bus_op_rt] CHECK CONSTRAINT [FK_auth_bus_op_obj_rt_uid]
GO
ALTER TABLE [dbo].[Auth_bus_op_rt]  WITH CHECK ADD  CONSTRAINT [FK_auth_bus_op_type_uid] FOREIGN KEY([auth_bus_op_type_uid])
REFERENCES [dbo].[Auth_bus_op_type] ([auth_bus_op_type_uid])
GO
ALTER TABLE [dbo].[Auth_bus_op_rt] CHECK CONSTRAINT [FK_auth_bus_op_type_uid]
GO
ALTER TABLE [dbo].[Auth_prog_area_admin]  WITH CHECK ADD  CONSTRAINT [FK_Auth_prog_area_admin_user_id] FOREIGN KEY([auth_user_uid])
REFERENCES [dbo].[Auth_user] ([auth_user_uid])
GO
ALTER TABLE [dbo].[Auth_prog_area_admin] CHECK CONSTRAINT [FK_Auth_prog_area_admin_user_id]
GO
ALTER TABLE [dbo].[Auth_user]  WITH CHECK ADD  CONSTRAINT [FK_auth_user_ORG_uid] FOREIGN KEY([external_org_uid])
REFERENCES [dbo].[Organization] ([organization_uid])
GO
ALTER TABLE [dbo].[Auth_user] CHECK CONSTRAINT [FK_auth_user_ORG_uid]
GO
ALTER TABLE [dbo].[Auth_user]  WITH CHECK ADD  CONSTRAINT [FK_AUTH_USER_PROVIDER_UID] FOREIGN KEY([provider_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[Auth_user] CHECK CONSTRAINT [FK_AUTH_USER_PROVIDER_UID]
GO
ALTER TABLE [dbo].[Auth_user_role]  WITH CHECK ADD  CONSTRAINT [FK_auth_user_role_perm_set_uid] FOREIGN KEY([auth_perm_set_uid])
REFERENCES [dbo].[Auth_perm_set] ([auth_perm_set_uid])
GO
ALTER TABLE [dbo].[Auth_user_role] CHECK CONSTRAINT [FK_auth_user_role_perm_set_uid]
GO
ALTER TABLE [dbo].[Auth_user_role]  WITH CHECK ADD  CONSTRAINT [FK_auth_user_uid] FOREIGN KEY([auth_user_uid])
REFERENCES [dbo].[Auth_user] ([auth_user_uid])
GO
ALTER TABLE [dbo].[Auth_user_role] CHECK CONSTRAINT [FK_auth_user_uid]
GO
ALTER TABLE [dbo].[Bus_obj_df_sf_mdata_group]  WITH CHECK ADD FOREIGN KEY([df_sf_metadata_group_uid])
REFERENCES [dbo].[DF_sf_metadata_group] ([df_sf_metadata_group_uid])
GO
ALTER TABLE [dbo].[case_management]  WITH CHECK ADD FOREIGN KEY([public_health_case_uid])
REFERENCES [dbo].[Public_health_case] ([public_health_case_uid])
GO
ALTER TABLE [dbo].[CDF_subform_import_data_log]  WITH CHECK ADD FOREIGN KEY([import_log_uid])
REFERENCES [dbo].[CDF_subform_import_log] ([import_log_uid])
GO
ALTER TABLE [dbo].[Chart_report_metadata]  WITH CHECK ADD  CONSTRAINT [FK_Chart_report_metadata_3101] FOREIGN KEY([chart_type_uid])
REFERENCES [dbo].[Chart_type] ([chart_type_uid])
GO
ALTER TABLE [dbo].[Chart_report_metadata] CHECK CONSTRAINT [FK_Chart_report_metadata_3101]
GO
ALTER TABLE [dbo].[Clinical_document]  WITH CHECK ADD FOREIGN KEY([clinical_document_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Clinical_document_hist]  WITH CHECK ADD FOREIGN KEY([clinical_document_uid])
REFERENCES [dbo].[Clinical_document] ([clinical_document_uid])
GO
ALTER TABLE [dbo].[CN_transportq_out]  WITH CHECK ADD  CONSTRAINT [FK_CNTransOut_notificationUid] FOREIGN KEY([notification_uid])
REFERENCES [dbo].[Notification] ([notification_uid])
GO
ALTER TABLE [dbo].[CN_transportq_out] CHECK CONSTRAINT [FK_CNTransOut_notificationUid]
GO
ALTER TABLE [dbo].[Confirmation_method]  WITH CHECK ADD FOREIGN KEY([public_health_case_uid])
REFERENCES [dbo].[Public_health_case] ([public_health_case_uid])
GO
ALTER TABLE [dbo].[CT_contact]  WITH CHECK ADD FOREIGN KEY([third_party_entity_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[CT_contact]  WITH CHECK ADD FOREIGN KEY([third_party_entity_phc_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[CT_contact]  WITH CHECK ADD  CONSTRAINT [FK_CT_contact_3101] FOREIGN KEY([subject_entity_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[CT_contact] CHECK CONSTRAINT [FK_CT_contact_3101]
GO
ALTER TABLE [dbo].[CT_contact]  WITH CHECK ADD  CONSTRAINT [FK_CT_contact_3102] FOREIGN KEY([contact_entity_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[CT_contact] CHECK CONSTRAINT [FK_CT_contact_3102]
GO
ALTER TABLE [dbo].[CT_contact]  WITH CHECK ADD  CONSTRAINT [FK_CT_contact_3103] FOREIGN KEY([subject_entity_phc_uid])
REFERENCES [dbo].[Public_health_case] ([public_health_case_uid])
GO
ALTER TABLE [dbo].[CT_contact] CHECK CONSTRAINT [FK_CT_contact_3103]
GO
ALTER TABLE [dbo].[CT_contact]  WITH CHECK ADD  CONSTRAINT [FK_CT_contact_3104] FOREIGN KEY([contact_entity_phc_uid])
REFERENCES [dbo].[Public_health_case] ([public_health_case_uid])
GO
ALTER TABLE [dbo].[CT_contact] CHECK CONSTRAINT [FK_CT_contact_3104]
GO
ALTER TABLE [dbo].[CT_contact_answer]  WITH CHECK ADD  CONSTRAINT [FK_CT_contact_answer_3101] FOREIGN KEY([ct_contact_uid])
REFERENCES [dbo].[CT_contact] ([ct_contact_uid])
GO
ALTER TABLE [dbo].[CT_contact_answer] CHECK CONSTRAINT [FK_CT_contact_answer_3101]
GO
ALTER TABLE [dbo].[CT_contact_answer_hist]  WITH CHECK ADD  CONSTRAINT [FK_CT_contact_answer_hist_3101] FOREIGN KEY([ct_contact_uid])
REFERENCES [dbo].[CT_contact] ([ct_contact_uid])
GO
ALTER TABLE [dbo].[CT_contact_answer_hist] CHECK CONSTRAINT [FK_CT_contact_answer_hist_3101]
GO
ALTER TABLE [dbo].[CT_contact_attachment]  WITH CHECK ADD  CONSTRAINT [FK_CT_contact_attachment_3101] FOREIGN KEY([ct_contact_uid])
REFERENCES [dbo].[CT_contact] ([ct_contact_uid])
GO
ALTER TABLE [dbo].[CT_contact_attachment] CHECK CONSTRAINT [FK_CT_contact_attachment_3101]
GO
ALTER TABLE [dbo].[CT_contact_hist]  WITH CHECK ADD FOREIGN KEY([third_party_entity_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[CT_contact_hist]  WITH CHECK ADD FOREIGN KEY([third_party_entity_phc_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[CT_contact_hist]  WITH CHECK ADD  CONSTRAINT [FK_CT_contact_hist_3101] FOREIGN KEY([ct_contact_uid])
REFERENCES [dbo].[CT_contact] ([ct_contact_uid])
GO
ALTER TABLE [dbo].[CT_contact_hist] CHECK CONSTRAINT [FK_CT_contact_hist_3101]
GO
ALTER TABLE [dbo].[CT_contact_note]  WITH CHECK ADD  CONSTRAINT [FK_CT_contact_note_3101] FOREIGN KEY([ct_contact_uid])
REFERENCES [dbo].[CT_contact] ([ct_contact_uid])
GO
ALTER TABLE [dbo].[CT_contact_note] CHECK CONSTRAINT [FK_CT_contact_note_3101]
GO
ALTER TABLE [dbo].[Data_migration_detail]  WITH CHECK ADD FOREIGN KEY([data_migration_batch_uid])
REFERENCES [dbo].[Data_migration_batch] ([data_migration_batch_uid])
GO
ALTER TABLE [dbo].[Data_migration_detail]  WITH CHECK ADD FOREIGN KEY([data_migration_record_uid], [data_migration_batch_uid])
REFERENCES [dbo].[Data_migration_record] ([data_migration_record_uid], [data_migration_batch_uid])
GO
ALTER TABLE [dbo].[Data_migration_record]  WITH CHECK ADD FOREIGN KEY([data_migration_batch_uid])
REFERENCES [dbo].[Data_migration_batch] ([data_migration_batch_uid])
GO
ALTER TABLE [dbo].[Data_Source_Codeset]  WITH NOCHECK ADD  CONSTRAINT [FK_DataSourceColumnUid_DataSourceCodeSetColumnUid] FOREIGN KEY([column_uid])
REFERENCES [dbo].[Data_source_column] ([column_uid])
GO
ALTER TABLE [dbo].[Data_Source_Codeset] CHECK CONSTRAINT [FK_DataSourceColumnUid_DataSourceCodeSetColumnUid]
GO
ALTER TABLE [dbo].[Data_source_column]  WITH CHECK ADD FOREIGN KEY([data_source_uid])
REFERENCES [dbo].[Data_Source] ([data_source_uid])
GO
ALTER TABLE [dbo].[Data_Source_Operator]  WITH CHECK ADD  CONSTRAINT [FK_FilterOperatorFilterOperatorUidDataSourceOperatorFilterOperatorUid] FOREIGN KEY([filter_operator_uid])
REFERENCES [dbo].[Filter_Operator] ([filter_operator_uid])
GO
ALTER TABLE [dbo].[Data_Source_Operator] CHECK CONSTRAINT [FK_FilterOperatorFilterOperatorUidDataSourceOperatorFilterOperatorUid]
GO
ALTER TABLE [dbo].[DF_sf_mdata_field_group]  WITH CHECK ADD FOREIGN KEY([df_sf_metadata_group_uid])
REFERENCES [dbo].[DF_sf_metadata_group] ([df_sf_metadata_group_uid])
GO
ALTER TABLE [dbo].[Display_column]  WITH CHECK ADD FOREIGN KEY([column_uid])
REFERENCES [dbo].[Data_source_column] ([column_uid])
GO
ALTER TABLE [dbo].[Display_column]  WITH CHECK ADD FOREIGN KEY([data_source_uid], [report_uid])
REFERENCES [dbo].[Report] ([data_source_uid], [report_uid])
GO
ALTER TABLE [dbo].[dsm_algorithm_hist]  WITH CHECK ADD  CONSTRAINT [FK_dsm_algorithm_hist] FOREIGN KEY([dsm_algorithm_uid])
REFERENCES [dbo].[dsm_algorithm] ([dsm_algorithm_uid])
GO
ALTER TABLE [dbo].[dsm_algorithm_hist] CHECK CONSTRAINT [FK_dsm_algorithm_hist]
GO
ALTER TABLE [dbo].[EDX_activity_detail_log]  WITH CHECK ADD  CONSTRAINT [FK_EDX_activity_detail_log_4021] FOREIGN KEY([edx_activity_log_uid])
REFERENCES [dbo].[EDX_activity_log] ([edx_activity_log_uid])
GO
ALTER TABLE [dbo].[EDX_activity_detail_log] CHECK CONSTRAINT [FK_EDX_activity_detail_log_4021]
GO
ALTER TABLE [dbo].[EDX_Document]  WITH CHECK ADD  CONSTRAINT [FK_EDX_Doc_nbs_doc_metata_UID] FOREIGN KEY([nbs_document_metadata_uid])
REFERENCES [dbo].[NBS_document_metadata] ([nbs_document_metadata_uid])
GO
ALTER TABLE [dbo].[EDX_Document] CHECK CONSTRAINT [FK_EDX_Doc_nbs_doc_metata_UID]
GO
ALTER TABLE [dbo].[EDX_Document]  WITH CHECK ADD  CONSTRAINT [FK_EDX_Document_Act_UID] FOREIGN KEY([act_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[EDX_Document] CHECK CONSTRAINT [FK_EDX_Document_Act_UID]
GO
ALTER TABLE [dbo].[EDX_entity_match]  WITH CHECK ADD  CONSTRAINT [FK_EDX_entity_match_entity] FOREIGN KEY([entity_UID])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[EDX_entity_match] CHECK CONSTRAINT [FK_EDX_entity_match_entity]
GO
ALTER TABLE [dbo].[EDX_event_process]  WITH CHECK ADD  CONSTRAINT [FK_EDX_event_process_Act] FOREIGN KEY([nbs_event_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[EDX_event_process] CHECK CONSTRAINT [FK_EDX_event_process_Act]
GO
ALTER TABLE [dbo].[EDX_event_process]  WITH CHECK ADD  CONSTRAINT [FK_EDX_event_process_NBS_Document] FOREIGN KEY([nbs_document_uid])
REFERENCES [dbo].[NBS_document] ([nbs_document_uid])
GO
ALTER TABLE [dbo].[EDX_event_process] CHECK CONSTRAINT [FK_EDX_event_process_NBS_Document]
GO
ALTER TABLE [dbo].[EDX_patient_match]  WITH CHECK ADD  CONSTRAINT [FK_EDX_patient_match_entity] FOREIGN KEY([Patient_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[EDX_patient_match] CHECK CONSTRAINT [FK_EDX_patient_match_entity]
GO
ALTER TABLE [dbo].[Entity_group]  WITH CHECK ADD FOREIGN KEY([entity_group_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[Entity_group_hist]  WITH CHECK ADD FOREIGN KEY([entity_group_uid])
REFERENCES [dbo].[Entity_group] ([entity_group_uid])
GO
ALTER TABLE [dbo].[Entity_id]  WITH CHECK ADD FOREIGN KEY([entity_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[Entity_id_hist]  WITH CHECK ADD FOREIGN KEY([entity_uid], [entity_id_seq])
REFERENCES [dbo].[Entity_id] ([entity_uid], [entity_id_seq])
GO
ALTER TABLE [dbo].[Entity_loc_participation_hist]  WITH CHECK ADD FOREIGN KEY([entity_uid], [locator_uid])
REFERENCES [dbo].[Entity_locator_participation] ([entity_uid], [locator_uid])
GO
ALTER TABLE [dbo].[Entity_locator_participation]  WITH CHECK ADD FOREIGN KEY([entity_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[Filter_value]  WITH CHECK ADD FOREIGN KEY([report_filter_uid])
REFERENCES [dbo].[Report_Filter] ([report_filter_uid])
GO
ALTER TABLE [dbo].[Form_Rule_Instance]  WITH CHECK ADD  CONSTRAINT [FK_Form_Rule_Instance_Rule_Instance] FOREIGN KEY([rule_instance_uid])
REFERENCES [dbo].[Rule_Instance] ([rule_instance_uid])
GO
ALTER TABLE [dbo].[Form_Rule_Instance] CHECK CONSTRAINT [FK_Form_Rule_Instance_Rule_Instance]
GO
ALTER TABLE [dbo].[Geocoding_Result]  WITH CHECK ADD  CONSTRAINT [FK_GeoRslt_postalLocatorUid] FOREIGN KEY([postal_locator_uid])
REFERENCES [dbo].[Postal_locator] ([postal_locator_uid])
GO
ALTER TABLE [dbo].[Geocoding_Result] CHECK CONSTRAINT [FK_GeoRslt_postalLocatorUid]
GO
ALTER TABLE [dbo].[Geocoding_Result_Hist]  WITH CHECK ADD  CONSTRAINT [FK_GeoRsltHist_geoRsltUid] FOREIGN KEY([geocoding_result_uid])
REFERENCES [dbo].[Geocoding_Result] ([geocoding_result_uid])
GO
ALTER TABLE [dbo].[Geocoding_Result_Hist] CHECK CONSTRAINT [FK_GeoRsltHist_geoRsltUid]
GO
ALTER TABLE [dbo].[Intervention]  WITH CHECK ADD FOREIGN KEY([intervention_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Intervention_hist]  WITH CHECK ADD FOREIGN KEY([intervention_uid])
REFERENCES [dbo].[Intervention] ([intervention_uid])
GO
ALTER TABLE [dbo].[Interview]  WITH CHECK ADD  CONSTRAINT [fk_interview_act_uid] FOREIGN KEY([interview_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Interview] CHECK CONSTRAINT [fk_interview_act_uid]
GO
ALTER TABLE [dbo].[Interview_hist]  WITH CHECK ADD FOREIGN KEY([interview_uid])
REFERENCES [dbo].[Interview] ([interview_uid])
GO
ALTER TABLE [dbo].[LOOKUP_ANSWER]  WITH CHECK ADD  CONSTRAINT [FK_LOOKUP_QUESTION_LOOKUP_ANSWER] FOREIGN KEY([LOOKUP_QUESTION_UID])
REFERENCES [dbo].[LOOKUP_QUESTION] ([LOOKUP_QUESTION_uid])
GO
ALTER TABLE [dbo].[LOOKUP_ANSWER] CHECK CONSTRAINT [FK_LOOKUP_QUESTION_LOOKUP_ANSWER]
GO
ALTER TABLE [dbo].[Manufactured_material]  WITH CHECK ADD FOREIGN KEY([material_uid])
REFERENCES [dbo].[Material] ([material_uid])
GO
ALTER TABLE [dbo].[Manufactured_material_hist]  WITH CHECK ADD FOREIGN KEY([material_uid], [manufactured_material_seq])
REFERENCES [dbo].[Manufactured_material] ([material_uid], [manufactured_material_seq])
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD FOREIGN KEY([material_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[Material_hist]  WITH CHECK ADD FOREIGN KEY([material_uid])
REFERENCES [dbo].[Material] ([material_uid])
GO
ALTER TABLE [dbo].[NBS_act_entity]  WITH CHECK ADD  CONSTRAINT [FK_NBSActEnt_actUid] FOREIGN KEY([act_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[NBS_act_entity] CHECK CONSTRAINT [FK_NBSActEnt_actUid]
GO
ALTER TABLE [dbo].[NBS_act_entity]  WITH CHECK ADD  CONSTRAINT [FK_NBSActEnt_subjectEntityUid] FOREIGN KEY([entity_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[NBS_act_entity] CHECK CONSTRAINT [FK_NBSActEnt_subjectEntityUid]
GO
ALTER TABLE [dbo].[NBS_act_entity_hist]  WITH CHECK ADD  CONSTRAINT [FK_NBSActEnHist_actUid] FOREIGN KEY([act_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[NBS_act_entity_hist] CHECK CONSTRAINT [FK_NBSActEnHist_actUid]
GO
ALTER TABLE [dbo].[NBS_act_entity_hist]  WITH CHECK ADD  CONSTRAINT [FK_NBSActEnHist_entityUid] FOREIGN KEY([entity_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[NBS_act_entity_hist] CHECK CONSTRAINT [FK_NBSActEnHist_entityUid]
GO
ALTER TABLE [dbo].[NBS_aggregate]  WITH CHECK ADD  CONSTRAINT [FK_NBS_aggregate_3001] FOREIGN KEY([nbs_question_uid])
REFERENCES [dbo].[NBS_question] ([nbs_question_uid])
GO
ALTER TABLE [dbo].[NBS_aggregate] CHECK CONSTRAINT [FK_NBS_aggregate_3001]
GO
ALTER TABLE [dbo].[nbs_answer]  WITH CHECK ADD FOREIGN KEY([act_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[nbs_answer_hist]  WITH CHECK ADD FOREIGN KEY([act_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[NBS_attachment]  WITH CHECK ADD FOREIGN KEY([attachment_parent_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[NBS_case_answer]  WITH CHECK ADD  CONSTRAINT [FK_NBS_case_answer_2201] FOREIGN KEY([nbs_table_metadata_uid])
REFERENCES [dbo].[NBS_table_metadata] ([nbs_table_metadata_uid])
GO
ALTER TABLE [dbo].[NBS_case_answer] CHECK CONSTRAINT [FK_NBS_case_answer_2201]
GO
ALTER TABLE [dbo].[NBS_case_answer]  WITH CHECK ADD  CONSTRAINT [FK_NBS_case_answer267] FOREIGN KEY([nbs_question_uid])
REFERENCES [dbo].[NBS_question] ([nbs_question_uid])
GO
ALTER TABLE [dbo].[NBS_case_answer] CHECK CONSTRAINT [FK_NBS_case_answer267]
GO
ALTER TABLE [dbo].[NBS_case_answer]  WITH CHECK ADD  CONSTRAINT [FK_NBSCaseAnswer_actUid] FOREIGN KEY([act_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[NBS_case_answer] CHECK CONSTRAINT [FK_NBSCaseAnswer_actUid]
GO
ALTER TABLE [dbo].[NBS_case_answer_hist]  WITH CHECK ADD  CONSTRAINT [FK_NBS_case_answer_hist_Act] FOREIGN KEY([act_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[NBS_case_answer_hist] CHECK CONSTRAINT [FK_NBS_case_answer_hist_Act]
GO
ALTER TABLE [dbo].[NBS_case_answer_hist]  WITH CHECK ADD  CONSTRAINT [FK_NBS_case_answer_hist_NBS_question] FOREIGN KEY([nbs_question_uid])
REFERENCES [dbo].[NBS_question] ([nbs_question_uid])
GO
ALTER TABLE [dbo].[NBS_case_answer_hist] CHECK CONSTRAINT [FK_NBS_case_answer_hist_NBS_question]
GO
ALTER TABLE [dbo].[NBS_conversion_condition]  WITH CHECK ADD  CONSTRAINT [FK_NBSConvpageMgmt_uid] FOREIGN KEY([NBS_Conversion_Page_Mgmt_uid])
REFERENCES [dbo].[NBS_Conversion_Page_Mgmt] ([NBS_Conversion_Page_Mgmt_uid])
GO
ALTER TABLE [dbo].[NBS_conversion_condition] CHECK CONSTRAINT [FK_NBSConvpageMgmt_uid]
GO
ALTER TABLE [dbo].[NBS_conversion_error]  WITH CHECK ADD  CONSTRAINT [FK_NBS_conversion_error_NBS_conversion_master] FOREIGN KEY([nbs_conversion_master_uid])
REFERENCES [dbo].[NBS_conversion_master] ([nbs_conversion_master_uid])
GO
ALTER TABLE [dbo].[NBS_conversion_error] CHECK CONSTRAINT [FK_NBS_conversion_error_NBS_conversion_master]
GO
ALTER TABLE [dbo].[NBS_conversion_master]  WITH CHECK ADD  CONSTRAINT [FK_NBSConvCond_uid] FOREIGN KEY([nbs_conversion_condition_uid])
REFERENCES [dbo].[NBS_conversion_condition] ([nbs_conversion_condition_uid])
GO
ALTER TABLE [dbo].[NBS_conversion_master] CHECK CONSTRAINT [FK_NBSConvCond_uid]
GO
ALTER TABLE [dbo].[NBS_document]  WITH CHECK ADD  CONSTRAINT [FK_NBS_document_3101] FOREIGN KEY([nbs_document_metadata_uid])
REFERENCES [dbo].[NBS_document_metadata] ([nbs_document_metadata_uid])
GO
ALTER TABLE [dbo].[NBS_document] CHECK CONSTRAINT [FK_NBS_document_3101]
GO
ALTER TABLE [dbo].[NBS_document_hist]  WITH CHECK ADD  CONSTRAINT [FK_NBS_document_hist_3001] FOREIGN KEY([nbs_document_uid])
REFERENCES [dbo].[NBS_document] ([nbs_document_uid])
GO
ALTER TABLE [dbo].[NBS_document_hist] CHECK CONSTRAINT [FK_NBS_document_hist_3001]
GO
ALTER TABLE [dbo].[NBS_indicator]  WITH CHECK ADD  CONSTRAINT [FK_NBS_indicator_3001] FOREIGN KEY([nbs_question_uid])
REFERENCES [dbo].[NBS_question] ([nbs_question_uid])
GO
ALTER TABLE [dbo].[NBS_indicator] CHECK CONSTRAINT [FK_NBS_indicator_3001]
GO
ALTER TABLE [dbo].[NBS_metadata_rule]  WITH CHECK ADD  CONSTRAINT [FK_NBS_Metadata_Rule_NBS_Question] FOREIGN KEY([component_uid])
REFERENCES [dbo].[NBS_question] ([nbs_question_uid])
GO
ALTER TABLE [dbo].[NBS_metadata_rule] CHECK CONSTRAINT [FK_NBS_Metadata_Rule_NBS_Question]
GO
ALTER TABLE [dbo].[NBS_note]  WITH CHECK ADD  CONSTRAINT [FK_NBS_note_4021] FOREIGN KEY([note_parent_uid])
REFERENCES [dbo].[Public_health_case] ([public_health_case_uid])
GO
ALTER TABLE [dbo].[NBS_note] CHECK CONSTRAINT [FK_NBS_note_4021]
GO
ALTER TABLE [dbo].[NBS_question_hist]  WITH CHECK ADD  CONSTRAINT [FK_NBS_Question_Hist_NBS_Question] FOREIGN KEY([nbs_question_uid])
REFERENCES [dbo].[NBS_question] ([nbs_question_uid])
GO
ALTER TABLE [dbo].[NBS_question_hist] CHECK CONSTRAINT [FK_NBS_Question_Hist_NBS_Question]
GO
ALTER TABLE [dbo].[NBS_rdb_metadata]  WITH CHECK ADD  CONSTRAINT [FK_NBS_rdb_metadata_4001] FOREIGN KEY([nbs_ui_metadata_uid])
REFERENCES [dbo].[NBS_ui_metadata] ([nbs_ui_metadata_uid])
GO
ALTER TABLE [dbo].[NBS_rdb_metadata] CHECK CONSTRAINT [FK_NBS_rdb_metadata_4001]
GO
ALTER TABLE [dbo].[NBS_rdb_metadata]  WITH CHECK ADD  CONSTRAINT [FK_NBS_rdb_metadata_4002] FOREIGN KEY([nbs_page_uid])
REFERENCES [dbo].[NBS_page] ([nbs_page_uid])
GO
ALTER TABLE [dbo].[NBS_rdb_metadata] CHECK CONSTRAINT [FK_NBS_rdb_metadata_4002]
GO
ALTER TABLE [dbo].[NBS_rdb_metadata_hist]  WITH CHECK ADD  CONSTRAINT [FK_NBS_rdb_metadata_hist_4001] FOREIGN KEY([nbs_ui_metadata_uid])
REFERENCES [dbo].[NBS_ui_metadata] ([nbs_ui_metadata_uid])
GO
ALTER TABLE [dbo].[NBS_rdb_metadata_hist] CHECK CONSTRAINT [FK_NBS_rdb_metadata_hist_4001]
GO
ALTER TABLE [dbo].[NBS_rdb_metadata_hist]  WITH CHECK ADD  CONSTRAINT [FK_NBS_rdb_metadata_hist_4002] FOREIGN KEY([nbs_page_uid])
REFERENCES [dbo].[NBS_page] ([nbs_page_uid])
GO
ALTER TABLE [dbo].[NBS_rdb_metadata_hist] CHECK CONSTRAINT [FK_NBS_rdb_metadata_hist_4002]
GO
ALTER TABLE [dbo].[NBS_table_metadata]  WITH CHECK ADD  CONSTRAINT [FK_NBS_table_metadata_2201] FOREIGN KEY([nbs_table_uid])
REFERENCES [dbo].[NBS_table] ([nbs_table_uid])
GO
ALTER TABLE [dbo].[NBS_table_metadata] CHECK CONSTRAINT [FK_NBS_table_metadata_2201]
GO
ALTER TABLE [dbo].[NBS_table_metadata]  WITH CHECK ADD  CONSTRAINT [FK_NBS_table_metadata_2202] FOREIGN KEY([nbs_indicator_uid])
REFERENCES [dbo].[NBS_indicator] ([nbs_indicator_uid])
GO
ALTER TABLE [dbo].[NBS_table_metadata] CHECK CONSTRAINT [FK_NBS_table_metadata_2202]
GO
ALTER TABLE [dbo].[NBS_table_metadata]  WITH CHECK ADD  CONSTRAINT [FK_NBS_table_metadata_2203] FOREIGN KEY([nbs_aggregate_uid])
REFERENCES [dbo].[NBS_aggregate] ([nbs_aggregate_uid])
GO
ALTER TABLE [dbo].[NBS_table_metadata] CHECK CONSTRAINT [FK_NBS_table_metadata_2203]
GO
ALTER TABLE [dbo].[NBS_table_metadata]  WITH CHECK ADD  CONSTRAINT [FK_NBS_table_metadata_2204] FOREIGN KEY([nbs_question_uid])
REFERENCES [dbo].[NBS_question] ([nbs_question_uid])
GO
ALTER TABLE [dbo].[NBS_table_metadata] CHECK CONSTRAINT [FK_NBS_table_metadata_2204]
GO
ALTER TABLE [dbo].[NBS_ui_metadata]  WITH CHECK ADD  CONSTRAINT [FK_nbs_ui_metadata_2201] FOREIGN KEY([nbs_table_uid])
REFERENCES [dbo].[NBS_table] ([nbs_table_uid])
GO
ALTER TABLE [dbo].[NBS_ui_metadata] CHECK CONSTRAINT [FK_nbs_ui_metadata_2201]
GO
ALTER TABLE [dbo].[NBS_ui_metadata]  WITH CHECK ADD  CONSTRAINT [FK_NBS_UI_Metadata_NBS_Question] FOREIGN KEY([nbs_question_uid])
REFERENCES [dbo].[NBS_question] ([nbs_question_uid])
GO
ALTER TABLE [dbo].[NBS_ui_metadata] CHECK CONSTRAINT [FK_NBS_UI_Metadata_NBS_Question]
GO
ALTER TABLE [dbo].[NBS_ui_metadata]  WITH CHECK ADD  CONSTRAINT [FK_NBS_UI_Metadata_NBS_UI_Component] FOREIGN KEY([nbs_ui_component_uid])
REFERENCES [dbo].[NBS_ui_component] ([nbs_ui_component_uid])
GO
ALTER TABLE [dbo].[NBS_ui_metadata] CHECK CONSTRAINT [FK_NBS_UI_Metadata_NBS_UI_Component]
GO
ALTER TABLE [dbo].[Non_Person_living_subject]  WITH CHECK ADD FOREIGN KEY([non_person_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[Non_Person_living_subject_hist]  WITH CHECK ADD FOREIGN KEY([non_person_uid])
REFERENCES [dbo].[Non_Person_living_subject] ([non_person_uid])
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD FOREIGN KEY([notification_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Notification_hist]  WITH CHECK ADD FOREIGN KEY([notification_uid])
REFERENCES [dbo].[Notification] ([notification_uid])
GO
ALTER TABLE [dbo].[Obs_value_coded]  WITH CHECK ADD FOREIGN KEY([observation_uid])
REFERENCES [dbo].[Observation] ([observation_uid])
GO
ALTER TABLE [dbo].[Obs_value_date]  WITH CHECK ADD FOREIGN KEY([observation_uid])
REFERENCES [dbo].[Observation] ([observation_uid])
GO
ALTER TABLE [dbo].[Obs_value_date_hist]  WITH CHECK ADD FOREIGN KEY([observation_uid], [obs_value_date_seq])
REFERENCES [dbo].[Obs_value_date] ([observation_uid], [obs_value_date_seq])
GO
ALTER TABLE [dbo].[Obs_value_numeric]  WITH CHECK ADD FOREIGN KEY([observation_uid])
REFERENCES [dbo].[Observation] ([observation_uid])
GO
ALTER TABLE [dbo].[Obs_value_numeric_hist]  WITH CHECK ADD FOREIGN KEY([observation_uid], [obs_value_numeric_seq])
REFERENCES [dbo].[Obs_value_numeric] ([observation_uid], [obs_value_numeric_seq])
GO
ALTER TABLE [dbo].[Obs_value_txt]  WITH CHECK ADD FOREIGN KEY([observation_uid])
REFERENCES [dbo].[Observation] ([observation_uid])
GO
ALTER TABLE [dbo].[Obs_value_txt_hist]  WITH CHECK ADD FOREIGN KEY([observation_uid], [obs_value_txt_seq])
REFERENCES [dbo].[Obs_value_txt] ([observation_uid], [obs_value_txt_seq])
GO
ALTER TABLE [dbo].[Observation]  WITH CHECK ADD FOREIGN KEY([observation_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Observation]  WITH CHECK ADD FOREIGN KEY([subject_person_uid])
REFERENCES [dbo].[Person] ([person_uid])
GO
ALTER TABLE [dbo].[Observation_hist]  WITH CHECK ADD FOREIGN KEY([observation_uid])
REFERENCES [dbo].[Observation] ([observation_uid])
GO
ALTER TABLE [dbo].[Observation_interp]  WITH CHECK ADD FOREIGN KEY([observation_uid])
REFERENCES [dbo].[Observation] ([observation_uid])
GO
ALTER TABLE [dbo].[Observation_reason]  WITH CHECK ADD FOREIGN KEY([observation_uid])
REFERENCES [dbo].[Observation] ([observation_uid])
GO
ALTER TABLE [dbo].[Organization]  WITH CHECK ADD FOREIGN KEY([organization_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[Organization_hist]  WITH CHECK ADD FOREIGN KEY([organization_uid])
REFERENCES [dbo].[Organization] ([organization_uid])
GO
ALTER TABLE [dbo].[Organization_name]  WITH CHECK ADD FOREIGN KEY([organization_uid])
REFERENCES [dbo].[Organization] ([organization_uid])
GO
ALTER TABLE [dbo].[Organization_name_hist]  WITH CHECK ADD FOREIGN KEY([organization_uid], [organization_name_seq])
REFERENCES [dbo].[Organization_name] ([organization_uid], [organization_name_seq])
GO
ALTER TABLE [dbo].[Page_cond_mapping]  WITH CHECK ADD  CONSTRAINT [FK_Page_cond_mapping_4101] FOREIGN KEY([wa_template_uid])
REFERENCES [dbo].[WA_template] ([wa_template_uid])
GO
ALTER TABLE [dbo].[Page_cond_mapping] CHECK CONSTRAINT [FK_Page_cond_mapping_4101]
GO
ALTER TABLE [dbo].[Participation]  WITH CHECK ADD FOREIGN KEY([act_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Participation]  WITH CHECK ADD FOREIGN KEY([subject_entity_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[Participation]  WITH CHECK ADD  CONSTRAINT [FK__Participation__0] FOREIGN KEY([subject_entity_uid], [role_seq], [cd])
REFERENCES [dbo].[Role] ([subject_entity_uid], [role_seq], [cd])
GO
ALTER TABLE [dbo].[Participation] CHECK CONSTRAINT [FK__Participation__0]
GO
ALTER TABLE [dbo].[Patient_encounter]  WITH CHECK ADD FOREIGN KEY([patient_encounter_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Patient_encounter_hist]  WITH CHECK ADD FOREIGN KEY([patient_encounter_uid])
REFERENCES [dbo].[Patient_encounter] ([patient_encounter_uid])
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD FOREIGN KEY([person_parent_uid])
REFERENCES [dbo].[Person] ([person_uid])
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD FOREIGN KEY([person_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[Person_ethnic_group]  WITH CHECK ADD FOREIGN KEY([person_uid])
REFERENCES [dbo].[Person] ([person_uid])
GO
ALTER TABLE [dbo].[Person_hist]  WITH CHECK ADD FOREIGN KEY([person_uid])
REFERENCES [dbo].[Person] ([person_uid])
GO
ALTER TABLE [dbo].[Person_merge]  WITH CHECK ADD FOREIGN KEY([surviving_person_uid])
REFERENCES [dbo].[Person] ([person_uid])
GO
ALTER TABLE [dbo].[Person_merge]  WITH CHECK ADD FOREIGN KEY([superced_person_uid], [superceded_version_ctrl_nbr])
REFERENCES [dbo].[Person_hist] ([person_uid], [version_ctrl_nbr])
GO
ALTER TABLE [dbo].[Person_name]  WITH CHECK ADD FOREIGN KEY([person_uid])
REFERENCES [dbo].[Person] ([person_uid])
GO
ALTER TABLE [dbo].[Person_name_hist]  WITH CHECK ADD FOREIGN KEY([person_uid], [person_name_seq])
REFERENCES [dbo].[Person_name] ([person_uid], [person_name_seq])
GO
ALTER TABLE [dbo].[Person_race]  WITH CHECK ADD FOREIGN KEY([person_uid])
REFERENCES [dbo].[Person] ([person_uid])
GO
ALTER TABLE [dbo].[Physical_locator_hist]  WITH CHECK ADD FOREIGN KEY([physical_locator_uid])
REFERENCES [dbo].[Physical_locator] ([physical_locator_uid])
GO
ALTER TABLE [dbo].[Place]  WITH CHECK ADD FOREIGN KEY([place_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[Place_hist]  WITH CHECK ADD FOREIGN KEY([place_uid])
REFERENCES [dbo].[Place] ([place_uid])
GO
ALTER TABLE [dbo].[Postal_locator_hist]  WITH CHECK ADD FOREIGN KEY([postal_locator_uid])
REFERENCES [dbo].[Postal_locator] ([postal_locator_uid])
GO
ALTER TABLE [dbo].[Procedure1]  WITH CHECK ADD FOREIGN KEY([intervention_uid])
REFERENCES [dbo].[Intervention] ([intervention_uid])
GO
ALTER TABLE [dbo].[Procedure1_hist]  WITH CHECK ADD FOREIGN KEY([intervention_uid])
REFERENCES [dbo].[Procedure1] ([intervention_uid])
GO
ALTER TABLE [dbo].[Public_health_case]  WITH CHECK ADD FOREIGN KEY([public_health_case_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Public_health_case_hist]  WITH CHECK ADD FOREIGN KEY([public_health_case_uid])
REFERENCES [dbo].[Public_health_case] ([public_health_case_uid])
GO
ALTER TABLE [dbo].[Referral]  WITH CHECK ADD FOREIGN KEY([referral_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Referral_hist]  WITH CHECK ADD FOREIGN KEY([referral_uid])
REFERENCES [dbo].[Referral] ([referral_uid])
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD FOREIGN KEY([data_source_uid])
REFERENCES [dbo].[Data_Source] ([data_source_uid])
GO
ALTER TABLE [dbo].[Report_Filter]  WITH CHECK ADD FOREIGN KEY([column_uid])
REFERENCES [dbo].[Data_source_column] ([column_uid])
GO
ALTER TABLE [dbo].[Report_Filter]  WITH CHECK ADD FOREIGN KEY([filter_uid])
REFERENCES [dbo].[Filter_code] ([filter_uid])
GO
ALTER TABLE [dbo].[Report_Filter]  WITH CHECK ADD FOREIGN KEY([data_source_uid], [report_uid])
REFERENCES [dbo].[Report] ([data_source_uid], [report_uid])
GO
ALTER TABLE [dbo].[Report_Filter_Validation]  WITH NOCHECK ADD  CONSTRAINT [FK_ReportFilter_ReportFilterUid] FOREIGN KEY([report_filter_uid])
REFERENCES [dbo].[Report_Filter] ([report_filter_uid])
GO
ALTER TABLE [dbo].[Report_Filter_Validation] CHECK CONSTRAINT [FK_ReportFilter_ReportFilterUid]
GO
ALTER TABLE [dbo].[Report_Sort_Column]  WITH CHECK ADD  CONSTRAINT [FK_ReportReportUidReportSortColumnReportUid] FOREIGN KEY([data_source_uid], [report_uid])
REFERENCES [dbo].[Report] ([data_source_uid], [report_uid])
GO
ALTER TABLE [dbo].[Report_Sort_Column] CHECK CONSTRAINT [FK_ReportReportUidReportSortColumnReportUid]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD FOREIGN KEY([subject_entity_uid])
REFERENCES [dbo].[Entity] ([entity_uid])
GO
ALTER TABLE [dbo].[Rule]  WITH CHECK ADD  CONSTRAINT [FK_Rule_ruleTypeUid] FOREIGN KEY([rule_type_uid])
REFERENCES [dbo].[Rule_Type] ([rule_type_uid])
GO
ALTER TABLE [dbo].[Rule] CHECK CONSTRAINT [FK_Rule_ruleTypeUid]
GO
ALTER TABLE [dbo].[Rule_Instance]  WITH CHECK ADD  CONSTRAINT [FK_Rule_instance_conseqIndUid] FOREIGN KEY([conseq_ind_uid])
REFERENCES [dbo].[Consequence_indicator] ([conseq_ind_uid])
GO
ALTER TABLE [dbo].[Rule_Instance] CHECK CONSTRAINT [FK_Rule_instance_conseqIndUid]
GO
ALTER TABLE [dbo].[Rule_Instance]  WITH CHECK ADD  CONSTRAINT [FK_Rule_instance_ruleUid] FOREIGN KEY([rule_uid])
REFERENCES [dbo].[Rule] ([rule_uid])
GO
ALTER TABLE [dbo].[Rule_Instance] CHECK CONSTRAINT [FK_Rule_instance_ruleUid]
GO
ALTER TABLE [dbo].[Source_Field]  WITH CHECK ADD  CONSTRAINT [FK_Source_Field_NBS_Metadata_Rule] FOREIGN KEY([nbs_metadata_rule_uid])
REFERENCES [dbo].[NBS_metadata_rule] ([nbs_metadata_rule_uid])
GO
ALTER TABLE [dbo].[Source_Field] CHECK CONSTRAINT [FK_Source_Field_NBS_Metadata_Rule]
GO
ALTER TABLE [dbo].[Source_Field]  WITH CHECK ADD  CONSTRAINT [FK_SourceField_ruleInstUid] FOREIGN KEY([rule_instance_uid])
REFERENCES [dbo].[Rule_Instance] ([rule_instance_uid])
GO
ALTER TABLE [dbo].[Source_Field] CHECK CONSTRAINT [FK_SourceField_ruleInstUid]
GO
ALTER TABLE [dbo].[Source_Value]  WITH CHECK ADD  CONSTRAINT [FK_Source_value_operatorUid] FOREIGN KEY([operator_type_uid])
REFERENCES [dbo].[Operator_type] ([operator_type_uid])
GO
ALTER TABLE [dbo].[Source_Value] CHECK CONSTRAINT [FK_Source_value_operatorUid]
GO
ALTER TABLE [dbo].[Source_Value]  WITH CHECK ADD  CONSTRAINT [FK_SourceValue_sourceFieldUid] FOREIGN KEY([source_field_uid])
REFERENCES [dbo].[Source_Field] ([source_field_uid])
GO
ALTER TABLE [dbo].[Source_Value] CHECK CONSTRAINT [FK_SourceValue_sourceFieldUid]
GO
ALTER TABLE [dbo].[state_defined_field_data]  WITH CHECK ADD FOREIGN KEY([ldf_uid])
REFERENCES [dbo].[state_defined_field_metadata] ([ldf_uid])
GO
ALTER TABLE [dbo].[state_defined_field_metadata]  WITH CHECK ADD FOREIGN KEY([custom_subform_metadata_uid])
REFERENCES [dbo].[Custom_subform_metadata] ([custom_subform_metadata_uid])
GO
ALTER TABLE [dbo].[SubjectRaceInfo]  WITH CHECK ADD FOREIGN KEY([public_health_case_uid])
REFERENCES [dbo].[PublicHealthCaseFact] ([public_health_case_uid])
GO
ALTER TABLE [dbo].[Substance_administration]  WITH CHECK ADD FOREIGN KEY([intervention_uid])
REFERENCES [dbo].[Intervention] ([intervention_uid])
GO
ALTER TABLE [dbo].[Substance_administration_hist]  WITH CHECK ADD FOREIGN KEY([intervention_uid])
REFERENCES [dbo].[Substance_administration] ([intervention_uid])
GO
ALTER TABLE [dbo].[Target_Field]  WITH CHECK ADD  CONSTRAINT [FK_Target_Field_NBS_Metadata_Rule] FOREIGN KEY([nbs_metadata_rule_uid])
REFERENCES [dbo].[NBS_metadata_rule] ([nbs_metadata_rule_uid])
GO
ALTER TABLE [dbo].[Target_Field] CHECK CONSTRAINT [FK_Target_Field_NBS_Metadata_Rule]
GO
ALTER TABLE [dbo].[Target_Field]  WITH CHECK ADD  CONSTRAINT [FK_Target_field_ruleInstUid] FOREIGN KEY([rule_instance_uid])
REFERENCES [dbo].[Rule_Instance] ([rule_instance_uid])
GO
ALTER TABLE [dbo].[Target_Field] CHECK CONSTRAINT [FK_Target_field_ruleInstUid]
GO
ALTER TABLE [dbo].[Target_Value]  WITH CHECK ADD  CONSTRAINT [FK_Target_Value_Consequence_Indicator] FOREIGN KEY([conseq_ind_uid])
REFERENCES [dbo].[Consequence_indicator] ([conseq_ind_uid])
GO
ALTER TABLE [dbo].[Target_Value] CHECK CONSTRAINT [FK_Target_Value_Consequence_Indicator]
GO
ALTER TABLE [dbo].[Target_Value]  WITH CHECK ADD  CONSTRAINT [FK_Target_Value_Operator_Type] FOREIGN KEY([operator_type_uid])
REFERENCES [dbo].[Operator_type] ([operator_type_uid])
GO
ALTER TABLE [dbo].[Target_Value] CHECK CONSTRAINT [FK_Target_Value_Operator_Type]
GO
ALTER TABLE [dbo].[Target_Value]  WITH CHECK ADD  CONSTRAINT [FK_Target_value162] FOREIGN KEY([error_message_uid])
REFERENCES [dbo].[Error_message] ([error_message_uid])
GO
ALTER TABLE [dbo].[Target_Value] CHECK CONSTRAINT [FK_Target_value162]
GO
ALTER TABLE [dbo].[Target_Value]  WITH CHECK ADD  CONSTRAINT [FK_TargetValue_targetFieldUid] FOREIGN KEY([target_field_uid])
REFERENCES [dbo].[Target_Field] ([target_field_uid])
GO
ALTER TABLE [dbo].[Target_Value] CHECK CONSTRAINT [FK_TargetValue_targetFieldUid]
GO
ALTER TABLE [dbo].[Tele_locator_hist]  WITH CHECK ADD FOREIGN KEY([tele_locator_uid])
REFERENCES [dbo].[Tele_locator] ([tele_locator_uid])
GO
ALTER TABLE [dbo].[Treatment]  WITH CHECK ADD FOREIGN KEY([treatment_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Treatment_administered]  WITH CHECK ADD FOREIGN KEY([treatment_uid])
REFERENCES [dbo].[Treatment] ([treatment_uid])
GO
ALTER TABLE [dbo].[Treatment_administered_hist]  WITH CHECK ADD FOREIGN KEY([treatment_uid], [treatment_administered_seq])
REFERENCES [dbo].[Treatment_administered] ([treatment_uid], [treatment_administered_seq])
GO
ALTER TABLE [dbo].[Treatment_hist]  WITH CHECK ADD FOREIGN KEY([treatment_uid])
REFERENCES [dbo].[Treatment] ([treatment_uid])
GO
ALTER TABLE [dbo].[Treatment_procedure]  WITH CHECK ADD FOREIGN KEY([treatment_uid])
REFERENCES [dbo].[Treatment] ([treatment_uid])
GO
ALTER TABLE [dbo].[Treatment_procedure_hist]  WITH CHECK ADD FOREIGN KEY([treatment_uid], [treatment_procedure_seq])
REFERENCES [dbo].[Treatment_procedure] ([treatment_uid], [treatment_procedure_seq])
GO
ALTER TABLE [dbo].[Updated_notification]  WITH CHECK ADD FOREIGN KEY([notification_uid])
REFERENCES [dbo].[Notification] ([notification_uid])
GO
ALTER TABLE [dbo].[User_Email_Alert]  WITH CHECK ADD  CONSTRAINT [FK_User_Email_Alert_Alert_Email_Message] FOREIGN KEY([alert_email_message_uid])
REFERENCES [dbo].[Alert_Email_Message] ([alert_email_message_uid])
GO
ALTER TABLE [dbo].[User_Email_Alert] CHECK CONSTRAINT [FK_User_Email_Alert_Alert_Email_Message]
GO
ALTER TABLE [dbo].[WA_Conversion_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_NBS_CONV_PAGE_MGMT_UID] FOREIGN KEY([NBS_Conversion_Page_Mgmt_uid])
REFERENCES [dbo].[NBS_Conversion_Page_Mgmt] ([NBS_Conversion_Page_Mgmt_uid])
GO
ALTER TABLE [dbo].[WA_Conversion_Mapping] CHECK CONSTRAINT [FK_NBS_CONV_PAGE_MGMT_UID]
GO
ALTER TABLE [dbo].[WA_NND_metadata]  WITH CHECK ADD  CONSTRAINT [FK_WA_NND_metadata_4001] FOREIGN KEY([wa_ui_metadata_uid])
REFERENCES [dbo].[WA_UI_metadata] ([wa_ui_metadata_uid])
GO
ALTER TABLE [dbo].[WA_NND_metadata] CHECK CONSTRAINT [FK_WA_NND_metadata_4001]
GO
ALTER TABLE [dbo].[WA_NND_metadata]  WITH CHECK ADD  CONSTRAINT [FK_WA_NND_metadata_4002] FOREIGN KEY([wa_template_uid])
REFERENCES [dbo].[WA_template] ([wa_template_uid])
GO
ALTER TABLE [dbo].[WA_NND_metadata] CHECK CONSTRAINT [FK_WA_NND_metadata_4002]
GO
ALTER TABLE [dbo].[WA_NND_metadata_hist]  WITH CHECK ADD  CONSTRAINT [FK_WA_NND_metadata_hist_4001] FOREIGN KEY([wa_template_hist_uid])
REFERENCES [dbo].[WA_template_hist] ([wa_template_hist_uid])
GO
ALTER TABLE [dbo].[WA_NND_metadata_hist] CHECK CONSTRAINT [FK_WA_NND_metadata_hist_4001]
GO
ALTER TABLE [dbo].[WA_question_hist]  WITH CHECK ADD  CONSTRAINT [FK_WA_question_hist_4001] FOREIGN KEY([wa_question_uid])
REFERENCES [dbo].[WA_question] ([wa_question_uid])
GO
ALTER TABLE [dbo].[WA_question_hist] CHECK CONSTRAINT [FK_WA_question_hist_4001]
GO
ALTER TABLE [dbo].[WA_RDB_metadata]  WITH CHECK ADD  CONSTRAINT [FK_WA_RDB_metadata_4002] FOREIGN KEY([wa_template_uid])
REFERENCES [dbo].[WA_template] ([wa_template_uid])
GO
ALTER TABLE [dbo].[WA_RDB_metadata] CHECK CONSTRAINT [FK_WA_RDB_metadata_4002]
GO
ALTER TABLE [dbo].[WA_RDB_metadata_hist]  WITH CHECK ADD  CONSTRAINT [FK_WA_RDB_metadata_hist_4001] FOREIGN KEY([wa_template_hist_uid])
REFERENCES [dbo].[WA_template_hist] ([wa_template_hist_uid])
GO
ALTER TABLE [dbo].[WA_RDB_metadata_hist] CHECK CONSTRAINT [FK_WA_RDB_metadata_hist_4001]
GO
ALTER TABLE [dbo].[WA_rule_metadata]  WITH CHECK ADD  CONSTRAINT [FK_WA_rule_metadata_4021] FOREIGN KEY([wa_template_uid])
REFERENCES [dbo].[WA_template] ([wa_template_uid])
GO
ALTER TABLE [dbo].[WA_rule_metadata] CHECK CONSTRAINT [FK_WA_rule_metadata_4021]
GO
ALTER TABLE [dbo].[WA_UI_metadata]  WITH CHECK ADD  CONSTRAINT [FK_WA_UI_metadata_4002] FOREIGN KEY([wa_template_uid])
REFERENCES [dbo].[WA_template] ([wa_template_uid])
GO
ALTER TABLE [dbo].[WA_UI_metadata] CHECK CONSTRAINT [FK_WA_UI_metadata_4002]
GO
ALTER TABLE [dbo].[WA_UI_metadata_hist]  WITH CHECK ADD  CONSTRAINT [FK_WA_UI_metadata_hist_4001] FOREIGN KEY([wa_template_hist_uid])
REFERENCES [dbo].[WA_template_hist] ([wa_template_hist_uid])
GO
ALTER TABLE [dbo].[WA_UI_metadata_hist] CHECK CONSTRAINT [FK_WA_UI_metadata_hist_4001]
GO
ALTER TABLE [dbo].[Workup]  WITH CHECK ADD FOREIGN KEY([workup_uid])
REFERENCES [dbo].[Act] ([act_uid])
GO
ALTER TABLE [dbo].[Workup_hist]  WITH CHECK ADD FOREIGN KEY([workup_uid])
REFERENCES [dbo].[Workup] ([workup_uid])
GO

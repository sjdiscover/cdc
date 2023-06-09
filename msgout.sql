USE [NBS_MSGOUTE]
GO
/****** Object:  Table [dbo].[MSG_ANSWER]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSG_ANSWER](
	[MSG_CONTAINER_UID] [bigint] NOT NULL,
	[MSG_EVENT_ID] [varchar](250) NULL,
	[MSG_EVENT_TYPE] [varchar](50) NOT NULL,
	[ANS_CODE_SYSTEM_CD] [varchar](250) NULL,
	[ANS_CODE_SYSTEM_DESC_TXT] [varchar](250) NULL,
	[ANS_DISPLAY_TXT] [varchar](250) NULL,
	[ANSWER_TXT] [varchar](2000) NULL,
	[ANSWER_LARGE_TXT] [image] NULL,
	[ANSWER_GROUP_SEQ_NBR] [smallint] NULL,
	[ANSWER_XML_TXT] [text] NULL,
	[PART_TYPE_CD] [varchar](50) NULL,
	[QUESTION_IDENTIFIER] [varchar](50) NOT NULL,
	[QUES_CODE_SYSTEM_CD] [varchar](250) NULL,
	[QUES_CODE_SYSTEM_DESC_TXT] [varchar](250) NULL,
	[QUES_DISPLAY_TXT] [varchar](250) NULL,
	[QUESTION_GROUP_SEQ_NBR] [smallint] NULL,
	[SECTION_NM] [varchar](250) NULL,
	[SEQ_NBR] [smallint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSG_ANSWER_LOOKUP]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSG_ANSWER_LOOKUP](
	[ANS_FROM_CODE] [varchar](250) NULL,
	[ANS_FROM_CODE_SYSTEM_CD] [varchar](250) NULL,
	[ANS_FROM_CODE_SYSTEM_DESC_TXT] [varchar](250) NULL,
	[ANS_FROM_DISPLAY_NM] [varchar](250) NULL,
	[ANS_TO_CODE] [varchar](250) NULL,
	[ANS_TO_CODE_SYSTEM_CD] [varchar](250) NULL,
	[ANS_TO_CODE_SYSTEM_DESC_TXT] [varchar](250) NULL,
	[ANS_TO_DISPLAY_NM] [varchar](250) NULL,
	[CODE_TRANSLATION_REQUIRED] [varchar](250) NULL,
	[DOC_TYPE_CD] [varchar](250) NULL,
	[DOC_TYPE_VERSION_TXT] [varchar](250) NULL,
	[QUES_CODE_SYSTEM_CD] [varchar](250) NULL,
	[QUESTION_IDENTIFIER] [varchar](250) NULL,
	[SENDING_SYSTEM_CD] [varchar](250) NULL,
	[INVESTIGATION_FORM_CD] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSG_CASE_INVESTIGATION]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSG_CASE_INVESTIGATION](
	[MSG_CONTAINER_UID] [bigint] NOT NULL,
	[INV_LOCAL_ID] [varchar](100) NOT NULL,
	[PAT_LOCAL_ID] [varchar](100) NOT NULL,
	[INV_AUTHOR_ID] [varchar](100) NULL,
	[INV_CASE_STATUS_CD] [varchar](100) NULL,
	[INV_CLOSE_DT] [datetime] NULL,
	[INV_COINFECTION_ID] [varchar](100) NULL,
	[INV_COMMENT_TXT] [text] NULL,
	[INV_CONDITION_CD] [varchar](2000) NULL,
	[INV_CONTACT_INV_COMMENT_TXT] [text] NULL,
	[INV_CONTACT_INV_PRIORITY_CD] [varchar](100) NULL,
	[INV_CONTACT_INV_STATUS_CD] [varchar](100) NULL,
	[INV_CURR_PROCESS_STATE_CD] [varchar](100) NULL,
	[INV_DAYCARE_IND_CD] [varchar](100) NULL,
	[INV_DETECTION_METHOD_CD] [varchar](100) NULL,
	[INV_DIAGNOSIS_DT] [datetime] NULL,
	[INV_DISEASE_ACQUIRED_LOC_CD] [varchar](100) NULL,
	[INV_EFFECTIVE_TIME] [datetime] NULL,
	[INV_FOODHANDLER_IND_CD] [varchar](100) NULL,
	[INV_HOSPITALIZED_ADMIT_DT] [datetime] NULL,
	[INV_HOSPITALIZED_DISCHARGE_DT] [datetime] NULL,
	[INV_HOSPITALIZED_IND_CD] [varchar](100) NULL,
	[INV_HOSP_STAY_DURATION] [int] NULL,
	[INV_ILLNESS_START_DT] [datetime] NULL,
	[INV_ILLNESS_END_DT] [datetime] NULL,
	[INV_ILLNESS_DURATION] [int] NULL,
	[INV_ILLNESS_DURATION_UNIT_CD] [varchar](100) NULL,
	[INV_ILLNESS_ONSET_AGE] [int] NULL,
	[INV_ILLNESS_ONSET_AGE_UNIT_CD] [varchar](100) NULL,
	[INV_INVESTIGATOR_ASSIGNED_DT] [datetime] NULL,
	[INV_IMPORT_CITY_TXT] [varchar](100) NULL,
	[INV_IMPORT_COUNTY_CD] [varchar](100) NULL,
	[INV_IMPORT_COUNTRY_CD] [varchar](100) NULL,
	[INV_IMPORT_STATE_CD] [varchar](100) NULL,
	[INV_INFECTIOUS_FROM_DT] [datetime] NULL,
	[INV_INFECTIOUS_TO_DT] [datetime] NULL,
	[INV_LEGACY_CASE_ID] [varchar](199) NULL,
	[INV_MMWR_WEEK_TXT] [varchar](2) NULL,
	[INV_MMWR_YEAR_TXT] [varchar](4) NULL,
	[INV_OUTBREAK_IND_CD] [varchar](100) NULL,
	[INV_OUTBREAK_NAME_CD] [varchar](100) NULL,
	[INV_PATIENT_DEATH_DT] [datetime] NULL,
	[INV_PATIENT_DEATH_IND_CD] [varchar](100) NULL,
	[INV_PREGNANCY_IND_CD] [varchar](100) NULL,
	[INV_REFERRAL_BASIS_CD] [varchar](100) NULL,
	[INV_REPORT_DT] [datetime] NULL,
	[INV_REPORT_TO_COUNTY_DT] [datetime] NULL,
	[INV_REPORT_TO_STATE_DT] [datetime] NULL,
	[INV_REPORTING_COUNTY_CD] [varchar](100) NULL,
	[INV_SHARED_IND_CD] [varchar](100) NULL,
	[INV_SOURCE_TYPE_CD] [varchar](100) NULL,
	[INV_START_DT] [datetime] NULL,
	[INV_STATE_ID] [varchar](199) NULL,
	[INV_STATUS_CD] [varchar](100) NULL,
	[INV_TRANSMISSION_MODE_CD] [varchar](100) NULL,
 CONSTRAINT [PK_MSG_CASE_INVESTIGATION] PRIMARY KEY CLUSTERED 
(
	[INV_LOCAL_ID] ASC,
	[PAT_LOCAL_ID] ASC,
	[MSG_CONTAINER_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSG_CONTAINER]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSG_CONTAINER](
	[MSG_CONTAINER_UID] [bigint] NOT NULL,
	[NBS_INTERFACE_UID] [bigint] NULL,
	[ADD_REASON_CD] [varchar](250) NULL,
	[AUTHOR_ID] [varchar](250) NULL,
	[CD] [varchar](250) NULL,
	[CONFIDENTIALITY_CD] [varchar](250) NULL,
	[CUSTODIAN_ID] [varchar](250) NULL,
	[DOCUMENT_ID] [varchar](250) NOT NULL,
	[DOC_TYPE_CD] [varchar](250) NOT NULL,
	[EFFECTIVE_TIME] [datetime] NOT NULL,
	[MSG_LOCAL_ID] [varchar](250) NULL,
	[RECORD_STATUS_CD] [varchar](250) NOT NULL,
	[RECORD_STATUS_TIME] [datetime] NOT NULL,
	[RECEIVING_SYSTEM] [varchar](250) NULL,
	[SENDING_SYSTEM_CD] [varchar](250) NULL,
	[VERSION_CTRL_NBR] [smallint] NULL,
	[DATA_MIGRATION_STATUS] [int] NULL,
	[ONGOING_CASE] [varchar](255) NULL,
 CONSTRAINT [PK_MSG_CONTAINER] PRIMARY KEY CLUSTERED 
(
	[MSG_CONTAINER_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSG_INTERVIEW]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSG_INTERVIEW](
	[MSG_CONTAINER_UID] [bigint] NOT NULL,
	[IXS_LOCAL_ID] [varchar](100) NOT NULL,
	[IXS_INTERVIEWEE_ID] [varchar](100) NOT NULL,
	[IXS_AUTHOR_ID] [varchar](100) NULL,
	[IXS_EFFECTIVE_TIME] [datetime] NULL,
	[IXS_INTERVIEW_DT] [datetime] NULL,
	[IXS_INTERVIEW_LOC_CD] [varchar](100) NULL,
	[IXS_INTERVIEWEE_ROLE_CD] [varchar](100) NULL,
	[IXS_INTERVIEW_TYPE_CD] [varchar](100) NULL,
	[IXS_STATUS_CD] [varchar](100) NULL,
 CONSTRAINT [PK_MSG_INTERVIEW] PRIMARY KEY CLUSTERED 
(
	[IXS_LOCAL_ID] ASC,
	[IXS_INTERVIEWEE_ID] ASC,
	[MSG_CONTAINER_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSG_ORGANIZATION]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSG_ORGANIZATION](
	[MSG_CONTAINER_UID] [bigint] NOT NULL,
	[ORG_LOCAL_ID] [varchar](100) NOT NULL,
	[ORG_AUTHOR_ID] [varchar](100) NULL,
	[ORG_EFFECTIVE_TIME] [datetime] NULL,
	[ORG_NAME_TXT] [varchar](100) NULL,
	[ORG_ADDR_CITY_TXT] [varchar](100) NULL,
	[ORG_ADDR_COMMENT_TXT] [text] NULL,
	[ORG_ADDR_COUNTY_CD] [varchar](100) NULL,
	[ORG_ADDR_COUNTRY_CD] [varchar](100) NULL,
	[ORG_ADDR_STATE_CD] [varchar](100) NULL,
	[ORG_ADDR_STREET_ADDR1_TXT] [varchar](100) NULL,
	[ORG_ADDR_STREET_ADDR2_TXT] [varchar](100) NULL,
	[ORG_ADDR_ZIP_CODE_TXT] [varchar](10) NULL,
	[ORG_CLASS_CD] [varchar](100) NULL,
	[ORG_COMMENT_TXT] [text] NULL,
	[ORG_EMAIL_ADDRESS_TXT] [varchar](100) NULL,
	[ORG_ID_CLIA_NBR_TXT] [varchar](100) NULL,
	[ORG_ID_FACILITY_IDENTIFIER_TXT] [varchar](100) NULL,
	[ORG_ID_QUICK_CODE_TXT] [varchar](7) NULL,
	[ORG_PHONE_COMMENT_TXT] [text] NULL,
	[ORG_PHONE_COUNTRY_CODE_TXT] [varchar](20) NULL,
	[ORG_PHONE_EXTENSION_TXT] [int] NULL,
	[ORG_PHONE_NBR_TXT] [varchar](50) NULL,
	[ORG_ROLE_CD] [varchar](2000) NULL,
	[ORG_URL_ADDRESS_TXT] [varchar](200) NULL,
 CONSTRAINT [PK_SOURCE_ORGANIZATION] PRIMARY KEY CLUSTERED 
(
	[ORG_LOCAL_ID] ASC,
	[MSG_CONTAINER_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSG_PATIENT]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSG_PATIENT](
	[MSG_CONTAINER_UID] [bigint] NOT NULL,
	[PAT_LOCAL_ID] [varchar](100) NOT NULL,
	[PAT_AUTHOR_ID] [varchar](100) NULL,
	[PAT_ADDR_AS_OF_DT] [datetime] NULL,
	[PAT_ADDR_CITY_TXT] [varchar](100) NULL,
	[PAT_ADDR_COMMENT_TXT] [text] NULL,
	[PAT_ADDR_COUNTY_CD] [varchar](100) NULL,
	[PAT_ADDR_COUNTRY_CD] [varchar](100) NULL,
	[PAT_ADDITIONAL_GENDER_TXT] [varchar](100) NULL,
	[PAT_ADDR_CENSUS_TRACT_TXT] [varchar](100) NULL,
	[PAT_ADDR_STATE_CD] [varchar](100) NULL,
	[PAT_ADDR_STREET_ADDR1_TXT] [varchar](100) NULL,
	[PAT_ADDR_STREET_ADDR2_TXT] [varchar](100) NULL,
	[PAT_ADDR_ZIP_CODE_TXT] [varchar](10) NULL,
	[PAT_BIRTH_COUNTRY_CD] [varchar](100) NULL,
	[PAT_BIRTH_DT] [datetime] NULL,
	[PAT_BIRTH_SEX_CD] [varchar](100) NULL,
	[PAT_CELL_PHONE_NBR_TXT] [varchar](50) NULL,
	[PAT_COMMENT_TXT] [text] NULL,
	[PAT_CURRENT_SEX_CD] [varchar](100) NULL,
	[PAT_DECEASED_IND_CD] [varchar](100) NULL,
	[PAT_DECEASED_DT] [datetime] NULL,
	[PAT_EFFECTIVE_TIME] [datetime] NULL,
	[PAT_ID_MEDICAL_RECORD_NBR_TXT] [varchar](100) NULL,
	[PAT_ID_STATE_HIV_CASE_NBR_TXT] [varchar](100) NULL,
	[PAT_INFO_AS_OF_DT] [datetime] NULL,
	[PAT_ID_SSN_TXT] [varchar](11) NULL,
	[PAT_EMAIL_ADDRESS_TXT] [varchar](100) NULL,
	[PAT_ETHNIC_GROUP_IND_CD] [varchar](100) NULL,
	[PAT_ETHNICITY_UNK_REASON_CD] [varchar](100) NULL,
	[PAT_HOME_PHONE_NBR_TXT] [varchar](50) NULL,
	[PAT_MARITAL_STATUS_CD] [varchar](100) NULL,
	[PAT_NAME_ALIAS_TXT] [varchar](100) NULL,
	[PAT_NAME_AS_OF_DT] [datetime] NULL,
	[PAT_NAME_DEGREE_CD] [varchar](100) NULL,
	[PAT_NAME_FIRST_TXT] [varchar](100) NULL,
	[PAT_NAME_LAST_TXT] [varchar](100) NULL,
	[PAT_NAME_MIDDLE_TXT] [varchar](100) NULL,
	[PAT_NAME_PREFIX_CD] [varchar](100) NULL,
	[PAT_NAME_SUFFIX_CD] [varchar](100) NULL,
	[PAT_OCCUPATION_CD] [varchar](100) NULL,
	[PAT_PHONE_COMMENT_TXT] [varchar](100) NULL,
	[PAT_PHONE_COUNTRY_CODE_TXT] [int] NULL,
	[PAT_PRIMARY_LANGUAGE_CD] [varchar](100) NULL,
	[PAT_PREFERRED_GENDER_CD] [varchar](100) NULL,
	[PAT_RACE_CATEGORY_CD] [varchar](100) NULL,
	[PAT_RACE_DESC_TXT] [varchar](100) NULL,
	[PAT_REPORTED_AGE] [int] NULL,
	[PAT_REPORTED_AGE_UNIT_CD] [varchar](100) NULL,
	[PAT_SEX_UNK_REASON_CD] [varchar](100) NULL,
	[PAT_SPEAKS_ENGLISH_IND_CD] [varchar](100) NULL,
	[PAT_PHONE_AS_OF_DT] [datetime] NULL,
	[PAT_URL_ADDRESS_TXT] [varchar](100) NULL,
	[PAT_WORK_PHONE_NBR_TXT] [varchar](50) NULL,
	[PAT_WORK_PHONE_EXTENSION_TXT] [int] NULL,
 CONSTRAINT [PK_MSG_PATIENT] PRIMARY KEY CLUSTERED 
(
	[PAT_LOCAL_ID] ASC,
	[MSG_CONTAINER_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSG_PLACE]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSG_PLACE](
	[MSG_CONTAINER_UID] [bigint] NOT NULL,
	[PLA_LOCAL_ID] [varchar](100) NOT NULL,
	[PLA_AUTHOR_ID] [varchar](100) NULL,
	[PLA_EFFECTIVE_TIME] [datetime] NULL,
	[PLA_ADDR_AS_OF_DT] [datetime] NULL,
	[PLA_ADDR_CITY_TXT] [varchar](100) NULL,
	[PLA_ADDR_COUNTY_CD] [varchar](100) NULL,
	[PLA_ADDR_COUNTRY_CD] [varchar](100) NULL,
	[PLA_ADDR_STATE_CD] [varchar](100) NULL,
	[PLA_ADDR_STREET_ADDR1_TXT] [varchar](100) NULL,
	[PLA_ADDR_STREET_ADDR2_TXT] [varchar](100) NULL,
	[PLA_ADDR_ZIP_CODE_TXT] [varchar](10) NULL,
	[PLA_ADDR_COMMENT_TXT] [text] NULL,
	[PLA_CENSUS_TRACT_TXT] [varchar](100) NULL,
	[PLA_COMMENT_TXT] [text] NULL,
	[PLA_EMAIL_ADDRESS_TXT] [varchar](100) NULL,
	[PLA_ID_QUICK_CODE] [varchar](7) NULL,
	[PLA_NAME_TXT] [varchar](100) NULL,
	[PLA_PHONE_AS_OF_DT] [datetime] NULL,
	[PLA_PHONE_COUNTRY_CODE_TXT] [varchar](20) NULL,
	[PLA_PHONE_EXTENSION_TXT] [varchar](20) NULL,
	[PLA_PHONE_NBR_TXT] [varchar](50) NULL,
	[PLA_PHONE_COMMENT_TXT] [text] NULL,
	[PLA_TYPE_CD] [varchar](100) NULL,
	[PLA_URL_ADDRESS_TXT] [varchar](100) NULL,
 CONSTRAINT [PK_MSG_PLACE] PRIMARY KEY CLUSTERED 
(
	[PLA_LOCAL_ID] ASC,
	[MSG_CONTAINER_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSG_PROVIDER]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSG_PROVIDER](
	[MSG_CONTAINER_UID] [bigint] NOT NULL,
	[PRV_LOCAL_ID] [varchar](100) NOT NULL,
	[PRV_AUTHOR_ID] [varchar](100) NULL,
	[PRV_ADDR_CITY_TXT] [varchar](100) NULL,
	[PRV_ADDR_COMMENT_TXT] [text] NULL,
	[PRV_ADDR_COUNTY_CD] [varchar](100) NULL,
	[PRV_ADDR_COUNTRY_CD] [varchar](100) NULL,
	[PRV_ADDR_STREET_ADDR1_TXT] [varchar](100) NULL,
	[PRV_ADDR_STREET_ADDR2_TXT] [varchar](100) NULL,
	[PRV_ADDR_STATE_CD] [varchar](100) NULL,
	[PRV_ADDR_ZIP_CODE_TXT] [varchar](10) NULL,
	[PRV_COMMENT_TXT] [text] NULL,
	[PRV_ID_ALT_ID_NBR_TXT] [varchar](100) NULL,
	[PRV_ID_QUICK_CODE_TXT] [varchar](100) NULL,
	[PRV_ID_NBR_TXT] [varchar](100) NULL,
	[PRV_ID_NPI_TXT] [varchar](100) NULL,
	[PRV_EFFECTIVE_TIME] [datetime] NULL,
	[PRV_EMAIL_ADDRESS_TXT] [varchar](100) NULL,
	[PRV_NAME_DEGREE_CD] [varchar](100) NULL,
	[PRV_NAME_FIRST_TXT] [varchar](100) NULL,
	[PRV_NAME_LAST_TXT] [varchar](100) NULL,
	[PRV_NAME_MIDDLE_TXT] [varchar](100) NULL,
	[PRV_NAME_PREFIX_CD] [varchar](255) NULL,
	[PRV_NAME_SUFFIX_CD] [varchar](100) NULL,
	[PRV_PHONE_COMMENT_TXT] [text] NULL,
	[PRV_PHONE_COUNTRY_CODE_TXT] [varchar](100) NULL,
	[PRV_PHONE_EXTENSION_TXT] [int] NULL,
	[PRV_PHONE_NBR_TXT] [varchar](50) NULL,
	[PRV_ROLE_CD] [varchar](100) NULL,
	[PRV_URL_ADDRESS_TXT] [varchar](100) NULL,
 CONSTRAINT [PK_MSG_PROVIDER] PRIMARY KEY CLUSTERED 
(
	[PRV_LOCAL_ID] ASC,
	[MSG_CONTAINER_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSG_QUESTION_LOOKUP]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSG_QUESTION_LOOKUP](
	[DOC_TYPE_CD] [varchar](250) NULL,
	[DOC_TYPE_VERSION_TXT] [varchar](250) NULL,
	[QUES_CODE_SYSTEM_CD] [varchar](250) NULL,
	[QUES_CODE_SYSTEM_DESC_TXT] [varchar](250) NULL,
	[DATA_TYPE] [varchar](250) NULL,
	[QUESTION_IDENTIFIER] [varchar](250) NULL,
	[QUESTION_DISPLAY_NAME] [varchar](250) NULL,
	[SECTION_NM] [varchar](250) NULL,
	[SENDING_SYSTEM_CD] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSG_TREATMENT]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSG_TREATMENT](
	[MSG_CONTAINER_UID] [bigint] NOT NULL,
	[TRT_LOCAL_ID] [varchar](100) NOT NULL,
	[TRT_AUTHOR_ID] [varchar](100) NULL,
	[TRT_COMPOSITE_CD] [varchar](255) NULL,
	[TRT_COMMENT_TXT] [text] NULL,
	[TRT_CUSTOM_TREATMENT_TXT] [varchar](255) NULL,
	[TRT_DOSAGE_AMT] [int] NULL,
	[TRT_DOSAGE_UNIT_CD] [varchar](100) NULL,
	[TRT_DRUG_CD] [varchar](100) NULL,
	[TRT_DURATION_AMT] [int] NULL,
	[TRT_DURATION_UNIT_CD] [varchar](100) NULL,
	[TRT_EFFECTIVE_TIME] [datetime] NULL,
	[TRT_FREQUENCY_AMT_CD] [varchar](100) NULL,
	[TRT_ROUTE_CD] [varchar](100) NULL,
	[TRT_TREATMENT_DT] [datetime] NULL,
 CONSTRAINT [PK_MSG_TREATMENT] PRIMARY KEY CLUSTERED 
(
	[TRT_LOCAL_ID] ASC,
	[MSG_CONTAINER_UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MSG_XML_MAPPING]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MSG_XML_MAPPING](
	[COLUMN_NM] [varchar](50) NULL,
	[DOC_TYPE_CD] [varchar](50) NULL,
	[QUES_CODE_SYSTEM_CD] [varchar](250) NULL,
	[QUES_CODE_SYSTEM_DESC_TXT] [varchar](250) NULL,
	[QUESTION_DATA_TYPE] [varchar](10) NULL,
	[QUES_DISPLAY_TXT] [varchar](250) NULL,
	[QUESTION_IDENTIFIER] [varchar](50) NULL,
	[PART_TYPE_CD] [varchar](50) NULL,
	[REPEAT_GROUP_SEQ_NBR] [int] NULL,
	[TRANSLATION_TABLE_NM] [varchar](30) NULL,
	[XML_PATH] [varchar](2000) NULL,
	[XML_TAG] [varchar](300) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MsgOut_activity_log]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MsgOut_activity_log](
	[activity_log_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[doc_type] [varchar](50) NULL,
	[doc_nm] [varchar](250) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[message_status] [varchar](20) NULL,
	[message_txt] [text] NULL,
	[action_txt] [varchar](50) NULL,
	[add_user_id] [bigint] NOT NULL,
	[add_time] [datetime] NULL,
	[start_time] [datetime] NULL,
	[end_time] [datetime] NULL,
 CONSTRAINT [PK_MsgOut_activity_log] PRIMARY KEY CLUSTERED 
(
	[activity_log_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MsgOut_activity_log_detail]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MsgOut_activity_log_detail](
	[msgout_activity_detail_log_uid] [bigint] IDENTITY(1,1) NOT NULL,
	[msgout_activity_log_uid] [bigint] NOT NULL,
	[record_id] [varchar](256) NULL,
	[record_type] [varchar](50) NULL,
	[record_nm] [varchar](250) NULL,
	[log_type] [varchar](50) NULL,
	[log_comment] [varchar](2000) NULL,
	[start_time] [datetime] NULL,
	[end_time] [datetime] NULL,
 CONSTRAINT [PK_MsgOut_activity_log_detail] PRIMARY KEY CLUSTERED 
(
	[msgout_activity_detail_log_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MsgOut_Error_log]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MsgOut_Error_log](
	[message_uid] [bigint] NOT NULL,
	[error_message_txt] [varchar](300) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[status_cd] [varchar](50) NULL,
	[status_time] [datetime] NULL,
	[NOTIFICATION_LOCAL_UID] [varchar](50) NULL,
	[PROCESSED_LOG] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[message_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MsgOut_Local_UID_generator]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MsgOut_Local_UID_generator](
	[class_name_cd] [varchar](20) NOT NULL,
	[type_cd] [varchar](10) NULL,
	[UID_prefix_cd] [varchar](10) NULL,
	[UID_suffix_cd] [varchar](10) NULL,
	[seed_value_nbr] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[class_name_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MsgOut_Message]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MsgOut_Message](
	[message_uid] [bigint] NOT NULL,
	[attachment_txt] [text] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[interaction_id] [varchar](20) NOT NULL,
	[msg_id_assign_auth_cd] [varchar](20) NULL,
	[msg_id_assign_auth_desc_txt] [varchar](100) NULL,
	[msg_id_root_txt] [varchar](100) NULL,
	[msg_id_type_cd] [varchar](20) NOT NULL,
	[msg_id_type_desc_txt] [varchar](100) NULL,
	[sending_facility_entity_uid] [bigint] NULL,
	[status_cd] [varchar](50) NULL,
	[status_time] [datetime] NULL,
	[processing_cd] [varchar](20) NULL,
	[processing_desc_txt] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[version_id] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[message_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MsgOut_Receiving_facility]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MsgOut_Receiving_facility](
	[receiving_facility_entity_uid] [bigint] NOT NULL,
	[nm_use_cd] [varchar](10) NULL,
	[assigning_authority_cd] [varchar](20) NOT NULL,
	[assigning_authority_desc_txt] [varchar](100) NOT NULL,
	[receiving_facility_nm] [varchar](100) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[root_extension_txt] [varchar](100) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[type_cd] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[receiving_facility_entity_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MsgOut_Receiving_Message]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MsgOut_Receiving_Message](
	[receiving_facility_entity_uid] [bigint] NOT NULL,
	[message_uid] [bigint] NOT NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[message_uid] ASC,
	[receiving_facility_entity_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MsgOut_Sending_facility]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MsgOut_Sending_facility](
	[sending_facility_entity_uid] [bigint] NOT NULL,
	[assigning_authority_cd] [varchar](20) NOT NULL,
	[assigning_authority_desc_txt] [varchar](100) NOT NULL,
	[nm_use_cd] [varchar](20) NULL,
	[record_status_cd] [varchar](20) NULL,
	[record_status_time] [datetime] NULL,
	[root_extension_txt] [varchar](100) NULL,
	[sending_facility_nm] [varchar](100) NULL,
	[status_cd] [char](1) NULL,
	[status_time] [datetime] NULL,
	[type_cd] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[sending_facility_entity_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NBS_interface]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NBS_interface](
	[nbs_interface_uid] [bigint] IDENTITY(10000001,1) NOT NULL,
	[payload] [text] NULL,
	[imp_exp_ind_cd] [char](1) NOT NULL,
	[record_status_cd] [varchar](100) NOT NULL,
	[record_status_time] [datetime] NOT NULL,
	[add_time] [datetime] NOT NULL,
	[system_nm] [varchar](50) NOT NULL,
	[doc_type_cd] [varchar](20) NULL,
	[original_payload] [text] NULL,
	[original_doc_type_cd] [varchar](100) NULL,
	[filler_order_nbr] [varchar](250) NULL,
	[lab_clia] [varchar](250) NULL,
	[specimen_coll_date] [datetime] NULL,
	[order_test_code] [varchar](250) NULL,
	[OBSERVATION_UID] [bigint] NULL,
	[original_payload_RR] [text] NULL,
	[original_doc_type_cd_RR] [varchar](100) NULL,
 CONSTRAINT [PK_NBS_Interface] PRIMARY KEY CLUSTERED 
(
	[nbs_interface_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NETSS_TransportQ_out]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NETSS_TransportQ_out](
	[NETSS_TransportQ_out_uid] [bigint] IDENTITY(1000,1) NOT NULL,
	[record_type_cd] [varchar](200) NOT NULL,
	[mmwr_year] [smallint] NOT NULL,
	[mmwr_week] [smallint] NOT NULL,
	[netss_case_id] [varchar](50) NOT NULL,
	[phc_local_id] [varchar](50) NOT NULL,
	[notification_local_id] [varchar](50) NOT NULL,
	[add_time] [datetime] NULL,
	[payload] [varchar](250) NOT NULL,
	[record_status_cd] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PSF_CLIENT]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSF_CLIENT](
	[psfClientUid] [bigint] IDENTITY(1,1) NOT NULL,
	[localClientId] [varchar](32) NOT NULL,
	[clientIdSTDMIS] [varchar](50) NULL,
	[clientIdPSID] [varchar](100) NULL,
	[clientIdLocalId] [varchar](50) NULL,
	[clientFirstName] [varchar](50) NULL,
	[clientLastName] [varchar](50) NULL,
	[clientDOB] [datetime] NULL,
	[birthYear] [varchar](4) NULL,
	[ethnicity] [varchar](2) NULL,
	[raceValueCode1] [varchar](2) NULL,
	[raceValueCode2] [varchar](2) NULL,
	[raceValueCode3] [varchar](2) NULL,
	[raceValueCode4] [varchar](2) NULL,
	[raceValueCode5] [varchar](2) NULL,
	[birthGenderValueCode] [varchar](2) NULL,
	[currentGenderValueCode] [varchar](2) NULL,
	[eHarsStateNumber] [varchar](32) NULL,
	[lastModifiedDate] [datetime] NULL,
	[patientLastChgTime] [datetime] NULL,
	[patientAddTime] [datetime] NULL,
	[patientStatusCd] [varchar](20) NULL,
	[clientUid] [varchar](20) NULL,
 CONSTRAINT [PK_PSF_CLIENT] PRIMARY KEY CLUSTERED 
(
	[psfClientUid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PSF_INDEX]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSF_INDEX](
	[psfIndexUid] [bigint] IDENTITY(1,1) NOT NULL,
	[agencyId] [varchar](32) NOT NULL,
	[localClientId] [varchar](32) NOT NULL,
	[clientIdSTDMIS] [varchar](50) NULL,
	[clientIdPSID] [varchar](100) NULL,
	[clientIdLocalId] [varchar](50) NULL,
	[clientFirstName] [varchar](50) NULL,
	[clientLastName] [varchar](50) NULL,
	[clientDOB] [datetime] NULL,
	[caseNumberPS] [varchar](32) NOT NULL,
	[caseNumberEarliestPS] [varchar](50) NULL,
	[caseNumberSTDMIS] [varchar](250) NULL,
	[caseNumberLegacyId] [varchar](100) NULL,
	[caseNumberLocalId] [varchar](50) NULL,
	[indexDateDemographicsCollected] [datetime] NULL,
	[attemptToLocateOutcome] [varchar](1) NULL,
	[reasonForUnsuccessfulAttempt] [varchar](2) NULL,
	[enrollmentStatus] [varchar](2) NULL,
	[totalNumberOfPartnersClaimed] [varchar](5) NULL,
	[totalNumberOfNamedPartners] [varchar](3) NULL,
	[caseOpenDate] [datetime] NULL,
	[caseCloseDate] [datetime] NULL,
	[clientHIVStatus] [varchar](2) NULL,
	[careStatusAtCaseClose] [varchar](2) NULL,
	[patientAddTime] [datetime] NULL,
	[patientLastChgTime] [datetime] NULL,
	[patientStatusCd] [varchar](20) NULL,
	[invAddTime] [datetime] NULL,
	[invLastChgTime] [datetime] NULL,
	[invStatusCd] [varchar](20) NULL,
	[indexLastChgDt] [datetime] NULL,
 CONSTRAINT [PK_PSF_INDEX] PRIMARY KEY CLUSTERED 
(
	[psfIndexUid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PSF_PARTNER]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSF_PARTNER](
	[psfPartnerUid] [bigint] IDENTITY(1,1) NOT NULL,
	[agencyId] [varchar](32) NOT NULL,
	[localClientId] [varchar](32) NOT NULL,
	[clientIdSTDMIS] [varchar](50) NULL,
	[clientIdPSID] [varchar](100) NULL,
	[clientIdLocalId] [varchar](50) NULL,
	[clientFirstName] [varchar](50) NULL,
	[clientLastName] [varchar](50) NULL,
	[clientDOB] [datetime] NULL,
	[caseNumberPS] [varchar](32) NOT NULL,
	[caseNumberEarliestPS] [varchar](50) NULL,
	[caseNumberSTDMIS] [varchar](250) NULL,
	[caseNumberLegacyId] [varchar](100) NULL,
	[caseNumberLocalId] [varchar](50) NULL,
	[partnerDateDemographicsCollected] [datetime] NULL,
	[partnerType] [varchar](2) NULL,
	[attemptToLocateOutcome] [varchar](1) NULL,
	[reasonForUnsuccessfulAttempt] [varchar](2) NULL,
	[enrollmentStatus] [varchar](2) NULL,
	[partnerNotifiability] [varchar](2) NULL,
	[actualNotificationMethod] [varchar](2) NULL,
	[previousHivTestValueCode] [varchar](2) NULL,
	[previousHIVTestResult] [varchar](2) NULL,
	[HIVTestPerformed] [varchar](1) NULL,
	[sampleDate] [datetime] NULL,
	[HIVTestResult] [varchar](2) NULL,
	[provisionOfResultValueCode] [varchar](1) NULL,
	[syphilisTest] [varchar](2) NULL,
	[syphilisTestResult] [varchar](1) NULL,
	[currentHIVMedicalCareStatus] [varchar](2) NULL,
	[firstMedicalCareAppointmentDate] [datetime] NULL,
	[currentlyOnPrEP] [varchar](1) NULL,
	[referredToPrEP] [varchar](2) NULL,
	[patientAddTime] [datetime] NULL,
	[patientLastChgTime] [datetime] NULL,
	[patientStatusCd] [varchar](20) NULL,
	[invAddTime] [datetime] NULL,
	[invLastChgTime] [datetime] NULL,
	[invStatusCd] [varchar](20) NULL,
	[invLocalId] [varchar](50) NULL,
	[crAddTime] [datetime] NULL,
	[crLastChgTime] [datetime] NULL,
	[crStatusCd] [varchar](20) NULL,
	[crLocalId] [varchar](50) NULL,
	[partnerLastChgDt] [datetime] NULL,
 CONSTRAINT [PK_PSF_PARTNER] PRIMARY KEY CLUSTERED 
(
	[psfPartnerUid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PSF_RISK]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSF_RISK](
	[psfRiskUid] [bigint] IDENTITY(1,1) NOT NULL,
	[localClientId] [varchar](32) NOT NULL,
	[clientIdSTDMIS] [varchar](50) NULL,
	[clientIdPSID] [varchar](100) NULL,
	[clientIdLocalId] [varchar](50) NULL,
	[clientFirstName] [varchar](50) NULL,
	[clientLastName] [varchar](50) NULL,
	[clientDOB] [datetime] NULL,
	[invLocalId] [varchar](50) NULL,
	[dateCollectedForRiskProfile] [datetime] NULL,
	[withMale] [varchar](2) NULL,
	[withFemale] [varchar](2) NULL,
	[withTransgender] [varchar](2) NULL,
	[vaginalOrAnalSexWithoutCondomP] [varchar](2) NULL,
	[injectionDrugUse] [varchar](2) NULL,
	[invAddTime] [datetime] NULL,
	[invLastChgTime] [datetime] NULL,
	[invStatusCd] [varchar](20) NULL,
	[irLocalId] [varchar](50) NULL,
 CONSTRAINT [PK_PSF_RISK] PRIMARY KEY CLUSTERED 
(
	[psfRiskUid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PSF_SESSION]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PSF_SESSION](
	[psfSessionUid] [bigint] IDENTITY(1,1) NOT NULL,
	[localClientId] [varchar](32) NOT NULL,
	[clientIdSTDMIS] [varchar](50) NULL,
	[clientIdPSID] [varchar](100) NULL,
	[clientIdLocalId] [varchar](50) NULL,
	[clientFirstName] [varchar](50) NULL,
	[clientLastName] [varchar](50) NULL,
	[clientDOB] [datetime] NULL,
	[caseNumberPS] [varchar](32) NOT NULL,
	[caseNumberSTDMIS] [varchar](250) NULL,
	[caseNumberLegacyId] [varchar](100) NULL,
	[caseNumberLocalId] [varchar](50) NULL,
	[sessionDate] [datetime] NULL,
	[siteId] [varchar](32) NOT NULL,
	[siteTypeValueCode] [varchar](32) NULL,
	[careStatusAtInterview] [varchar](2) NULL,
	[irLocalId] [varchar](50) NULL,
	[irStatusCd] [varchar](20) NULL,
	[irAddTime] [datetime] NULL,
	[irLastChgTime] [datetime] NULL,
	[invLocalId] [varchar](50) NULL,
 CONSTRAINT [PK_PSF_SESSION] PRIMARY KEY CLUSTERED 
(
	[psfSessionUid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TransportQ_out]    Script Date: 6/1/2023 8:12:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TransportQ_out](
	[recordId] [bigint] IDENTITY(1,1) NOT NULL,
	[messageId] [varchar](255) NULL,
	[payloadFile] [varchar](255) NULL,
	[payloadContent] [image] NULL,
	[destinationFilename] [varchar](255) NULL,
	[routeInfo] [varchar](255) NOT NULL,
	[service] [varchar](255) NOT NULL,
	[action] [varchar](255) NOT NULL,
	[arguments] [varchar](255) NULL,
	[messageRecipient] [varchar](255) NULL,
	[messageCreationTime] [varchar](255) NULL,
	[encryption] [char](10) NOT NULL,
	[signature] [char](10) NOT NULL,
	[publicKeyLdapAddress] [varchar](255) NULL,
	[publicKeyLdapBaseDN] [varchar](255) NULL,
	[publicKeyLdapDN] [varchar](255) NULL,
	[certificateURL] [varchar](255) NULL,
	[processingStatus] [varchar](255) NULL,
	[transportStatus] [varchar](255) NULL,
	[transportErrorCode] [varchar](255) NULL,
	[applicationStatus] [varchar](255) NULL,
	[applicationErrorCode] [varchar](255) NULL,
	[applicationResponse] [varchar](255) NULL,
	[messageSentTime] [varchar](255) NULL,
	[messageReceivedTime] [varchar](255) NULL,
	[responseMessageId] [varchar](255) NULL,
	[responseArguments] [varchar](255) NULL,
	[responseLocalFile] [varchar](255) NULL,
	[responseFilename] [varchar](255) NULL,
	[responseContent] [image] NULL,
	[responseMessageOrigin] [varchar](255) NULL,
	[responseMessageSignature] [varchar](255) NULL,
	[priority] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[recordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[MsgOut_Error_log] ADD  CONSTRAINT [DF__MsgOut_Er__statu__76CBA758]  DEFAULT ('A') FOR [status_cd]
GO
ALTER TABLE [dbo].[MsgOut_Error_log] ADD  DEFAULT (getdate()) FOR [status_time]
GO
ALTER TABLE [dbo].[MsgOut_Message] ADD  DEFAULT ('NBS') FOR [msg_id_assign_auth_cd]
GO
ALTER TABLE [dbo].[MsgOut_Message] ADD  DEFAULT ('NEDSS Base System') FOR [msg_id_assign_auth_desc_txt]
GO
ALTER TABLE [dbo].[MsgOut_Message] ADD  DEFAULT ('LID') FOR [msg_id_type_cd]
GO
ALTER TABLE [dbo].[MsgOut_Message] ADD  DEFAULT ('Local NBS Identifier') FOR [msg_id_type_desc_txt]
GO
ALTER TABLE [dbo].[MsgOut_Message] ADD  CONSTRAINT [DF__MsgOut_Me__statu__00551192]  DEFAULT ('RDY_FOR_TRNSFRM') FOR [status_cd]
GO
ALTER TABLE [dbo].[MsgOut_Message] ADD  DEFAULT (getdate()) FOR [status_time]
GO
ALTER TABLE [dbo].[MsgOut_Message] ADD  DEFAULT ('T') FOR [processing_cd]
GO
ALTER TABLE [dbo].[MsgOut_Message] ADD  DEFAULT ('Training') FOR [processing_desc_txt]
GO
ALTER TABLE [dbo].[MsgOut_Message] ADD  DEFAULT (getdate()) FOR [record_status_time]
GO
ALTER TABLE [dbo].[MsgOut_Receiving_facility] ADD  DEFAULT ('L') FOR [nm_use_cd]
GO
ALTER TABLE [dbo].[MsgOut_Receiving_facility] ADD  DEFAULT ('NBS') FOR [assigning_authority_cd]
GO
ALTER TABLE [dbo].[MsgOut_Receiving_facility] ADD  DEFAULT ('NEDSS Base System') FOR [assigning_authority_desc_txt]
GO
ALTER TABLE [dbo].[MsgOut_Receiving_facility] ADD  DEFAULT ('ACTIVE') FOR [record_status_cd]
GO
ALTER TABLE [dbo].[MsgOut_Receiving_facility] ADD  DEFAULT (getdate()) FOR [record_status_time]
GO
ALTER TABLE [dbo].[MsgOut_Receiving_facility] ADD  DEFAULT ('A') FOR [status_cd]
GO
ALTER TABLE [dbo].[MsgOut_Receiving_facility] ADD  DEFAULT (getdate()) FOR [status_time]
GO
ALTER TABLE [dbo].[MsgOut_Receiving_facility] ADD  DEFAULT ('FI') FOR [type_cd]
GO
ALTER TABLE [dbo].[MsgOut_Receiving_Message] ADD  DEFAULT ('A') FOR [status_cd]
GO
ALTER TABLE [dbo].[MsgOut_Receiving_Message] ADD  DEFAULT (getdate()) FOR [status_time]
GO
ALTER TABLE [dbo].[MsgOut_Sending_facility] ADD  DEFAULT ('NBS') FOR [assigning_authority_cd]
GO
ALTER TABLE [dbo].[MsgOut_Sending_facility] ADD  DEFAULT ('NEDSS Base System') FOR [assigning_authority_desc_txt]
GO
ALTER TABLE [dbo].[MsgOut_Sending_facility] ADD  DEFAULT ('L') FOR [nm_use_cd]
GO
ALTER TABLE [dbo].[MsgOut_Sending_facility] ADD  DEFAULT ('ACTIVE') FOR [record_status_cd]
GO
ALTER TABLE [dbo].[MsgOut_Sending_facility] ADD  DEFAULT (getdate()) FOR [record_status_time]
GO
ALTER TABLE [dbo].[MsgOut_Sending_facility] ADD  DEFAULT ('A') FOR [status_cd]
GO
ALTER TABLE [dbo].[MsgOut_Sending_facility] ADD  DEFAULT (getdate()) FOR [status_time]
GO
ALTER TABLE [dbo].[MsgOut_Sending_facility] ADD  DEFAULT ('FI') FOR [type_cd]
GO
ALTER TABLE [dbo].[NETSS_TransportQ_out] ADD  DEFAULT (getdate()) FOR [add_time]
GO
ALTER TABLE [dbo].[MSG_ANSWER]  WITH CHECK ADD  CONSTRAINT [FK_Msg_Answer_Msg_Container] FOREIGN KEY([MSG_CONTAINER_UID])
REFERENCES [dbo].[MSG_CONTAINER] ([MSG_CONTAINER_UID])
GO
ALTER TABLE [dbo].[MSG_ANSWER] CHECK CONSTRAINT [FK_Msg_Answer_Msg_Container]
GO
ALTER TABLE [dbo].[MSG_CASE_INVESTIGATION]  WITH CHECK ADD  CONSTRAINT [FK_MSG_CASE_Msg_Container] FOREIGN KEY([MSG_CONTAINER_UID])
REFERENCES [dbo].[MSG_CONTAINER] ([MSG_CONTAINER_UID])
GO
ALTER TABLE [dbo].[MSG_CASE_INVESTIGATION] CHECK CONSTRAINT [FK_MSG_CASE_Msg_Container]
GO
ALTER TABLE [dbo].[MSG_INTERVIEW]  WITH CHECK ADD  CONSTRAINT [FK_MSG_INTERVIEW_Msg_Container] FOREIGN KEY([MSG_CONTAINER_UID])
REFERENCES [dbo].[MSG_CONTAINER] ([MSG_CONTAINER_UID])
GO
ALTER TABLE [dbo].[MSG_INTERVIEW] CHECK CONSTRAINT [FK_MSG_INTERVIEW_Msg_Container]
GO
ALTER TABLE [dbo].[MSG_ORGANIZATION]  WITH CHECK ADD  CONSTRAINT [FK_MSG_ORGANIZATION_Msg_Container] FOREIGN KEY([MSG_CONTAINER_UID])
REFERENCES [dbo].[MSG_CONTAINER] ([MSG_CONTAINER_UID])
GO
ALTER TABLE [dbo].[MSG_ORGANIZATION] CHECK CONSTRAINT [FK_MSG_ORGANIZATION_Msg_Container]
GO
ALTER TABLE [dbo].[MSG_PATIENT]  WITH CHECK ADD  CONSTRAINT [FK_MSG_PATIENT_Msg_Container] FOREIGN KEY([MSG_CONTAINER_UID])
REFERENCES [dbo].[MSG_CONTAINER] ([MSG_CONTAINER_UID])
GO
ALTER TABLE [dbo].[MSG_PATIENT] CHECK CONSTRAINT [FK_MSG_PATIENT_Msg_Container]
GO
ALTER TABLE [dbo].[MSG_PLACE]  WITH CHECK ADD  CONSTRAINT [FK_MSG_PLACE_Msg_Container] FOREIGN KEY([MSG_CONTAINER_UID])
REFERENCES [dbo].[MSG_CONTAINER] ([MSG_CONTAINER_UID])
GO
ALTER TABLE [dbo].[MSG_PLACE] CHECK CONSTRAINT [FK_MSG_PLACE_Msg_Container]
GO
ALTER TABLE [dbo].[MSG_PROVIDER]  WITH CHECK ADD  CONSTRAINT [FK_MSG_PROVIDER_Msg_Container] FOREIGN KEY([MSG_CONTAINER_UID])
REFERENCES [dbo].[MSG_CONTAINER] ([MSG_CONTAINER_UID])
GO
ALTER TABLE [dbo].[MSG_PROVIDER] CHECK CONSTRAINT [FK_MSG_PROVIDER_Msg_Container]
GO
ALTER TABLE [dbo].[MSG_TREATMENT]  WITH CHECK ADD  CONSTRAINT [FK_MSG_TREATMENT_Msg_Container] FOREIGN KEY([MSG_CONTAINER_UID])
REFERENCES [dbo].[MSG_CONTAINER] ([MSG_CONTAINER_UID])
GO
ALTER TABLE [dbo].[MSG_TREATMENT] CHECK CONSTRAINT [FK_MSG_TREATMENT_Msg_Container]
GO
ALTER TABLE [dbo].[MsgOut_activity_log_detail]  WITH CHECK ADD  CONSTRAINT [FK_MsgOut_activity_log_detail_4021] FOREIGN KEY([msgout_activity_log_uid])
REFERENCES [dbo].[MsgOut_activity_log] ([activity_log_uid])
GO
ALTER TABLE [dbo].[MsgOut_activity_log_detail] CHECK CONSTRAINT [FK_MsgOut_activity_log_detail_4021]
GO
ALTER TABLE [dbo].[MsgOut_Error_log]  WITH CHECK ADD FOREIGN KEY([message_uid])
REFERENCES [dbo].[MsgOut_Message] ([message_uid])
GO
ALTER TABLE [dbo].[MsgOut_Message]  WITH CHECK ADD FOREIGN KEY([sending_facility_entity_uid])
REFERENCES [dbo].[MsgOut_Sending_facility] ([sending_facility_entity_uid])
GO
ALTER TABLE [dbo].[MsgOut_Receiving_Message]  WITH CHECK ADD FOREIGN KEY([message_uid])
REFERENCES [dbo].[MsgOut_Message] ([message_uid])
GO
ALTER TABLE [dbo].[MsgOut_Receiving_Message]  WITH CHECK ADD FOREIGN KEY([receiving_facility_entity_uid])
REFERENCES [dbo].[MsgOut_Receiving_facility] ([receiving_facility_entity_uid])
GO

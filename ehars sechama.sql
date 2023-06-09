USE [master]
GO
/****** Object:  Database [EHARS]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE DATABASE [EHARS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ehars_Data', FILENAME = N'D:\EHARS\MSSQL\DATA\eHARS_EUAT_413.mdf' , SIZE = 46080KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%), 
 FILEGROUP [DATA]  DEFAULT
( NAME = N'ehars_data1', FILENAME = N'D:\EHARS\MSSQL\DATA\eHARS_EUAT_413_1.ndf' , SIZE = 982272KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10240KB ), 
 FILEGROUP [DATAFLUX_DATA] 
( NAME = N'ehars_dataflux_data1', FILENAME = N'D:\EHARS\MSSQL\DATA\eHARS_EUAT_413_3.ndf' , SIZE = 51200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10240KB ), 
 FILEGROUP [HARS_DATA] 
( NAME = N'ehars_hars_data1', FILENAME = N'D:\EHARS\MSSQL\DATA\eHARS_EUAT_413_4.ndf' , SIZE = 51200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10240KB ), 
 FILEGROUP [INDEX] 
( NAME = N'ehars_index1', FILENAME = N'D:\EHARS\MSSQL\DATA\eHARS_EUAT_413_5.ndf' , SIZE = 1171072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10240KB ), 
 FILEGROUP [META_DATA] 
( NAME = N'ehars_meta_data1', FILENAME = N'D:\EHARS\MSSQL\DATA\eHARS_EUAT_413_2.ndf' , SIZE = 174144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ehars_log', FILENAME = N'D:\EHARS\MSSQL\LOG\eHARS_EUAT_413_6.ldf' , SIZE = 2440KB , MAXSIZE = 2048GB , FILEGROWTH = 1024KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EHARS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EHARS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EHARS] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [EHARS] SET ANSI_NULLS ON 
GO
ALTER DATABASE [EHARS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EHARS] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [EHARS] SET ARITHABORT OFF 
GO
ALTER DATABASE [EHARS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EHARS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EHARS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EHARS] SET CURSOR_CLOSE_ON_COMMIT ON 
GO
ALTER DATABASE [EHARS] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [EHARS] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [EHARS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EHARS] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [EHARS] SET RECURSIVE_TRIGGERS ON 
GO
ALTER DATABASE [EHARS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EHARS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EHARS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EHARS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EHARS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EHARS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EHARS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EHARS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EHARS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EHARS] SET  MULTI_USER 
GO
ALTER DATABASE [EHARS] SET PAGE_VERIFY TORN_PAGE_DETECTION  
GO
ALTER DATABASE [EHARS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EHARS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EHARS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EHARS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EHARS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EHARS] SET QUERY_STORE = OFF
GO
USE [EHARS]
GO
/****** Object:  User [sas_app]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [sas_app] FOR LOGIN [sas_app] WITH DEFAULT_SCHEMA=[sas_app]
GO
/****** Object:  User [Matti Tokunboh]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [Matti Tokunboh] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ehars_app]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [ehars_app] FOR LOGIN [ehars_app] WITH DEFAULT_SCHEMA=[ehars_app]
GO
/****** Object:  User [df_app]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [df_app] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[df_app]
GO
/****** Object:  User [cv_app]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [cv_app] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[cv_app]
GO
/****** Object:  User [cdc\zsa9]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [cdc\zsa9] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\Yzg9]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\Yzg9] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\yle5]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\yle5] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\xax7]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\xax7] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\vhc6]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\vhc6] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\udw2]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\udw2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\ucd4]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\ucd4] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\Svc_ehars_app]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\Svc_ehars_app] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\snb9]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\snb9] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\sbr9]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\sbr9] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\QVP2-SU]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\QVP2-SU] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\ooz2]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\ooz2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\kyu7]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\kyu7] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\ils1]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\ils1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [cdc\ikh5]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [cdc\ikh5] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\idc5]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\idc5] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\hyv0]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\hyv0] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\HTG4-SU]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\HTG4-SU] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\htg4]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\htg4] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [cdc\gyk0]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [cdc\gyk0] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\GSS8-SU]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\GSS8-SU] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\gmw5]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\gmw5] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\fre9]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\fre9] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\fkv6]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\fkv6] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\epv9]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\epv9] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [cdc\cwi1]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [cdc\cwi1] WITH DEFAULT_SCHEMA=[cdc\cwi1]
GO
/****** Object:  User [CDC\bli0]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\bli0] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [CDC\bav6]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\bav6] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [cdc\aqe9]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [cdc\aqe9] WITH DEFAULT_SCHEMA=[cdc\aqe9]
GO
/****** Object:  User [CDC\aje0]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE USER [CDC\aje0] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [QA]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE ROLE [QA]
GO
/****** Object:  DatabaseRole [APPREAD]    Script Date: 6/1/2023 1:05:09 PM ******/
CREATE ROLE [APPREAD]
GO
ALTER ROLE [db_datareader] ADD MEMBER [sas_app]
GO
ALTER ROLE [QA] ADD MEMBER [Matti Tokunboh]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ehars_app]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ehars_app]
GO
ALTER ROLE [db_datareader] ADD MEMBER [df_app]
GO
ALTER ROLE [db_datareader] ADD MEMBER [cv_app]
GO
ALTER ROLE [db_datareader] ADD MEMBER [cdc\zsa9]
GO
ALTER ROLE [db_owner] ADD MEMBER [CDC\Yzg9]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\yle5]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\xax7]
GO
ALTER ROLE [QA] ADD MEMBER [CDC\vhc6]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\udw2]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\ucd4]
GO
ALTER ROLE [db_owner] ADD MEMBER [CDC\Svc_ehars_app]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\Svc_ehars_app]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [CDC\Svc_ehars_app]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\snb9]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\sbr9]
GO
ALTER ROLE [db_owner] ADD MEMBER [CDC\QVP2-SU]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\ooz2]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\kyu7]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\ils1]
GO
ALTER ROLE [QA] ADD MEMBER [cdc\ikh5]
GO
ALTER ROLE [db_datareader] ADD MEMBER [cdc\ikh5]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\idc5]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [CDC\idc5]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\hyv0]
GO
ALTER ROLE [db_owner] ADD MEMBER [CDC\HTG4-SU]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [CDC\HTG4-SU]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [CDC\HTG4-SU]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\HTG4-SU]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [CDC\HTG4-SU]
GO
ALTER ROLE [QA] ADD MEMBER [CDC\htg4]
GO
ALTER ROLE [db_owner] ADD MEMBER [CDC\htg4]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [CDC\htg4]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\htg4]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [CDC\htg4]
GO
ALTER ROLE [QA] ADD MEMBER [cdc\gyk0]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [CDC\GSS8-SU]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\GSS8-SU]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [CDC\GSS8-SU]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\gmw5]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [CDC\gmw5]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\fre9]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\fkv6]
GO
ALTER ROLE [QA] ADD MEMBER [CDC\epv9]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\epv9]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [CDC\epv9]
GO
ALTER ROLE [QA] ADD MEMBER [cdc\cwi1]
GO
ALTER ROLE [db_owner] ADD MEMBER [CDC\bli0]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\bli0]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\bav6]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [CDC\bav6]
GO
ALTER ROLE [db_datareader] ADD MEMBER [cdc\aqe9]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [cdc\aqe9]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDC\aje0]
GO
/****** Object:  Schema [cdc\aqe9]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE SCHEMA [cdc\aqe9]
GO
/****** Object:  Schema [cdc\cwi1]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE SCHEMA [cdc\cwi1]
GO
/****** Object:  Schema [cv_app]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE SCHEMA [cv_app]
GO
/****** Object:  Schema [df_app]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE SCHEMA [df_app]
GO
/****** Object:  Schema [ehars_app]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE SCHEMA [ehars_app]
GO
/****** Object:  Schema [sas_app]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE SCHEMA [sas_app]
GO
/****** Object:  UserDefinedFunction [dbo].[udf_get_death_icd_string]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

create function [dbo].[udf_get_death_icd_string] (@docid char(16), @type_delimiter varchar(10), @code_delimiter varchar(10))
RETURNS varchar(8000)
as
begin
	declare @icd varchar(2000)
			, @icd_code varchar(20)
			, @iCnt int
			, @icdCount int
			, @lineno varchar(2)
			, @icd_string varchar(4000);

	select @icdCount = Count(*) 
	from DEATH_DX
	where document_uid = @docid;

	SET @iCnt = 1;
	SET @icd = '';
	SET @icd_code = '';
	SET @icd_string = '';
	SET @lineno = '';

	WHILE (@iCnt <= @icdCount)
	begin

		--select top 1 
		--@icd_code = icd_cd
		--, @lineno = line_number
		--, @icd    = rtrim(lit.lookup_name) + @type_delimiter + rtrim(icd_cd) + @type_delimiter + lic.lookup_name 
		--from death_dx dd
		--join lookup_code lit on lit.lookup_cd = dd.icd_cd_type and lit.lookup_type = 'ICD_CODE_TYPE'
		--join lookup_code lic on lic.lookup_cd = dd.icd_cd and lic.lookup_type = lit.lookup_name
		--where document_uid = @docid
		--and icd_cd > @icd_code
		--order by icd_cd

		select top 1 
		@icd_code = icd_cd
		, @lineno = line_number
		, @icd    = rtrim(lit.lookup_name) + @type_delimiter + rtrim(icd_cd) + @type_delimiter + lic.lookup_name 
		from death_dx dd
		join lookup_code lit on lit.lookup_cd = dd.icd_cd_type and lit.lookup_type = 'ICD_CODE_TYPE'
		join lookup_code lic on lic.lookup_cd = dd.icd_cd and lic.lookup_type = lit.lookup_name
		where document_uid = @docid
		and line_number > @lineno
		order by line_number

		if @@rowcount = 0 break;

		if @icd > '' 
		begin
			set @icd = rtrim(@lineno) + @type_delimiter + @icd
			set @icd_string = @icd_string + rtrim(@icd) + @code_delimiter;
		end

		set @iCnt = @iCnt + 1;
	end

	return @icd_string;
end
GO
/****** Object:  UserDefinedFunction [dbo].[udf_GetMultiValuesInTable]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE function [dbo].[udf_GetMultiValuesInTable](@MultiValue VARCHAR(1000), @DelimiterChar VARCHAR(10))
	RETURNS @MultiValueTable TABLE(RowNum INT IDENTITY PRIMARY KEY,SingleValue VARCHAR(100) NOT NULL)
AS
BEGIN
	DECLARE @UnitValue VARCHAR(100)
		,	@CurPosition INT
		,	@DelimiterPosition INT
	SET	@UnitValue = ''
	SET @MultiValue = LTRIM(RTRIM(@MultiValue))
	WHILE LEN(@MultiValue) > 0
	
	BEGIN
		SET @DelimiterPosition = CHARINDEX(@DelimiterChar,@MultiValue)
		IF @DelimiterPosition = 0
			BREAK

		SET @UnitValue = SUBSTRING(@MultiValue,1,@DelimiterPosition - 1)
		INSERT INTO @MultiValueTable(SingleValue) VALUES(@UnitValue)
		SELECT	@MultiValue = SUBSTRING(@MultiValue,@DelimiterPosition + lEN(@DelimiterChar) + 1,LEN(@MultiValue) - LEN(@UnitValue) + 1)
  
	END
	IF LEN(@MultiValue) > 0
			INSERT INTO @MultiValueTable(SingleValue) VALUES(@MultiValue)
	RETURN

END


GO
/****** Object:  Table [dbo].[LAB_TEST_CODE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[LOOKUP_CODE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  View [dbo].[vw_HIVAIDS_CODE]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_HIVAIDS_CODE] AS
	SELECT     'L' as type,'TABLE_1' as table_name,lab_test_cd as code
	FROM         dbo.LAB_TEST_CODE
	WHERE     (mod_type in ('DETECTION_TEST','VIRAL_TEST','GENOTYPE_TEST')
		and category in ('CULTURE','ANTIGEN','VIRAL DNA','LEGACY','GENOTYPE','VIRAL LOAD')
		and case_cd in('07','08','09','11','12','13','14'))
		or (lab_test_cd = 'EC-058')
	union
	SELECT    'L' as type,'TABLE_2' as table_name,lab_test_cd as code
	FROM         dbo.LAB_TEST_CODE
	WHERE (mod_type in ('DETECTION_TEST','VIRAL_TEST')
		and category in ('VIRAL DNA','VIRAL LOAD','LEGACY')
		and case_cd in('07','08','09','12','14'))
		or (lab_test_cd = 'EC-058')
	union
	SELECT     'L' as type,'TABLE_3' as table_name,lab_test_cd as code
	FROM         dbo.LAB_TEST_CODE
	WHERE ((mod_type in ('ANTIBODY_TEST','TYPE_DIFFERENTIATING_TEST')
		and category in ('SCREENING','CONFIRMATORY')
		and case_cd in ('01','03','19'))
		OR (lab_test_cd in ('EC-032', 'EC-036', 'EC-054')))
	union
	SELECT    'L' as type,'TABLE_4' as table_name,lab_test_cd as code
	FROM         dbo.LAB_TEST_CODE
	WHERE  ((mod_type = 'ANTIBODY_TEST'
				and category = 'CONFIRMATORY'
				and case_cd in ('03')
			) OR
			(lab_test_cd = 'EC-036')
			)
	union
	SELECT     'L' as type,'TABLE_5' as table_name,lab_test_cd as code
	FROM         dbo.LAB_TEST_CODE
	WHERE ((mod_type in ('ANTIBODY_TEST','TYPE_DIFFERENTIATING_TEST')
		and category = 'SCREENING'
		and case_cd in ('01','19'))
		OR (lab_test_cd in ('EC-032', 'EC-054')))
	union
	SELECT    'O' as type,'TABLE_6' as table_name,lookup_cd as code
	FROM      dbo.LOOKUP_CODE
	WHERE     flag_ind in ('A','B','P')
         	--and lookup_cd <> 'AD15'
          	and lookup_type = 'OI_CODE'
	--union
	--SELECT    'O' as type,'TABLE_7' as table_name,lookup_cd as code
	--FROM      dbo.LOOKUP_CODE
	--WHERE     flag_ind in ('B','P')
--        		and lookup_cd not in ('AD15','AD20')
--        		and lookup_type = 'OI_CODE'
	union
	SELECT    'R' as type, 'TABLE_8' as table_name,lookup_cd as code
	FROM      dbo.lookup_code
	where lookup_type = 'RISK_CD' 
		and display = 'A'
		and lookup_cd not in ('R04','R11','R12','R40','R80')
GO
/****** Object:  Table [dbo].[DOCUMENT]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ID]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[PREFERENCE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[BIRTH_HISTORY]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  View [dbo].[vw_pher_birth_history]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_pher_birth_history] as
	select d.ehars_uid, st.id_value stateno,
	 po.document_uid, poc.pher_question_uid, po.pher_obs_uid, case coalesce(pfd.pher_field, '') when '' then pq.descr else pfd.pher_field end as display_name
	, pher_obs_value, pher_dt, pher_tm, po.other_specify as pher_obs_other_specify 
	, pa.drug_cd, pa.other_specify pher_arv_other_specify, pa.drug_refused, pa.receive_dt, pa.receive_tm, pa.type_of_administration, pa.drug_start_dt, pa.drug_start_gestational_age
	, pa.art_completed, pa.drug_stopped, pa.drug_stop_dt, pa.drug_stop_cd_1, pa.drug_stop_cd_2, pa.drug_stop_cd_3, pa.drug_stop_cd_4
	, ps.doc_belongs_to, ps.sibling_dob, ps.sibling_sero, ps.sibling_stateno, ps.sibling_cityno
	, bh.birth_place, bh.first_pnc_visit_dt, bh.last_pnc_visit_dt, bh.num_pnc_visits, bh.num_prev_live_births, bh.last_live_birth_dt
	, bh.last_normal_menses_dt, bh.delivery_method, bh.birth_wt, bh.birth_type, bh.birth_defects, bh.birth_defects_cd, bh.infant_transfer
	, bh.breastfed, bh.neonatal_status, bh.neonatal_status_weeks, bh.month_preg_pnc
	, bh.maternal_dob, bh.maternal_sndx, bh.maternal_stateno, bh.maternal_birth_country_cd
	, bh.maternal_birth_country_usd
	from PHER_OBSERVATION po 
	join PHER_OBSERVATION_CODE poc on po.pher_obs_uid = poc.pher_obs_uid
	join PHER_FIELD_DETAIL pfd on poc.pher_field_uid = pfd.pher_field_uid
	join PHER_QUESTION pq on poc.pher_question_uid = pq.pher_question_uid
	join DOCUMENT d on d.document_uid = po.document_uid
	left join ( select * from ID 
				join PREFERENCE prf on id.id_cd = prf.pref_value 
				and pref_name = 'stateNoCode' and id.doc_belongs_to = 'PERSON') as st
		on d.document_uid = st.document_uid
	left join BIRTH_HISTORY bh on po.document_uid = bh.document_uid
	left join PHER_ANTIRETROVIRAL pa on po.document_uid = pa.document_uid and poc.pher_question_uid = pa.pher_question_uid
	left join PHER_SIBLING ps on po.document_uid = ps.document_uid
GO
/****** Object:  View [dbo].[vw_doc_last_neg_dt]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_doc_last_neg_dt] AS
		select 'TABLE_1' as table_name, 'EC-001' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'EC-002' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'EC-004' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'EC-005' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'EC-006' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'EC-008' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'EC-028' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'EC-032' lab_test_cd
		--UNION
		--select 'TABLE_1' as table_name, 'EC-033' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'EC-036' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'EC-054' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'EC-057' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'EC-058' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'L-001' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'L-002' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'L-003' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'L-004' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'L-005' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'L-006' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'L-007' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'L-008' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'L-009' lab_test_cd
		UNION
		select 'TABLE_1' as table_name, 'EC-012' lab_test_cd
GO
/****** Object:  View [dbo].[vw_pher_field_detail]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_pher_field_detail] as
		select pfd.pher_field_uid, poc.pher_obs_uid as pher_obs_uid, pfd.pher_question_uid, pfd.pher_question_uid + coalesce('_' + pfd.field1_label_lkup_cd, '') as screen_field_id, pfd.table_name 
		, pfd.field_order, pfd.pher_field as display_name, pfd.display, pfd.field1_control_lkup_type as lookup_type
		, pfd.field1_control_type as display_type, pfd.field1_max_length as primaryfield_max_length, pfd.field2_control_type as additional_field
		, pfd.field2_max_length as additionalfield_max_length, pfd.field2_control_lkup_type additional_field_lookup_type
		from pher_field_detail pfd left join PHER_OBSERVATION_CODE poc on pfd.pher_field_uid = poc.pher_field_uid
GO
/****** Object:  View [dbo].[vw_Stage_Zero_Tables]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_Stage_Zero_Tables] AS
			select 'TABLE_1' as table_name, 'EC-054' lab_test_cd, 0 test_seq_rank
			UNION
			select 'TABLE_1' as table_name, 'EC-032' lab_test_cd, 0 test_seq_rank
			UNION
			select 'TABLE_1' as table_name, 'EC-028' lab_test_cd, 1 test_seq_rank
			UNION
			select 'TABLE_1' as table_name, 'EC-056' lab_test_cd, 2 test_seq_rank
			UNION
			select 'TABLE_1' as table_name, 'EC-055' lab_test_cd, 3 test_seq_rank
			UNION
			select 'TABLE_1' as table_name, 'EC-033' lab_test_cd, 4 test_seq_rank
			UNION
			select 'TABLE_1' as table_name, 'EC-034' lab_test_cd, 5 test_seq_rank
			UNION
			select 'TABLE_1' as table_name, 'EC-002' lab_test_cd, 6 test_seq_rank
			UNION
			select 'TABLE_1' as table_name, 'EC-004' lab_test_cd, 7 test_seq_rank
			UNION
			select 'TABLE_1' as table_name, 'EC-008' lab_test_cd, 8 test_seq_rank
			UNION
			select 'TABLE_1' as table_name, 'EC-006' lab_test_cd, 9 test_seq_rank
			UNION
			select 'TABLE_1' as table_name, 'EC-005' lab_test_cd, 10 test_seq_rank
			UNION
			select 'TABLE_1' as table_name, 'EC-036' lab_test_cd, 11 test_seq_rank
			UNION
			select 'TABLE_1' as table_name, 'EC-001' lab_test_cd, 12 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-012' lab_test_cd, 13 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-057' lab_test_cd, 14 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-058' lab_test_cd, 15 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-059' lab_test_cd, 0 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-060' lab_test_cd, 16 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-014' lab_test_cd, 17 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-011' lab_test_cd, 18 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-009' lab_test_cd, 19 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-018' lab_test_cd, 20 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-019' lab_test_cd, 21 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-020' lab_test_cd, 22 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-021' lab_test_cd, 23 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-022' lab_test_cd, 24 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-030' lab_test_cd, 25 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-031' lab_test_cd, 26 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-040' lab_test_cd, 27 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-041' lab_test_cd, 28 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-042' lab_test_cd, 29 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-043' lab_test_cd, 30 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-044' lab_test_cd, 31 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-045' lab_test_cd, 32 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-046' lab_test_cd, 33 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-047' lab_test_cd, 34 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-048' lab_test_cd, 35 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-049' lab_test_cd, 36 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-050' lab_test_cd, 37 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-051' lab_test_cd, 38 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-052' lab_test_cd, 39 test_seq_rank
			UNION
			select 'TABLE_2' as table_name, 'EC-053' lab_test_cd, 40 test_seq_rank
GO
/****** Object:  Table [dbo].[ACK_TRANSFER_DETAIL]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ACK_TRANSFER_DETAILCDC]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ACK_TRANSFER_LOG]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ACK_TRANSFER_LOGCDC]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ARCHIVE_ARV_PROPHYLAXIS]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ARCHIVE_BIRTH_HISTORY]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ARCHIVE_OBSERVATION]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ARCHIVE_PERSON_VIEW_OVERRIDE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ARCHIVE_PHER_ANTIRETROVIRAL]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ARCHIVE_PHER_FIELD_DETAIL]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ARCHIVE_PHER_OBSERVATION]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ARCHIVE_PHER_OBSERVATION_CODE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ARCHIVE_PHER_QUESTION]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ARCHIVE_PHER_SECTION]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ARCHIVE_PHER_SIBLING]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ARV_PROPHYLAXIS]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[BIRTH_DELIVERY]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[BIRTHING_PERSON_HISTORY]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[CALC_OBS_DECISIONS]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[CALC_OBSERVATION]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[CALC_OBSERVATION_CODE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[CLIA_CODE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[CLIA_LOOKUP]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[clia_LOOKUP_OLD]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clia_LOOKUP_OLD](
	[clia_uid] [char](11) NOT NULL,
	[site_cd] [char](4) NOT NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[CONSENT_QUESTIONNAIRE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[CONVERSION_FIELD_COMPARISON]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[CONVERSION_MAPPING]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[CONVERSION_TRANSLATION]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[CONVERSION_VALIDATION_BATCH]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[COPHI_PASSWORD]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[COUNTRY_CODE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[DDL_LOG]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[DEATH]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[DEATH_DX]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[DML_LOG]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[DOC_SOURCE_LOOKUP]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[DOCUMENT_DELETE_DETAIL]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[DOCUMENT_DELETE_LOG]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[DOCUMENT_PURGE]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCUMENT_PURGE](
	[document_uid] [char](16) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[EHARS_GROUP]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[EHARS_USER]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[EVENT_LOG]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[event_log_old]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[FACILITY_CODE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[FACILITY_EVENT]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[FIPS_CITY]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[FIPS_CITY_HARS]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[FIPS_COUNTY]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[FIPS_COUNTY_HARS]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[FIPS_STATE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[GENOTYPE_SEQ_VALIDATION]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ID_PURGED]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[id_purged_old]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[IMPORT_DOCUMENT_LOG]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[INSTALLER_LOG]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[INVESTIGATION]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[INVESTIGATION_CASE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[INVESTIGATION_CLUSTER]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[LAB]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[LAB_ANALYTE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[LAB_GENOTYPE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[LAB_LOOKUP_CODE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[LOCAL_FIELD]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[LOCAL_FIELD_CODE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MATCHABLE_FIELD]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MCGEN_STAGING]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MJP_DATA_ACCESS]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MJP_EHARS_UID_HISTORY]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[mjp_ehars_uid_history_old]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MJP_JURISDICTION_MAPPING]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MJP_JURISDICTIONS]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MJP_OWNERSHIP]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MJP_OWNERSHIP_LOG]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[mjp_ownership_log_old]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MJP_PACKAGE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MJP_PVGEN]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MJP_REFERENCE_LOG]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MJP_SECONDARY_OWNERSHIP]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MJP_STATENO_MERGE_HISTORY]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MJP_TRANSFER_DETAIL]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[MJP_TRANSFER_LOG]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[OBSERVATION]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[OBSERVATION_CODE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[OI]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[OTHER_HEALTH_CONDITIONS]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[PERSON]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[PERSON_NAME]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[PERSON_VIEW_DETAIL]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[PRE_REQ_LOG]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[PREGNANCY_OUTCOME]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[PRETEST_QUESTIONNAIRE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[PRODUCTION_MATCH_CODE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[PROVIDER_CODE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[PVGEN]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PVGEN](
	[ehars_uid] [char](16) NULL
) ON [DATA]
GO
/****** Object:  Table [dbo].[REPORT]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[RIDR]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[RISK]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[sample_text]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[SAMPLING]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[SAMPLING_CRITERIA]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[SECURITY_ASSIGNMENT]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[SECURITY_ITEM]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[SECURITY_TYPE]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[SEQUENCE_COUNTER]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[SSO_USER]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[SUBSTANCE_HISTORY]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[tmp_address_county_412]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[tmp_death_county_412]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[tmp_fac_county_412]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[tmp_log]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[TRANSFER_DETAIL]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[TRANSFER_DETAILCDC]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[TRANSFER_DETAILState]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[TRANSFER_ELEMENT]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[TRANSFER_LOG]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[TRANSFER_LOGCDC]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[TRANSFER_LOGState]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[TRANSFER_VERSION_TRACKING]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[USER_GROUP]    Script Date: 6/1/2023 1:05:10 PM ******/
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
/****** Object:  Table [dbo].[ZIP_CITY]    Script Date: 6/1/2023 1:05:10 PM ******/
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
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ADDRESS_ADDRESS_TYPE_CD ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_ADDRESS_ADDRESS_TYPE_CD ] ON [dbo].[ADDRESS]
(
	[address_type_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ADDRESS_CITY_NAME ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_ADDRESS_CITY_NAME ] ON [dbo].[ADDRESS]
(
	[city_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ADDRESS_COUNTY_NAME ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_ADDRESS_COUNTY_NAME ] ON [dbo].[ADDRESS]
(
	[county_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ADDRESS_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_ADDRESS_DOCUMENT_UID] ON [dbo].[ADDRESS]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ADDRESS_STATE_CD ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_ADDRESS_STATE_CD ] ON [dbo].[ADDRESS]
(
	[state_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ADDRESS_STREET_ADDRESS1 ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_ADDRESS_STREET_ADDRESS1 ] ON [dbo].[ADDRESS]
(
	[street_address1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BIRTH_HISTORY_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_BIRTH_HISTORY_DOCUMENT_UID] ON [dbo].[BIRTH_HISTORY]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CALC_OBSERVATION_CALC_OBS_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_CALC_OBSERVATION_CALC_OBS_UID] ON [dbo].[CALC_OBSERVATION]
(
	[calc_obs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CALC_OBSERVATION_calc_obs_value]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_CALC_OBSERVATION_calc_obs_value] ON [dbo].[CALC_OBSERVATION]
(
	[calc_obs_value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CALC_OBSERVATION_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_CALC_OBSERVATION_DOCUMENT_UID] ON [dbo].[CALC_OBSERVATION]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CALC_OBSERVATION_CODE_document_type_cd]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_CALC_OBSERVATION_CODE_document_type_cd] ON [dbo].[CALC_OBSERVATION_CODE]
(
	[document_type_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CLIA_CODE_city_name]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLIA_CODE_city_name] ON [dbo].[CLIA_CODE]
(
	[city_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CLIA_CODE_LAB_NAME1 ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLIA_CODE_LAB_NAME1 ] ON [dbo].[CLIA_CODE]
(
	[lab_name1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CLIA_CODE_LAB_NAME2 ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLIA_CODE_LAB_NAME2 ] ON [dbo].[CLIA_CODE]
(
	[lab_name2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CLIA_CODE_state_cd]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_CLIA_CODE_state_cd] ON [dbo].[CLIA_CODE]
(
	[state_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_CONSENT_QUESTIONNAIRE_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_CONSENT_QUESTIONNAIRE_DOCUMENT_UID] ON [dbo].[CONSENT_QUESTIONNAIRE]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
/****** Object:  Index [IX_CONVERSION_FIELD_COMPARISON_CONVERSION_VALIDATION_BATCH_SEQ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_CONVERSION_FIELD_COMPARISON_CONVERSION_VALIDATION_BATCH_SEQ] ON [dbo].[CONVERSION_FIELD_COMPARISON]
(
	[conversion_validation_batch_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_COPHI_PASSWORD_doc_uid_cophi_risk]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_COPHI_PASSWORD_doc_uid_cophi_risk] ON [dbo].[COPHI_PASSWORD]
(
	[document_uid] ASC,
	[cophi_risk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DEATH_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_DEATH_DOCUMENT_UID] ON [dbo].[DEATH]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DEATH_DOD ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_DEATH_DOD ] ON [dbo].[DEATH]
(
	[dod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DEATH_DX_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_DEATH_DX_DOCUMENT_UID] ON [dbo].[DEATH_DX]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DEATH_DX_icd_cd_type]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_DEATH_DX_icd_cd_type] ON [dbo].[DEATH_DX]
(
	[icd_cd_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DOCUMENT_DOC_TYPE_CD]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_DOCUMENT_DOC_TYPE_CD] ON [dbo].[DOCUMENT]
(
	[document_type_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DOCUMENT_EHARS_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_DOCUMENT_EHARS_UID] ON [dbo].[DOCUMENT]
(
	[ehars_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DOCUMENT_facility_uid]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_DOCUMENT_facility_uid] ON [dbo].[DOCUMENT]
(
	[facility_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DOCUMENT_initinvest]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_DOCUMENT_initinvest] ON [dbo].[DOCUMENT]
(
	[initinvest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
/****** Object:  Index [IX_DOCUMENT_SHIP_FLAG]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_DOCUMENT_SHIP_FLAG] ON [dbo].[DOCUMENT]
(
	[ship_flag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DOCUMENT_STATUS_FLAG]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_DOCUMENT_STATUS_FLAG] ON [dbo].[DOCUMENT]
(
	[status_flag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FACILITY_CODE_NAME1 ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_FACILITY_CODE_NAME1 ] ON [dbo].[FACILITY_CODE]
(
	[name1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FACILITY_EVENT_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_FACILITY_EVENT_DOCUMENT_UID] ON [dbo].[FACILITY_EVENT]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FACILITY_EVENT_FACILITY_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_FACILITY_EVENT_FACILITY_UID] ON [dbo].[FACILITY_EVENT]
(
	[facility_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ID_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_ID_DOCUMENT_UID] ON [dbo].[ID]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ID_ID_CD ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_ID_ID_CD ] ON [dbo].[ID]
(
	[id_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ID_ID_VALUE ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_ID_ID_VALUE ] ON [dbo].[ID]
(
	[id_value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_INVESTIGATION_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_INVESTIGATION_DOCUMENT_UID] ON [dbo].[INVESTIGATION]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_INVESTIGATION_PROVIDER_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_INVESTIGATION_PROVIDER_UID] ON [dbo].[INVESTIGATION]
(
	[provider_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LAB_CLIA_UID ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_LAB_CLIA_UID ] ON [dbo].[LAB]
(
	[clia_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LAB_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_LAB_DOCUMENT_UID] ON [dbo].[LAB]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LAB_LOINC_CD]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_LAB_LOINC_CD] ON [dbo].[LAB]
(
	[lab_test_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LOCAL_FIELD_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_LOCAL_FIELD_DOCUMENT_UID] ON [dbo].[LOCAL_FIELD]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LOCAL_FIELD_LOCAL_FIELD_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_LOCAL_FIELD_LOCAL_FIELD_UID] ON [dbo].[LOCAL_FIELD]
(
	[local_field_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
/****** Object:  Index [IX_LOOKUP_CODE_DISPLAY_ORDER]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_LOOKUP_CODE_DISPLAY_ORDER] ON [dbo].[LOOKUP_CODE]
(
	[display_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LOOKUP_CODE_LOOKUP_NAME]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_LOOKUP_CODE_LOOKUP_NAME] ON [dbo].[LOOKUP_CODE]
(
	[lookup_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LOOKUP_CODE_LOOKUP_TYPE]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_LOOKUP_CODE_LOOKUP_TYPE] ON [dbo].[LOOKUP_CODE]
(
	[lookup_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_LOOKUP_CODE_LOOKUP_TYPE_LOOKUP_CD]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_LOOKUP_CODE_LOOKUP_TYPE_LOOKUP_CD] ON [dbo].[LOOKUP_CODE]
(
	[lookup_type] ASC,
	[lookup_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OBSERVATION_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_OBSERVATION_DOCUMENT_UID] ON [dbo].[OBSERVATION]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OBSERVATION_OBS_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_OBSERVATION_OBS_UID] ON [dbo].[OBSERVATION]
(
	[obs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OBSERVATION_OBS_VALUE]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_OBSERVATION_OBS_VALUE] ON [dbo].[OBSERVATION]
(
	[obs_value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OI_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_OI_DOCUMENT_UID] ON [dbo].[OI]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_BIRTH_SEX ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_BIRTH_SEX ] ON [dbo].[PERSON]
(
	[birth_sex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_CURRENT_SEX ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_CURRENT_SEX ] ON [dbo].[PERSON]
(
	[current_sex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_DOB]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_DOB] ON [dbo].[PERSON]
(
	[dob] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_DOCUMENT_UID] ON [dbo].[PERSON]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_ETHNICITY1 ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_ETHNICITY1 ] ON [dbo].[PERSON]
(
	[ethnicity1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_ETHNICITY2 ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_ETHNICITY2 ] ON [dbo].[PERSON]
(
	[ethnicity2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_RACE1 ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_RACE1 ] ON [dbo].[PERSON]
(
	[race1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_RACE2 ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_RACE2 ] ON [dbo].[PERSON]
(
	[race2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_RACE3 ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_RACE3 ] ON [dbo].[PERSON]
(
	[race3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_RACE4 ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_RACE4 ] ON [dbo].[PERSON]
(
	[race4] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_RACE5 ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_RACE5 ] ON [dbo].[PERSON]
(
	[race5] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_VITAL_STATUS ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_VITAL_STATUS ] ON [dbo].[PERSON]
(
	[vital_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_NAME_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_NAME_DOCUMENT_UID] ON [dbo].[PERSON_NAME]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_NAME_FIRST_NAME ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_NAME_FIRST_NAME ] ON [dbo].[PERSON_NAME]
(
	[first_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_NAME_LAST_NAME]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_NAME_LAST_NAME] ON [dbo].[PERSON_NAME]
(
	[last_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_NAME_LAST_NAME_SNDX ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_NAME_LAST_NAME_SNDX ] ON [dbo].[PERSON_NAME]
(
	[middle_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_NAME_MIDDLE_NAME ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_NAME_MIDDLE_NAME ] ON [dbo].[PERSON_NAME]
(
	[middle_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_VIEW_DETAIL_document_uid_doc_type]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_VIEW_DETAIL_document_uid_doc_type] ON [dbo].[PERSON_VIEW_DETAIL]
(
	[document_uid] ASC,
	[doc_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PERSON_VIEW_DETAIL_ehars_uid]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PERSON_VIEW_DETAIL_ehars_uid] ON [dbo].[PERSON_VIEW_DETAIL]
(
	[ehars_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PRETEST_QUESTIONNAIRE_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PRETEST_QUESTIONNAIRE_DOCUMENT_UID] ON [dbo].[PRETEST_QUESTIONNAIRE]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_PRODUCTION_MATCH_CODE_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IDX_PRODUCTION_MATCH_CODE_DOCUMENT_UID] ON [dbo].[PRODUCTION_MATCH_CODE]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO
/****** Object:  Index [IDX_PRODUCTION_MATCH_CODE_MATCH_FIELD_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IDX_PRODUCTION_MATCH_CODE_MATCH_FIELD_UID] ON [dbo].[PRODUCTION_MATCH_CODE]
(
	[match_field_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PROVIDER_CODE_FIRST_NAME ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PROVIDER_CODE_FIRST_NAME ] ON [dbo].[PROVIDER_CODE]
(
	[first_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PROVIDER_CODE_LAST_NAME ]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_PROVIDER_CODE_LAST_NAME ] ON [dbo].[PROVIDER_CODE]
(
	[last_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OI_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_OI_DOCUMENT_UID] ON [dbo].[RIDR]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RIDR_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_RIDR_DOCUMENT_UID] ON [dbo].[RIDR]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RIDR_QUESTIONNAIRE_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_RIDR_QUESTIONNAIRE_DOCUMENT_UID] ON [dbo].[RIDR]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RISK_DOCUMENT_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_RISK_DOCUMENT_UID] ON [dbo].[RISK]
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SAMPLING_CRITERIA_SAMPLE_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_SAMPLING_CRITERIA_SAMPLE_UID] ON [dbo].[SAMPLING_CRITERIA]
(
	[sample_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SECURITY_ASSIGNMENT_EHARS_GROUP_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_SECURITY_ASSIGNMENT_EHARS_GROUP_UID] ON [dbo].[SECURITY_ASSIGNMENT]
(
	[ehars_group_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
/****** Object:  Index [IX_SECURITY_ASSIGNMENT_SECURITY_ITEM_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_SECURITY_ASSIGNMENT_SECURITY_ITEM_UID] ON [dbo].[SECURITY_ASSIGNMENT]
(
	[security_item_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
/****** Object:  Index [IX_SECURITY_ITEM_SECURITY_TYPE_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_SECURITY_ITEM_SECURITY_TYPE_UID] ON [dbo].[SECURITY_ITEM]
(
	[security_type_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
/****** Object:  Index [IX_TRANSFER_DETAIL_TRANSFER_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_TRANSFER_DETAIL_TRANSFER_UID] ON [dbo].[TRANSFER_DETAIL]
(
	[transfer_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_USER_GROUP_EHARS_GROUP_UID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_USER_GROUP_EHARS_GROUP_UID] ON [dbo].[USER_GROUP]
(
	[ehars_group_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_USER_GROUP_USER_ID]    Script Date: 6/1/2023 1:05:10 PM ******/
CREATE NONCLUSTERED INDEX [IX_USER_GROUP_USER_ID] ON [dbo].[USER_GROUP]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
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
/****** Object:  StoredProcedure [dbo].[usp_bulk_document_purge]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_bulk_document_purge] (@All_Docs char(1), @event_uid bigint) AS
BEGIN 

	--Initialize Variables
	DECLARE @ERROR int
	DECLARE @ErrMssg varchar (200)
	DECLARE @is_site_mjp varchar(1)
			,@rowcnt numeric
			,@product_version varchar(16)
			,@delete_count numeric
			,@statenocode varchar(35)
			,@event_comments varchar(4000)
			,@event_starttime varchar(50)
			,@event_status varchar(50)
			,@pos int
			,@commapos int
			,@userid varchar(30)
			,@sitecd varchar(4)
		
	SET @is_site_mjp = (SELECT pref_value FROM PREFERENCE WHERE pref_name = 'ismjpsite')
	PRINT 'Is this a multiple jurisdiction site? ' + @is_site_mjp

	select @statenocode = pref_value
	from PREFERENCE where pref_name = 'statenocode'

	select @event_comments = comments
	, @userid = user_id
	, @sitecd = site_cd
	from EVENT_LOG where event_uid = @event_uid;

	set @event_comments = Ltrim(rtrim(@event_comments));

	-- Get START_TIME and Status from the @event_comments
	set @pos = CharIndex('START_TIME=', @event_comments, 1);

	IF @pos = 0
	begin
		select @event_starttime = Convert(varchar(30), GetDate(), 120)
	end
	else
	begin
		set @commapos = CharIndex(',', @event_comments, @pos + 11);

		if @commapos = 0 SET @commapos = Len(Rtrim(@event_comments));

		SET @event_starttime = Substring(@event_comments, @pos + 11, (@commapos - (@pos + 11)));
	end

	print '@event_starttime: ' + @event_starttime;

	-- Set the status on the EVENT_LOG to IN_PROGRESS'

	UPDATE EVENT_LOG
	SET comments = 'START_TIME=' + @event_starttime + ', STATUS=IN_PROGRESS'
	where event_uid = @event_uid

	select @error = @@ERROR, @rowcnt = @@ROWCOUNT

	IF @error > 0 
	begin
		BEGIN TRANSACTION
		GOTO Encountered_Problem;
	end

		--create temp table containing document_uid
		IF  object_id ('tempdb..##doc_UID') IS NOT NULL
			BEGIN
				DROP TABLE ##doc_UID
			END
		
		CREATE TABLE  ##doc_UID (document_uid char (16) 
			,ehars_uid char(16)
			,document_type_cd char(3)
			,include_flag char(1) default 'Y'
			,state_no varchar(35))                              

		--If @all_Docs = 'Y', select all the documents with status_flag 'P' else select document_uid from document_purge table
		if @all_docs = 'Y'
		begin		
			INSERT INTO ##doc_UID(document_uid,ehars_uid, document_type_cd, state_no)
			SELECT  DISTINCT d.document_uid, ehars_uid, document_type_cd, id_value
			FROM document d left join id i on d.document_uid = i.document_uid and id_cd = @statenocode 
				WHERE status_flag = 'P'
		end
		else
		begin
			INSERT INTO ##doc_UID(document_uid,ehars_uid, document_type_cd, state_no)
			SELECT  DISTINCT d.document_uid, ehars_uid, document_type_cd, id_value
			FROM document_purge dp
			join document d on d.document_uid = dp.document_uid
			left join id i on d.document_uid = i.document_uid and id_cd = @statenocode
				WHERE status_flag = 'P'

		end

		SELECT @ERROR = @@error
		IF @ERROR <> 0 BEGIN  select @ErrMssg = ' An error occured while inserting into the ##doc_UID table. '   goto Encountered_Problem END

		--Identify PV documents with ALL non-PV docs in active status
		--Then exclude the PV documents from purge where it has at least one active document
		;WITH pv_docs as (
			SELECT * FROM ##doc_UID WHERE document_type_cd = '000'
			),
			excluded_pv as (
		SELECT d.ehars_uid,d.status_flag, count(*) cnt
		FROM document d join pv_docs b ON d.ehars_uid = b.ehars_uid
		WHERE d.status_flag NOT IN ('d','p')
		AND d.document_type_cd <> '000'
		GROUP BY d.ehars_uid, d.status_flag
		HAVING count(*) > 0
		) 
		UPDATE ##doc_UID
		SET include_flag = 'N'
		FROM excluded_pv d join ##doc_UID ON d.ehars_uid = ##doc_UID.ehars_uid

		--DELETE from ##doc_uid where include_flag = 'N';

		BEGIN TRANSACTION

		select 'Before Deletes begin', * from ##doc_UID;

		IF EXISTS (SELECT 1 FROM ##doc_UID where include_flag = 'Y')
		BEGIN
			--select 'Before Deletes begin', * from ##doc_UID;

		--select * from ##doc_uid where include_flag = 'n'
		/* Begin transaction	to delete purge cases with include flag = 'Y'
			DELETE FROM CORE TABLES
		*/
			DELETE a from [ADDRESS] a
					join ##doc_UID tmp ON a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the ADDRESS table. '   goto Encountered_Problem END

			-- SD Added new table ARV_PROPHYLAXIS
			if object_id('ARV_PROPHYLAXIS') is not null
			begin
				delete a from ARV_PROPHYLAXIS a
						join ##doc_UID tmp on a.document_uid = tmp.document_uid
						WHERE tmp.include_flag = 'y'
				SELECT @ERROR = @@error
				IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the ARV_PROPHYLAXIS table. '   goto Encountered_Problem END
			end

			delete a from BIRTH_HISTORY a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the BIRTH_HISTORY table. '   goto Encountered_Problem END

			delete a from CALC_OBSERVATION a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the CALC_OBSERVATION table. '   goto Encountered_Problem END

			delete a from CONSENT_QUESTIONNAIRE a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the CONSENT_QUESTIONNAIRE table. '   goto Encountered_Problem END

			delete a from DEATH a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the DEATH table. '   goto Encountered_Problem END

			delete a from DEATH_DX a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the DEATH_DX table. '   goto Encountered_Problem END

			delete a from FACILITY_EVENT a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the FACILITY_EVENT table. '   goto Encountered_Problem END

			delete a from ID a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the ID table. '   goto Encountered_Problem END

			delete a from INVESTIGATION a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the INVESTIGATION table. '   goto Encountered_Problem END

			delete a from LAB_GENOTYPE a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the LAB_GENOTYPE table. '   goto Encountered_Problem END

			delete a from LAB_ANALYTE a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the LAB_ANALYTE table. '   goto Encountered_Problem END

			delete a from LAB a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the LAB table. '   goto Encountered_Problem END

			delete a from LOCAL_FIELD a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the LOCAL_FIELD table. '   goto Encountered_Problem END

			IF @is_site_mjp = 'Y'
				BEGIN
					delete a from MJP_OWNERSHIP a
							join ##doc_UID tmp on a.document_uid = tmp.document_uid
							WHERE tmp.include_flag = 'y'
					SELECT @ERROR = @@error
					IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the MJP_OWNERSHIP table. '   goto Encountered_Problem END
						
					delete a from MJP_DATA_ACCESS a
							join ##doc_UID tmp on a.document_uid = tmp.document_uid 
								and tmp.ehars_uid = a.ehars_uid
							WHERE tmp.include_flag = 'y'
					SELECT @ERROR = @@error
					IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the MJP_DATA_ACCESS table. '   goto Encountered_Problem END
				END
							
			delete a from OBSERVATION a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the OBSERVATION table. '   goto Encountered_Problem END

			delete a from OI a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the OI table. '   goto Encountered_Problem END

			delete a from PERSON a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the PERSON table. '   goto Encountered_Problem END

			delete a from PERSON_NAME a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the PERSON_NAME table. '   goto Encountered_Problem END
			
			delete a from PERSON_VIEW_DETAIL a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the PERSON_VIEW_DETAIL table. '   goto Encountered_Problem END

			IF OBJECT_ID (N'PHER_ANTIRETROVIRAL', N'U') IS NOT NULL
				BEGIN
					delete a from PHER_ANTIRETROVIRAL a
							join ##doc_UID tmp on a.document_uid = tmp.document_uid
							WHERE tmp.include_flag = 'y'
					SELECT @ERROR = @@error
					IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the PHER_ANTIRETROVIRAL table. '   goto Encountered_Problem END
				END
			
			IF OBJECT_ID (N'PHER_OBSERVATION', N'U') IS NOT NULL			
				BEGIN	
					delete a from PHER_OBSERVATION a
							join ##doc_UID tmp on a.document_uid = tmp.document_uid
							WHERE tmp.include_flag = 'y'
					SELECT @ERROR = @@error
					IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the PHER_OBSERVATION table. '   goto Encountered_Problem END
				END
					
			IF OBJECT_ID(N'PHER_SIBLING',N'U') IS NOT NULL
				BEGIN
					delete a from PHER_SIBLING a
							join ##doc_UID tmp on a.document_uid = tmp.document_uid
							WHERE tmp.include_flag = 'y'
					SELECT @ERROR = @@error
					IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the PHER_SIBLING table. '   goto Encountered_Problem END
				END
					
			delete a from PRETEST_QUESTIONNAIRE a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the PreTest_Questionnaire table. '   goto Encountered_Problem END
			
			delete a from PRODUCTION_MATCH_CODE a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = ' An error occured while deleting from the PRODUCTION_MATCH_CODE table. '   goto Encountered_Problem END

			delete a from RIDR a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = ' An error occured while deleting from the RIDR table. '   goto Encountered_Problem END

			delete a from RISK a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the RISK table. '   goto Encountered_Problem END

			delete a from INVESTIGATION_CASE a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the INVESTIGATION_CASE table. '   goto Encountered_Problem END

			delete a from INVESTIGATION_CLUSTER a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the INVESTIGATION_CLUSTER table. '   goto Encountered_Problem END

			-- SD 4.13 new table added
			delete a from BIRTHING_PERSON_HISTORY a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the BIRTHING_PERSON_HISTORY table. '   goto Encountered_Problem END

			-- SD 4.13 new table added
			delete a from SUBSTANCE_HISTORY a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the SUBSTANCE_HISTORY table. '   goto Encountered_Problem END

			-- SD 4.13 new table added
			delete a from OTHER_HEALTH_CONDITIONS a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the OTHER_HEALTH_CONDITIONS table. '   goto Encountered_Problem END

			-- SD 4.13 new table added
			delete a from PREGNANCY_OUTCOME a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the PREGNANCY_OUTCOME table. '   goto Encountered_Problem END

			-- SD 4.13 new table added
			delete a from BIRTH_DELIVERY a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid
					WHERE tmp.include_flag = 'y'
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the BIRTH_DELIVERY table. '   goto Encountered_Problem END

			print 'Before Delete from Document'
			delete a from DOCUMENT a
					join ##doc_UID tmp on a.document_uid = tmp.document_uid 
					WHERE tmp.include_flag = 'y'

			SELECT @delete_count = @@ROWCOUNT, @ERROR = @@error

			print '@delete_count: ' + cast(@delete_count as varchar(30));

			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the DOCUMENT table. '   goto Encountered_Problem END
		

/*Remove data from tables when entire case has been deleted*/
			DELETE 	b
			FROM document a RIGHT JOIN SEQUENCE_COUNTER b ON a.ehars_uid = b.ehars_uid
			WHERE a.ehars_uid is null
					
			SELECT @ERROR = @@error
			IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the SEQUENCE_COUNTER table. '   goto Encountered_Problem END
									
			IF @is_site_mjp = 'Y'
				BEGIN
					DELETE 	b
					FROM document a RIGHT JOIN MJP_SECONDARY_OWNERSHIP b ON a.ehars_uid = b.ehars_uid
					WHERE a.ehars_uid is null 
							
					SELECT @ERROR = @@error
					IF @ERROR <> 0 BEGIN  select @ErrMssg = 'AN  error occured while deleting from the MJP_SECONDARY_OWNERSHIP table. '   goto Encountered_Problem END
				END  

			-- Create ID_PURGED records for the PV Documents

			INSERT INTO ID_PURGED (id_cd,id_value,dt_time) 
			SELECT distinct @statenocode,state_no,GETDATE() 
			FROM ##doc_uid
			left join ID_PURGED ip on @statenocode = ip.id_cd and state_no = ip.id_value
			WHERE document_type_cd = '000'
			and state_no is not null
			and include_flag = 'Y'
			and ip.id_Cd is null

			select @ERROR = @@error;

		END
		ELSE
		begin
			PRINT 'No valid documents in purge status'
		end
	
	print '@Error: ' + cast(@error as varchar(20))                
	IF @ERROR <> 0 
			BEGIN 
				ROLLBACK TRANSACTION 
				print 'transaction rolled back'

				set @event_comments = 'START_TIME=' + @event_starttime + ', END_TIME=' + CONVERT(varchar(30), GETDATE(), 101) + ' '
										+ CONVERT(varchar(30), GETDATE(), 108) + ', STATUS=FAILED'
			END 
	ELSE  BEGIN 
				IF  object_id ('tempdb..##Doc_Import_UID') IS NOT NULL 
					BEGIN 
						DROP TABLE ##Doc_Import_UID 
					END 

				select @rowcnt = count(*) from ##doc_UID where include_flag = 'Y';
				set @event_comments = 'START_TIME=' + @event_starttime + ', END_TIME=' + CONVERT(varchar(30), GETDATE(), 101) + ' '
										+ CONVERT(varchar(30), GETDATE(), 108)
										+ ', NUMBER_OF_DOCUMENTS_PURGED=' + CAST(@rowcnt as varchar(15)) + ', STATUS=COMPLETED'

				print 'Before commit tran: ' + @event_comments;
				COMMIT TRANSACTION  
				print 'transaction committed'
		   END	

	select 'DOCUMENT_PURGE', * from DOCUMENT_PURGE;

	-- Remove all the document_uids from DOCUMENT_PURGE table.
	DELETE FROM DOCUMENT_PURGE;

	UPDATE EVENT_LOG
	SET comments = @event_comments
	where event_uid = @event_uid

	-- Insert all the ehars_uid from ##doc_uid that were not purged because of the active documents
	INSERT INTO EVENT_LOG(dt_time, type, event, comments, user_id, current_ehars_uid, site_cd)
	select distinct getdate(), 'ADMIN', 'DOCUMENT_PURGE', 'START_TIME=' + @event_starttime + ', DOCUMENTS COULD NOT BE PURGED BECAUSE OF ACTIVE DOCUMENTS'
	, @userid, ehars_uid, @sitecd
	from ##doc_uid
	where include_flag = 'N';

	GOTO EXITPROC;
		 ------Update EVENT_LOG with SUCCESS
			   
--error handling	   	
Encountered_Problem:
	print '@Error: ' + cast(@error as varchar(20))                
	IF @ERROR <> 0 
		Begin
			
			IF @@trancount > 0
				  Begin
					ROLLBACK TRANSACTION
				  End
			ELSE
				 Begin
					COMMIT TRANSACTION
				  End

			set @event_comments = 'START_TIME=' + @event_starttime + ', END_TIME=' + CONVERT(varchar(30), GETDATE(), 101) + ' '
								+ CONVERT(varchar(30), GETDATE(), 108) + ', STATUS=FAILED'

			select 'DOCUMENT_PURGE', * from DOCUMENT_PURGE;
			-- Remove all the document_uids from DOCUMENT_PURGE table.
			DELETE FROM DOCUMENT_PURGE;

			UPDATE EVENT_LOG
			SET comments = @event_comments
			where event_uid = @event_uid
		End

	-- Return the entire event_log record
	--select * from EVENT_LOG where event_uid = @event_uid;

EXITPROC:
	-- Return the entire event_log record
	select * from EVENT_LOG where event_uid = @event_uid;




END
GO
/****** Object:  StoredProcedure [dbo].[usp_clear_ack_tables]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_clear_ack_tables]

/*
Change History: This procedure deletes all data from ACK_TRANSFER_LOG, ACK_TRANSFER_LOGCDC, ACK_TRANSFER_DETAIL and ACK_TRANSFER_DETAILCDC tables.
CWI1 12/5/12  Created new procedure to be called from the application before loading the tables while processing the acknowledgement.
*/

AS

DELETE FROM ACK_TRANSFER_DETAIL
DELETE FROM ACK_TRANSFER_DETAILCDC
DELETE FROM ACK_TRANSFER_LOG
DELETE FROM ACK_TRANSFER_LOGCDC
GO
/****** Object:  StoredProcedure [dbo].[usp_data_transfer_acknowledge]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_data_transfer_acknowledge]
(@transfer_log_ack_filename varchar(2000) = NULL,
 @transfer_log_CDC_filename varchar(2000) = NULL,
 @transfer_detail_ack_filename varchar(2000) = NULL,
 @transfer_detail_CDC_filename varchar(2000) = NULL
)

/*
Change History:
LG 4/4/06  CQ eHARS00002426 Removed reference to specific db from 2275.
LG 1/23/06 Add 2.1 changes example db changes such as Alter statements etc.
LG 12/16/05 eHARS00002275 - Insert into cdc detail and log tables

CUK1  - SUKUMAR THOUTIREDDY Defects  CQ#1386   Modified Date: 20051215

GAC - 2007.12.03 - removed '-q' and '"' from all 'bcp-in' and 'bcp-out'
	statements using global temp tables for SQL 2005 implementation

EWV5 - ANTONIO SMITH - CQ# 3240 Remove xp_cmdshell SQL Server Access

CWI1 12/5/12 - 1. Optimized the procedure with the set operation 
               2. Updating all four tables through this proc instead updating just transfer_log and transfer_detail
               3. Add four parameters for filenames so that the procedure can be run manually from outside the application

*/

AS


-------------------------------------------------------------------------------
--DECLARE VARIABLES
-------------------------------------------------------------------------------
DECLARE @document_uid			CHAR(16)
DECLARE @transfer_uid			INT
DECLARE @site_cd				CHAR(4)
DECLARE @ack_doc_status			CHAR(1)
DECLARE @cdc_action_type		CHAR(1)
DECLARE @error_cd				INT
DECLARE @error_msg_tdtl			VARCHAR(256)

DECLARE @error					INT
DECLARE @error_msg				VARCHAR(256)
DECLARE @process_status			CHAR(2)

DECLARE @transfer_status		CHAR(1)
DECLARE @last_transfer_uid		INT
DECLARE @ack_ship_flag			INT
DECLARE @last_ship_flag			INT
DECLARE @SQLCMD					nvarchar(4000)

		
SET @process_status = 'AP' -- Acknowledgement in process

------------------------------------------------------------------------
--45	CA00	IC	Document	document_export_45_CA00_05-08-12.zip	document_acknowledge_45_CA00_05-08-12.zip	130	2012-05-08 16:37:09.373	2012-05-10 13:43:19.997	0	


if @transfer_log_ack_filename is not null
begin
	Delete from ACK_TRANSFER_LOG
   --Load ACK_TRANSFER_LOG table with the data from the file passed in @transfer_log_ack_filename
	SET @SQLCMD = 'BULK INSERT ACK_TRANSFER_LOG FROM ''' + @transfer_log_ack_filename + ''''
	
	EXEC sp_executesql @stmt = @SQLCMD
	
	SELECT @error = @@error

	IF @error > 0
	BEGIN
		SELECT @error = 10011,  @error_msg = 'Error while INSERTing into ACK_TRANSFER_LOG'
		PRINT 'Error while INSERTing into ACK_TRANSFER_LOG'
		goto Exit_Process
	END
end
	
IF @transfer_detail_ack_filename is not NULL
begin

	Delete from ACK_TRANSFER_DETAIL

	SET @SQLCMD = 'BULK INSERT ACK_TRANSFER_DETAIL FROM ''' + @transfer_detail_ack_filename + ''''
	
	EXEC sp_executesql @stmt = @SQLCMD
	
	SELECT @error = @@error

	IF @error > 0
	BEGIN
		SELECT @error = 10012,  @error_msg = 'Error while INSERTing into ACK_TRANSFER_DETAIL'
		PRINT 'Error while INSERTing into ACK_TRANSFER_DETAIL'
		goto Exit_Process
	END

end
	
IF @transfer_log_CDC_filename is not NULL
begin
	Delete from ACK_TRANSFER_LOGCDC

	SET @SQLCMD = 'BULK INSERT ACK_TRANSFER_LOGCDC FROM ''' + @transfer_log_cdc_filename + ''''
	
	EXEC sp_executesql @stmt = @SQLCMD
	
	SELECT @error = @@error

	IF @error > 0
	BEGIN
		SELECT @error = 10013,  @error_msg = 'Error while INSERTing into ACK_TRANSFER_LOGCDC'
		PRINT 'Error while INSERTing into ACK_TRANSFER_LOGCDC'
		goto Exit_Process
	END
end


IF @transfer_detail_CDC_filename is not NULL
begin

	Delete from ACK_TRANSFER_DETAILCDC

	SET @SQLCMD = 'BULK INSERT ACK_TRANSFER_DETAILCDC FROM ''' + @transfer_detail_cdc_filename + ''''
	
	EXEC sp_executesql @stmt = @SQLCMD
	
	SELECT @error = @@error

	IF @error > 0
	BEGIN
		SELECT @error = 10014,  @error_msg = 'Error while INSERTing into ACK_TRANSFER_DETAILCDC'
		PRINT 'Error while INSERTing into ACK_TRANSFER_DETAILCDC'
		goto Exit_Process
	END

end

UPDATE tlog 
SET   tlog.process_status     = @process_status,
       tlog.response_file_name = ttlog.response_file_name
FROM   transfer_log tlog
      ,ACK_TRANSFER_LOG ttlog
WHERE  tlog.transfer_uid = ttlog.transfer_uid

IF @error > 0
BEGIN
	SELECT @error_msg = 'Error While Updating Transfer Log'
	PRINT 'Error While Updating Transfer Log'
	goto Exit_Process
END


-----------------------------------------

CREATE TABLE #tmp_last_xfer
(
	document_uid	CHAR(16),
    transfer_uid	INT,
    last_ship_flag	INT
)
       
INSERT INTO #tmp_last_xfer  ( document_uid, transfer_uid)     
SELECT document_uid, MAX(transfer_uid)
FROM   TRANSFER_DETAIL
GROUP BY document_uid

SELECT @error = @@error

IF @error > 0
BEGIN
	SELECT @error = 10001,  @error_msg = 'Error while INSERTing into #tmp_last_xfer'
	PRINT 'Error while INSERTing into #tmp_last_xfer'
	goto Exit_Process
END

UPDATE #tmp_last_xfer
SET    last_ship_flag = DOCUMENT.ship_flag
FROM   DOCUMENT
WHERE  #tmp_last_xfer.document_uid = DOCUMENT.document_uid

SELECT @error = @@error

IF @error > 0
BEGIN
	SELECT @error = 10002, @error_msg = 'Error while updating the ship flag to #tmp_last_xfer'
	PRINT 'Error while updating the ship flag to #tmp_last_xfer'
	goto Exit_Process
END

	
		BEGIN transaction
		
		UPDATE doc
		SET doc.status_flag = CASE	WHEN ttd.ack_doc_status = 'M' THEN 'A'
									WHEN ttd.ack_doc_status = 'D' THEN 'P'
									ELSE doc.status_flag
								END,
			doc.ship_flag = 0
			
		FROM DOCUMENT doc join ACK_TRANSFER_DETAIL ttd on doc.document_uid = ttd.document_uid
			join #tmp_last_xfer tlt on ttd.document_uid = tlt.document_uid
		WHERE  ttd.transfer_status = 'A'
		AND ttd.transfer_uid = tlt.transfer_uid -- replacement of IF @last_transfer_uid = transfer_uid
		AND ttd.last_ship_flag = tlt.last_ship_flag -- replacement of IF @ack_ship_flag = @last_ship_flag
		
		SELECT @error = @@error

		IF @error > 0
		BEGIN
			ROLLBACK TRAN
			SELECT @error = 10004, @error_msg = 'Error while updating DOCUMENT for status flag'
			PRINT 'Error while updating TRANSFER DETAIL '
			SELECT @process_status = 'AF' -- Acknowledgement failed
		END
		ELSE	
		BEGIN	
			-- If update to the DOCUMENT succeeded, update TRANSFER_DETAIL
			UPDATE  TD
			SET     cdc_action_type   = ttd.cdc_action_type
 				,transfer_status   = ttd.transfer_status
 				,error_cd        = ttd.error_cd
 				,error_descr     = ttd.error_msg
 			FROM TRANSFER_DETAIL td join ACK_TRANSFER_DETAIL ttd 
 			on td.transfer_uid = ttd.transfer_uid
 			AND td.document_uid = ttd.document_uid
 			AND td.site_cd      = ttd.site_cd
	 		
	 		
			SELECT @error = @@error

			IF @error > 0
			BEGIN
				ROLLBACK TRAN
				SELECT @error = 10006, @error_msg = 'Error while updating TRANSFER_DETAIL'
				PRINT 'Error while updating TRANSFER DETAIL '
				SELECT @process_status = 'AF' -- Acknowledgement failed
				goto Exit_Process
			END
		END	

		IF @error = 0
		BEGIN
			COMMIT TRAN
		END
		ELSE
		BEGIN
			ROLLBACK TRAN
			SELECT @process_status = 'AF' -- Acknowledgement failed
		END
		
			

--CLOSE cur_document_uid
--DEALLOCATE cur_document_uid

-- Update/Insert Transfer_logcdc
UPDATE etlc
SET	site_cd = tlc.site_cd,
	process_status = tlc.process_status,
	file_type = tlc.file_type,
	request_file_name = tlc.request_file_name,
	response_file_name = tlc.response_file_name,
	record_count = tlc.record_count,
	create_dt = tlc.create_dt,
	acknowledge_dt = tlc.acknowledge_dt,
	error_cd = tlc.error_cd,
	error_descr = tlc.error_descr,
	transfer_uid_state = tlc.transfer_uid_state
from ACK_TRANSFER_LOGCDC tlc JOIN TRANSFER_LOGCDC etlc on tlc.transfer_uid = etlc.transfer_uid

SELECT @error = @@error

IF @error > 0
BEGIN
	SELECT @error = 10007, @error_msg = 'Error while updating TRANSFER_LOGCDC'
	PRINT 'Error while updating TRANSFER LOGCDC '
	SELECT @process_status = 'AF' -- Acknowledgement failed
	goto Exit_Process
END

INSERT INTO TRANSFER_LOGCDC
SELECT
	tlc.transfer_uid,
	tlc.site_cd,
	tlc.process_status,
	tlc.file_type,
	tlc.request_file_name,
	tlc.response_file_name,
	tlc.record_count,
	tlc.create_dt,
	tlc.acknowledge_dt,
	tlc.error_cd,
	tlc.error_descr,
	tlc.transfer_uid_state
from ACK_TRANSFER_LOGCDC tlc LEFT JOIN TRANSFER_LOGCDC etlc on tlc.transfer_uid = etlc.transfer_uid
where etlc.transfer_uid is null

SELECT @error = @@error

IF @error > 0
BEGIN
	SELECT @error = 10008, @error_msg = 'Error while Inserting TRANSFER_LOGCDC'
	PRINT 'Error while Inserting TRANSFER LOGCDC '
	SELECT @process_status = 'AF' -- Acknowledgement failed
	goto Exit_Process
END

-- Update/Insert Transfer_detailcdc
UPDATE etdc
SET	site_cd = tdc.site_cd,
	document_uid = tdc.document_uid,
	last_ship_flag = tdc.last_ship_flag,
	request_action_type = tdc.request_action_type,
	cdc_action_type = tdc.cdc_action_type,
	transfer_status = tdc.transfer_status,
	error_cd = tdc.error_cd,
	error_descr = tdc.error_descr

from ACK_TRANSFER_detailcdc tdc JOIN TRANSFER_DETAILCDC etdc 
on tdc.transfer_uid = etdc.transfer_uid
and tdc.document_uid = etdc.document_uid

SELECT @error = @@error

IF @error > 0
BEGIN
	SELECT @error = 10009, @error_msg = 'Error while updating TRANSFER_DETAILCDC'
	PRINT 'Error while updating TRANSFER DETAILCDC '
	SELECT @process_status = 'AF' -- Acknowledgement failed
	goto Exit_Process
END

INSERT INTO TRANSFER_DETAILCDC
SELECT
	tdc.transfer_uid,
	tdc.site_cd,
	tdc.document_uid,
	tdc.last_ship_flag,
	tdc.request_action_type,
	tdc.cdc_action_type,
	tdc.transfer_status,
	tdc.error_cd,
	tdc.error_descr
from ACK_TRANSFER_DETAILCDC tdc LEFT JOIN TRANSFER_DETAILCDC etdc on tdc.transfer_uid = etdc.transfer_uid
where etdc.transfer_uid is null and etdc.document_uid is null

SELECT @error = @@error

IF @error > 0
BEGIN
	SELECT @error = 10008, @error_msg = 'Error while Inserting TRANSFER_DETAILCDC'
	PRINT 'Error while Inserting TRANSFER DETAILCDC '
	SELECT @process_status = 'AF' -- Acknowledgement failed
	goto Exit_Process
END


IF @process_status = 'AP' 
BEGIN
	SELECT @process_status = 'AC' -- Acknowledgment Completed
END

-- UPDATE Tranfer Log
UPDATE  TRANSFER_LOG
SET     acknowledge_dt = tmp_transfer_log.acknowledge_dt
       ,process_status = @process_status
FROM    ACK_TRANSFER_log tmp_transfer_log
WHERE   tmp_transfer_log.transfer_uid = TRANSFER_LOG.transfer_uid


SELECT @error = @@error

IF @error > 0
BEGIN
	SELECT @error = 10006, @error_msg = 'Error while updating TRANSFER_LOG'
	PRINT 'Error while updating TRANSFER LOG '
	goto Exit_Process
END

DELETE FROM ACK_TRANSFER_LOG
DELETE FROM ACK_TRANSFER_DETAIL
DELETE FROM ACK_TRANSFER_LOGCDC
DELETE FROM ACK_TRANSFER_DETAILCDC

return 0

Exit_Process:
	UPDATE  TRANSFER_LOG
	SET     error_cd = @error, error_descr = @error_msg
	FROM    ACK_TRANSFER_log tmp_transfer_log
	WHERE   tmp_transfer_log.transfer_uid = TRANSFER_LOG.transfer_uid


	SELECT @error = @@error

	IF @error > 0
	BEGIN
		SELECT @error = 10006, @error_msg = 'Error while updating TRANSFER_LOG - Error'
		PRINT 'Error while updating TRANSFER LOG - Error'
		return @error
	END

-- Delete data fro mthe ACK tables

	DELETE FROM ACK_TRANSFER_LOG
	DELETE FROM ACK_TRANSFER_DETAIL
	DELETE FROM ACK_TRANSFER_LOGCDC
	DELETE FROM ACK_TRANSFER_DETAILCDC

	IF object_id ('tempdb..#tmp_last_xfer') IS NOT NULL
	BEGIN
		DROP TABLE #tmp_last_xfer
	END
	
	return 1
	








---------------------------------------------------------------------------------
----DECLARE VARIABLES
---------------------------------------------------------------------------------
--DECLARE @document_uid			CHAR(16)
--DECLARE @transfer_uid			INT
--DECLARE @site_cd				CHAR(4)
--DECLARE @ack_doc_status			CHAR(1)
--DECLARE @cdc_action_type		CHAR(1)
--DECLARE @error_cd				INT
--DECLARE @error_msg_tdtl			VARCHAR(256)

--DECLARE @error					INT
--DECLARE @error_msg				VARCHAR(256)
--DECLARE @process_status			CHAR(2)

--DECLARE @transfer_status		CHAR(1)
--DECLARE @last_transfer_uid		INT
--DECLARE @ack_ship_flag			INT
--DECLARE @last_ship_flag			INT

		
--SET @process_status = 'AP' -- Acknowledgement in process

--------------------------------------------------------------------------

--UPDATE tlog 
--SET   tlog.process_status     = @process_status,
--       tlog.response_file_name = ttlog.response_file_name
--FROM   transfer_log tlog
--      ,##tmp_transfer_log ttlog
--WHERE  tlog.transfer_uid = ttlog.transfer_uid

--IF @error > 0
--BEGIN
--	SELECT @error_msg = 'Error While Updating Transfer Log'
--	PRINT 'Error While Updating Transfer Log'
--	goto Exit_Process
--END


-------------------------------------------

--CREATE TABLE #tmp_last_transfer
--(
--	document_uid	CHAR(16),
--    transfer_uid	INT,
--    last_ship_flag	INT
--)
       
--INSERT INTO #tmp_last_transfer  ( document_uid, transfer_uid)     
--SELECT document_uid, MAX(transfer_uid)
--FROM   TRANSFER_DETAIL
--GROUP BY document_uid

--SELECT @error = @@error

--IF @error > 0
--BEGIN
--	SELECT @error = 10001,  @error_msg = 'Error while INSERTing into #tmp_last_transfer'
--	PRINT 'Error while INSERTing into #tmp_last_transfer'
--	goto Exit_Process
--END

--UPDATE #tmp_last_transfer
--SET    last_ship_flag = DOCUMENT.ship_flag
--FROM   DOCUMENT
--WHERE  #tmp_last_transfer.document_uid = DOCUMENT.document_uid

--SELECT @error = @@error

--IF @error > 0
--BEGIN
--	SELECT @error = 10002, @error_msg = 'Error while updating the ship flag to #tmp_last_transfer'
--	PRINT 'Error while updating the ship flag to #tmp_last_transfer'
--	goto Exit_Process
--END

--DECLARE cur_document_uid CURSOR FOR

--	SELECT transfer_uid, ack_doc_status, document_uid, transfer_status, last_ship_flag, site_cd, cdc_action_type, error_cd, error_msg FROM ##tmp_transfer_detail


--OPEN cur_document_uid
	
--	FETCH NEXT FROM cur_document_uid into @transfer_uid, @ack_doc_status, @document_uid, @transfer_status, @ack_ship_flag, @site_cd, @cdc_action_type, @error_cd, @error_msg_tdtl

--	WHILE @@FETCH_STATUS = 0
--	BEGIN
	
--		BEGIN transaction
		
--		IF @transfer_status = 'A' -- Success
--		BEGIN
			
--			-- Get Last Transfer UID
	
--			SELECT @last_transfer_uid = transfer_uid, @last_ship_flag = last_ship_flag 
--			FROM #tmp_last_transfer
--			WHERE document_uid = @document_uid
			
--			SELECT @error = @@error 

--			IF @error > 0
--			BEGIN
--				SELECT @error = 10003, @error_msg = 'Error while finding the last transfer'
--				PRINT 'Error while finding the last transfer'
--				goto process_next
--			END
			
--			IF @last_transfer_uid = @transfer_uid -- Acknowledgement recd for the last transfer
--			BEGIN
--				-- Check whether the document is changed since the last transfer	
--				-- Check IF the ship flag in transfer detail AND ack ship flag are same
--				IF @ack_ship_flag = @last_ship_flag
--				BEGIN
--					-- Check the Ack status	
--					IF @ack_doc_status = 'M' -- Move
--					BEGIN
					
--						UPDATE DOCUMENT
--						SET    status_flag = 'A'
--						WHERE  document_uid = @document_uid
						
--					END
--					ELSE IF @ack_doc_status = 'D' -- Delete
--					BEGIN
--						UPDATE DOCUMENT
--						SET    status_flag = 'P'
--						WHERE  document_uid = @document_uid					

--					END

--					SELECT @error = @@error

--					IF @error > 0
--					BEGIN
--						SELECT @error = 10004, @error_msg = 'Error while updating DOCUMENT for status flag'
--						PRINT 'Error while updating DOCUMENT for status flag'
--						goto process_next
--					END
					
--					-- ReSET the Ship Flag = 0
					
--					UPDATE DOCUMENT
--					SET    ship_flag = 0
--					WHERE  document_uid = @document_uid
					
--					SELECT @error = @@error

--					IF @error > 0
--					BEGIN
--						SELECT @error = 10005, @error_msg = 'Error while updating DOCUMENT for ship flag'
--						PRINT 'Error while updating DOCUMENT for ship flag'
--						goto process_next
--					END

								
--				END
--			END
--		END

--		IF @error > 0
--		BEGIN
--			SELECT @process_status = 'AF' -- Acknowledgement failed
--		END

--		-- UPDATE Transfer Detail
		
--		UPDATE  TRANSFER_DETAIL
--		SET     cdc_action_type   = @cdc_action_type
-- 			,transfer_status   = @transfer_status
-- 			,error_cd        = @error_cd
-- 			,error_descr     = @error_msg_tdtl
-- 		WHERE  transfer_uid = @transfer_uid
-- 		AND    document_uid  = @document_uid
-- 		AND    site_cd      = @site_cd
 		
 		
--		SELECT @error = @@error

--		IF @error > 0
--		BEGIN
--			SELECT @error = 10006, @error_msg = 'Error while updating TRANSFER_DETAIL'
--			PRINT 'Error while updating TRANSFER DETAIL '
--			goto process_next
--		END
	
--		COMMIT
--		process_next:
--			IF (@error > 0) 
--			BEGIN
--			  ROLLBACK TRAN
--			END


--		FETCH NEXT FROM cur_document_uid into @transfer_uid, @ack_doc_status, @document_uid, @transfer_status, @ack_ship_flag, @site_cd, @cdc_action_type, @error_cd, @error_msg_tdtl

--	END	
	

--CLOSE cur_document_uid
--DEALLOCATE cur_document_uid

--IF @process_status = 'AP' 
--BEGIN
--	SELECT @process_status = 'AC' -- Acknowledgment Completed
--END

---- UPDATE Tranfer Log
--UPDATE  TRANSFER_LOG
--SET     acknowledge_dt = tmp_transfer_log.acknowledge_dt
--       ,process_status = @process_status
--FROM    ##tmp_transfer_log tmp_transfer_log
--WHERE   tmp_transfer_log.transfer_uid = TRANSFER_LOG.transfer_uid


--SELECT @error = @@error

--IF @error > 0
--BEGIN
--	SELECT @error = 10006, @error_msg = 'Error while updating TRANSFER_LOG'
--	PRINT 'Error while updating TRANSFER LOG '
--	goto Exit_Process
--END


--Exit_Process:
--	UPDATE  TRANSFER_LOG
--	SET     error_cd = @error, error_descr = @error_msg
--	FROM    ##tmp_transfer_log tmp_transfer_log
--	WHERE   tmp_transfer_log.transfer_uid = TRANSFER_LOG.transfer_uid


--	SELECT @error = @@error

--	IF @error > 0
--	BEGIN
--		SELECT @error = 10006, @error_msg = 'Error while updating TRANSFER_LOG - Error'
--		PRINT 'Error while updating TRANSFER LOG - Error'
--		return @error
--	END

---- DROP all Temp Tables
---- Verifies if the table exist before deletion

--IF object_id ('tempdb..##tmp_transfer_log') IS NOT NULL
--BEGIN
--	DROP TABLE ##tmp_transfer_log
--END

--IF object_id ('tempdb..##tmp_transfer_detail') IS NOT NULL
--BEGIN
--	DROP TABLE ##tmp_transfer_detail
--END
GO
/****** Object:  StoredProcedure [dbo].[usp_data_transfer_export]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_data_transfer_export]
@site_cd	    CHAR(4),
@transfer_uid   INT
AS

/*
Change History:
SD 9/2/2015 Added ARV_PROFYLAXIS table to export as part of release 4.8 changes
SD 3/28/2014 Added PHER tables to export as part of release 4.5 changes
LG 2/20/07 CQ 2637 Include STARHS labs.
LG 1/23/06 Add 2.1 changes example db changes such as Alter statements etc.
LG 12/13/05 eHARS00002234 - Added the following code 		 ,(CASE WHEN @remote_state_R_flag = 'R' THEN 'U' ELSE 'R' END)
		Records flagged as an 'A' then changed to 'R' are now transferred to the CDC. Originally they were deleted on the CDC side.

CUK1 - SUKUMAR THOUTIREDDY - Defects CQ#2222, CQ#1386, CQ#2040 (NJ Request), Birth history records (production issue)
Modified Date: 20051215

GAC - 2007.12.04 - removed '-q' and '"' from all 'bcp-in' and 'bcp-out'
	statements for SQL 2005 implementation using global temp tables.

EWV5 - ANTONIO SMITH - CQ# 3240 Remove xp_cmdshell SQL Server Access.
                                
EWV5 - ANTONIO SMITH - CQ# 3619 Remove all references to POSTTEST_questionnaire table.

EWV5 - ANTONIO SMITH - CQ# 3240 Corrected issue with provider_code export file.
*/

/*
  Release:     eHARS 4.1
  Author:      Sarveswara Rao
  Description: i. New temp table #doc_last_action_1 was introduced to load data that was previously 
               loaded into #doc_last_action temp table and also new query was added to load #doc_last_action_1
               data and cdc_action_type column from transfer_detail table into #doc_last_action temp table

               ii. Removed the transfer_detail table from all queries that load data into #docs_to_transfer 
               temp table as cdc_action_type is now part of #doc_last_action temp table itself
  
               iii. Indexes were created on ehars_uid and document_uid columns in #qualifying_pv temp table

               iv.  NOT IN and IN clauses in the WHERE clause of all queries that load data into #docs_to_transfer 
               temp table are converted into LEFT OUTER JOIN and INNER JOIN condtions
*/

SET NOCOUNT ON

-------------------------------------------------------------------------------
--DECLARE VARIABLES
-------------------------------------------------------------------------------

DECLARE @error    						INT
DECLARE @error_msg  					VARCHAR(256)
DECLARE @pref_value 					VARCHAR(32)
DECLARE @remote_state_D_flag 			CHAR(1)
DECLARE @remote_state_R_flag 			CHAR(1)

--Ehars 3.1.2
DECLARE  @mjp_version_tracking_out		VARCHAR(256)
DECLARE  @current_version				VARCHAR(16)
DECLARE  @mjp_sharing_level             VARCHAR(20)
DECLARE  @mjp_site                      VARCHAR(10)
--EHARS 3.1.2

DECLARE @report_setup                  VARCHAR(256)
DECLARE @zip_name 						VARCHAR(512)
DECLARE @site_date                      VARCHAR(50)
DECLARE @process_status                 varchar(2)
DECLARE @rowcnt							int

DECLARE @TransferCreateDt				Datetime		-- SD 4.12.1 

select @process_status = 'TP'

SET @pref_value = (SELECT pref_value FROM preference WHERE pref_name ='reportSETup')

IF @pref_value IS NULL
BEGIN
	SELECT @error = 1002, @error_msg = 'Error while retriving reporting preference from the PREFERENCE table'
	PRINT 'Error while retriving reporting preference from the PREFERENCE table'
	goto Exit_Processing
END

IF EXISTS(SELECT 1 FROM preference 
		WHERE pref_type ='DATA_TRANSFER' 
		AND pref_value ='STATE')
BEGIN
	SET @remote_state_D_flag = 'D'
	SET @remote_state_R_flag = 'R'
END
ELSE
BEGIN
	SET @remote_state_D_flag = 'U'
	SET @remote_state_R_flag = 'U'
END

-----------------------------------------------------
--Start Processing
-----------------------------------------------------
-- SD 4.10 - Transfer Log record is being created by the application before this procedure is called.

--INSERT INTO TRANSFER_LOG (
--	transfer_uid,
--	site_cd,
--	process_status,
--	file_type,
--	request_file_name,
--	response_file_name,
--	record_count,
----	preference_used,
--	create_dt,
--	acknowledge_dt,
--	error_cd,
--	error_descr)
--SELECT 
--	@transfer_uid,
--	@site_Cd,
--	@process_status,
--	'Document',
--	NULL,
--	NULL,
--	0,
----	NULL,
--	getdate(),
--	NULL,
--	0,
--	NULL

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = 'Error while inserting into TRANSFER_LOG'
	PRINT 'Error while inserting into TRANSFER_LOG'
	goto Exit_Processing
END


------------------------ Check to determine the reportable documents ----------
CREATE table #reportableDoc (
    report_doc VARCHAR(32)
)
  
DECLARE @rep_array_value VARCHAR(50) 
DECLARE @rep_array VARCHAR(50)
DECLARE @rep_separator_position INT 
DECLARE @rep_separator char(1) 

SET @rep_array = (SELECT pref_value FROM preference WHERE pref_name ='reportableDocument')

SELECT @error = @@error
 
IF @error > 0
BEGIN
	SELECT @error_msg = 'Error while retriving reportable document preference from the PREFERENCE table'
	PRINT 'Error while retriving reportable document preference from the PREFERENCE table'
	goto Exit_Processing
END

  SET @rep_separator =','
  SET @rep_array = @rep_array + @rep_separator

  WHILE patindex('%' + @rep_separator + '%' , @rep_array) <> 0 
  BEGIN
    SELECT @rep_separator_position = patindex('%' + @rep_separator + '%' , @rep_array)
    SELECT @rep_array_value = left(@rep_array, @rep_separator_position - 1)

	INSERT #reportableDoc VALUES 
	(
    		@rep_array_value
	)
    SELECT @rep_array = stuff(@rep_array, 1, @rep_separator_position, '')
  END

CREATE TABLE #qualifying_pv
(
	ehars_uid	char(16)
	,document_uid	char(16)
	,site_cd char(4)
	,reportable_preference char(1)
	,reportable_status char(1)
)

-- SD 4.1 New indices were created to speed up queries
CREATE INDEX ehars_uid_qpv_ind
ON #qualifying_pv (ehars_uid)
   
CREATE INDEX document_uid_uid_qpv_ind
ON #qualifying_pv (document_uid)

INSERT INTO #qualifying_pv
SELECT	ehars_uid,
	document_uid,
	site_cd,
	'N',
	'Y'
FROM document
WHERE document_type_cd = '000'
AND ship_flag <> 0
AND status_flag IN (SELECT report_doc FROM #reportableDoc)


SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = 'Error while inserting records into #qualifying_pv for documents in reportable status'
	PRINT 'Error while inserting records into #qualifying_pv for documents in reportable status'
	goto Exit_Processing
END

INSERT INTO #qualifying_pv 
SELECT	ehars_uid,
	document_uid,
	site_cd,
	'N',
	'N'
FROM document
WHERE document_type_cd = '000'
AND ship_flag <> 0
AND status_flag NOT IN (SELECT report_doc FROM #reportableDoc)
AND status_flag <> 'D'

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = 'Error while inserting records into #qualifying_pv for documents which are not in reportable status'
	PRINT 'Error while inserting records into #qualifying_pv for documents which are not in reportable status'
	goto Exit_Processing
END

INSERT INTO #qualifying_pv 
SELECT	ehars_uid,
	document_uid,
	site_cd,
	'N',
	'D'
FROM document
WHERE document_type_cd = '000'
AND ship_flag <> 0
AND status_flag = 'D'

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = 'Error while inserting records into #qualifying_pv for documents which are status_flag D'
	PRINT 'Error while inserting records into #qualifying_pv for documents which are status_flag D'
	goto Exit_Processing
END
-------------------------------------------------------------------------------
-------------------------- CHECK REPORTING STATUS IN PREFERENCE TABLE ---------
-------------------------------------------------------------------------------
DECLARE @rowno INT
DECLARE @reportType VARCHAR(8)
DECLARE @fromRange VARCHAR(6)
DECLARE @toRange VARCHAR(6) 
DECLARE @yearFrom INT
DECLARE @yearTo INT
DECLARE @monthFrom INT
DECLARE @monthTo INT

SET @rowno = 0
SET @reportType = 0
SET @fromRange = NULL
SET @toRange = NULL
SET @yearFrom = 0
SET @yearTo = 0
SET @monthFrom = 0
SET @monthTo = 0

CREATE table #reportPreference (
    rowno INT,
    pref_value VARCHAR(32)
)


  DECLARE @separator_position INT 
  DECLARE @array_value VARCHAR(1000) 
  DECLARE @separator char(1) 

  SET @separator ='|'
  SET @pref_value = @pref_value + @separator

  WHILE patindex('%' + @separator + '%' , @pref_value) <> 0 
  BEGIN
    	SELECT @separator_position = patindex('%' + @separator + '%' , @pref_value)
    	SELECT @array_value = left(@pref_value, @separator_position - 1)
	SET @rowno = @rowno+1

	INSERT #reportPreference VALUES 
	(
		@rowno,
    		@array_value
	)

    SELECT @pref_value = stuff(@pref_value, 1, @separator_position, '')
  END

SET @reportType = (SELECT pref_value FROM #reportPreference WHERE rowno =1)
SET @fromRange = (SELECT pref_value FROM #reportPreference WHERE rowno =2)
SET @toRange = (SELECT pref_value FROM #reportPreference WHERE rowno =3)

IF @fromRange IS NOT NULL
BEGIN
    SELECT @separator_position = patindex('%-%', @fromRange)

	IF (@separator_position <> 0)
	BEGIN
    		SELECT @yearFrom = left(@fromRange, @separator_position - 1)
		SELECT @monthFrom = right(@fromRange, len(@fromRange) - @separator_position)
	END
	ELSE
	BEGIN
		SELECT @yearFrom = @fromRange 
	END
END


IF @toRange IS NOT NULL
BEGIN
    SELECT @separator_position = patindex('%-%', @toRange)

	IF (@separator_position <> 0)
	BEGIN
    		SELECT @yearTo = left(@toRange, @separator_position - 1)
		SELECT @monthTo = right(@toRange, len(@toRange) - @separator_position)
	END
	ELSE
	BEGIN
		SELECT @yearTo = @toRange 
	END
END

IF @yearFrom IS NULL
	SET @yearFrom = 0

IF @yearTo IS NULL
	SET @yearTo = 0

IF @monthFrom IS NULL
	SET @monthFrom = 0

IF @monthTo IS NULL
	SET @monthTo = 0


-- CASES
-- 1	AIDS	 calc_obs_uid = 272 AND calc_obs_value = A, 7
-- 2	AIDS&HIV	 (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2)
-- 3	AIDS&HIVsub	 (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2) AND ( calc_obs_uid = 274 between ages ? AND ?)
-- 4	AIDS&HIV&EXP	 (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2,3)
-- 5	AIDS&HIVsub&EXP	 (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2,3) AND ( calc_obs_uid = 274 between ages ? AND ?)
-- 6	AIDS&HIV&SER	 (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2,4,5)
-- 7	AIDS&HIVsub&SER	 (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2,4,5) AND ( calc_obs_uid = 274 between ages ? AND ?)
-- 8	AIDS&HIV&EXP&SER	 (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2,3,4,5)
-- 9	AIDS&HIVsub&EXP&SER	 (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2,3,4,5) AND ( calc_obs_uid = 274 between ages ? AND ?)
-- 10	AIDS&SER	 (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 4,5)
-- 11	AIDS&EXP	 (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 3)
-- 12	AIDS&EXP&SER	 (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,3,4,5)

SELECT calob.document_uid, calob.calc_obs_uid, calob.calc_obs_value
INTO #hiv_calc_obs
FROM #qualifying_pv qpv, calc_observation calob
WHERE qpv.document_uid = calob.document_uid
--AND qpv.site_cd = @site_cd
AND calob.calc_obs_uid ='272' 

SELECT @error = @@error
IF @error > 0
BEGIN
	SELECT @error_msg = 'Error while inserting into #hiv_calc_obs for calc_obs_uid 272'
	PRINT 'Error while inserting into #hiv_calc_obs for calc_obs_uid 272'
	goto Exit_Processing
END

SELECT calob.document_uid, calob.calc_obs_uid, calob.calc_obs_value
INTO #aids_calc_obs
FROM #qualifying_pv qpv, calc_observation calob
WHERE qpv.document_uid = calob.document_uid
--AND qpv.site_cd = @site_cd
AND calob.calc_obs_uid ='273' 
AND calob.calc_obs_value IN('A','7')

SELECT @error = @@error
IF @error > 0
BEGIN
	SELECT @error_msg = 'Error while inserting into #aids_calc_obs for calc_obs_uid 273'
	PRINT 'Error while inserting into #aids_calc_obs for calc_obs_uid 273'
	goto Exit_Processing
END

SELECT calob.document_uid, calob.calc_obs_uid, calob.calc_obs_value
INTO #year_calc_obs
FROM #qualifying_pv qpv, calc_observation calob
WHERE qpv.document_uid = calob.document_uid
--AND qpv.site_cd = @site_cd
AND calob.calc_obs_uid ='274' 

SELECT @error = @@error
IF @error > 0
BEGIN
	SELECT @error_msg = 'Error while inserting into #year_calc_obs for calc_obs_uid 274'
	PRINT 'Error while inserting into #aids_calc_obs for calc_obs_uid 274'
	goto Exit_Processing
END

SELECT calob.document_uid, calob.calc_obs_uid, calob.calc_obs_value
INTO #month_calc_obs
FROM #qualifying_pv qpv, calc_observation calob
WHERE qpv.document_uid = calob.document_uid
--AND qpv.site_cd = @site_cd
AND calob.calc_obs_uid ='275' 

SELECT @error = @@error
IF @error > 0
BEGIN
	SELECT @error_msg = 'Error while inserting into #year_calc_obs for calc_obs_uid 274'
	PRINT 'Error while inserting into #aids_calc_obs for calc_obs_uid 274'
	goto Exit_Processing
END

IF @reportType = '1' --AIDS calc_obs_uid = 272 AND calc_obs_value = A, 7
BEGIN
	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #aids_calc_obs aids
	WHERE qpv.document_uid = aids.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 1'
		PRINT 'Error while updating #qualifying_pv for reportType 1'
		goto Exit_Processing
	END

END
ELSE IF @reportType = '2' --AIDS&HIV	(calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2)
BEGIN
	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #aids_calc_obs aids
	WHERE qpv.document_uid = aids.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 2 - AIDS'
		PRINT 'Error while updating #qualifying_pv for reportType 2 - AIDS'
		goto Exit_Processing
	END

	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv	
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.calc_obs_value IN('1','2')

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 2 - HIV'
		PRINT 'Error while updating #qualifying_pv for reportType 2 - HIV'
		goto Exit_Processing
	END

END
ELSE IF @reportType = '3' --AIDS&HIVsub (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2) AND ( calc_obs_uid = 274 between ages ? AND ?)
BEGIN
	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #aids_calc_obs aids
	WHERE qpv.document_uid = aids.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 3 - AIDS'
		PRINT 'Error while updating #qualifying_pv for reportType 3 - AIDS'
		goto Exit_Processing
	END

	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv, #year_calc_obs yearAge, #month_calc_obs monthAge
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.document_uid = yearAge.document_uid
	AND yearAge.document_uid = monthAge.document_uid
	AND hiv.calc_obs_value IN('1','2')
	AND ( ( yearAge.calc_obs_value = @yearFrom
	        AND monthAge.calc_obs_value >= @monthFrom
	       ) or (
	        yearAge.calc_obs_value > @yearFrom
	       )
	    )
	AND ( ( yearAge.calc_obs_value = @yearTo
	        AND monthAge.calc_obs_value <= @monthTo
	       ) or (
	        yearAge.calc_obs_value < @yearTo
	       )
	    )

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 3 - YEAR/MONTH'
		PRINT 'Error while updating #qualifying_pv for reportType 3 - YEAR/MONTH'
		goto Exit_Processing
	END


END
ELSE IF @reportType = '4' --AIDS&HIV&EXP (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2,3)
BEGIN
	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #aids_calc_obs aids
	WHERE qpv.document_uid = aids.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 4 - AIDS'
		PRINT 'Error while updating #qualifying_pv for reportType 4 - AIDS'
		goto Exit_Processing
	END

	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.calc_obs_value IN('1','2','3')

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 4 - HIV&EXP'
		PRINT 'Error while updating #qualifying_pv for reportType 4 - HIV&EXP'
		goto Exit_Processing
	END

END
ELSE IF @reportType = '5' --AIDS&HIVsub&EXP (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2,3) AND ( calc_obs_uid = 274 between ages ? AND ?)
BEGIN
	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #aids_calc_obs aids
	WHERE qpv.document_uid = aids.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 5 - AIDS'
		PRINT 'Error while updating #qualifying_pv for reportType 5 - AIDS'
		goto Exit_Processing
	END

	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv, #year_calc_obs yearAge, #month_calc_obs monthAge
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.document_uid = yearAge.document_uid
	AND yearAge.document_uid = monthAge.document_uid
	AND hiv.calc_obs_value IN('1','2')
	AND ( ( yearAge.calc_obs_value = @yearFrom
	        AND monthAge.calc_obs_value >= @monthFrom
	       ) or (
	        yearAge.calc_obs_value > @yearFrom
	       )
	    )
	AND ( ( yearAge.calc_obs_value = @yearTo
	        AND monthAge.calc_obs_value <= @monthTo
	       ) or (
	        yearAge.calc_obs_value < @yearTo
	       )
	    )

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 5 - YEAR/MONTH'
		PRINT 'Error while updating #qualifying_pv for reportType 5 - YEAR/MONTH'
		goto Exit_Processing
	END

	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.calc_obs_value = '3'

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 5 - EXP'
		PRINT 'Error while updating #qualifying_pv for reportType 5 - EXP'
		goto Exit_Processing
	END


END
ELSE IF @reportType = '6' --AIDS&HIV&SER (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2,4,5)
BEGIN
	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #aids_calc_obs aids
	WHERE qpv.document_uid = aids.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 6 - AIDS'
		PRINT 'Error while updating #qualifying_pv for reportType 6 - AIDS'
		goto Exit_Processing
	END

	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.calc_obs_value IN('1','2','4','5')

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 6 - HIV'
		PRINT 'Error while updating #qualifying_pv for reportType 6 - HIV'
		goto Exit_Processing
	END

END
ELSE IF @reportType = '7' --AIDS&HIVsub&SER (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2,4,5) AND ( calc_obs_uid = 274 between ages ? AND ?)
BEGIN
	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #aids_calc_obs aids
	WHERE qpv.document_uid = aids.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 7 - YEAR/MONTH'
		PRINT 'Error while updating #qualifying_pv for reportType 7 - YEAR/MONTH'
		goto Exit_Processing
	END

	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv, #year_calc_obs yearAge, #month_calc_obs monthAge
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.document_uid = yearAge.document_uid
	AND yearAge.document_uid = monthAge.document_uid
	AND hiv.calc_obs_value IN('1','2')
	AND ( ( yearAge.calc_obs_value = @yearFrom
	        AND monthAge.calc_obs_value >= @monthFrom
	       ) or (
	        yearAge.calc_obs_value > @yearFrom
	       )
	    )
	AND ( ( yearAge.calc_obs_value = @yearTo
	        AND monthAge.calc_obs_value <= @monthTo
	       ) or (
	        yearAge.calc_obs_value < @yearTo
	       )
	    )

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 7 - YEAR/MONTH'
		PRINT 'Error while updating #qualifying_pv for reportType 7 - YEAR/MONTH'
		goto Exit_Processing
	END

	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.calc_obs_value IN ('4','5')

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 7 - SER'
		PRINT 'Error while updating #qualifying_pv for reportType 7 - SER'
		goto Exit_Processing
	END
END
ELSE IF @reportType = '8' --AIDS&HIV&EXP&SER (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2,3,4,5)
BEGIN
	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #aids_calc_obs aids
	WHERE qpv.document_uid = aids.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 8 - AIDS'
		PRINT 'Error while updating #qualifying_pv for reportType 8 - AIDS'
		goto Exit_Processing
	END

	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.calc_obs_value IN('1','2','3','4','5')

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 8 - YEAR/MONTH'
		PRINT 'Error while updating #qualifying_pv for reportType 8 - YEAR/MONTH'
		goto Exit_Processing
	END

END
ELSE IF @reportType = '9' --AIDS&HIVsub&EXP&SER (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,2,3,4,5) AND ( calc_obs_uid = 274 between ages ? AND ?)
BEGIN
	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #aids_calc_obs aids
	WHERE qpv.document_uid = aids.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 9 - AIDS'
		PRINT 'Error while updating #qualifying_pv for reportType 9 - AIDS'
		goto Exit_Processing
	END

	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv, #year_calc_obs yearAge, #month_calc_obs monthAge
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.document_uid = yearAge.document_uid
	AND yearAge.document_uid = monthAge.document_uid
	AND hiv.calc_obs_value IN('1','2')
	AND ( ( yearAge.calc_obs_value = @yearFrom
	        AND monthAge.calc_obs_value >= @monthFrom
	       ) or (
	        yearAge.calc_obs_value > @yearFrom
	       )
	    )
	AND ( ( yearAge.calc_obs_value = @yearTo
	        AND monthAge.calc_obs_value <= @monthTo
	       ) or (
	        yearAge.calc_obs_value < @yearTo
	       )
	    )

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 9 - YEAR/MONTH'
		PRINT 'Error while updating #qualifying_pv for reportType 9 - YEAR/MONTH'
		goto Exit_Processing
	END


	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.calc_obs_value IN ('3','4','5')

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 9 - EXP/SER'
		PRINT 'Error while updating #qualifying_pv for reportType 9 - EXP/SER'
		goto Exit_Processing
	END
END
ELSE IF @reportType = '10' --AIDS&SER (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 4,5)
BEGIN
	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #aids_calc_obs aids
	WHERE qpv.document_uid = aids.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 10 - AIDS'
		PRINT 'Error while updating #qualifying_pv for reportType 10 - AIDS'
		goto Exit_Processing
	END


	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.calc_obs_value IN ('4','5')

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 10 - SER'
		PRINT 'Error while updating #qualifying_pv for reportType 10 - SER'
		goto Exit_Processing
	END
END
ELSE IF @reportType = '11' --AIDS&EXP (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 3)
BEGIN
	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #aids_calc_obs aids
	WHERE qpv.document_uid = aids.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 11 - AIDS'
		PRINT 'Error while updating #qualifying_pv for reportType 11 - AIDS'
		goto Exit_Processing
	END


	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.calc_obs_value = '3'

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 11 - EXP'
		PRINT 'Error while updating #qualifying_pv for reportType 11 - EXP'

		goto Exit_Processing
	END

END
ELSE IF @reportType = '12' --AIDS&EXP&SER (calc_obs_uid = 272 AND calc_obs_value = A, 7) AND (calc_obs_uid = 273 AND calc_obs_value = 1,3,4,5)
BEGIN
	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #aids_calc_obs aids
	WHERE qpv.document_uid = aids.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 12 - AIDS'
		PRINT 'Error while updating #qualifying_pv for reportType 12 - AIDS'
		goto Exit_Processing
	END


	UPDATE #qualifying_pv SET reportable_preference = 'Y'
	FROM #qualifying_pv qpv, #hiv_calc_obs hiv
	WHERE qpv.document_uid = hiv.document_uid
	AND hiv.calc_obs_value IN ('3','4','5')

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating #qualifying_pv for reportType 12 - EXP/SER'
		PRINT 'Error while updating #qualifying_pv for reportType 12 - EXP/SER'
		goto Exit_Processing
	END

END

-------------------------------------------------------------------------------
------------------- END OF REPORTING STATUS CHECK IN PREFERENCE TABLE ---------
-------------------------------------------------------------------------------

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 primary key was added to speed up queries
-- EHARS-4676 SD 4.2 removed primary key because of the duplicate key issues... added an index.
CREATE TABLE #docs_to_transfer
(
	 document_uid		char(16) 
	,document_type_cd	char(3)
	,surv_method		varchar(3)
	,rpt_medium		varchar(3)
	,complete_dt		char(8)
	,enter_dt		char(8)
	,site_cd		char(4)
	,rep_hlth_dept_cd	varchar(7)
	,rep_hlth_dept_name	varchar(52)
	,initinvest		char(1)
	,initdocuid		char(16)
	,pv_categ		char(1)
	,pv_hcateg		char(1)
	--,notes			text
	,ehars_uid		char(16)
	,modify_dt		char(8)
	,status_flag		char(1)
	,receive_dt		char(8)
	,ship_flag 		int
	,document_source_cd	varchar(12)	
	,facility_uid	varchar(16) --SD 4.0
	,dt_action_flag 	char(1)
)

-- eHARS_4676 SD 4.2 New indices were created to speed up queries
CREATE INDEX doc_uid_docstoxfer_ind
ON #docs_to_transfer (document_uid)

-- SD 4.1: cdc_action_type is loaded into #doc_last_action temp table
SELECT MAX(tdtl.transfer_uid) transfer_uid
	,tdtl.document_uid
INTO #doc_last_action_1
FROM document doc, #qualifying_pv qpv, transfer_detail tdtl
WHERE doc.ehars_uid = qpv.ehars_uid
AND doc.document_uid = tdtl.document_uid
GROUP BY tdtl.document_uid

SELECT td.document_uid,td.cdc_action_type INTO #doc_last_action FROM 
transfer_detail td JOIN
#doc_last_action_1 max_t_uid ON td.transfer_uid=max_t_uid.transfer_uid AND td.document_uid=max_t_uid.document_uid

-- SD 4.1 New index was created to speed up queries
CREATE INDEX document_uid_la_ind
   ON #doc_last_action (document_uid)

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = 'Error while inserting into #doc_last_action'
	PRINT 'Error while inserting into #doc_last_action'
	goto Exit_Processing
END


/*  Insert PV's with Action Flag as I-Insert which meets the preference AND in the reportable status
AND which are not transfered to CDC previously */

-- SD 4.0 Add new column facility_uid from document table
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,'I'
	FROM document doc, #qualifying_pv qpv, #doc_last_action la
	WHERE doc.document_uid = qpv.document_uid
	AND qpv.document_uid = la.document_uid
	AND qpv.reportable_preference = 'Y'
	AND qpv.reportable_status = 'Y'
--	AND qpv.site_cd = @site_cd
	AND (
	(
	  la.cdc_action_type IN ('D','R')
	) or (
	  la.cdc_action_type IS NULL
	))


SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1001: Error while inserting into #docs_to_transfer'
	PRINT '1001: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END


-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 NOT IN was converted to LEFT OUTER JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,'I'
	FROM document doc JOIN  #qualifying_pv qpv ON doc.document_uid = qpv.document_uid
	LEFT OUTER JOIN #doc_last_action la ON doc.document_uid=la.document_uid
	WHERE qpv.reportable_preference = 'Y'
	AND qpv.reportable_status = 'Y'
	AND la.document_uid IS NULL
--	AND qpv.site_cd = @site_cd


SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1002: Error while inserting into #docs_to_transfer'
	PRINT '1002: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END


/*  Insert PV's with Action Flag as U-Update which meets the preference AND in the reportable status
AND which are transfered to CDC previously */

-- SD 4.0 Add new column facility_uid from document table
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,'U'
	FROM document doc, #qualifying_pv qpv, #doc_last_action la
	WHERE doc.document_uid = qpv.document_uid
	AND qpv.document_uid = la.document_uid
	AND qpv.reportable_preference = 'Y'
	AND qpv.reportable_status = 'Y'
--	AND qpv.site_cd = @site_cd
	AND la.cdc_action_type IN ('I','U')

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1003: Error while inserting into #docs_to_transfer'
	PRINT '1003: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END


/* Insert the document with Action Flag as I-Insert whose status is A/M 
for the documents associated with the PVs which are inserted with Action Flag I/U
AND are not transfered to CDC previously */

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,'I'
	FROM document doc JOIN #doc_last_action la ON doc.document_uid = la.document_uid
	JOIN #qualifying_pv qpv ON doc.ehars_uid = qpv.ehars_uid
	WHERE reportable_preference = 'Y'
	AND reportable_status = 'Y'
--				AND site_cd = @site_cd)
	AND doc.document_uid = la.document_uid
	AND doc.status_flag IN ('A', 'M')
	AND doc.document_type_cd <> '000'
	AND (
	(
	  la.cdc_action_type IN ('D','R')
	) or (
	  la.cdc_action_type IS NULL
	))

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1004: Error while inserting into #docs_to_transfer'
	PRINT '1004: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 NOT IN was converted to LEFT OUTER JOIN
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,'I'
	FROM document doc JOIN #qualifying_pv qpv ON doc.ehars_uid=qpv.ehars_uid
	LEFT OUTER JOIN #doc_last_action la ON doc.document_uid=la.document_uid
	
	WHERE reportable_preference = 'Y'
	AND reportable_status = 'Y'
--				AND site_cd = @site_cd)
	AND doc.status_flag IN ('A', 'M')
	AND doc.document_type_cd <> '000'
	AND la.document_uid IS NULL

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1005: Error while inserting into #docs_to_transfer'
	PRINT '1005: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END

/* Insert the docuemnt with Action Flag as U-Update whose status is A/M 
for the documents associated with the PVs which are inserted with Action Flag I/U
AND are transfered to CDC previously */

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,'U'
	FROM document doc JOIN #doc_last_action la ON doc.document_uid = la.document_uid
	JOIN #qualifying_pv qpv ON doc.ehars_uid=qpv.ehars_uid
	WHERE reportable_preference = 'Y'
	AND reportable_status = 'Y'
--				AND site_cd = @site_cd)
	AND doc.status_flag IN ('A', 'M')
	AND doc.document_type_cd <> '000'
	AND la.cdc_action_type IN ('I', 'U') 

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1006: Error while inserting into #docs_to_transfer'
	PRINT '1006: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END

/* Insert the docuemnt with Action Flag as D-Delete whose status is D
for the documents associated with the PVs which are inserted with Action Flag I/U
AND are transfered to CDC previously */


-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,@remote_state_D_flag
	FROM document doc JOIN  #doc_last_action la ON doc.document_uid = la.document_uid
	JOIN  #qualifying_pv qpv ON doc.ehars_uid = qpv.ehars_uid
	WHERE reportable_preference = 'Y'
	AND reportable_status = 'Y'
--				AND site_cd = @site_cd)
	AND doc.status_flag = 'D'
	AND doc.document_type_cd <> '000'
	AND la.cdc_action_type IN ('I', 'U') 

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1007: Error while inserting into #docs_to_transfer'
	PRINT '1007: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,@remote_state_D_flag
	FROM document doc JOIN  #doc_last_action la ON doc.document_uid = la.document_uid
	JOIN  #qualifying_pv qpv ON doc.ehars_uid = qpv.ehars_uid
	WHERE reportable_preference = 'Y'
				AND reportable_status = 'Y'
--				AND site_cd = @site_cd)
	AND doc.status_flag = 'D'
	AND doc.document_type_cd <> '000'
	AND la.cdc_action_type IS NULL


SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1008: Error while inserting into #docs_to_transfer'
	PRINT '1008: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END
--------------------------------------------------------------------------------------------------------

/* Insert the docuemnt (including PV) with Action Flag as R-Remove whose PV does not meet the preference AND status is not D
AND are transfered to CDC previously */

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,@remote_state_R_flag
	FROM document doc JOIN #doc_last_action la ON doc.document_uid = la.document_uid
	JOIN #qualifying_pv qpv ON doc.ehars_uid = qpv.ehars_uid
	WHERE reportable_preference = 'N'
	AND reportable_status <> 'D'
--				AND site_cd = @site_cd)
	AND la.cdc_action_type IN ('I', 'U')


SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1009: Error while inserting into #docs_to_transfer'
	PRINT '1009: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium

		,doc.complete_dt

		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,@remote_state_R_flag
	FROM document doc JOIN #doc_last_action la ON doc.document_uid = la.document_uid
	JOIN #qualifying_pv qpv ON doc.ehars_uid = qpv.ehars_uid
	WHERE reportable_preference = 'N'
	AND reportable_status <> 'D'
--				AND site_cd = @site_cd)
	AND la.cdc_action_type IS NULL


SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1010: Error while inserting into #docs_to_transfer'
	PRINT '1010: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END

/* Insert the PV which is not transfered to CDC but one of its document has been transfered earlier 
since it was associated with some other PV in previous transferes */

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 NOT IN was converted to LEFT OUTER JOIN
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,@remote_state_R_flag
	FROM document doc JOIN  #qualifying_pv qpv ON doc.document_uid = qpv.document_uid
	JOIN #docs_to_transfer doct ON doc.ehars_uid= doct.ehars_uid
	LEFT OUTER JOIN #doc_last_action la ON doc.document_uid= la.document_uid
	WHERE doct.dt_action_flag = @remote_state_R_flag
	AND la.document_uid IS NULL 
	AND qpv.reportable_preference = 'N'
	AND qpv.reportable_status <> 'D'
--	AND qpv.site_cd = @site_cd

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1011: Error while inserting into #docs_to_transfer'
	PRINT '1011: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END

-----------------------------------------------------------------------------------------------


/* Insert the docuemnt (including PV) with Action Flag as R-Remove whose PV meets the preference 
but not in a reportable state AND status is not D AND are transfered to CDC previously */

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,(CASE WHEN @remote_state_R_flag = 'R' THEN 'U' ELSE 'R' END) --eHARS00002234
	FROM document doc JOIN  #doc_last_action la ON doc.document_uid = la.document_uid
	JOIN #qualifying_pv qpv ON doc.ehars_uid = qpv.ehars_uid
	WHERE reportable_preference = 'Y'
	AND reportable_status = 'N'
--				AND site_cd = @site_cd)
	AND la.cdc_action_type IN ('I', 'U') 


SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1009: Error while inserting into #docs_to_transfer'
	PRINT '1009: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,(CASE WHEN @remote_state_R_flag = 'R' THEN 'U' ELSE 'R' END) --added 12/22/05 part of 2234
	FROM document doc JOIN  #doc_last_action la ON doc.document_uid = la.document_uid
	JOIN  #qualifying_pv qpv ON doc.ehars_uid = qpv.ehars_uid
	WHERE reportable_preference = 'Y'
	AND reportable_status = 'N'
--				AND site_cd = @site_cd)
	AND la.cdc_action_type IS NULL


SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1010: Error while inserting into #docs_to_transfer'
	PRINT '1010: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END

/* Insert the PV which is not transfered to CDC but one of its document has been transfered earlier 
since it was associated with some other PV in previous transferes */

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 NOT IN was converted to LEFT OUTER JOIN
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,@remote_state_R_flag
	FROM document doc JOIN #qualifying_pv qpv ON doc.document_uid = qpv.document_uid
	JOIN #docs_to_transfer docst ON doc.ehars_uid = docst.ehars_uid
	LEFT OUTER JOIN #doc_last_action la ON doc.document_uid = la.document_uid
	WHERE docst.dt_action_flag = @remote_state_R_flag
	AND la.document_uid IS NULL
	AND qpv.reportable_preference = 'Y'
	AND qpv.reportable_status = 'N'
--	AND qpv.site_cd = @site_cd

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1011: Error while inserting into #docs_to_transfer'
	PRINT '1011: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END

--------------------------------------------------------------------------------------------


/* Insert the docuemnt (including PV) with Action Flag as D-Delete whose PV status is D
AND are transfered to CDC previously */

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,@remote_state_D_flag
	FROM document doc JOIN #doc_last_action la ON doc.document_uid = la.document_uid
	JOIN #qualifying_pv qpv ON doc.ehars_uid = qpv.ehars_uid
	WHERE reportable_status = 'D'
--				AND site_cd = @site_cd)
	AND la.cdc_action_type IN ('I', 'U') 


SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1012: Error while inserting into #docs_to_transfer'
	PRINT '1012: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,@remote_state_D_flag
	FROM document doc JOIN #doc_last_action la ON doc.document_uid = la.document_uid
	JOIN #qualifying_pv qpv ON doc.ehars_uid = qpv.ehars_uid
	WHERE reportable_status = 'D'
--				AND site_cd = @site_cd)
	AND la.cdc_action_type IS NULL


SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1013: Error while inserting into #docs_to_transfer'
	PRINT '1013: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END


/* Insert the PV which is not transfered to CDC but one of its document has been transfered earlier 
since it was associated with some other PV in previous transferes */

-- SD 4.0 Add new column facility_uid from document table
-- SD 4.1 transfer_detail table was removed from where clause
-- SD 4.1 NOT IN was converted to LEFT OUTER JOIN
-- SD 4.1 IN was converted to JOIN
	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,doc.facility_uid -- SD 4.0
		,@remote_state_D_flag
	FROM document doc JOIN #qualifying_pv qpv ON doc.document_uid = qpv.document_uid
	JOIN #docs_to_transfer docst ON doc.ehars_uid = docst.ehars_uid
	LEFT OUTER JOIN #doc_last_action la ON doc.document_uid = la.document_uid
	WHERE docst.dt_action_flag = @remote_state_D_flag
	AND la.document_uid IS NULL
--	AND qpv.reportable_preference = 'N'
	AND qpv.reportable_status = 'D'
--	AND qpv.site_cd = @site_cd

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1014: Error while inserting into #docs_to_transfer'
	PRINT '1014: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END

/* Update the documEnt (including PV) status to P-Purge whose status is D
AND are not transfered to CDC previously */
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

-- SD 4.1 NOT IN was converted to LEFT OUTER JOIN
UPDATE document SET status_flag = 'P', ship_flag = 0
FROM document doc JOIN #qualifying_pv qpv ON doc.ehars_uid = qpv.ehars_uid
LEFT OUTER JOIN #docs_to_transfer docst ON doc.document_uid=docst.document_uid
--	AND qpv.site_cd = @site_cd
WHERE docst.document_uid IS NULL
AND doc.status_flag = 'D'

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = 'Error while updating status_flag AND ship_flag in DOCUMENT table'
	PRINT 'Error while updatting status_flag AND ship_flag in DOCUEMENT table'
	goto Exit_Processing
END

----------------------------------------------------------------------------------------------------------
/* Reset the ship_flag to 0 for the documents & PVs which are not transfered since the PV status 
does is not in the reportable state and has not been transfered to CDC in previous transferes */

-- SD 4.1 NOT IN was converted to LEFT OUTER JOIN
UPDATE document SET ship_flag = 0
FROM document doc JOIN #qualifying_pv qpv ON doc.ehars_uid = qpv.ehars_uid
LEFT OUTER JOIN #docs_to_transfer docst ON doc.document_uid = docst.document_uid 
WHERE docst.document_uid IS NULL


SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = 'Error while resetting ship_flag in DOCUEMENT table'
	PRINT 'Error while resetting ship_flag in DOCUEMENT table'
	goto Exit_Processing
END

SET TRANSACTION ISOLATION LEVEL READ COMMITTED

-- SD 4.2 Remove duplicates from #docs_to_transfer
-- Create #mutidocs that will list all the document_uid having mutiple rows in the #docs_to_transfer table
select document_uid, COUNT(1) doccount
into #multidocs
from #docs_to_transfer
group by document_uid
having COUNT(1) > 1

select @rowcnt = count(*) from #multidocs

-- If there are documents with multiple records, remove the duplicates
IF @rowcnt > 0
begin
	-- Create #docs_to_transfer2 with additional column rownum based on the Document_uid and dt_action_flag.
	select ROW_NUMBER() Over (Order by d.Document_uid, d.dt_action_flag desc) - RANK() Over (Order by d.Document_uid) + 1 as rownum, d.*
	into #docs_to_transfer2
	from #docs_to_transfer d join #multidocs md on d.document_uid = md.document_uid

	-- Delete all the records from #docs_to_transfer where the document_uid has multiple records
	delete d
	from #docs_to_transfer d join #multidocs md on d.document_uid = md.document_uid

	-- Load the first row from #docs_to_transfer2 for each document_uid

	insert into #docs_to_transfer
	select 
		 document_uid		
		,document_type_cd	
		,surv_method		
		,rpt_medium		
		,complete_dt	
		,enter_dt		
		,site_cd		
		,rep_hlth_dept_cd	
		,rep_hlth_dept_name	
		,initinvest		
		,initdocuid		
		,pv_categ		
		,pv_hcateg		
		--,notes		
		,ehars_uid		
		,modify_dt		
		,status_flag	
		,receive_dt		
		,ship_flag 		
		,document_source_cd	
		,facility_uid	
		,dt_action_flag 
	from #docs_to_transfer2
	where rownum = 1
end

--------------------------------------------------------------------------------------------------------
/* Insert the docuemnt (including PV) which are transfered from a remote site with Action Flag as remote site's 
request action */

/*	INSERT INTO #docs_to_transfer
	SELECT 	
		 doc.document_uid
		,doc.document_type_cd
		,doc.surv_method
		,doc.rpt_medium
		,doc.complete_dt
		,doc.enter_dt
		,doc.site_cd
		,doc.rep_hlth_dept_cd
		,doc.rep_hlth_dept_name
		,doc.initinvest
		,doc.initdocuid
		,doc.pv_categ
		,doc.pv_hcateg
		--,doc.notes
		,doc.ehars_uid
		,doc.modify_dt
		,doc.status_flag
		,doc.receive_dt
		,doc.ship_flag
		,doc.document_source_cd
		,tdtl.request_action_type
	FROM document doc, #doc_last_action la, transfer_detail tdtl
	WHERE doc.ehars_uid IN (SELECT ehars_uid FROM #qualifying_pv 
				WHERE site_cd <> @site_cd)
	AND doc.document_uid = la.document_uid
	AND la.document_uid = tdtl.document_uid
	AND la.transfer_uid = tdtl.transfer_uid

SELECT @error = @@error 
IF @error > 0
BEGIN
	SELECT @error_msg = '1015: Error while inserting into #docs_to_transfer'
	PRINT '1015: Error while inserting into #docs_to_transfer'
	goto Exit_Processing
END
*/
-------------------------------------------------------------------------------------------------------
	
	-----------------------------------------------------------------------------
	-- EXTRACT DATA FROM CHILD TABLES BASED ON #docs_to_transfer document_uid ---
	-----------------------------------------------------------------------------

	-----------------------------------------------------------------------------
	-- ADDRESS
	-----------------------------------------------------------------------------
	SELECT 	
		 a.document_uid
		,a.address_seq	
		,a.address_type_cd	
		,a.city_fips	
		,a.city_name	
		,a.county_fips	
		,a.county_name	
		,a.state_cd	
		,a.country_cd	
		,a.country_usd	
		,a.doc_belongs_to	
		,b.dt_action_flag 
		,a.address_dt				-- SD 4.7 New column added to this release
		,a.address_original_type_cd -- SD 4.11 New column added to this release
		,a.geographic_level			-- SD 4.11 New column added to this release
	INTO
		#tmp_address
	FROM
		address a,
		#docs_to_transfer b 
	WHERE 
		a.document_uid = b.document_uid and
		a.doc_belongs_to ='PERSON' -- as per rules in data transfer layout

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_address'
		PRINT 'Error while inserting into #tmp_address'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------
	-- 	BIRTH_HISTORY
	-----------------------------------------------------------------------------	
	SELECT 	
		 a.document_uid	
		,a.birth_place	
		--,a.first_pnc_visit_dt		-- SD 4.13 Removed the column	
		--,a.last_pnc_visit_dt		-- SD 4.13 Removed the column		
		--,a.num_pnc_visits			-- SD 4.13 Removed the column		
		--,a.num_prev_live_births	-- SD 4.13 Removed the column		
		--,a.last_live_birth_dt		-- SD 4.13 Removed the column		
		--,a.last_normal_menses_dt	-- SD 4.13 Removed the column		
		,a.delivery_method	
		,a.birth_wt	
		,a.birth_type	
		,a.congenital_disorders		-- SD 4.13 renamed birth_defects to congenital_disorders	
		,a.congenital_disorders_cd	-- SD 4.13 renamed birth_defects_cd to congenital_disorders_cd	
		,a.infant_transfer	
		,a.breastfed_discharge				
		,a.neonatal_status	
		,a.neonatal_status_weeks	
		--,a.month_preg_pnc			-- SD 4.13 Removed the column	
		--,a.zido_preg				-- SD 4.10 Removed the column
		--,a.zido_week				-- SD 4.10 Removed the column
		--,a.zido_labor				-- SD 4.10 Removed the column
		--,a.zido_prior_preg		-- SD 4.10 Removed the column
		--,a.other_art_preg			-- SD 4.10 Removed the column
		--,a.other_art_preg_cd		-- SD 4.10 Removed the column
		--,a.other_art_labor		-- SD 4.10 Removed the column
		--,a.other_art_labor_cd		-- SD 4.10 Removed the column
		--,a.maternal_dob			-- SD 4.13 Removed the column		
		--,a.maternal_sndx			-- SD 4.13 Removed the column	
		--,a.maternal_stateno		-- SD 4.13 Removed the column	
		--,a.maternal_birth_country_cd	-- SD 4.13 Removed the column		
		--,a.maternal_birth_country_usd	-- SD 4.13 Removed the column	
		,a.rupture_dt				-- SD 4.13 Added new column
		,a.rupture_time				-- SD 4.13 Added new column
		,a.delivery_dt				-- SD 4.13 Added new column
		,a.delivery_time			-- SD 4.13 Added new column
		,a.birth_history_avail		-- SD 4.13 Added new column
		,b.dt_action_flag 
	INTO
		#tmp_birth_history
	FROM
		BIRTH_HISTORY a,
		#docs_to_transfer b 
	WHERE 
		a.document_uid = b.document_uid


	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_birth_history'
		PRINT 'Error while inserting into #tmp_birth_history'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------	
	-- 	CALC_OBSERVATION
	-----------------------------------------------------------------------------	
	SELECT 	
		 a.document_uid
		,a.calc_obs_uid	
		,a.calc_obs_value	
		,b.dt_action_flag 
	INTO
		#tmp_calc_observation
	FROM
		CALC_OBSERVATION a,
		#docs_to_transfer b 
	WHERE 
		a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_calc_observation'
		PRINT 'Error while inserting into #tmp_calc_observation'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------	
	-- 	CONSENT_questionnaire
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		,a.cdate1
		,a.cconsent1
		,a.cconsentvisit1
		,a.cdate2
		,a.cconsent2
		,a.cconsentvisit2
		--,a.reason_cd 2.1
		,b.dt_action_flag 
	INTO
		#tmp_consent_questionnaire
	FROM
		consent_questionnaire a,
		#docs_to_transfer b 
	WHERE 
		a.document_uid = b.document_uid


	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_consent_questionnaire'
		PRINT 'Error while inserting into #tmp_consent_questionnaire'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------	
	-- 	DEATH
	-----------------------------------------------------------------------------	
	SELECT 	
		 a.document_uid	
		,dod	
		,county_fips	
		,county_name	
		,state_cd	
		,country_cd	
		,country_usd	
		,place	
		,autopsy	
		,city_fips	
		,city_name	
		,b.dt_action_flag 
	INTO
		#tmp_death
	FROM
		DEATH a,
		#docs_to_transfer b 
	WHERE 
		a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_death'
		PRINT 'Error while inserting into #tmp_death'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------	
	-- 	DEATH_DX
	-----------------------------------------------------------------------------	
	SELECT 	
		 a.document_uid	
		,a.line_number	
		,a.icd_cd	
		,a.icd_cd_type	
		,a.descr	
		,a.line	
		,a.position
		,a.nature_of_injury	
		,b.dt_action_flag 
	INTO
		#tmp_death_dx
	FROM
		DEATH_DX a,
		#docs_to_transfer b
	WHERE 
		a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_death_dx'
		PRINT 'Error while inserting into #tmp_death_dx'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------	
	-- 	FACILITY_EVENT
	-----------------------------------------------------------------------------	
	-- SD 4.0 Remove provider_uid as it will not be transferred
	SELECT
		 a.document_uid	
		,a.facility_uid	
        --,a.provider_uid -- SD 4.0
		,a.event_cd	
		,a.doc_belongs_to	
		,b.dt_action_flag 
               
	INTO
		#tmp_facility_event
	FROM
		FACILITY_EVENT a, #docs_to_transfer b
	WHERE
		a.document_uid = b.document_uid and
		a.doc_belongs_to ='PERSON' -- As per data transfer layout

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_facility_event'
		PRINT 'Error while inserting into #tmp_facility_event'
		goto Exit_Processing
	END

	-- SD 4.0 Since no Provider information should be transferred, PROVIDER_CODE table
	-- need not be transferred.
 --   -----------------------------------------------------------------------------	
	---- 	PROVIDER_CODE
	-------------------------------------------------------------------------------	
 --   -- SD 4.0 specialty_cd size reduced from varchar(50) to varchar(3)    
 --   CREATE table #tmp_provider_code (
 --          provider_uid VARCHAR(16),
 --          specialty_cd	VARCHAR(3),
 --          last_name VARCHAR(50),
 --          first_name VARCHAR(50)
 --   ) 

 --   INSERT INTO  #tmp_provider_code
 --       ( 
	--	 a.provider_uid
	--	,a.specialty_cd	
 --       ,last_name 
	--	,first_name
 --       )
	--SELECT a.provider_uid,a.specialty_cd, ' ' AS last_name, ' ' AS first_name
	--FROM 
	--	PROVIDER_CODE a, #docs_to_transfer b, #tmp_facility_event f 
	--WHERE   a.provider_uid=f.provider_uid and
 --               f.document_uid=b.document_uid and 
 --               f.doc_belongs_to ='PERSON'  -- As per data transfer layout

	--SELECT @error = @@error 
	--IF @error > 0
	--BEGIN
	--	SELECT @error_msg = 'Error while inserting into #tmp_provider_code'
	--	PRINT 'Error while inserting into #tmp_provider_code'
	--	goto Exit_Processing
	--END
 
	-----------------------------------------------------------------------------	
	-- 	ID
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid	
		,a.id_cd	
		,a.id_seq	
		,a.id_value	
		,a.doc_belongs_to	
		,b.dt_action_flag 
	INTO
		#tmp_id
	FROM
		ID a, #docs_to_transfer b
	WHERE
		a.document_uid = b.document_uid
		AND a.id_cd IN (SELECT column_cd FROM transfer_element
				WHERE table_name = 'ID'
				AND column_name = 'id_cd'
				AND category = '2')

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_id'
		PRINT 'Error while inserting into #tmp_id'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------	
	-- 	LAB
	-----------------------------------------------------------------------------	
	-- SD 4.0 include facility_uid, result_range_lower and upper from LAB, use renamed column lab_test_type instead of type
	SELECT
		 a.document_uid	
		,a.lab_seq	
		,a.specimen	
		,a.sample_dt	
		,a.receive_dt	
		,a.manufacturer	
		,a.clia_uid	
		,a.lab_test_type --a.type -- SD 4.0
		,a.lab_test_cd	-- a.loinc_cd renamed to lab_test_cd -- SD 4.0
		,a.result_interpretation	
		,a.result	
		,a.result_units	
		--,a.result_range -- SD 4.0 Commented	
		,a.result_rpt_dt	
		,a.case_cd	
		,a.comments	
		,a.starhs_sample_id	
		,a.sreason
		,a.facility_uid -- SD 4.0
		,a.result_range_lower -- SD 4.0 new column
		,a.result_range_upper -- SD 4.0 new column
		,b.dt_action_flag 
	INTO
		#tmp_lab
	FROM
		LAB a, #docs_to_transfer b
	WHERE
		a.document_uid = b.document_uid
-- -- 		AND ( - removed CQ 2637
-- -- 			a.starhs_sample_id IS NULL
-- -- 		OR
-- -- 			a.starhs_sample_id = ''
-- -- 		)

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_lab'
		PRINT 'Error while inserting into #tmp_lab'
		goto Exit_Processing
	END

	-- SD 4.0 Moved #tmp_facility_code after LAB so that facility information for facility_uids
	-- from LAB can also be loaded 
	-----------------------------------------------------------------------------
	--  FACILITY_CODE
	-----------------------------------------------------------------------------
	SELECT DISTINCT
		 a.facility_uid	
		,a.name1	
		,a.name2	
--		,a.street_address1	
--		,a.street_address2	
		,a.city_fips	
		,a.city_name	
		,a.county_fips	
		,a.county_name	
		,a.state_cd	
		,a.zip_cd	
		,a.country_cd	
		,a.country_usd
--		,a.phone	
		,a.facility_type_cd	
		,a.setting_cd	
		,a.funding_cd
		,a.funding_flag
--		,b.document_uid
--		,b.dt_action_flag
	INTO
		#tmp_facility_code 
	FROM
		 FACILITY_CODE a,#tmp_facility_event b
	WHERE 
		a.facility_uid =b.facility_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_facility_code from #tmp_facility_event table' --SD 4.0 message modified
		PRINT 'Error while inserting into #tmp_facility_code from #tmp_facility_event table' --SD 4.0 message modified
		goto Exit_Processing
	END

	-- SD 4.0 Insert facility information based on the facility_uid from #docs_to_transfer table
	--INSERT INTO #tmp_facility_code 
	--	(facility_uid	
	--	,name1	
	--	,name2	
	--	,city_fips	
	--	,city_name	
	--	,county_fips	
	--	,county_name	
	--	,state_cd	
	--	,zip_cd	
	--	,country_cd	
	--	,country_usd
	--	,facility_type_cd	
	--	,setting_cd	
	--	,funding_cd
	--	,funding_flag)
	SELECT DISTINCT
		 a.facility_uid	
		,a.name1	
		,a.name2	
		,a.city_fips	
		,a.city_name	
		,a.county_fips	
		,a.county_name	
		,a.state_cd	
		,a.zip_cd	
		,a.country_cd	
		,a.country_usd
		,a.facility_type_cd	
		,a.setting_cd	
		,a.funding_cd
		,a.funding_flag
	into #tmp_facility_doc
	FROM
		 FACILITY_CODE a join 
		 (select distinct dt.facility_uid from #docs_to_transfer dt left outer join #tmp_facility_code tfc
					on dt.facility_uid = tfc.facility_uid
			where tfc.facility_uid is null) as df on a.facility_uid =df.facility_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into ##tmp_facility_doc from #docs_to_transfer table' 
		PRINT 'Error while inserting into #tmp_facility_code from #docs_to_transfer table' 
		goto Exit_Processing
	END

	INSERT INTO #tmp_facility_code 
		(facility_uid	
		,name1	
		,name2	
		,city_fips	
		,city_name	
		,county_fips	
		,county_name	
		,state_cd	
		,zip_cd	
		,country_cd	
		,country_usd
		,facility_type_cd	
		,setting_cd	
		,funding_cd
		,funding_flag)
	SELECT 
		 a.facility_uid	
		,a.name1	
		,a.name2	
		,a.city_fips	
		,a.city_name	
		,a.county_fips	
		,a.county_name	
		,a.state_cd	
		,a.zip_cd	
		,a.country_cd	
		,a.country_usd
		,a.facility_type_cd	
		,a.setting_cd	
		,a.funding_cd
		,a.funding_flag
	from #tmp_facility_doc a

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_facility_code from #tmp_facility_doc table' 
		PRINT 'Error while inserting into #tmp_facility_code from #docs_to_transfer table' 
		goto Exit_Processing
	END



	-- SD 4.0 Insert facility information based on the facility_uid from #tmp_lab table
	--INSERT INTO #tmp_facility_code 
	--	(facility_uid	
	--	,name1	
	--	,name2	
	--	,city_fips	
	--	,city_name	
	--	,county_fips	
	--	,county_name	
	--	,state_cd	
	--	,zip_cd	
	--	,country_cd	
	--	,country_usd
	--	,facility_type_cd	
	--	,setting_cd	
	--	,funding_cd
	--	,funding_flag)
	SELECT DISTINCT
		 a.facility_uid	
		,a.name1	
		,a.name2	
		,a.city_fips	
		,a.city_name	
		,a.county_fips	
		,a.county_name	
		,a.state_cd	
		,a.zip_cd	
		,a.country_cd	
		,a.country_usd
		,a.facility_type_cd	
		,a.setting_cd	
		,a.funding_cd
		,a.funding_flag
	INTO #tmp_facility_lab
	FROM
		 FACILITY_CODE a join 
		 (select distinct tl.facility_uid from #tmp_lab tl left outer join #tmp_facility_code tfc
					on tl.facility_uid = tfc.facility_uid
			where tfc.facility_uid is null) as lf on a.facility_uid = lf.facility_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_facility_lab from #tmp_lab table' 
		PRINT 'Error while inserting into #tmp_facility_code from #tmp_lab table' 
		goto Exit_Processing
	END

	INSERT INTO #tmp_facility_code 
		(facility_uid	
		,name1	
		,name2	
		,city_fips	
		,city_name	
		,county_fips	
		,county_name	
		,state_cd	
		,zip_cd	
		,country_cd	
		,country_usd
		,facility_type_cd	
		,setting_cd	
		,funding_cd
		,funding_flag)
	SELECT 
		 a.facility_uid	
		,a.name1	
		,a.name2	
		,a.city_fips	
		,a.city_name	
		,a.county_fips	
		,a.county_name	
		,a.state_cd	
		,a.zip_cd	
		,a.country_cd	
		,a.country_usd
		,a.facility_type_cd	
		,a.setting_cd	
		,a.funding_cd
		,a.funding_flag
	FROM #tmp_facility_lab a

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_facility_code from #tmp_facility_lab table' 
		PRINT 'Error while inserting into #tmp_facility_code from #tmp_lab table' 
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------	
	-- 	OBSERVATION
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		,a.obs_uid	
		,a.obs_value	
		,b.dt_action_flag 
	INTO
		#tmp_observation
	FROM
		OBSERVATION a, #docs_to_transfer b
	WHERE 
		a.document_uid = b.document_uid
		AND a.obs_uid IN (SELECT column_cd FROM transfer_element
				WHERE table_name = 'OBSERVATION_CODE'
				AND column_name = 'obs_uid'
				AND category = '2')

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_observation'
		PRINT 'Error while inserting into #tmp_observation'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------	
	-- 	OI
	-----------------------------------------------------------------------------
	SELECT
		 a.document_uid	
		,a.oi_seq	
		,a.oi_cd	
		,a.dx	
		,a.dx_dt	
		,b.dt_action_flag 
	INTO
		#tmp_oi
	FROM
		OI a, #docs_to_transfer b
	WHERE 
		a.document_uid = b.document_uid


	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_oi'
		PRINT 'Error while inserting into #tmp_oi'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------	
	-- 	PERSON
	-----------------------------------------------------------------------------
	SELECT
		 a.document_uid	
		,a.dob	
		,a.dob_alias	
		,a.birth_country_cd	
		,a.birth_country_usd	
		,a.vital_status	
		,a.birth_sex	
		,a.current_sex	
		,a.gender_identity	
		,a.race1	
		,a.race2	
		,a.race3	
		,a.race4	
		,a.race5	
		,a.ethnicity1
		,a.ethnicity2
		,a.hars_race	
		,a.hars_xrace	
		,a.hcw	
		,a.hcw_occup	
		,a.doc_belongs_to	
--		,a.education	
		,a.other_gender_identity				-- SD 4.13 Added new column
		,a.gender_identity_dt					-- SD 4.13 Added new column
		,a.sexual_orientation					-- SD 4.13 Added new column
		,a.other_sexual_orientation				-- SD 4.13 Added new column
		,a.sexual_orientation_dt				-- SD 4.13 Added new column

		,b.dt_action_flag 
	INTO
		#tmp_person 
	FROM
		PERSON a,
		#docs_to_transfer b 
	WHERE 
		a.document_uid = b.document_uid
		AND a.doc_belongs_to IN ('PERSON', 'MOTHER', 'CHILD')



	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_person'
		PRINT 'Error while inserting into #tmp_person'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------
	-- 	PERSON_NAME
	----------------------------------------------------------------------------- 
	SELECT
		 a.document_uid	
		,a.person_name_seq	
		,a.name_use_cd	
		,a.last_name_sndx	
--		,a.first_name_sndx
		,a.doc_belongs_to
		,b.dt_action_flag 
	INTO
		#tmp_person_name
	FROM
		person_name a,
		#docs_to_transfer b 
	WHERE 
		a.document_uid = b.document_uid
		AND a.doc_belongs_to = 'PERSON'

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_person_name'
		PRINT 'Error while inserting into #tmp_person_name'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------
	-- 	PERSON_VIEW_DETAIL
	-----------------------------------------------------------------------------	
	SELECT
		 a.ehars_uid
		,a.table_name
		,a.field_name
		,a.document_uid
		,a.id_cd
		,a.doc_type
		,a.display_name
--		,a.possible_values
		,a.override_flag
		,a.create_dt		
		,a.modify_dt		
		,a.report_source	
--		,a.completed_by
--		,a.override_value
		,b.dt_action_flag
	INTO
		#tmp_person_view_detail
	FROM
		PERSON_VIEW_DETAIL a, #docs_to_transfer b
	WHERE
		a.document_uid = b.document_uid

	
	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_person_view_detail'
		PRINT 'Error while inserting into #tmp_person_view_detail'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------	
	-- 	PRETEST_questionnaire
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		,a.ucts
		,a.uqintd
		,a.ureas3_1
		,a.ureas3_2
		,a.ureas3_3
		,a.ureas3_4
		,a.ureas3_5
--		,a.ureas3_6
--		,a.ureas3_7
		,a.ur3_5sp
		,a.uptests
		,a.upastp
		,a.ufposd
		,a.ufposa
		,a.ufpstyp
--		,a.ufps_site
		,a.ufps_state
		,a.urs4e_1
		,a.urs4e_2
		,a.urs4e_3
		,a.urs4e_4
		,a.urs4e_5
--		,a.urs4e_6
--		,a.urs4e_7
		,a.ur4e_5sp
		,a.ulstnd
		,a.ulstngs
--		,a.ulstngs_site
		,a.ulstngs_state
		,a.unumtsts
		,a.uftstd
		--,a.uhrt		--SD 4.9 Removed the column
		--,a.uhrta1		--SD 4.9 Removed the column
		--,a.uhrtbd		--SD 4.9 Removed the column
		,a.qhrtnw
		--,a.uhrted		--SD 4.9 Removed the column
		,a.ungtst
		,a.upnumtsts 
		,a.ufposd_self		-- SD 4.13 Column add for this release
		,a.ulstnd_self		-- SD 4.13 Column add for this release
		,a.unumtsts_self		-- SD 4.13 Column add for this release
		,b.dt_action_flag
	INTO
		#tmp_pretest_questionnaire
	FROM
		PRETEST_questionnaire a, #docs_to_transfer b
	WHERE
		a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_pretest_questionnaire'
		PRINT 'Error while inserting into #tmp_pretest_questionnaire'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------	
	-- 	RIDR
	-----------------------------------------------------------------------------	
	SELECT
		 a.duplicate_status
		,a.state_cd
		,a.stateno
		,a.last_verify_dt
		,a.verify_by
--		,a.comments
		,a.document_uid
		,a.ehars_uid
		,b.dt_action_flag
	INTO
		#tmp_ridr
	FROM
		RIDR a, #docs_to_transfer b
	WHERE
		a.document_uid = b.document_uid


	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_ridr'
		PRINT 'Error while inserting into #tmp_ridr'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------	
	-- 	RISK
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		,a.risk_seq
		,a.risk_cd
		,a.risk_value
		,a.trans_first_dt
		,a.trans_last_dt
		,a.detail
--		,a.display
		,a.resolution_dt
		,a.cophi_status
		,b.dt_action_flag
	INTO
		#tmp_risk
	FROM
		RISK a, #docs_to_transfer b
	WHERE
		a.document_uid = b.document_uid


	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_risk'
		PRINT 'Error while inserting into #tmp_risk'
		goto Exit_Processing
	END


	-- SD 4.0 New table to be exported from release 4.0 onwards
	-----------------------------------------------------------------------------	
	-- 	LAB_GENOTYPE
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		,a.lab_seq	
		,a.genotype_sequence
		,b.dt_action_flag 
	INTO
		#tmp_lab_genotype
	FROM
		lab_genotype a join #docs_to_transfer b on a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_lab_genotype'
		PRINT 'Error while inserting into #tmp_lab_genotype'
		goto Exit_Processing
	END


	-- SD 4.5 New table to be exported from release 4.5 onwards for PHER observation data 4.13 commented
	-----------------------------------------------------------------------------	
	-- 	PHER_OBSERVATION
	-----------------------------------------------------------------------------	
--	SELECT
--		 a.document_uid
--		,a.pher_obs_uid
--		,a.pher_obs_value
--		,a.pher_dt
--		,a.pher_tm
--		,a.other_specify
----		,a.comments				--Comments will not be submitted to CDC... so removed here
--		,b.dt_action_flag 
--	INTO
--		#tmp_pher_observation
--	FROM
--		PHER_OBSERVATION a join #docs_to_transfer b on a.document_uid = b.document_uid
--		join TRANSFER_ELEMENT te on te.column_cd = a.pher_obs_uid and table_name = 'PHER_OBSERVATION_CODE'
--				AND column_name = 'pher_obs_uid'
--				AND category = '2'
--		--AND a.obs_uid IN (SELECT column_cd FROM transfer_element
--		--		WHERE table_name = 'OBSERVATION_CODE'
--		--		AND column_name = 'obs_uid'
--		--		AND category = '2')

--	SELECT @error = @@error 
--	IF @error > 0
--	BEGIN
--		SELECT @error_msg = 'Error while inserting into #tmp_pher_observation'
--		PRINT 'Error while inserting into #tmp_pher_observation'
--		goto Exit_Processing
--	END


	-- SD 4.5 New table to be exported from release 4.5 onwards for PHER Antiretroviral data 4.13 commented
	-----------------------------------------------------------------------------	
	-- 	PHER_ANTIRETROVIRAL
	-----------------------------------------------------------------------------	
	--SELECT
	--	 a.document_uid
	--	,a.pher_question_uid
	--	,a.pher_arv_seq
	--	,a.drug_cd
	--	,a.other_specify
	--	,a.drug_refused
	--	,a.receive_dt
	--	,a.receive_tm
	--	,a.type_of_administration
	--	,a.drug_start_dt
	--	,a.drug_start_gestational_age
	--	,a.art_completed
	--	,a.drug_stopped
	--	,a.drug_stop_dt
	--	,a.drug_start_tm
	--	,a.drug_stop_cd_1
	--	,a.drug_stop_cd_2
	--	,a.drug_stop_cd_3
	--	,a.drug_stop_cd_4
	--	,b.dt_action_flag 
	--INTO
	--	#tmp_pher_antiretroviral
	--FROM
	--	PHER_ANTIRETROVIRAL a join #docs_to_transfer b on a.document_uid = b.document_uid

	--SELECT @error = @@error 
	--IF @error > 0
	--BEGIN
	--	SELECT @error_msg = 'Error while inserting into #tmp_pher_antiretroviral'
	--	PRINT 'Error while inserting into #tmp_pher_antiretroviral'
	--	goto Exit_Processing
	--END


	-- SD 4.5 New table to be exported from release 4.5 onwards for PHER Sibling data 4.13 commented
	-------------------------------------------------------------------------------	
	---- 	PHER_SIBLING
	-------------------------------------------------------------------------------	
	--SELECT
	--	 a.document_uid
	--	,a.pher_sibl_seq
	--	,a.doc_belongs_to
	--	,a.sibling_dob
	--	,a.sibling_sero
	--	,a.sibling_stateno
	--	,a.sibling_cityno
	--	,b.dt_action_flag 
	--INTO
	--	#tmp_pher_sibling
	--FROM
	--	PHER_SIBLING a join #docs_to_transfer b on a.document_uid = b.document_uid

	--SELECT @error = @@error 
	--IF @error > 0
	--BEGIN
	--	SELECT @error_msg = 'Error while inserting into #tmp_pher_sibling'
	--	PRINT 'Error while inserting into #tmp_pher_sibling'
	--	goto Exit_Processing
	--END


	-- SD 4.8 New table to be exported from release 4.8 onwards for ARV_PROPHYLAXIS data
	-----------------------------------------------------------------------------	
	-- 	ARV_PROPHYLAXIS
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		,a.drug_seq
		,a.obs_uid
		,a.drug_cd
		,a.drug_rsn
		,a.other_drug_rsn
		,a.drug_start_dt
		,a.drug_last_use_dt
		,a.other_drug_specify
		,b.dt_action_flag 
	INTO
		#tmp_arv_prophylaxis
	FROM
		ARV_PROPHYLAXIS a join #docs_to_transfer b on a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_arv_prophylaxis'
		PRINT 'Error while inserting into #tmp_arv_prophylaxis'
		goto Exit_Processing
	END

	-- SD 4.9 New table to be exported from release 4.8 onwards for LAB_ANALYTE data
	-----------------------------------------------------------------------------	
	-- 	LAB_ANALYTE
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		,a.lab_seq
		,a.lab_test_cd
		,a.result_interpretation
		,a.result
		,a.result_units
		,b.dt_action_flag 
	INTO
		#tmp_lab_analyte
	FROM
		LAB_ANALYTE a join #docs_to_transfer b on a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_lab_analyte'
		PRINT 'Error while inserting into #tmp_lab_analyte'
		goto Exit_Processing
	END

	-- SD 4.10 New table to be exported from release 4.10 onwards for INVESTIGATION_CASE data
	-----------------------------------------------------------------------------	
	-- 	INVESTIGATION_CASE
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		, a.invest_case_seq
		, a.invest_type_cd 
		, a.invest_ident_method
		, a.invest_ident_dt
		, a.invest_incl
		, a.invest_start_dt
		, a.invest_dispo
		, a.invest_dispo_dt
		, a.invest_dispo_method
		, a.int_dispo
		, a.int_dispo_dt
		, b.dt_action_flag 
	INTO
		#tmp_investigation_case
	FROM
		INVESTIGATION_CASE a join #docs_to_transfer b on a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_investigation_case'
		PRINT 'Error while inserting into #tmp_investigation_case'
		goto Exit_Processing
	END

	-- SD 4.10 New table to be exported from release 4.10 onwards for INVESTIGATION_CLUSTER data
	-----------------------------------------------------------------------------	
	-- 	INVESTIGATION_CLUSTER
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		, a.invest_cluster_seq 
		, a.cluster_uid 
		, a.cluster_ident_method 
		, a.person_ident_method 
		, a.person_ident_dt 
		, b.dt_action_flag 
	INTO
		#tmp_investigation_cluster
	FROM
		INVESTIGATION_CLUSTER a join #docs_to_transfer b on a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_investigation_cluster'
		PRINT 'Error while inserting into #tmp_investigation_cluster'
		goto Exit_Processing
	END

	-- SD 4.13 New table to be exported from release 4.13 onwards for BIRTHING_PERSON_HISTORY data
	-----------------------------------------------------------------------------	
	-- 	BIRTHING_PERSON_HISTORY
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		, a.month_preg_pnc
		, a.num_pnc_visits
		, a.preg_before
		, a.num_prev_preg
		, a.num_prev_live_births
		, a.bp_cd4_test
		, a.bp_vl_test
		, a.bp_first_pos_dt
		, a.first_pnc_visit_dt
		, a.last_pnc_visit_dt
		, a.last_normal_menses_dt
		, b.dt_action_flag 
	INTO
		#tmp_birthing_person_history
	FROM
		BIRTHING_PERSON_HISTORY a join #docs_to_transfer b on a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_birthing_person_history'
		PRINT 'Error while inserting into #tmp_birthing_person_history'
		goto Exit_Processing
	END

	-- SD 4.13 New table to be exported from release 4.13 onwards for SUBSTANCE_HISTORY data
	-----------------------------------------------------------------------------	
	-- 	SUBSTANCE_HISTORY
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		, a.substance_seq
		, a.doc_belongs_to
		, a.substance_event_cd
		, a.substance_cd
		, a.substance_value
		, a.substance_detail
		, a.substance_dt
		, b.dt_action_flag 
	INTO
		#tmp_substance_history
	FROM
		SUBSTANCE_HISTORY a join #docs_to_transfer b on a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_substance_history'
		PRINT 'Error while inserting into #tmp_substance_history'
		goto Exit_Processing
	END

	-- SD 4.13 New table to be exported from release 4.13 onwards for OTHER_HEALTH_CONDITIONS data
	-----------------------------------------------------------------------------	
	-- 	OTHER_HEALTH_CONDITIONS
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		, a.condition_seq
		, a.condition_event_cd
		, a.condition_cd
		, a.condition_value
		, a.condition_dt
		, a.doc_belongs_to
		, b.dt_action_flag 
	INTO
		#tmp_other_health_conditions
	FROM
		OTHER_HEALTH_CONDITIONS a join #docs_to_transfer b on a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_other_health_conditions'
		PRINT 'Error while inserting into #tmp_other_health_conditions'
		goto Exit_Processing
	END

	-- SD 4.13 New table to be exported from release 4.13 onwards for PREGNANCY_OUTCOME data
	-----------------------------------------------------------------------------	
	-- 	PREGNANCY_OUTCOME
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		, a.preg_seq
		, a.preg_outcome
		, a.preg_outcome_dt
		, b.dt_action_flag 
	INTO
		#tmp_pregnancy_outcome
	FROM
		PREGNANCY_OUTCOME a join #docs_to_transfer b on a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_pregnancy_outcome'
		PRINT 'Error while inserting into #tmp_pregnancy_outcome'
		goto Exit_Processing
	END

	-- SD 4.13 New table to be exported from release 4.13 onwards for BIRTH_DELIVERY data
	-----------------------------------------------------------------------------	
	-- 	BIRTH_DELIVERY
	-----------------------------------------------------------------------------	
	SELECT
		 a.document_uid
		, a.delivery_seq
		, a.csection_rsn
		, a.other_csection_rsn
		, b.dt_action_flag 
	INTO
		#tmp_birth_delivery
	FROM
		BIRTH_DELIVERY a join #docs_to_transfer b on a.document_uid = b.document_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_birth_delivery'
		PRINT 'Error while inserting into #tmp_birth_delivery'
		goto Exit_Processing
	END

	-----------------------------------------------------------------------------
	--  TRANSFER_LOG
	-----------------------------------------------------------------------------
	SELECT @TransferCreateDt = CREATE_DT
	from transfer_log
	WHERE transfer_uid       = @transfer_uid;

	--SET @zip_name = REPLACE('document_export_'+ 
	--		CONVERT(VARCHAR(16),@transfer_uid) + '_' + @site_cd + '_' + 
	--		CONVERT(CHAR(8),GETDATE(),1)+'.zip','/','-')

	SET @zip_name = REPLACE('document_export_'+ 
			CONVERT(VARCHAR(16),@transfer_uid) + '_' + @site_cd + '_' + 
			CONVERT(CHAR(8),IsNull(@TransferCreateDt, GetDate()),1)+'.zip','/','-')

	UPDATE transfer_log 
	SET    request_file_name = @zip_name, 
	       record_count      = (SELECT count(*) FROM #docs_to_transfer)
	WHERE transfer_uid       = @transfer_uid
	
	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while updating TRANSFER_LOG'
		PRINT 'Error while inserting into TRANSFER_LOG'
		goto Exit_Processing
	END


	-----------------------------------------------------------------------------
	-- TRANSFER_DETAIL
	-----------------------------------------------------------------------------
	INSERT INTO TRANSFER_DETAIL 
	(
		transfer_uid
		,site_cd
		,document_uid
		,last_ship_flag
		,request_action_type
		,cdc_action_type
		,transfer_status
		,error_cd
		,error_descr
	)
	SELECT 
		@transfer_uid
		,site_cd
		,document_uid
		,ship_flag
		,dt_action_flag
		,NULL
		,'S'
		,0
		,NULL
	FROM 
		#docs_to_transfer
		
	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into TRANSFER_DETAIL'
		PRINT 'Error while inserting into TRANSFER_DETAIL'
		goto Exit_Processing
	END

	SELECT * INTO 
		#tmp_transfer_log 
	FROM 
		TRANSFER_LOG 
	WHERE 
		transfer_uid =@transfer_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_transfer_log'
		PRINT 'Error while inserting into #tmp_transfer_log'
		goto Exit_Processing
	END

	SELECT * INTO 
		#tmp_transfer_detail 
	FROM 
		TRANSFER_DETAIL
	WHERE 
		transfer_uid =@transfer_uid

	SELECT @error = @@error 
	IF @error > 0
	BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_transfer_detail'
		PRINT 'Error while inserting into #tmp_transfer_detail'
		goto Exit_Processing
	END

--Ehars 3.1.2

--EHARS 3.1.2
select @mjp_site = pref_value from PREFERENCE where pref_type = 'MJP_CONFIGURATION' and pref_name = 'isMjpSite' 
IF @mjp_site = 'Y'
	Begin
		SELECT @report_setup = pref_value FROM preference WHERE pref_name ='reportSETup'  
		SELECT @mjp_sharing_level = lookup_name FROM preference p inner join lookup_code l on p.pref_value  = l.lookup_cd WHERE pref_name ='dblevelsharing' and lookup_type ='MJP_DBLEVEL_SHARING'
	End
ELSE
   BEGIN
      SELECT @report_setup = pref_value FROM preference WHERE pref_name ='reportSETup'  
      SET @mjp_sharing_level = NULL
   END
---

    -----------------------------------------------------------------------------	
	-- 	TRANSFER_VERSION_TRACKING
	-----------------------------------------------------------------------------	
	 SELECT TOP 1
      @transfer_uid AS transfer_uid 
	 ,ehars_version_no
	 ,site_cd 
	 ,sql_version
	 ,os_version 
     ,@mjp_sharing_level as mjp_sharing_level 
	 ,@report_setup as report_setup
	 INTO #TMP_TRANSFER_VERSION_TRACKING
     FROM INSTALLER_LOG WHERE status_flag = '2' ORDER BY INSTALLER_UID DESC
     SELECT @error = @@error 
	 IF @error > 0
	 BEGIN
		SELECT @error_msg = 'Error while inserting into #tmp_transfer_version_tracking'
		PRINT 'Error while inserting into #tmp_transfer_version_tracking'
        goto Exit_Processing
	 END

	-------------------
	--TRANSFER_LOG OUT
	-------------------
    SELECT * FROM #tmp_transfer_log 

	-------------------
	--TRANSFER_DETAIL OUT
	-------------------
    SELECT * FROM #tmp_transfer_detail

	-------------------
	--DOCUMENT OUT
	-------------------
    SELECT * FROM #docs_to_transfer

	-------------------
	--ADDRESS OUT
	-------------------
    SELECT * FROM #tmp_address

	-------------------
	--BIRTH_HISTORY OUT
	-------------------
    SELECT * FROM #tmp_birth_history

	-------------------
	--CALC_OBSERVATION OUT
	-------------------
    SELECT * FROM #tmp_calc_observation

	-------------------
	--CONSENT_questionnaire OUT
	-------------------
    SELECT * FROM #tmp_consent_questionnaire

	-------------------
	--DEATH OUT
	-------------------
    SELECT * FROM #tmp_death

	-------------------
	--DEATH_DX OUT
	-------------------
    SELECT * FROM #tmp_death_dx

	-------------------
	--FACILITY_CODE OUT
	-------------------
    SELECT * FROM #tmp_facility_code

	-------------------
	--FACILITY_EVENT OUT
	-------------------
    SELECT * FROM #tmp_facility_event

	-------------------
	--ID OUT
	-------------------
    SELECT * FROM #tmp_id

	-------------------
	--LAB OUT
	-------------------
    SELECT * FROM #tmp_lab

	-------------------
	--OBSERVATION OUT
	-------------------
    SELECT * FROM #tmp_observation

	-------------------
	--OI OUT
	-------------------
    SELECT * FROM #tmp_oi

	-------------------
	--PERSON OUT
	-------------------
    SELECT * FROM #tmp_person

	-------------------
	--PERSON_NAME OUT
	-------------------
    SELECT * FROM #tmp_person_name

	------------------------
	--PERSON_VIEW_DETAIL OUT
	------------------------
    SELECT * FROM #tmp_person_view_detail

	---------------------------
	--PRETEST_questionnaire OUT
	---------------------------
    SELECT * FROM #tmp_pretest_questionnaire

    -------------------
	--RIDR OUT
	-------------------
    SELECT * FROM #tmp_ridr

	-------------------
	--RISK OUT
	-------------------
    SELECT * FROM #tmp_risk

    -------------------
	--PROVIDER_CODE OUT
	-------------------
	-- SD 4.0 Removed as no provider information will be transferred
    --SELECT * FROM #tmp_provider_code

	-- SD 4.0 Added new table #tmp_lab_genotype
	-------------------
	--lab_genotype OUT
	-------------------
    SELECT * FROM #tmp_lab_genotype

	-- SD 4.5 Added new table #tmp_pher_observation
	-------------------
	--pher_observation OUT 4.13 - Removed PHER tables 
	-------------------
 --   SELECT * FROM #tmp_pher_observation


	---- SD 4.5 Added new table #tmp_pher_antiretroviral
	---------------------
	----pher_antiretroviral OUT
	---------------------
 --   SELECT * FROM #tmp_pher_antiretroviral


	---- SD 4.5 Added new table #tmp_pher_sibling
	---------------------
	----pher_sibling OUT
	---------------------
 --   SELECT * FROM #tmp_pher_sibling

	-- SD 4.8 Added new table #tmp_arv_prophylaxis
	-------------------
	--arv_prophylaxis OUT
	-------------------
    SELECT * FROM #tmp_arv_prophylaxis

	-- SD 4.9 Added new table #tmp_lab_analyte
	-------------------
	--lab_analyte OUT
	-------------------
    SELECT * FROM #tmp_lab_analyte

	-- SD 4.10 Added new table #tmp_investigation_case
	-------------------
	--investigation_case OUT
	-------------------
    SELECT * FROM #tmp_investigation_case

	-- SD 4.10 Added new table #tmp_investigation_cluster
	-------------------
	--investigation_cluster OUT
	-------------------
    SELECT * FROM #tmp_investigation_cluster

	-- SD 4.13 Added new table #tmp_birthing_person_history
	-------------------
	--birthing_person_history OUT
	-------------------
    SELECT * FROM #tmp_birthing_person_history

	-- SD 4.13 Added new table #tmp_substance_history
	-------------------
	--substance_history OUT
	-------------------
    SELECT * FROM #tmp_substance_history

	-- SD 4.13 Added new table #tmp_other_health_conditions
	-------------------
	--other_health_conditions OUT
	-------------------
    SELECT * FROM #tmp_other_health_conditions

	-- SD 4.13 Added new table #tmp_pregnancy_outcome
	-------------------
	--pregnancy_outcome OUT
	-------------------
    SELECT * FROM #tmp_pregnancy_outcome

	-- SD 4.13 Added new table #tmp_birth_delivery
	-------------------
	--birth_delivery OUT
	-------------------
    SELECT * FROM #tmp_birth_delivery

    --EHARS 3.1.2
    ------------------------
	--TRANSFER_VERSION_TRACKING OUT
	------------------------
    SELECT * FROM #tmp_transfer_version_tracking
	
	--------------------------------------------------------------------------
	---- ERROR HANDLING -----------------------------------------------
	--------------------------------------------------------------------------
	Exit_Processing:
	if @error > 0
	begin
		RAISERROR(@error_msg,16,1)
	end

    SET QUOTED_IDENTIFIER OFF 
GO
/****** Object:  StoredProcedure [dbo].[usp_death_dx_hierarchy]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_death_dx_hierarchy]
	@eHARS_uid char(16)
AS
BEGIN
/****************************************************
* Name: dbo.usp_death_dx_hierarchy
* Author: Sanjeev Damle
* Published: 12/11/2020
* Main consumer: Person View Calculation
* Purpose: Find out which death document should be considered for the cause of death calcullation
* Notes:
* 1. @eHARS_Uid tells the case (ehars_uid) for which the cause of death calculation should be performed
*****************************************************
* Maintenance Log
* Date		Author		Description
* ---------------------------------------------------
****************************************************/

	SET NOCOUNT ON

	Declare @document_uid char(16)
	Declare @ovr_document_uid char(16)

	-- Check if the case has a overridden death document. If yes, return data for the overridden document

	select top 1 @ovr_document_uid = document_uid
	from PERSON_VIEW_DETAIL
	where ehars_uid = @eHARS_uid
	and table_name = 'death_dx'
	and override_flag = 'Y'

	if @ovr_document_uid is null
	begin
		-- No death_dx override for the case
		if object_id('#tmp_death_dx_count_412') is not null DROP TABLE #tmp_death_dx_count_412

		CREATE TABLE #tmp_death_dx_count_412 (
		  ehars_uid			char(16)
		, document_uid		char(16)
		, doc_seq			char(11)
		, enter_dt			char(8)
		, ucod				int
		, acod				int
		, max_line_number	char(2)
		, rowcnt			int
		, gap_exists		int
		)


		-- Get document level counts for all the non-pv documents of the given ehars_uid. The counts include number of underlying cause of deaths,
		-- number of additional causes of death, the maximum line number for each document, total number additional cause of death and
		-- total number of valid lines (line number > 00 and having a not null icd_cd 

		insert into #tmp_death_dx_count_412(ehars_uid, document_uid, doc_seq, enter_dt, ucod, acod, max_line_number, rowcnt, gap_exists)
		select dx.ehars_uid, dx.document_uid, right(dx.document_uid, 10) doc_seq, enter_dt, sum(coalesce(underlying_cause_of_death, 0)) ucod
		, sum(coalesce(additional_cause_of_death, 0)) acod
		, (select max(line_number) from death_dx ddx where document_uid = dx.document_uid and isnull(icd_cd, '') > '' ) as max_line
		, (select count(1) from death_dx ddx2 where document_uid = dx.document_uid and line_number <> '00') rowcnt
		, case when ((select max(line_number) from death_dx ddx where document_uid = dx.document_uid and isnull(icd_cd, '') > '')
			- (select count(1) from death_dx ddx2 where document_uid = dx.document_uid and line_number <> '00' and isnull(icd_cd, '') > '')) > 0 then 1
			else 0 end gap_exists
		from
		(select doc.ehars_uid, dd.document_uid, doc.enter_dt, line_number, icd_cd
		, case	when line_number = '00' and coalesce(icd_cd, '') > '' then 1
				when line_number = '00' and coalesce(icd_cd, '') = '' then 0
			end as underlying_cause_of_death
		, case	when line_number <> '00' and coalesce(icd_cd, '') > '' then 1
				when line_number <> '00' and coalesce(icd_cd, '') = '' then 0
			end as additional_cause_of_death
		from death_dx dd join DOCUMENT doc on dd.document_uid = doc.document_uid and document_type_cd <> '000'
		where ehars_uid = @eHARS_uid
		and doc.status_flag not in ('D', 'P')) as dx
		group by dx.ehars_uid, dx.document_uid, enter_dt
		order by dx.ehars_uid, ucod desc, gap_exists asc, max_line desc, enter_dt desc, dx.document_uid desc;
		
		if exists (select 1 from #tmp_death_dx_count_412	where ucod > 0 or acod > 0)
		begin
			select top 1 @document_uid = document_uid
			from #tmp_death_dx_count_412
			order by ehars_uid, ucod desc, gap_exists asc, max_line_number desc, enter_dt desc, doc_seq desc;
			--order by acod desc, enter_dt desc, doc_seq desc;

			select document_uid, line_number
			, case when line_number = '00' then 'Underlying Cause' else 'Additional Cause' end as causedisp
			, icd_cd, icd_cd_type
			--, lc.lookup_name as cdtypedescr
			, descr, line, position, nature_of_injury
			from DEATH_DX ddx --join lookup_code lc on ddx.icd_cd_type = lc.lookup_cd and lookup_type = 'ICD_CODE_TYPE'
			where document_uid = @document_uid
			order by document_uid, line_number;
		end -- if exists
		else
		begin
			-- Return no data
			select document_uid, line_number, '' causedisp, icd_cd, icd_cd_type, '' cdtypedescr, descr, line, position, nature_of_injury
			from DEATH_DX ddx 
			where 1 = 0;
		end
	end
	else
	begin
		-- Return data for the overridden document
		select document_uid, line_number
		, case when line_number = '00' then 'Underlying Cause' else 'Additional Cause' end as causedisp
		, icd_cd, icd_cd_type
		--, lc.lookup_name as cdtypedescr
		, descr, line, position, nature_of_injury
		from DEATH_DX ddx --join lookup_code lc on ddx.icd_cd_type = lc.lookup_cd and lookup_type = 'ICD_CODE_TYPE'
		where document_uid = @ovr_document_uid
		order by document_uid, line_number;
	end
END -- Create Proc

--grant execute on usp_death_dx_hierarchy to ehars_app;
GO
/****** Object:  StoredProcedure [dbo].[usp_facility_consolidation_initialize]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[usp_facility_consolidation_initialize]
	@Event_Uid	BIGINT = NULL OUTPUT
,	@Error_Message	VARCHAR(4000) = NULL OUTPUT
,	@Reset_Log_Flag	BIT	= NULL
----------------------------------------
-- Procedure name: usp_facility_consolidation_initialize
-- Author: Aloisio dos Santos (aox2)
-- Creation Date: 10/15/2008
-- Release Date:
-- Definition: 
------------------------------------------
-- Notes
------------------------------------------
-- Maintenance Log
------------------------------------------
-- Log#	Date		Author	Description (search for Log# xxx to find the change)
------------------------------------------
AS
BEGIN
	SET NOCOUNT ON

	--//CONSTANTS SECTION DECLARATION & SETUP BLOCK
	DECLARE	@CT_EVENT_NAME VARCHAR(20)
		,	@CT_STATUS_PROGRESS VARCHAR(100)
		,	@CT_STATUS_FAILED VARCHAR(100)
		,	@CT_STATUS_ABANDONED VARCHAR(100)

	SET	@CT_EVENT_NAME = 'FACILITY_CONSOLID'
	SET	@CT_STATUS_PROGRESS = 'IN_PROGRESS'
	SET @CT_STATUS_FAILED = 'FAILED'
	SET	@CT_STATUS_ABANDONED = 'ABANDONED'

	--//PROCEDURE MAIN LOGIC BLOCK
	SET	@Reset_Log_Flag = ISNULL(@Reset_Log_Flag,0)

	--//Check whether stored procedure had been invoked to reset ABANDONED process
	IF	@Reset_Log_Flag = 1
	BEGIN
		--//In this case, procedure will reset the EVENT_LOG records with status as 'IN_PROGRESS'
		--//by reseting it to 'ABANDONED', drop existing ##temp_facility_consolidation and QUIT the process

		IF (SELECT COUNT(*) FROM tempdb..sysobjects WHERE NAME = '##temp_facility_consolidation' AND xtype = 'U') > 0
		BEGIN
			DROP TABLE ##temp_facility_consolidation
		END
	
		UPDATE	dbo.EVENT_LOG
		SET		[comments] = @CT_STATUS_ABANDONED + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
		WHERE	PATINDEX('%' + @CT_STATUS_PROGRESS + '%',[comments]) > 0

		RETURN(0)
		
	END
	--//Check whether process is currently in progress
	IF (SELECT	COUNT(*)
		FROM	dbo.EVENT_LOG
		WHERE	[event] = @CT_EVENT_NAME
		AND		PATINDEX('%' + @CT_STATUS_PROGRESS + '%',comments) > 0) > 0
	BEGIN

		SET	@Error_Message = 'Facility Consolidation request cannot be processed at this time '
		SET	@Error_Message = @Error_Message + 'since another Facility Consolidation request is under progress.'
		RETURN(1)
	END

	--//Add Record into LOG_EVENT table
	INSERT INTO EVENT_LOG(dt_time,[event],comments)
	SELECT	GETDATE(),@CT_EVENT_NAME,@CT_STATUS_PROGRESS + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'

	SET @Event_Uid = SCOPE_IDENTITY()

	--//Check whether temp table exists
	IF (SELECT COUNT(*) FROM tempdb..sysobjects WHERE NAME = '##temp_facility_consolidation' AND xtype = 'U') > 0
	BEGIN
		DROP TABLE ##temp_facility_consolidation
		IF @@ERROR > 0
		BEGIN
			SET	@Error_Message = 'Error number ' + CAST(@@ERROR AS VARCHAR(10)) + ' - Failed to drop temp table ##temp_facility_consolidation.'
			UPDATE EVENT_LOG
			SET	comments = @CT_STATUS_FAILED + ' - Error: ' + @Error_Message
			WHERE	event_uid = @Event_Uid
			RETURN(1)
		END
	END

	--//Create Temp Table
	CREATE TABLE ##temp_facility_consolidation(From_Facility_Uid VARCHAR(255) NOT NULL, To_Facility_Uid VARCHAR(255) NOT NULL, Validation_Error VARCHAR(500) NULL)
	IF @@ERROR > 0
	BEGIN
		SET	@Error_Message = 'Error number ' + CAST(@@ERROR AS VARCHAR(10)) + ' - Failed create temp table ##temp_facility_consolidation.'
		UPDATE EVENT_LOG
		SET	comments = @CT_STATUS_FAILED + ' - Error: ' + @Error_Message
		WHERE	event_uid = @Event_Uid
		RETURN(1)
	END

END
RETURN(0)
GO
/****** Object:  StoredProcedure [dbo].[usp_facility_consolidation_insert]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     PROC [dbo].[usp_facility_consolidation_insert]
	@From_Facility_Uid CHAR(16)
,	@To_Facility_Uid CHAR(16)
,	@Error_Message	VARCHAR(4000) = NULL OUTPUT
----------------------------------------
-- Procedure name: usp_facility_consolidation_insert
-- Author: Aloisio dos Santos (aox2)
-- Creation Date: 10/15/2008
-- Release Date:
-- Definition: 
------------------------------------------
-- Notes
------------------------------------------
-- Maintenance Log
------------------------------------------
-- Log#	Date		Author	Description (search for Log# xxx to find the change)
------------------------------------------
AS
BEGIN
	SET NOCOUNT ON

	--//Check whether temp table exists
	IF (SELECT COUNT(*) FROM tempdb..sysobjects WHERE NAME = '##temp_facility_consolidation' AND xtype = 'U') = 0
	BEGIN
		SET	@Error_Message = 'Temp table ##temp_facility_consolidation does not exist.'
		RETURN(1)
	END

	--//Create Temp Table
	INSERT INTO ##temp_facility_consolidation(From_Facility_Uid,To_Facility_Uid)
	VALUES(@From_Facility_Uid,@To_Facility_Uid)

	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_facility_pre_consolidation_report]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE   PROCEDURE [dbo].[usp_facility_pre_consolidation_report] 

AS
----------------------------------------
-- Procedure name: usp_facility_pre_consolidation_report
-- Author: Aloisio dos Santos (aox2)
-- Creation Date: 05/13/2008
-- Release Date:
-- Definition: 
-- > CQ#2680 - it collects faility data for Pre-Consolidation Report
------------------------------------------
-- Notes
-- Output Layout:
--	facility_uid 		- CHAR(16)	NOT NULL
--	name1			- VACHAR(100)	MAY CONTAIN NULL
--	facitlity_type_cd	- VARCHAR(7) 	MAY CONTAIN NULL
--	city_name		- VARCHAR(128)	MAY CONTAIN NULL
--	state_cd		- VARCHAR(2)	MAY CONTAIN NULL
--	number_of_records	- NUMERIC	NOT NULL
--	number_of_legacy	- NUMERIC	NOT NULL
--	percentage		- NUMERIC	NOT NULL
--	valid			- Yes/No	NOT NULL
------------------------------------------
-- Maintenance Log
------------------------------------------
-- Log#	Date		Author	Description
------------------------------------------
-- 003	07/21/08	aox2	Fixed record count for documents by extending the count collection over to the Facility_Event and 
--							Lab tables.
-- 002	06/27/08	aox2	Broke up main LEFT JOIN type query in different INNER JOIN type queries for performance
-- 001	05/15/08	aox2	Changed to combine City & State inot one column (city_state)
-- 000	05/13/08	aox2	Implementation
------------------------------------------

BEGIN
	SET NOCOUNT ON

	DECLARE @Total INT
	,	@CT_FACILITY_TYPE VARCHAR(80)

	SET	@CT_FACILITY_TYPE = 'FACILITY_TYPE'
	
	CREATE TABLE #ListOfDocs(
		Facility_uid CHAR(16) NOT NULL
	,	document_uid CHAR(16) NOT NULL
		PRIMARY KEY(Facility_uid,document_uid)
	)

	CREATE TABLE  #Report(
		facility_uid CHAR(16) NOT NULL PRIMARY KEY
	,	name1 VARCHAR(100) NOT NULL DEFAULT ''
	,	facility_type_cd VARCHAR(7) NOT NULL DEFAULT ''
	,	city_state VARCHAR(200) NOT NULL DEFAULT ''
	,	NumberOfRecords INT NOT NULL DEFAULT 0
	,	LegacyRecords INT NOT NULL DEFAULT 0
	,	Valid VARCHAR(3) NOT NULL DEFAULT ''
	,	[Percent] NUMERIC(8,2) NOT NULL DEFAULT 0
	,	[Phone] VARCHAR(10) NULL -- SD 4.5 Add Phone
	)

	--//COLLECTS FACILITIES THAT HAVE ASSOCIATED DOCUMENTS ON THE DOCUMENT TABLE
	INSERT INTO #Report(
		facility_uid
	,	name1
	,	facility_type_cd
	,	city_state
	,	NumberOfRecords
	,	Valid
	,	[Percent]
	,	[Phone]) -- SD 4.5 Add Phone

	SELECT	fac.facility_uid
	,	ISNULL(fac.name1, '') --SD Added ISNULL condition to take care of names with NULL value
	,	ISNULL(fac.facility_type_cd,'')
	,	ISNULL(fac.city_name + ISNULL(',' + fac.state_cd,''),'')
	,	0
	,	'Yes'
	,	0
	,	phone -- SD 4.5 Add Phone
	FROM	dbo.facility_code fac (NOLOCK)

	INSERT INTO #ListOfDocs(facility_uid,document_uid)
	SELECT	DISTINCT fac.facility_uid,doc.document_uid
	FROM	#Report fac
	INNER JOIN dbo.document doc ON doc.facility_uid = fac.facility_uid

	INSERT INTO #ListOfDocs(facility_uid,document_uid)
	SELECT DISTINCT fac.facility_uid,evt.document_uid
	FROM	#Report fac
	INNER JOIN dbo.facility_event evt ON fac.facility_uid = evt.facility_uid
	WHERE	NOT EXISTS
	(	SELECT	1
		FROM	#ListOfDocs tmp
		WHERE	fac.facility_uid = tmp.facility_uid
		AND		evt.document_uid = tmp.document_uid
	)

	INSERT INTO #ListOfDocs(Facility_uid,document_uid)
	SELECT	DISTINCT fac.facility_uid,lab.document_uid
	FROM	#Report fac
	INNER JOIN dbo.lab lab ON fac.facility_uid = lab.facility_uid -- SD changed from lab.provier_uid to new column lab.facility_uid.
	WHERE	NOT EXISTS
	(	SELECT	1
		FROM	#ListOfDocs tmp
		WHERE	fac.facility_uid = tmp.facility_uid
		AND		lab.document_uid = tmp.document_uid
	)


	UPDATE rpt
	SET	rpt.NumberOfRecords = ISNULL(
							(	SELECT	COUNT(doc.document_uid)
								FROM	#ListOfDocs doc
								WHERE	rpt.facility_uid = doc.facility_uid
								GROUP	BY doc.facility_uid),0)
	FROM	#Report rpt

	--//COLLECT FACILITIES WHICH DO NOT HAVE ANY RECORDS ASSOCIATED
	INSERT INTO #Report(
		facility_uid
	,	name1
	,	facility_type_cd
	,	city_state
	,	NumberOfRecords
	,	Valid
	,	[Percent]
	,	[Phone]) -- SD 4.5 Add Phone

	SELECT	fac.facility_uid
	,	fac.name1
	,	ISNULL(fac.facility_type_cd,'')
	,	ISNULL(fac.city_name + ISNULL(',' + fac.state_cd,''),'')
	,	0
	,	'Yes'
	,	0
	,	phone -- SD 4.5 Add Phone
	FROM	dbo.facility_code fac (NOLOCK)
	WHERE NOT EXISTS
	(	SELECT	1
		FROM	#Report tmp
		WHERE	fac.facility_uid = tmp.facility_uid
	)


	SELECT @Total = SUM(NumberOfRecords)
	FROM	#Report

	SELECT
		facility_uid
	,	name1
	,	facility_type_cd
	,	city_state
	,	NumberOfRecords
	,	Valid
	,	CAST(CAST(NumberOfRecords AS NUMERIC(12,2)) * 100 / 
		CAST(@Total AS NUMERIC(12,2)) AS NUMERIC(8,2)) AS [Percent] -- SD 4.5 EHARS-1426 - Changed Numeric(8, 2) to Numeric(12, 2)
	,	ISNULL(lkp.lookup_descr,'') AS facility_type_descr
	,	Phone -- SD 4.5 Add Phone
	FROM #Report tmp
	LEFT JOIN lookup_code lkp ON ( tmp.facility_type_cd = lkp.lookup_cd AND lookup_type = @CT_FACILITY_TYPE)
	ORDER BY name1,NumberOfRecords DESC


END
GO
/****** Object:  StoredProcedure [dbo].[usp_get_next_seq_number]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[usp_get_next_seq_number]
	@seq_counter_id varchar(2)
,	@eHARS_uid char(16)
,	@increment int = 1
,	@next_seq_number int OUTPUT
--,	@Error_Message VARCHAR(2000) = NULL OUTPUT
AS
BEGIN
/****************************************************
	* Name: dbo.usp_get_next_seq_number
	* Author: Sanjeev Damle
	* Published: 05/30/2012
	* Main consumer: LAB Module
	* Purpose: Get next Sequence Number for LAB, ADDRESS, PERSON_NAME and ID based on the ehars_uid
	* Notes:
	* 1. @seq_counter_id parameter determines which sequence number to generate. The values can be LAB, ADDRESS, PERSON_NAME and ID
	* 2. @eHARS_Uid tells the case (ehars_uid) for which the next sequence number needs to be generated.
	* 3. @increment is the number by which the next sequence number will be incremented while updating the SEQUENCE_COUNTER table
	* 4. @next_seq_number is the output parameter with the next sequence number for a given sequence identifier and the ehars_uid
	* 5. @Error_Message returns error message in case an error occurs
	*****************************************************
	* Maintenance Log
	* Date		Author		Description
	* ---------------------------------------------------
	* 05/30/12	Sanjeev		Created the procedure for eHARS 4.0
  	****************************************************/

	SET NOCOUNT ON

	--BEGIN TRY
	begin
		Declare @rowcnt numeric
		
		
		BEGIN TRAN
		
		SELECT @next_seq_number = next_seq_number
		from sequence_counter WITH (UPDLOCK, ROWLOCK, READPAST)
		where seq_counter_id = @seq_counter_id
		and	  ehars_uid = @eHARS_uid
		
		select @rowcnt = @@rowcount
		
		IF @rowcnt = 0
		begin
			-- ehars_uid and seq_counter_id combination does not exist, create it.
			SET @next_seq_number = 1
			INSERT INTO sequence_counter (ehars_uid, seq_counter_id, next_seq_number)
			VALUES (@ehars_uid, @seq_counter_id, @next_seq_number + @increment)
		end
		ELSE
		begin
			-- ehars_uid and seq_counter_id exists, update it.
			
			UPDATE sequence_counter
			SET next_seq_number = @next_seq_number + @increment
			where  seq_counter_id = @seq_counter_id
			and	   ehars_uid = @eHARS_uid
		end

		if @@ERROR = 0 COMMIT TRAN
	end -- for main begin in TRY block

	--Return 0

	--END TRY
	
	--BEGIN CATCH
	--	DECLARE @Error_Desc VARCHAR(2000),
	--			@Errored_Line VARCHAR(1000),
	--			@Error_Number VARCHAR(1000),
	--			@Error_Description varchar(8000)
		
	--	SET @Error_Desc = ERROR_MESSAGE()
	--	SET	@Errored_Line = ERROR_LINE()
	--	SET @Error_Number = ERROR_NUMBER()

	--	SET @Error_Description = 'ERROR: usp_get_next_seq_number  ERROR LINE: '+@Errored_Line + ' ERROR NUMBER: ' +@Error_Number +' ERROR DESCRIPTION: '+ @Error_Desc

	--	print @Error_Description
		
	--	RAISERROR(@Error_Description,16,1)
	--	ROLLBACK TRAN
		
	--	Return 1
	--END CATCH

END -- Create Proc
GO
/****** Object:  StoredProcedure [dbo].[usp_import_facility_consolidation]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE        PROC [dbo].[usp_import_facility_consolidation]
	@Preview_Only_Flag  BIT = NULL --//0 (Zero or NULL:No - 1:Yes
,	@Error_Message VARCHAR(500) = NULL OUTPUT
,	@Event_Uid BIGINT = NULL
----------------------------------------
-- Procedure name: usp_import_facility_consolidation
-- Author: Aloisio dos Santos (aox2)
-- Creation Date: 06/05/2008
-- Release Date:
-- Definition: 
-- > CQ#2680 - Process Consolidation File and Generates a text report
------------------------------------------
-- Notes
------------------------------------------
-- Maintenance Log
------------------------------------------
-- Log#	Date		Author	Description (search for Log# xxx to find the change)
------------------------------------------
-- 005	07/23/2008	aox2	a. Replaced the hard-coded server name;
--							b. Replaced the sorting order of the documents to ehars_uid;
--							c. Replaced "Affected" per "Effected" verbiage;
-- 004	07/10/2008	aox2	Added document_type_cd to the sort order to display PV as the
--							first document
-- 003	07/03/2008	aox2	Modified dynamic sql which inserts into #StateNo temp table
--							to remove previous join condition "doc.facility_uid IS NULL" 
-- 002	06/19/2008	fjv6	add '\' to path variables
-- 001	06/19/2008	fjv6	Change path variables
-- 000	06/05/2008	aox2	Implementation
--		03/04/2014	cwi1	Replaced "Effected" with "Affected" verbiage;
------------------------------------------

AS
BEGIN
	SET QUOTED_IDENTIFIER OFF

	SET NOCOUNT ON

	SET	@Preview_Only_Flag = ISNULL(@Preview_Only_Flag,0)

	--//CONSTANT DECLARATION
	DECLARE	@CT_REPORT_FILE_PATH VARCHAR(100)
	,	@CT_REPORT_FILE_PREFIX VARCHAR(100)
	,	@CT_REPORT_FILE_EXTENSION VARCHAR(4)
--	,	@CT_UPLOAD_FACILITY_FILE_PATH VARCHAR(100)
	,	@CT_UPLOAD_FACILITY_FILE VARCHAR(100)
	,	@CT_ERROR_FACILITY_NOT_EXIST INT
	,	@CT_STATUS_COMPLETE VARCHAR(100)
	,	@CT_STATUS_FAILED VARCHAR(100)


	--//CONSTANT SETUP	
	SET	@CT_REPORT_FILE_PATH = ''
	SET	@CT_REPORT_FILE_PREFIX = 'facility_consolidation_post_report_' -- DO NOT INCLUDE EXTENSION
	SET	@CT_REPORT_FILE_EXTENSION = '.txt'
--	SET	@CT_UPLOAD_FACILITY_FILE_PATH = '\\' + @@SERVERNAME + '\IMPORT_IN'
	SET	@CT_ERROR_FACILITY_NOT_EXIST = 35
	SET @CT_STATUS_COMPLETE = 'COMPLETE'
	SET @CT_STATUS_FAILED = 'FAILED'

	DECLARE	@UserID VARCHAR(100)
	DECLARE @Cmd NVARCHAR(4000)
	,	@Result BIT
	,	@ImportTable VARCHAR(200)
	,	@ReportTable VARCHAR(200)
	,	@ErrorTable	 VARCHAR(200)
	,	@StateNoTable VARCHAR(200)
	,	@RowNumber INT
	,	@FacilityFromUID VARCHAR(255)
	,	@FacilityToUID VARCHAR(255)
	,	@StateNOAffected INT
	,	@DocumentAffected INT
	,	@RedundantFlag VARCHAR(3)
	,	@ReportTableFlag BIT
	,	@ImportTableFlag BIT
	,	@StateNoTableFlag BIT
	,	@FileCreatedFlag BIT
	,	@StateNoHeaderFlag BIT
	,	@StateNOCode VARCHAR(50)
	,	@TransactionFlag BIT
	,	@ErrorNumber INT
	,	@PersonView CHAR(3)
	,	@Step VARCHAR(500)
	,	@ReportFileName VARCHAR(200)
	,	@ReportFileSuffix VARCHAR(60)
	,	@IndexFacility 	INT
	,	@IndexStateNo	INT
	,	@TotalFacility 	INT
	,	@TotalStateNo	INT
	,	@StateNO VARCHAR(35)
	,	@DocumentUID CHAR(16)
	,	@RowIndex INT
	,	@LineHeaderFlag BIT
	,	@StateNOLine SMALLINT
	,	@DocumentType VARCHAR(30)
	,	@FacilityFromName VARCHAR(100) -- SD 4.5 EHARS-4712
	,	@FacilityFromTypeCode VARCHAR(30)
	,	@FacilityFromTypeName VARCHAR(50)
	,	@FacilityToName VARCHAR(100)  -- SD 4.5 EHARS-4712
	,	@FacilityToTypeCode VARCHAR(30)
	,	@FacilityToTypeName VARCHAR(80)
	,	@FacilityFromLocation VARCHAR(80)
	,	@FacilityToLocation VARCHAR(80)
	,	@DocumentCount INT
	,	@CasesAffected INT
	,	@DetailLineDiv VARCHAR(120)
	,	@HeaderLineDiv VARCHAR(120)
	,	@EharsUid VARCHAR(16)
	,	@InvalidFrom VARCHAR(255)
	,	@InvalidTo VARCHAR(255)
	,	@InvalidMessage	VARCHAR(80)
	,	@PrintMessage CHAR(70)
	,	@HeaderFlag BIT
	,	@Test_Facility_Uid VARCHAR(100)
	,	@Test_Line INT
	,	@Row_Count_Change_Flag BIT
	,	@FacilityFromPhone varchar(10) -- SD 4.5 From facility Phone
	,	@FacilityToPhone varchar(10) -- SD 4.5 To facility Phone

	DECLARE @Cases TABLE(facility_uid VARCHAR(255) not null, eHars_uid VARCHAR(255) NOT NULL)
	DECLARE @Documents TABLE(facility_uid VARCHAR(255) not null,document_uid VARCHAR(255) NOT NULL)




	SET @Step = '|**** Starting upload process on ' + CONVERT(VARCHAR(50),GETDATE(),109) + '...'
	PRINT '---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
	PRINT @Step
	PRINT '---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
	SET	@PersonView = '000'
	SET	@ReportTableFlag = 0

	SET	@ImportTableFlag = 0
	SET	@FileCreatedFlag = 0

	--//TEST WHETHER FACILITY FROM IS REFERENCED AS FACILITY TO

	SET @Test_Facility_Uid = NULL
	SELECT	@Test_Facility_Uid =
		(	
			SELECT	TOP 1 tmp1.From_Facility_Uid
			FROM	##temp_facility_consolidation tmp1
			INNER JOIN ##temp_facility_consolidation tmp2 ON tmp1.From_Facility_Uid = tmp2.To_Facility_Uid
		)

	IF @Test_Facility_Uid IS NOT NULL
	BEGIN
		SELECT 	@ErrorNumber 	= -1
		,	@Error_Message = 'The facility consolidation file cannot be processed. The Facility From ' + REPLACE(@Test_Facility_Uid,'''','''''') + ' is also referenced as a Facility To.'
		PRINT @Error_Message

		IF NOT @Event_Uid IS NULL
		BEGIN
			--//UPDATE EVENT LOG FOR FAILURE
			UPDATE	dbo.EVENT_LOG
			SET		[comments] = @CT_STATUS_FAILED + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
			WHERE	event_uid = @Event_Uid
		END

		--//DROP TEMP TABLE
		IF (SELECT COUNT(*) FROM tempdb..sysobjects WHERE NAME = '##temp_facility_consolidation' AND xtype = 'U') > 0
		BEGIN
			DROP TABLE ##temp_facility_consolidation
		END

		RETURN(1)


	END

	SELECT 	@StateNOCode = pref_value
	FROM	dbo.PREFERENCE
	WHERE	pref_name = 'stateNOCode'

	--//Define a Global temporary table for the current database
	SET @ImportTable = '##FacilityCons_' + DB_NAME(DB_ID())
	SET @ReportTable = '##ReportCons_' + DB_NAME(DB_ID())
	SET	@ErrorTable = '##ErrorCons_' +  DB_NAME(DB_ID())
 	SET @Cmd = 'SELECT COUNT(*) FROM tempdb..sysobjects WHERE xtype = ''U'' AND [name] = ''' + @ImportTable + ''''
	SET @Cmd = 'IF (' + @Cmd + ') > 0 '
	SET @Cmd = @Cmd + ' DROP TABLE tempdb..' + @ImportTable +';'


	EXEC sp_executesql @cmd = @cmd


	SET @Cmd = 'SELECT COUNT(*) FROM tempdb..sysobjects WHERE xtype = ''U'' AND [name] = ''' + @ReportTable + ''''
	SET @Cmd = 'IF (' + @Cmd + ') > 0 '
	SET @Cmd = @Cmd + ' DROP TABLE tempdb..' + @ReportTable 

	EXEC sp_executesql @cmd = @cmd


	SET @Cmd = 'SELECT COUNT(*) FROM tempdb..sysobjects WHERE xtype = ''U'' AND [name] = ''' + @ErrorTable + ''''
	SET @Cmd = 'IF (' + @Cmd + ') > 0 '
	SET @Cmd = @Cmd + ' DROP TABLE tempdb..' + @ErrorTable 

	EXEC sp_executesql @cmd = @cmd

	SET @Cmd = 'CREATE TABLE ' + @ImportTable + '(FacilityFrom VARCHAR(255) NOT NULL, FacilityTo VARCHAR(255) NOT NULL) ON [PRIMARY]'
	EXEC @Result = sp_executesql @cmd = @cmd


	IF @Result = 1
	BEGIN
		SELECT 	@ErrorNumber 	= -1
		,	@Error_Message = 'Failed to create internal tempory table ' + @ImportTable + '. It''s likely that an import process is already running.'
		PRINT @Error_Message

		IF NOT @Event_Uid IS NULL
		BEGIN
			--//UPDATE EVENT LOG FOR FAILURE
			UPDATE	dbo.EVENT_LOG
			SET		[comments] = @CT_STATUS_FAILED + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
			WHERE	event_uid = @Event_Uid
		END

		--//DROP TEMP TABLE
		IF (SELECT COUNT(*) FROM tempdb..sysobjects WHERE NAME = '##temp_facility_consolidation' AND xtype = 'U') > 0
		BEGIN
			DROP TABLE ##temp_facility_consolidation
		END

		RETURN(1)

	END
	SET @ImportTableFlag = 1
	SET @Cmd = 'CREATE TABLE ' + @ReportTable + '(LineContent VARCHAR(202) NOT NULL DEFAULT '''') ON [PRIMARY]'

	EXEC @Result = sp_executesql @cmd = @cmd

	IF @Result = 1
	BEGIN
		SELECT 	@ErrorNumber 	= -1
		,	@Error_Message = 'Failed to create internal tempory table ' + @ReportTable + '. It''s likely that an import process is already running.'
		PRINT @Error_Message

		IF NOT @Event_Uid IS NULL
		BEGIN
			--//UPDATE EVENT LOG FOR FAILURE
			UPDATE	dbo.EVENT_LOG
			SET		[comments] = @CT_STATUS_FAILED + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
			WHERE	event_uid = @Event_Uid
		END

		--//DROP TEMP TABLE
		IF (SELECT COUNT(*) FROM tempdb..sysobjects WHERE NAME = '##temp_facility_consolidation' AND xtype = 'U') > 0
		BEGIN
			DROP TABLE ##temp_facility_consolidation
		END

		RETURN(1)

	END
	SET @ImportTableFlag = 1
	SET @Cmd = 'CREATE TABLE ' + @ErrorTable + '(LineContent VARCHAR(102) NOT NULL DEFAULT '''') ON [PRIMARY]'

	EXEC @Result = sp_executesql @cmd = @cmd

	IF @Result = 1
	BEGIN
		SELECT 	@ErrorNumber 	= -1
		,	@Error_Message = 'Failed to create internal tempory table ' + @ErrorTable + '. It''s likely that an import process is already running.'
		PRINT @Error_Message

		IF NOT @Event_Uid IS NULL
		BEGIN
			--//UPDATE EVENT LOG FOR FAILURE
			UPDATE	dbo.EVENT_LOG
			SET		[comments] = @CT_STATUS_FAILED + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
			WHERE	event_uid = @Event_Uid
		END

		--//DROP TEMP TABLE
		IF (SELECT COUNT(*) FROM tempdb..sysobjects WHERE NAME = '##temp_facility_consolidation' AND xtype = 'U') > 0
		BEGIN
			DROP TABLE ##temp_facility_consolidation
		END

		RETURN(1)

	END


	SET @ReportTableFlag = 1
	CREATE TABLE #StateNo(
			RowNumber INT IDENTITY PRIMARY KEY
		, 	FacilityFrom VARCHAR(255) NOT NULL
		, 	FacilityTO VARCHAR(255) NOT NULL
		,	DocumentUID VARCHAR(255) NULL
		,	DocumentType VARCHAR(30) NULL
		, 	StateNO VARCHAR(35)  NULL
		,	eHars_uid VARCHAR(16) NULL)
	SET @StateNoTableFlag = 1

	--//CREATE TABLE TO HOLD DOCUMENTS WHICH SHIP_FLAG AND MODIFY_DT MUST CHANGE
	CREATE TABLE #Ship_To(Document_Uid VARCHAR(255) NOT NULL)

	--//VALIDATE FACAILITY UIDs
	--//INVALID FROM FACILITY
	UPDATE	tmp
	SET		tmp.Validation_Error = tmp.From_Facility_Uid
	FROM	##temp_facility_consolidation tmp
	WHERE	NOT EXISTS	(SELECT 1 FROM dbo.FACILITY_CODE fac WHERE tmp.From_Facility_Uid = fac.facility_uid)

	--//VALIDATE FACAILITY UIDs
	--//INVALID TO FACILITY
	UPDATE	tmp
	SET		tmp.Validation_Error = tmp.To_Facility_Uid
	FROM	##temp_facility_consolidation tmp
	WHERE	NOT EXISTS	(SELECT 1 FROM dbo.FACILITY_CODE fac WHERE tmp.To_Facility_Uid = fac.facility_uid)



	PRINT '|-> Collecting numbers for report...'

	-- EHARS-4712 SD 4.5 Changed the column length from varchar(50) to varchar(100) to match with the FACILITY_CODE table for FacilityFromName and FacilityToName.
	--//Transfer data from Global Temp table over to a local temp table for code simplicity
	CREATE TABLE #FacilityConsolidation(
		RowNumber INT IDENTITY NOT NULL PRIMARY KEY
	,	FacilityFrom VARCHAR(255) NOT NULL
	,	FacilityFromName VARCHAR(100) NULL -- SD 4.5 EHARS-4712
	,	FacilityFromTypeCd VARCHAR(30) NULL
	,	FacilityFromTypeName VARCHAR(80) NULL
	,	FacilityFromLocation VARCHAR(80) NULL
	, 	FacilityTo VARCHAR(255) NOT NULL
	,	FacilityToName VARCHAR(100) NULL -- SD 4.5 EHARS-4712
	,	FacilityToTypeCd VARCHAR(30) NULL
	,	FacilityToTypeName VARCHAR(80) NULL
	,	FacilityToLocation VARCHAR(80) NULL
	,	StateNOAffected INT NOT NULL DEFAULT 0
	,	DocumentAffected INT NOT NULL DEFAULT 0
	,	CasesAffected INT NOT NULL DEFAULT 0
	,	RedundantFlag	BIT NOT NULL DEFAULT 0
	,	FacilityFromPhone	VARCHAR(10) NULL 
	,	FacilityToPhone	VARCHAR(10) NULL 
	)

	--//Log Numbers into temporary table
	--> 1. Get Number of StateNO Affected

	--print 'insert 1'
	--//COLLECT CONSOLIDATION FACILITY UIDS INTO LOCAL TEMP TABLE
	INSERT INTO #FacilityConsolidation(FacilityFrom,FacilityTo)
	SELECT DISTINCT From_Facility_Uid,To_Facility_Uid
	FROM ##temp_facility_consolidation
	WHERE	Validation_Error IS NULL

	SET @TotalFacility = @@ROWCOUNT



	--print 'insert 2'
	--> 2. Get Number of Documents Affected
	INSERT INTO @Documents(facility_uid,document_uid)
	SELECT DISTINCT tmp.FacilityFrom, doc.document_uid
	FROM	#FacilityConsolidation tmp
	INNER JOIN dbo.document doc ON tmp.FacilityFrom = doc.facility_uid

	--print 'insert 3'
	INSERT INTO @Documents(facility_uid,document_uid)
	SELECT	DISTINCT tmp.FacilityFrom,evt.document_uid
	FROM	#FacilityConsolidation tmp
	INNER JOIN dbo.facility_event evt ON tmp.FacilityFrom = evt.facility_uid


	--print 'insert 4'
	-- 4.0 SD Use newly added column lab.facility_uid instead of lab.provider_uid
	INSERT INTO @Documents(facility_uid,document_uid)
	SELECT	DISTINCT tmp.FacilityFrom,lab.document_uid
	FROM	#FacilityConsolidation tmp
	INNER JOIN dbo.lab lab ON tmp.FacilityFrom = lab.facility_uid


	--print 'update 1'
	UPDATE tmp
	SET	tmp.DocumentAffected = (SELECT COUNT(DISTINCT doc.document_uid)
								FROM @Documents doc
								WHERE tmp.FacilityFrom = doc.facility_uid)
	FROM #FacilityConsolidation tmp


	--print 'insert 5'
	----> 3.1 - Get Number of cases from DOCUMENT TABLE
	INSERT INTO @Cases(facility_uid,ehars_uid)
	SELECT	DISTINCT tmp.FacilityFrom,doc.ehars_uid
	FROM	dbo.document doc
	INNER JOIN #FacilityConsolidation tmp ON doc.facility_uid = tmp.FacilityFrom

	--print 'update 2'
  	UPDATE 	tmp
 	SET	tmp.CasesAffected = tmp.CasesAffected +
		(	SELECT COUNT(DISTINCT ehars_uid)
			FROM	dbo.document doc
			WHERE	doc.facility_uid = tmp.FacilityFrom
			AND		doc.ehars_uid IS NOT NULL
		)
	FROM	#FacilityConsolidation tmp

	--> 3.2 - Get Number of cases from FACILY_EVENT table

	--print 'insert 6'
	INSERT INTO @Cases(facility_uid,ehars_uid)
	SELECT	DISTINCT tmp.FacilityFrom,doc.ehars_uid
	FROM #FacilityConsolidation tmp 
	INNER JOIN dbo.facility_event evt ON tmp.FacilityFrom = evt.facility_uid
	INNER JOIN dbo.document doc ON evt.document_uid = doc.document_uid

	--> 3.3 - Get Number of cases from LAB table
	-- 4.0 SD Use newly added column lab.facility_uid instead of lab.provider_uid

	--print 'insert 7'
	INSERT INTO @Cases(facility_uid,ehars_uid)
	SELECT	DISTINCT tmp.FacilityFrom,doc.ehars_uid
	FROM #FacilityConsolidation tmp 
	INNER JOIN dbo.lab lab ON tmp.FacilityFrom = lab.facility_uid
	INNER JOIN dbo.document doc ON lab.document_uid = doc.document_uid

	--print 'update 3'
	UPDATE tmp
	SET	tmp.CasesAffected = (SELECT COUNT(DISTINCT cas.ehars_uid)
							FROM	@Cases cas
							WHERE	tmp.FacilityFrom = cas.facility_uid)
	FROM	#FacilityConsolidation tmp


	--SD Commented for 4.0 as facility_provider table is removed 
	--> 4. Flag redundant Facility Provider
--  	UPDATE 	tmp
-- 	SET	tmp.RedundantFlag = 1
--	FROM	#FacilityConsolidation tmp
--	INNER JOIN dbo.facility_provider pro on tmp.FacilityTo = pro.facility_uid


	--print 'update 4'
	--> 5. Get Facility Details
  	UPDATE 	tmp
	SET	tmp.FacilityFromName = fc1.name1
	,	tmp.FacilityFromTypeCd = fc1.facility_type_cd
	,	tmp.FacilityFromTypeName = lk1.lookup_descr
	,	tmp.FacilityFromLocation = ISNULL(fc1.city_name + ', ','') + ISNULL(fc1.state_cd,'')
	,	tmp.FacilityFromPhone = COALESCE(fc1.Phone, '') -- SD 4.5 Add phne
	,	tmp.FacilityToName = fc2.name1
	,	tmp.FacilityToTypeCd = fc2.facility_type_cd
	,	tmp.FacilityToTypeName = lk2.lookup_descr
	,	tmp.FacilityToLocation = ISNULL(fc2.city_name + ', ','') + ISNULL(fc2.state_cd,'')
	,	tmp.FacilityToPhone = COALESCE(fc2.Phone, '') -- SD 4.5 Add phne
	FROM	#FacilityConsolidation tmp
	LEFT JOIN dbo.facility_code fc1 on tmp.FacilityFrom = fc1.facility_uid
	LEFT JOIN dbo.facility_code fc2 on tmp.FacilityTo = fc2.facility_uid
	LEFT JOIN dbo.lookup_code lk1 on (fc1.facility_type_cd = lk1.lookup_cd AND lk1.lookup_type = 'FACILITY_TYPE')
	LEFT JOIN dbo.lookup_code lk2 on (fc2.facility_type_cd = lk2.lookup_cd AND lk2.lookup_type = 'FACILITY_TYPE')


	SET @DocumentCount = 0

	--
	-- COLLECTS STATE_NOs FOR Affected DOCUMENTS 
	--
	-- 4.0 SD Use newly added column lab.facility_uid instead of lab.provider_uid

	SET @Cmd =			'INSERT INTO #StateNo(FacilityFrom,FacilityTo,DocumentUID,DocumentType,eHars_uid) '
	SET @Cmd = @Cmd +	'SELECT	DISTINCT fac.From_Facility_Uid, fac.To_Facility_Uid,doc.document_uid,doc.document_type_cd,doc.eHars_uid FROM ##temp_facility_consolidation fac ' 	
	SET @Cmd = @Cmd +	'INNER 	JOIN dbo.document doc ON fac.From_Facility_Uid = doc.facility_uid WHERE fac.Validation_Error IS NULL ' 	
	SET @Cmd = @Cmd +	'UNION SELECT	DISTINCT fac.From_Facility_Uid, fac.To_Facility_Uid,doc.document_uid,doc.document_type_cd,doc.eHars_uid FROM ##temp_facility_consolidation fac ' 	
	SET @Cmd = @Cmd +	'INNER 	JOIN dbo.facility_event evt ON fac.From_Facility_Uid = evt.facility_uid ' 	
	SET @Cmd = @Cmd +	'INNER 	JOIN dbo.document doc ON (evt.document_uid = doc.document_uid) WHERE fac.Validation_Error IS NULL '	--//Log# 003
	SET @Cmd = @Cmd +	'UNION SELECT	DISTINCT fac.From_Facility_Uid, fac.To_Facility_Uid,doc.document_uid,doc.document_type_cd,doc.eHars_uid FROM ##temp_facility_consolidation fac ' 	
	SET @Cmd = @Cmd +	'INNER 	JOIN dbo.lab lab ON fac.From_Facility_Uid = lab.facility_uid ' 	
	SET @Cmd = @Cmd +	'INNER 	JOIN dbo.document doc ON (lab.document_uid = doc.document_uid)' --//Log# 003
	SET	@Cmd = @Cmd +	'WHERE NOT EXISTS (SELECT 1 FROM #StateNo tmp WHERE '
	SET @Cmd = @cmd +	'fac.From_Facility_Uid = tmp.FacilityFrom AND fac.To_Facility_Uid = tmp.FacilityTo AND '
	SET @Cmd = @Cmd +	'doc.document_uid = tmp.DocumentUID AND doc.document_type_cd = tmp.DocumentType) '
	SET	@Cmd = @Cmd +	'AND fac.Validation_Error IS NULL '
	SET @Cmd = @Cmd +	'ORDER BY fac.From_Facility_Uid,fac.To_Facility_Uid,eHars_uid,doc.document_type_cd,doc.document_uid ' --// Log # 004

--print @cmd

	EXEC @Result = sp_executesql @cmd = @cmd

	SET @DocumentCount = @DocumentCount + @@ROWCOUNT

	SET  @TotalStateNo = @DocumentCount

	IF @Result = 1
	BEGIN
		SELECT 	@Error_Message = 'Failed to collect StateNO records for post report. It''s likely that an import process is already running.'
		PRINT @Error_Message
		IF NOT @Event_Uid IS NULL
		BEGIN
			--//UPDATE EVENT LOG FOR FAILURE
			UPDATE	dbo.EVENT_LOG
			SET		[comments] = @CT_STATUS_FAILED + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
			WHERE	event_uid = @Event_Uid
		END

		GOTO CLOSE_PROC
	END

	--print 'update 5'
	UPDATE	tmp
	SET		tmp.StateNo = stn.id_value
	FROM	#StateNo tmp
	INNER JOIN dbo.id stn ON (tmp.DocumentUID = stn.document_uid AND stn.id_cd = '005')



	--//GET ALL DOCUMENTS
	INSERT INTO #Ship_To(Document_Uid)
	SELECT DISTINCT DocumentUID
	FROM	#StateNo

	--//GET PV NOT YET COLLECTED FOR DOCUMENT OTHER THAN PV
	INSERT INTO #Ship_To(Document_Uid)
	SELECT DISTINCT dpv.Document_Uid
	FROM dbo.Document doc
	INNER JOIN #StateNo stn ON stn.DocumentUid = doc.Document_Uid
	INNER JOIN dbo.Document dpv ON stn.eHars_uid = dpv.eHars_Uid
	WHERE	dpv.Document_Type_cd = '000'
	AND NOT EXISTS( SELECT 1 FROM #Ship_To tmp WHERE dpv.Document_Uid = tmp.Document_Uid)


	IF @Preview_Only_Flag = 0
	BEGIN
		--------------------------------------------------------------
		-- Process Facility data upload
		--------------------------------------------------------------
		SET @TransactionFlag = 0
		IF @@TRANCOUNT = 0
		BEGIN
			BEGIN TRAN
			SET @TransactionFlag = 1
		END


		--//Update Document table
		PRINT '|-> Updating Document table with ToFacilityUID...'
		UPDATE	tab
		SET	tab.facility_uid = tmp.FacilityTo
		FROM	dbo.document tab
		INNER	JOIN #FacilityConsolidation tmp ON tab.facility_uid = tmp.FacilityFrom

		IF @@ERROR <> 0
		BEGIN

 			SET	@Error_Message = 'Failed to update Document table with ToFacilityUID'
			IF @TransactionFlag = 1
				ROLLBACK
			PRINT @Error_Message

			IF NOT @Event_Uid IS NULL
			BEGIN
				--//UPDATE EVENT LOG FOR FAILURE
				UPDATE	dbo.EVENT_LOG
				SET		[comments] = @CT_STATUS_FAILED + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
				WHERE	event_uid = @Event_Uid
			END

			GOTO CLOSE_PROC
		END

		-- SD Commented for 4.0 as Facility_Provider table is removed
		--//Update Facility_Provider table
--		PRINT '|-> Updating FACILITY_PROVIDER table with ToFacilityUID...'
--		UPDATE	tab
--		SET	tab.facility_uid = tmp.FacilityTo
--		FROM	dbo.FACILITY_PROVIDER tab
--		INNER	JOIN #FacilityConsolidation tmp ON tab.facility_uid = tmp.FacilityFrom
--		WHERE	NOT EXISTS(
--			SELECT	1
--			FROM	dbo.FACILITY_PROVIDER tb1
--			WHERE	tb1.provider_uid = tab.provider_uid
--			AND	tb1.facility_uid = tmp.FacilityTo)
--
--
--		IF @@ERROR <> 0
--		BEGIN
--			
--			SET	@Error_Message = 'Failed to replace Facility Provider table with the ToFacilityUID'
--			IF @TransactionFlag = 1
--				ROLLBACK
--			PRINT @Error_Message
--
--			IF NOT @Event_Uid IS NULL
--			BEGIN
--				--//UPDATE EVENT LOG FOR FAILURE
--				UPDATE	dbo.EVENT_LOG
--				SET		[comments] = @CT_STATUS_FAILED + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
--				WHERE	event_uid = @Event_Uid
--			END
--
--			GOTO CLOSE_PROC
--		END
--		-- Deleting old (FROM) facilities
--		PRINT '|-> Deleting old facilities (FROM) from FACILITY_PROVIDER table...'
--		DELETE tab
--		FROM	dbo.FACILITY_PROVIDER tab
--		INNER	JOIN #FacilityConsolidation tmp ON tab.facility_uid = tmp.FacilityFrom
--
--		IF @@ERROR <> 0
--		BEGIN
--
--			SET	@Error_Message = 'Failed to detele FROM Facilities located on the Facility Provider table'
--			IF @TransactionFlag = 1
--				ROLLBACK
--			PRINT @Error_Message
--
--			IF NOT @Event_Uid IS NULL
--			BEGIN
--				--//UPDATE EVENT LOG FOR FAILURE
--				UPDATE	dbo.EVENT_LOG
--				SET		[comments] = @CT_STATUS_FAILED + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
--				WHERE	event_uid = @Event_Uid
--			END
--
--			GOTO CLOSE_PROC
--		END


		--//Update Facility_Event table located on FACILITY_PROVIDER table
		PRINT '|-> Updating FACILITY_EVENT table with ToFacilityUID...'
		UPDATE	tab
		SET	tab.facility_uid = tmp.FacilityTo
		FROM	dbo.FACILITY_EVENT tab
		INNER	JOIN #FacilityConsolidation tmp ON tab.facility_uid = tmp.FacilityFrom
		WHERE	NOT EXISTS(
			SELECT	1
			FROM	dbo.FACILITY_EVENT tb1
			WHERE	tb1.document_uid = tab.document_uid
			AND	tb1.event_cd = tab.event_cd
			AND	tb1.doc_belongs_to = tab.doc_belongs_to
			AND	tb1.facility_uid = tmp.FacilityTo)

	
		IF @@ERROR <> 0
		BEGIN
			
			SET	@Error_Message = 'Failed to replace Facility Event table with the ToFacility UID'
			IF @TransactionFlag = 1
				ROLLBACK
			PRINT @Error_Message

			IF NOT @Event_Uid IS NULL
			BEGIN
				--//UPDATE EVENT LOG FOR FAILURE
				UPDATE	dbo.EVENT_LOG
				SET		[comments] = @CT_STATUS_FAILED + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
				WHERE	event_uid = @Event_Uid
			END

			GOTO CLOSE_PROC
		END
		-- Deleting old (FROM) facilities located on FACILITY_EVENT table
		PRINT '|-> Deleting old facilities (FROM) from FACILITY_EVENT table...'
		DELETE tab
		FROM	dbo.FACILITY_EVENT tab
		INNER	JOIN #FacilityConsolidation tmp ON tab.facility_uid = tmp.FacilityFrom

		IF @@ERROR <> 0
		BEGIN
			
			SET	@Error_Message = 'Failed to detele FROM Facilities located on the Facility Event table'
			IF @TransactionFlag = 1
				ROLLBACK
			PRINT @Error_Message

			IF NOT @Event_Uid IS NULL
			BEGIN
				--//UPDATE EVENT LOG FOR FAILURE
				UPDATE	dbo.EVENT_LOG
				SET		[comments] = @CT_STATUS_FAILED + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
				WHERE	event_uid = @Event_Uid
			END

			GOTO CLOSE_PROC
		END
		-- Replace Facilty located on the Lab table
		-- 4.0 SD Use newly added column lab.facility_uid instead of lab.provider_uid
		UPDATE	l
		SET	l.facility_uid = t.FacilityTo
		FROM	dbo.Lab l
		INNER JOIN #FacilityConsolidation t
		ON	l.facility_uid = t.FacilityFrom


		IF @@ERROR <> 0
		BEGIN
			
			SET	@Error_Message = 'Failed to replace Lab table with the ToFacility UID'
			IF @TransactionFlag = 1
				ROLLBACK
			PRINT @Error_Message

			IF NOT @Event_Uid IS NULL
			BEGIN
				--//UPDATE EVENT LOG FOR FAILURE
				UPDATE	dbo.EVENT_LOG
				SET		[comments] = @CT_STATUS_FAILED + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
				WHERE	event_uid = @Event_Uid
			END

			GOTO CLOSE_PROC
		END
		-- Deleting old (FROM) facilities located on FACILITY_CODE table
		PRINT '|-> Deleting old  facilities located on FACILITY_CODE table...'
		DELETE tab
		FROM	dbo.FACILITY_CODE tab
		INNER	JOIN #FacilityConsolidation tmp ON tab.facility_uid = tmp.FacilityFrom


		IF @@ERROR <> 0
		BEGIN
			
			SET	@Error_Message = 'Failed to detele FROM Facilities located on the Facility Event table'
			IF @TransactionFlag = 1
				ROLLBACK
			PRINT @Error_Message

			IF NOT @Event_Uid IS NULL
			BEGIN
				--//UPDATE EVENT LOG FOR FAILURE
				UPDATE	dbo.EVENT_LOG
				SET		[comments] = @CT_STATUS_FAILED + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
				WHERE	event_uid = @Event_Uid
			END

			GOTO CLOSE_PROC
		END

		--//UPDATE PERSON_VIEW_DETAILS
		-- 1. SCENARIO 1 - TABLE NAME = FACILITY_EVENT
		UPDATE	pview
		SET		pview.possible_values ='|' +
				ISNULL(fac.name1,'~') + '|' + ISNULL(fac.name2,'~') + '|' + ISNULL(fac.street_address1,'~') + '|' + ISNULL(fac.street_address2,'~') + '|' +
				ISNULL(fac.city_name,'~') + '|' + ISNULL(fac.county_name,'~') +  ISNULL(fac.state_cd,'~') + '|' + ISNULL(fac.zip_cd,'~') + '|' +
				ISNULL(fac.country_cd,'~') + '|' + ISNULL(fac.phone,'~') + '|'
		FROM	person_view_detail pview
		INNER JOIN facility_event evt ON (pview.document_uid = evt.document_uid and pview.id_cd = evt.event_cd)
		INNER JOIN facility_code fac ON evt.facility_uid = fac.facility_uid
		INNER JOIN #Ship_To doc ON pview.document_uid = doc.Document_Uid
		WHERE	pview.table_name = 'facility_event'
		AND		pview.field_name = 'facility'
		AND		evt.doc_belongs_to = 'PERSON'

		-- 2. SCENARIO 2: TABLE NAME = TREATMENT_CHILD
		CREATE TABLE #Facility_Values(Document_Uid CHAR(16), id_cd VARCHAR(128), Facility_Uid VARCHAR(255),Possible_Values VARCHAR(4000),Change_Position INT)
		INSERT INTO #Facility_Values(Document_Uid,id_cd,Facility_Uid,Possible_Values,Change_Position)
		SELECT	pvw.Document_Uid
			,	pvw.id_cd
			,	evt.facility_uid
			,	pvw.Possible_Values
			,	CHARINDEX('|',pvw.Possible_Values,
					CHARINDEX('|',pvw.Possible_Values,
						CHARINDEX('|',pvw.Possible_Values,
							CHARINDEX('|',pvw.Possible_Values,
								CHARINDEX('|',pvw.Possible_Values,
									CHARINDEX('|',pvw.Possible_Values,
										CHARINDEX('|',pvw.Possible_Values,1) + 1) 
									+ 1) 
								+ 1) 
							+ 1)
						 + 1) 
					+ 1)
		FROM	person_view_detail pvw 
		INNER JOIN facility_event evt ON ( pvw.Document_Uid = evt.Document_Uid AND evt.doc_belongs_to = pvw.id_cd)
		INNER JOIN #Ship_To doc ON pvw.document_uid = doc.Document_Uid
		WHERE	pvw.table_name = 'treatment_child'
		AND		pvw.field_name ='treatmentChild'


		UPDATE	tmp
		SET		tmp.Possible_Values = 
				SUBSTRING(Possible_Values,1,Change_Position) +
				ISNULL(fac.name1,'~') + '|' + ISNULL(fac.name2,'~') + '|' + ISNULL(fac.street_address1,'~') + '|' + ISNULL(fac.street_address2,'~') + '|' +
				ISNULL(fac.city_name,'~') + '|' + ISNULL(fac.county_name,'~') +  ISNULL(fac.state_cd,'~') + '|' + ISNULL(fac.zip_cd,'~') + '|' +
				ISNULL(fac.country_cd,'~') + '|' + ISNULL(fac.phone,'~') + '|'
		FROM	#Facility_Values tmp
		INNER JOIN facility_code fac ON tmp.facility_uid = fac.facility_uid

		UPDATE	pvw
		SET		pvw.possible_values = tmp.possible_values
		FROM	person_view_detail pvw
		INNER JOIN #Facility_Values tmp ON (pvw.Document_Uid = tmp.Document_Uid AND pvw.id_cd = tmp.id_cd)

		DROP TABLE #Facility_Values

		--//UPDATE SHIP_TO AND MODIFY_DT COLUMNS
		UPDATE	doc
		SET		doc.ship_flag = doc.ship_flag + 1
			,	doc.modify_dt = CONVERT(VARCHAR(8),getdate(),112)
		FROM	dbo.Document doc
		INNER JOIN #Ship_To tmp ON doc.Document_Uid = tmp.Document_Uid


		SET @Step = '|**** Upload process successfully completed on ' + CONVERT(VARCHAR(50),GETDATE(),109) + '...'
		PRINT '---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
		PRINT @Step
		PRINT '---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
		IF @TransactionFlag = 1
			COMMIT
		

	END 

-- 	SET @Step = '|**** Start building Post Report on ' + CONVERT(VARCHAR(50),GETDATE(),109) + '...'
-- 	PRINT '---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'
-- 	PRINT @Step
-- 	PRINT '---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------'

print 'before building report'
	SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES('''')'
		EXEC sp_executesql @cmd = @Cmd

print 'cmd1: ' + @cmd

	IF @Preview_Only_Flag = 0
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + SPACE(1) + 'Facility Post-Consolidation Report' + SPACE(6) + '****' + SPACE(6) + 'Report Date: ' + CONVERT(VARCHAR(50),GETDATE(),100) +''')'
	ELSE
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + SPACE(1) + 'Facility Post-Consolidation Report - Preview' + SPACE(1) + '**' + SPACE(1) + 'Report Date: ' + CONVERT(VARCHAR(50),GETDATE(),100) +''')'

print 'cmd2: ' + @cmd
	EXEC sp_executesql @cmd = @Cmd	

		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES('' ' + REPLICATE('=',82) + ''')'
print 'cmd3: ' + @cmd
			EXEC sp_executesql @cmd = @Cmd	
	
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES('''')'
print 'cmd4: ' + @cmd
			EXEC sp_executesql @cmd = @Cmd
	
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''                   Total # of Documents Updated in the Database'')'
print 'cmd5: ' + @cmd
			EXEC sp_executesql @cmd = @Cmd
	
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES('''')'
print 'cmd6: ' + @cmd
			EXEC sp_executesql @cmd = @Cmd
		--//Loop Facility Records

	DECLARE @Detail AS VARCHAR(800)
	SET	@IndexFacility = 1
	SET	@IndexStateNo = 0 --1
	SET	@StateNoHeaderFlag = 0
	SET	@RowIndex = 1

	SET	@HeaderLineDiv = '+' + REPLICATE('-',6) + '+' + REPLICATE('-',18) + '+' + REPLICATE('-',52) + '+'

	SET @DetailLineDiv = SPACE(3) + '+' + REPLICATE('-',4) + '+' + REPLICATE('-',31) + '+' + REPLICATE('-',18) + '+' + REPLICATE('-',18) + '+'

	SET @Row_Count_Change_Flag = 0

	WHILE @IndexFacility <= @TotalFacility
	BEGIN

		SELECT	@FacilityFromUID = FacilityFrom
		,	@FacilityToUID = FacilityTo
		,	@StateNOAffected = DocumentAffected
		,	@DocumentAffected = DocumentAffected
		,	@RedundantFlag = RedundantFlag
		,	@FacilityFromName = LEFT(ISNULL(FacilityFromName,''),100) -- SD 4.5 EHARS-4712
		,	@FacilityToName = LEFT(ISNULL(FacilityToName,''),100)	  -- SD 4.5 EHARS-4712
		,	@FacilityFromTypeName = LEFT(ISNULL(FacilityFromTypeName,''),46)
		,	@FacilityToTypeName = LEFT(ISNULL(FacilityToTypeName,''),47)
		,	@FacilityFromLocation = FacilityFromLocation
		,	@FacilityToLocation = FacilityToLocation
		,	@CasesAffected = CasesAffected
		,	@FacilityFromPhone = ISNULL(FacilityFromPhone,'') -- SD 4.5 
		,	@FacilityToPhone = ISNULL(FacilityToPhone,'')	  -- SD 4.5 

		FROM	#FacilityConsolidation
		WHERE 	RowNumber = @IndexFacility
		SET @Detail =  @HeaderLineDiv
 		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + @Detail + ''')'

print 'cmd7: ' + @cmd

 		EXEC sp_executesql @cmd = @Cmd


		--//Facility Header & Division
		SET @Detail = '|' + SPACE(6) + '| Facility UID' + SPACE(5) + '| Facility Name / Facility Type / City, State / Phone Number' + SPACE(8) + '|'
 		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + @Detail + ''')'
print 'cmd8: ' + @cmd
 		EXEC sp_executesql @cmd = @Cmd
		SET @Detail =  @HeaderLineDiv
 		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + @Detail + ''')'
print 'cmd9: ' + @cmd
 		EXEC sp_executesql @cmd = @Cmd
		--//Facility FROM Code & Name 
print '@FacilityFromUID: ' + isnull(@FacilityFromUID, 'nullvalue')
print '@FacilityFromName: ' + isnull(@FacilityFromName, 'nullvalue')
		SET @Detail = '| From | ' + @FacilityFromUID  + ' | ' + @FacilityFromName + COALESCE(SPACE(51 - LEN(@FacilityFromName)), '') + '|'
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd10: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd
		
print '@FacilityFromTypeName: ' + isnull(@FacilityFromTypeName, 'nullvalue')
		--//Facility FROM Type Code & Type Name 
		SET @Detail = '|      | ' + SPACE(16)  + ' | ' + @FacilityFromTypeName +  COALESCE(SPACE(51 - LEN(@FacilityFromTypeName)), '') + '|'
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd11: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd
		--//Facility FROM County & State
		SET @Detail = '|      | ' + SPACE(16)  + ' | ' + @FacilityFromLocation +  SPACE(51 - LEN(@FacilityFromLocation)) + '|'
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd12: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd

		--//SD 4.5 Add From Facility Phone
		SET @Detail = '|      | ' + SPACE(16)  + ' | ' + @FacilityFromPhone +  SPACE(51 - LEN(@FacilityFromPhone)) + '|'
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd13: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd

		SET @Detail = @HeaderLineDiv
 		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd14: ' + @cmd
 		EXEC sp_executesql @cmd = @Cmd
		--//Facility TO Type Code & Type Name
		SET @Detail = '|  To  | ' + @FacilityToUID  + ' | ' + @FacilityToName + COALESCE(SPACE(51 - LEN(@FacilityToName)), '') + '|'
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd15: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd

		--//Facility To Type Code & Type Name 
		SET @Detail = '|      | ' + SPACE(16)  + ' | ' + @FacilityToTypeName +  COALESCE(SPACE(51 - LEN(@FacilityToTypeName)), '') + '|'
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd16: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd


		--//Facility TO County & State
		SET @Detail = '|      | ' + SPACE(16)  + ' | ' + @FacilityToLocation +  SPACE(51 - LEN(@FacilityToLocation)) + '|'
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'

print 'cmd17: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd

		--//SD 4.5 Add To Facility Phone
		SET @Detail = '|      | ' + SPACE(16)  + ' | ' + @FacilityToPhone +  SPACE(51 - LEN(@FacilityToPhone)) + '|'
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'

print 'cmd18: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd


 		SET @Detail = @HeaderLineDiv
  		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd19: ' + @cmd
  		EXEC sp_executesql @cmd = @Cmd


		SET @Detail = ''
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd20: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd

		SET @Detail = '      Number of Cases Affected: ' + CAST(ISNULL(@CasesAffected,0) AS VARCHAR(5))
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd21: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd


		SET @Detail = '      Number of Documents Affected: ' + CAST(ISNULL(@StateNOAffected,0) AS VARCHAR(5))
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd22: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd

-- SD commented because FACILITY_PROVIDER table does not exist
--		SET @Detail = '      Redundant Entries on Facility-Provider Table? ' + (CASE @RedundantFlag WHEN 0 THEN 'No' ELSE 'Yes' END)
--		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + @Detail + ''')'
--		EXEC sp_executesql @cmd = @Cmd

		SET @Detail = ''
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd23: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd
		SET @StateNOLine = 1
		SET @LineHeaderFlag = 0

		SET @Row_Count_Change_Flag = 0

		WHILE (
			SELECT  COUNT(*) 
			FROM #StateNo 
			WHERE RowNumber = @RowIndex
			AND	RTRIM(FacilityFrom) = RTRIM(@FacilityFromUID)
			AND	RTRIM(FacilityTo) = RTRIM(@FacilityToUID)) > 0
		BEGIN

			
			IF @LineHeaderFlag = 0
			BEGIN


				SET @Detail = SPACE(26) + 'List of the Affected Documents:'
				SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd24: ' + @cmd
				EXEC sp_executesql @cmd = @Cmd

				SET @Detail = @DetailLineDiv
				SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd25: ' + @cmd
				EXEC sp_executesql @cmd = @Cmd

				SET @Detail = SPACE(3) + '|' + SPACE(4) + '|' + SPACE(1) + 'Document UID / Doc. Type' + SPACE(6) + '|' + SPACE(1) + 'Ehars uid' + SPACE(8) + '|' + SPACE(1) + 'State NO' + SPACE(9) + '|'
				SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd26: ' + @cmd
				EXEC sp_executesql @cmd = @Cmd
				SET @Detail = @DetailLineDiv
				SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd27: ' + @cmd
				EXEC sp_executesql @cmd = @Cmd


				SET	@LineHeaderFlag = 1
				SET	@StateNOLine = 1
			END

			IF @DocumentAffected = 0
			BEGIN
				SET @Detail = SPACE(3) + '|' + '  0' + '|' + SPACE(7 ) + '*** No document associated with the facility' + SPACE(2) + '|' + SPACE(8) + '            ' + SPACE(8) + '|'
				SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
				--EXEC sp_executesql @cmd = @Cmd
			END
			ELSE
			BEGIN

				SELECT	@StateNo = ISNULL(tmp.StateNo,'')
				,	@DocumentUID = tmp.DocumentUID
				,	@EharsUid = ISNULL(tmp.ehars_uid,'')
				,	@DocumentType = lkp.lookup_descr
				FROM	#StateNo tmp
				LEFT JOIN dbo.lookup_code lkp ON (tmp.DocumentType = lkp.lookup_cd AND lkp.lookup_type = 'DOCUMENT')

				WHERE	RowNumber = @RowIndex
				IF @@ROWCOUNT > 0
				BEGIN

					SET @Detail = 	SPACE(3) + '|' + RIGHT(SPACE(4) + 
							CAST(@StateNOLine AS VARCHAR(5)),4) + 
							'|' + SPACE(1) + 
							@DocumentUID + SPACE(30-LEN(@DocumentUID)) + '| ' + 
							@EharsUid + SPACE(1) + '| ' +
							@StateNo + SPACE(17-LEN(@StateNo) )+  '|' + SPACE(1)  + '|'
							--@DocumentType + SPACE(30 - LEN(@DocumentType)) + '|'


					SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'

print 'cmd28: ' + @cmd
					EXEC sp_executesql @cmd = @Cmd

					SET @Detail = 	SPACE(3) + '|    ' +  '|' + SPACE(1) + 
							@DocumentType + SPACE(30 - LEN(@DocumentType)) + '|' + SPACE(18) + '|' + SPACE(18) + '|'

					SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'

print 'cmd29: ' + @cmd
					EXEC sp_executesql @cmd = @Cmd

					SET @Detail = @DetailLineDiv
					SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd30: ' + @cmd
					EXEC sp_executesql @cmd = @Cmd

				END
			END
			SET @IndexStateNO = @IndexStateNO + 1
			SET @RowIndex = @RowIndex + 1
			SET	@Row_Count_Change_Flag = 1
			SET @StateNOLine = @StateNOLine + 1
		END
		IF @Row_Count_Change_Flag = 0
		BEGIN
			SET @RowIndex = @RowIndex + 1
			SET @Row_Count_Change_Flag = 0
		END

		IF @TotalStateNo > 0
		BEGIN
			IF @DocumentAffected = 0
			BEGIN
					SET @Detail = SPACE(3) + '+' + REPLICATE('-',67) + '+'
					SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd31: ' + @cmd
					EXEC sp_executesql @cmd = @Cmd

					SET @Detail = SPACE(3) + '| *** No documents have been associated with this Facility From *** |'
					SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd32: ' + @cmd
					EXEC sp_executesql @cmd = @Cmd

					SET @Detail = SPACE(3) + '+' + REPLICATE('-',67) + '+'
					SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd33: ' + @cmd
					EXEC sp_executesql @cmd = @Cmd
			END
		END



		SET @Detail = ''
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd34: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd

		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES('' ' + REPLICATE('=',82) + ''')'
print 'cmd35: ' + @cmd
 		EXEC sp_executesql @cmd = @Cmd	


		SET @Detail = ''
		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd36: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd
		SET @IndexFacility = @IndexFacility + 1


	END
 	EXEC @Result = sp_executesql @cmd = @cmd
	IF @FileCreatedFlag = 0
	BEGIN
		SET @ReportFileSuffix = '0000'
		SET @Result = 1 --//FAIL
		SET @ReportFileSuffix = REPLACE(RIGHT(CONVERT(VARCHAR(100),GETDATE(),131),14),':','-')

		SET @ReportFileName =  @CT_REPORT_FILE_PATH + '\\' + @CT_REPORT_FILE_PREFIX + REPLACE(CONVERT(VARCHAR(50),GETDATE(),102),'.','-') + '_' + @ReportFileSuffix + @CT_REPORT_FILE_EXTENSION
		SET @ReportFileName = REPLACE(@ReportFileName,' ','0')

-- 		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES('' ' + REPLICATE('=',82) + ''')'
-- 		EXEC sp_executesql @cmd = @Cmd	

		--//APPEND INVALID FACILITIES INTO THE REPORT

		IF (SELECT COUNT(*) FROM ##temp_facility_consolidation WHERE Validation_Error IS NOT NULL) > 0
		BEGIN
			SET @HeaderFlag = 0
			
 			SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''                               Invalid Facilities'')'
print 'cmd37: ' + @cmd
 			EXEC sp_executesql @cmd = @Cmd	

 			SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES('''')'
print 'cmd38: ' + @cmd
 			EXEC sp_executesql @cmd = @Cmd	

			DECLARE Invalid_Cursor CURSOR FAST_FORWARD 
			FOR	SELECT From_Facility_Uid, To_Facility_Uid, Validation_Error
				FROM	##temp_facility_consolidation
				WHERE	Validation_Error IS NOT NULL

			OPEN Invalid_Cursor
			FETCH NEXT FROM Invalid_Cursor INTO @InvalidFrom, @InvalidTo, @InvalidMessage

			WHILE @@FETCH_STATUS = 0
			BEGIN

				IF @HeaderFlag = 0
				BEGIN
					SET @Detail = SPACE(3) + '+' + REPLICATE('-',75) + '+' 
					SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd39: ' + @cmd
					EXEC sp_executesql @cmd = @Cmd

					SET @Detail = SPACE(3) + '| Invalid Facilities' + SPACE(56) + '|'
					SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd40: ' + @cmd
					EXEC sp_executesql @cmd = @Cmd

					SET @Detail = SPACE(3) + '+' + REPLICATE('-',75) + '+' 
					SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd41: ' + @cmd
					EXEC sp_executesql @cmd = @Cmd

					SET @HeaderFlag = 1
				END

				SET	@PrintMessage = REPLACE(RIGHT(@InvalidMessage,70),'''','''''')
				SET @Detail = SPACE(3) + '| ' + @PrintMessage +  '    |'
				SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
				
print 'cmd42: ' + @cmd

				EXEC sp_executesql @cmd = @Cmd

				SET @Detail = SPACE(3) + '+' + REPLICATE('-',17) + '-' + REPLICATE('-',17) + '-' + REPLICATE('-',39) + '+'
				SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES(''' + REPLACE(@Detail,'''','''''') + ''')'
print 'cmd43: ' + @cmd
				EXEC sp_executesql @cmd = @Cmd
				
				FETCH NEXT FROM Invalid_Cursor INTO @InvalidFrom, @InvalidTo, @InvalidMessage
			END
			CLOSE Invalid_Cursor
			DEALLOCATE Invalid_Cursor
		END

		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES('''')'
print 'cmd44: ' + @cmd
 		EXEC sp_executesql @cmd = @Cmd	

--		SET @Cmd = 'INSERT INTO ' + @ReportTable + '(LineContent) VALUES('' ' + REPLICATE('=',82) + ''')'
-- 		EXEC sp_executesql @cmd = @Cmd	

		--//RETURN FINAL RECORD SET
		SET @Cmd = 'SELECT LineContent FROM ' + @ReportTable 

print 'cmd45: ' + @cmd
 		EXEC sp_executesql @cmd = @Cmd	

		--//UPDATE EVENT LOG
		IF NOT @Event_Uid IS NULL
		BEGIN
			--//DROP MAIN TEMPORARY TABLE
			DROP TABLE ##temp_facility_consolidation

			--//UPDATE EVENT LOG
			UPDATE	dbo.EVENT_LOG
			SET		[comments] = @CT_STATUS_COMPLETE + ' [' + CONVERT(VARCHAR(50),GETDATE(),100) + ']'
			WHERE	event_uid = @Event_Uid
		END

	END

CLOSE_PROC:
	IF @ReportTableFlag = 1
	BEGIN
		SET @Cmd = 'DROP TABLE ' + @ReportTable
print 'cmd46: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd
	END

	IF @ImportTableFlag = 1
	BEGIN
		SET @Cmd = 'DROP TABLE ' + @ImportTable
print 'cmd47: ' + @cmd
		EXEC sp_executesql @cmd = @Cmd
	END

	IF @StateNoTableFlag = 1
	BEGIN
		DROP TABLE #StateNo
	END

	--//DROP TEMP TABLE
	IF (SELECT COUNT(*) FROM tempdb..sysobjects WHERE NAME = '##temp_facility_consolidation' AND xtype = 'U') > 0
	BEGIN
		DROP TABLE ##temp_facility_consolidation
	END
	IF @Error_Message IS NULL
		RETURN(0)
	ELSE
		RETURN(1)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_log_dml]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[usp_log_dml]
@load_name	varchar(50) = 'No load name',
@ehars_version_no varchar(16) = 'No ehars version',
@build_no   varchar(50) = 'No build number',
@initial_count int = 0,
@load_count int = 0,
@update_count int = 0,
@delete_count int = 0,
@after_count int = 0,
@load_description varchar(255) = 'No Description',
@loaded_by varchar(50) = 'n/a',
@load_dt datetime = '1900-01-01'
AS
/****************************************************
	* Name: dbo.usp_log_dml
	* Author: Sanjeev Damle
	* Published: 01/14/2013
	* Main consumer: DML Scripts for installation and data fixes
	* Purpose: Write log entry in the DML_LOG table with the passed values.
	* Notes:
	* 1. @seq_counter_id parameter determines which sequence number to generate. The values can be LAB, ADDRESS, PERSON_NAME and ID
	* 2. @eHARS_Uid tells the case (ehars_uid) for which the next sequence number needs to be generated.
	* 3. @increment is the number by which the next sequence number will be incremented while updating the SEQUENCE_COUNTER table
	* 4. @next_seq_number is the output parameter with the next sequence number for a given sequence identifier and the ehars_uid
	* 5. @Error_Message returns error message in case an error occurs
	*****************************************************
	* Maintenance Log
	* Date		Author		Description
	* ---------------------------------------------------
	* 05/30/12	Sanjeev		Created the procedure for eHARS 4.0
  	****************************************************/
begin
begin try
    Set @load_dt = Case When @load_dt = '1900-01-01' Then Getdate() Else @load_dt End;
    
    insert into DML_LOG(load_name, ehars_version_no, build_no, initial_count, load_count, update_count, 
    delete_count, after_count, load_description, loaded_by, load_dt)
    
    values(@load_name, @ehars_version_no, @build_no, @initial_count, @load_count, @update_count, 
    @delete_count, @after_count, @load_description, @loaded_by, @load_dt);
end try

begin catch
    insert into DML_LOG(load_name, ehars_version_no, build_no, initial_count, load_count, update_count, 
    delete_count, after_count, load_description, loaded_by, load_dt)
    
    values(@load_name, @ehars_version_no, @build_no, @initial_count, @load_count, @update_count, 
    @delete_count, @after_count, 'Failed to write dml_log entry', @loaded_by, @load_dt);

end catch           
end
GO
/****** Object:  StoredProcedure [dbo].[usp_mcgen_space_check]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE    PROCEDURE [dbo].[usp_mcgen_space_check]

AS

/* usp_mcgen_space_check.sql
Purpose: Alert users if system does not have enough space to run MCGEN
Author: Jason R. Merrill
Last Edited: 2011-12-05 13:52:08.593
Revised: 
2011-12-05 Basic Edits - jmi5
2011-12-06 Changed to view both data and log as seperate drives - jmi5
2011-12-07 Updating Disk Sizes and match code ranges (changing all to MB for comparison) - jmi5
2011-12-08 Finalizing script with 80 million data option
*/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER OFF
SET NOCOUNT ON

DECLARE @return_script  VARCHAR(1000)
DECLARE @return_sql		VARCHAR(1000)
DECLARE @results		VARCHAR(10)
DECLARE @data			VARCHAR(5)
DECLARE @log			VARCHAR(5)
DECLARE @docs           INT
DECLARE @mctotal        INT
DECLARE @free           VARCHAR(25)

DECLARE @Drive TABLE(DriveName CHAR , FreeSpaceInMegabytes INT)
INSERT @Drive
EXECUTE xp_fixeddrives

BEGIN TRY

SET @data = (SELECT DISTINCT drv.DriveName
	FROM     sys.master_files mas
	LEFT JOIN @Drive drv
	ON       LEFT(mas.physical_name, 1) = drv.DriveName
	WHERE database_id = DB_ID()  
	AND mas.type = 0)

SET @log = (SELECT DISTINCT drv.DriveName
	FROM     sys.master_files mas
	LEFT JOIN @Drive drv
	ON       LEFT(mas.physical_name, 1) = drv.DriveName
	WHERE database_id = DB_ID()  
	AND mas.type = 1)

IF @data = @log 
	BEGIN
	--	PRINT 'Data & Log on Same Server'

		SET @free = (SELECT DISTINCT drv.FreeSpaceInMegabytes
			FROM     sys.master_files mas
			LEFT JOIN @Drive drv
			ON       LEFT(mas.physical_name, 1) = drv.DriveName
			WHERE database_id = DB_ID()  
			AND mas.type = 0)
			
		SET @docs = (SELECT COUNT(*) FROM dbo.document)
		SET @mctotal = (SELECT (@docs) * 25)

-- PRINT @free
-- PRINT @mctotal
 
 
  SET @return_script = ( SELECT
          CASE
                  WHEN @mctotal < 10000
                  THEN
                          CASE
                                  WHEN @free < 12
                                  THEN 'Match Code generation requires 12 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 10000
                  AND     @mctotal < 100000
                  THEN
                          CASE
                                  WHEN @free < 94
                                  THEN 'Match Code generation requires 94 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 100000
                  AND     @mctotal < 1000000
                  THEN
                          CASE
                                  WHEN @free < 909
                                  THEN 'Match Code generation requires 909 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 1000000
                  AND     @mctotal < 5000000
                  THEN
                          CASE
                                  WHEN @free < 4608
                                  THEN 'Match Code generation requires 4608 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 5000000
                  AND     @mctotal < 10000000
                  THEN
                          CASE
                                  WHEN @free < 9012
                                  THEN 'Match Code generation requires 9012 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 10000000
                  AND     @mctotal < 16000000
                  THEN
                          CASE
                                  WHEN @free < 14541
                                  THEN 'Match Code generation requires 14541 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 16000000
                  AND     @mctotal < 25000000
                  THEN
                          CASE
                                  WHEN @free < 23552
                                  THEN 'Match Code generation requires 23552 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 25000000
                  AND     @mctotal < 35000000
                  THEN
                          CASE
                                  WHEN @free < 31232
                                  THEN 'Match Code generation requires 31232 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 35000000
                  AND     @mctotal < 50000000
                  THEN
                          CASE
                                  WHEN @free < 40960
                                  THEN 'Match Code generation requires 40960 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 50000000
                  AND     @mctotal < 65000000
                  THEN
                          CASE	  	
                                  WHEN @free < 59596
                                  THEN 'Match Code generation requires 59596 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 65000000
                  AND     @mctotal < 80000000
                  THEN
                          CASE    
                                  WHEN @free <  72644
                                  THEN 'Match Code generation requires 72644 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END                   
                  WHEN @mctotal > 80000000
                  THEN
                          CASE    
                                  WHEN @free <  72644 
                                  THEN 'Match Code generation requires 72644 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END                   
                   ELSE 'Pass'
        END AS msg )

--IF @return_script <> 'Pass'
--	BEGIN 
--		RAISERROR('-2',16,1)
--		PRINT 'test'--@return_script
--	END

	END
ELSE
	BEGIN
		--PRINT 'Data & Log on Different Servers'

/* 
	Get free space for Data file drive
	sys.master_files.type = 0
*/

SET @free = (SELECT drv.FreeSpaceInMegabytes
	FROM     sys.master_files mas
	LEFT JOIN @Drive drv
	ON       LEFT(mas.physical_name, 1) = drv.DriveName
	WHERE database_id = DB_ID()  
	AND mas.type = 0)
	
SET @docs = (SELECT COUNT(*) FROM dbo.document)
SET @mctotal = (SELECT (@docs) * 25)
	

  SET @return_script = ( SELECT
          CASE
                  WHEN @mctotal < 10000
                  THEN
                          CASE
                                  WHEN @free < 6
                                  THEN '10,000 Match Codes require 6 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 10000
                  AND     @mctotal < 100000
                  THEN
                          CASE
                                  WHEN @free < 42
                                  THEN '100,000 Match Codes require 42 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 100000
                  AND     @mctotal < 1000000
                  THEN
                          CASE
                                  WHEN @free < 403
                                  THEN '1,000,000 Match Codes require 403 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 1000000
                  AND     @mctotal < 5000000
                  THEN
                          CASE
                                  WHEN @free < 2048
                                  THEN '5,000,000 Match Codes require 2048 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 5000000
                  AND     @mctotal < 10000000
                  THEN
                          CASE
                                  WHEN @free < 4096
                                  THEN '10,000,000 Match Codes require 4096 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 10000000
                  AND     @mctotal < 16000000
                  THEN
                          CASE
                                  WHEN @free < 7168
                                  THEN '16,000,000 Match Codes require 7186 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 16000000
                  AND     @mctotal < 25000000
                  THEN
                          CASE
                                  WHEN @free < 10240
                                  THEN '25,000,000 Match Codes require 10240 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 25000000
                  AND     @mctotal < 35000000
                  THEN
                          CASE
                                  WHEN @free < 14336
                                  THEN '35,000,000 Match Codes require 14336 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 35000000
                  AND     @mctotal < 50000000
                  THEN
                          CASE
                                  WHEN @free < 25600
                                  THEN 'Match Code generation requires 25600 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 50000000
                  AND     @mctotal < 65000000
                  THEN
                          CASE   
                                  WHEN @free <  26112 
                                  THEN 'Match Code generation requires 26112 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 65000000
                  AND     @mctotal < 80000000
                  THEN
                          CASE    
                                  WHEN @free <  32132
								  THEN 'Match Code generation requires 32132 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END                   
                  WHEN @mctotal > 80000000
                  THEN
                          CASE    
                                  WHEN @free <  32132
                                  THEN 'Match Code generation requires 32132 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @data + ' drive'
                                  ELSE 'Pass'
                          END                   
                  
                  ELSE 'Pass'
          END AS msg )



--SELECT @return_script
IF @return_script <> 'Pass'
	BEGIN 
		--RAISERROR('-2',16,1)
		PRINT @return_script
	END


/* 
	Get free space for Log file drive
	sys.master_files.type = 1
*/

SET @free = (SELECT drv.FreeSpaceInMegabytes
	FROM     sys.master_files mas
	LEFT JOIN @Drive drv
	ON       LEFT(mas.physical_name, 1) = drv.DriveName
	WHERE database_id = DB_ID()  
	AND mas.type = 1)
	

SET @docs = (SELECT COUNT(*) FROM dbo.document)
SET @mctotal = (SELECT (@docs) * 25)

  SET @return_script = ( SELECT
          CASE
                  WHEN @mctotal < 10000
                  THEN
                          CASE
                                  WHEN @free < 7
                                  THEN 'Log for 10,000 Match Codes requires 7 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @log + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 10000
                  AND     @mctotal < 100000
                  THEN
                          CASE
                                  WHEN @free < 52
                                  THEN 'Log for 100,000 Match Codes requires 52 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @log + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 100000
                  AND     @mctotal < 1000000
                  THEN
                          CASE
                                  WHEN @free < 506
                                  THEN 'Log for 1,000,000 Match Codes requires 506 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @log + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 1000000
                  AND     @mctotal < 5000000
                  THEN
                          CASE
                                  WHEN @free < 2560
                                  THEN 'Log for 5,000,000 Match Codes requires 2560 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @log + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 5000000
                  AND     @mctotal < 10000000
                  THEN
                          CASE
                                  WHEN @free < 5120
                                  THEN 'Log for 10,000,000 Match Codes requires 5120 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @log + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 10000000
                  AND     @mctotal < 16000000
                  THEN
                          CASE
                                  WHEN @free < 8190
                                  THEN 'Log for 16,000,000 Match Codes requires 8190 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @log + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 16000000
                  AND     @mctotal < 25000000
                  THEN
                          CASE
                                  WHEN @free < 13312
                                  THEN 'Log for 25,000,000 Match Codes requires 13312 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @log + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 25000000
                  AND     @mctotal < 35000000
                  THEN
                          CASE
                                  WHEN @free < 17408
                                  THEN 'Log for 35,000,000 Match Codes requires 17408 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @log + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 35000000
                  AND     @mctotal < 50000000
                  THEN
                          CASE
                                  WHEN @free < 20480
                                  THEN 'Match Code generation requires 20480 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @log + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 50000000
                  AND     @mctotal < 65000000
                  THEN
                          CASE    
                                  WHEN @free <  33792 
                                  THEN 'Match Code generation requires 33792 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @log + ' drive'
                                  ELSE 'Pass'
                          END
                  WHEN @mctotal    > 65000000
                  AND     @mctotal < 80000000
                  THEN
                          CASE    
                                  WHEN @free <  40512
                                  THEN 'Match Code generation requires 40512 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @log + ' drive'
                                  ELSE 'Pass'
                          END                   
                  WHEN @mctotal > 80000000
                  THEN
                          CASE    
                                  WHEN @free <  40512  
                                  THEN 'Match Code generation requires 40512 MB of free disk space' + char(10)  + ' there is ' + @free + ' MB on the ' + @log + ' drive'
                                  ELSE 'Pass'
                          END                   
                  ELSE 'Pass'
          END AS msg )
END




	
IF @return_script <> 'Pass'
	BEGIN
	SET @return_sql = 'SELECT -1 AS return_code'
	EXEC(@return_sql)
		PRINT @return_script
	END
ELSE
	SET @return_sql = 'SELECT 0 AS return_code'
	EXEC(@return_sql)
	
END TRY
BEGIN CATCH
IF @return_script <> 'Pass'
	BEGIN 
		RAISERROR('-2',16,1)
		PRINT @return_script
	END
END CATCH



/* End usp_mcgen_space_check.sql */



GO
/****** Object:  StoredProcedure [dbo].[usp_move_merge_sequencing]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_move_merge_sequencing]
	@ehars_uid CHAR(16) = 0, 
	@document_uids VARCHAR(8000)
AS

BEGIN TRY
	/*Create temp table*/
	--IF EXISTS (SELECT * FROM sys.objects WHERE OBJECT_ID = OBJECT_ID(N'[dbo].[tmp_move_merge]') AND TYPE IN (N'U'))
	--BEGIN
	--	DROP TABLE [dbo].[tmp_move_merge] 
	--END
	IF OBJECT_ID('tempdb.dbo.#tmp_move_merge') is not null
	BEGIN
		DROP TABLE #tmp_move_merge
	END
	CREATE TABLE #tmp_move_merge(
		[document_uid] [CHAR](16) NOT NULL
		,[seq_id] INT
		,[enter_dt] [CHAR](8))
		
	--CREATE TABLE [dbo].[tmp_move_merge](
	--	[document_uid] [CHAR](16) NOT NULL
	--	,[seq_id] INT
	--	,[enter_dt] [CHAR](8))
 
/*Load temp table with data for eHARS uid*/
    INSERT INTO #tmp_move_merge
	SELECT SUBSTRING(',' + @document_uids + ','
            ,Number + 1
            ,CHARINDEX(',', ',' + @document_uids + ',', Number + 1) - Number -1) AS [document_uid]
            ,0 AS [seq_id]
            ,NULL AS [enter_dt]
    FROM master..spt_values     
    WHERE TYPE = 'p'     
        AND Number <= LEN(',' + @document_uids + ',') - 1     
        AND SUBSTRING(',' + @document_uids + ',', Number, 1) = ','

/*Update the Enter Date in temp table*/
	UPDATE #tmp_move_merge
	SET [enter_dt] = d.[enter_dt]
	FROM [dbo].[DOCUMENT] d
	INNER JOIN #tmp_move_merge tmm ON d.[document_uid] = tmm.[document_uid]
   
/*Update the Sequence Identifier in temp table*/
	UPDATE #tmp_move_merge
	SET [seq_id] = [seq_counter_id]
	FROM
	(SELECT d.document_uid, sc.[seq_counter_id]
	FROM document d
	inner join [SEQUENCE_COUNTER] sc on sc.[EHARS_UID] = d.[EHARS_UID]
	WHERE d.[EHARS_UID] = @ehars_uid) src

/*Delete PV records from temp table*/
	DELETE tmm
	FROM #tmp_move_merge tmm join document doc on tmm.document_uid = doc.document_uid and doc.document_type_cd = '000'
	
	--WHERE tmm.document_uid IN (
	--	SELECT tmm.document_uid
	--	FROM #tmp_move_merge tmm
	--	INNER JOIN DOCUMENT d
	--	ON d.[document_uid] = tmm.[document_uid]
	--	WHERE d.[document_type_cd] = '000')
    
/*Get count of records for the document ID and sequence type (ie Lab records)*/  
	--SELECT count(*) AS lab_doc_count 
	--FROM LAB l
	--INNER JOIN #tmp_move_merge tmm0
	--ON tmm.document_uid = l.document_uid
	--WHERE tmm.seq_id = 3
--	GROUP BY l.document_uid	


	DECLARE @CurrentDate VARCHAR(8),
			@sequence_identifier VARCHAR(2),
			@labRecordCount int,
			@nextSeqNumber int,
			@retval int
	
	SET @CurrentDate = CONVERT(VARCHAR(8), GETDATE(), 112)
	SET @sequence_identifier = 3  -- For LAB
	
	-- Get total number of LAB records for all the document_uids in the #tmp_move_merge table
	select @labRecordcount = count(*)
	from #tmp_move_merge tmm join lab on tmm.document_uid = lab.document_uid
	
	-- Get the new sequence number and increment the next seq number in the SEQUENCE_COUNTER by the value of @labRecordCount
	
	exec @retval = usp_get_next_seq_number @sequence_identifier, @ehars_uid, @labRecordCount, @nextSeqNumber output
	
	print 'ehars_uid:' + @ehars_uid
	print 'Next Seq Nbr: ' + cast(@nextSeqNumber as varchar(10))
	print 'Lab Record Count: ' + cast(@labRecordcount as varchar(20))
	print 'retval: ' + cast(@retval as varchar(20))
	
	PRINT 'Create Tables Start: ' + CONVERT(VARCHAR(40), GETDATE(), 109)
	
	IF OBJECT_ID('tempdb.dbo.#new_lab') IS NOT NULL 
	BEGIN
		DROP TABLE #new_lab
	END

	PRINT 'Load New Seq for LAB Records in Temp Table Start: ' + CONVERT(VARCHAR(40), GETDATE(), 109)

	-- Generate Sequence Number for each ehars_uid in the lab table. The newsno can be used as the new lab_seq
	SELECT new_ehars_uid
		, edt
		, enter_dt
		, document_uid
		, lab_seq
		,(ROW_NUMBER() OVER (ORDER BY lab.new_ehars_uid, enter_dt, document_uid) - RANK() OVER (ORDER BY lab.new_ehars_uid)) + ISNULL(@nextSeqNumber, 0) newsno
	INTO #new_lab
	FROM 
		(SELECT @ehars_uid AS new_ehars_uid
			, tmm.enter_dt edt
			, REPLACE(tmm.enter_dt, '..', '01') enter_Dt
			, tmm.document_uid
			, lab_seq
			FROM lab 
			INNER JOIN #tmp_move_merge tmm ON tmm.document_uid = lab.document_uid
		) AS lab 
	--LEFT JOIN SEQUENCE_COUNTER es ON lab.new_ehars_uid = es.ehars_uid 
	--	AND sequence_identifier = @sequence_identifier
	ORDER BY new_ehars_uid
		, newsno

	PRINT 'Load New Seq for LAB Records in Temp Table End: ' + CONVERT(VARCHAR(40), GETDATE(), 109)
	PRINT ''
	PRINT ''
    
/*Test return (remove before final)*/    

PRINT 'Test return of lab temp table: ' + CONVERT(VARCHAR(40), GETDATE(), 109)
    --SELECT * FROM #new_lab
	
	--select * from lab join #tmp_move_merge tmm on lab.document_uid = tmm.document_uid
	
PRINT 'Test return of labs that match lab temp: ' + CONVERT(VARCHAR(40), GETDATE(), 109)
	SELECT l.document_uid, l.lab_seq, nl.newsno
	FROM LAB l
	INNER JOIN #new_lab nl ON l.document_uid = nl.document_uid and l.lab_seq = nl.lab_seq

-- Update LAB records with new sequence numbers
	UPDATE l
	set lab_seq = nl.newsno
	from LAB l join #new_lab nl on l.document_uid = nl.document_uid and l.lab_seq = nl.lab_seq
	


    --SELECT * 
    --FROM #tmp_move_merge
    --ORDER BY [enter_dt],[document_uid] 

/*Clean up temp table*/
	--IF EXISTS (SELECT * FROM sys.objects WHERE OBJECT_ID = OBJECT_ID(N'[dbo].[tmp_move_merge]') AND TYPE IN (N'U'))
	--BEGIN
	--	DROP TABLE [dbo].[tmp_move_merge]
	--END

END TRY

BEGIN CATCH
	DECLARE @Error_Desc VARCHAR(2000),
			@Errored_Line VARCHAR(1000),
			@Error_Number VARCHAR(1000),
			@Error_Description VARCHAR(8000)
	
	SET @Error_Desc = ERROR_MESSAGE()
	SET	@Errored_Line = ERROR_LINE()
	SET @Error_Number = ERROR_NUMBER()

	SET @Error_Description = 'ERROR: usp_get_next_seq_number  ERROR LINE: '+@Errored_Line + ' ERROR NUMBER: ' +@Error_Number +' ERROR DESCRIPTION: '+ @Error_Desc

	PRINT @Error_Description
	
	RAISERROR(@Error_Description,16,1)
	
END CATCH

GO
/****** Object:  StoredProcedure [dbo].[usp_multiple_document_delete]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--SD 4.7 Added new parameter @user_id
CREATE PROCEDURE [dbo].[usp_multiple_document_delete] @file_uid INT, @site_cd varchar(4)
AS
/****************************************************
 * Name: dbo.usp_multiple_document_delete
 * Author: Jason R. Merrill
 * Published: 2013.08.22
 * Main consumer: eHARS Application 
 * Purpose: Mark records as DELETE based on imported file of document_uids
 * Input: file_uid of text file with document_uids

****************************************************************************
* Maintenance Log
* Date		    Author		Description
* ---------------------------------------------------
* 2013.08.22 	jmi5		Created the procedure for eHARS 4.5
* 2013.09.19    jmi5        Updates from Design doc/meetings
* 2013.10.10    jmi5        Updated per design changes/continued development
* 2013.10.17    jmi5        Person View/Legacy changes per meeting
* 2013.10.21    jmi5        Detail table no longer updated pre Delete
* 2013.11.01    jmi5        Changes to status codes /control flow per 10/31 meeting
* 2013.11.04    jmi5        More adjustments to account for conditions 6 & 7 edge cases
* 2013.11.06    jmi5        Correcting condition 6 updating

	    0	DOCUMENT SUCCESSFULLY DELETED
        1	INVALID - DOCUMENT_UID NOT FOUND
        2	DELETED - DOCUMENT ALREADY IN A DELETED STATUS
        3	PURGED - DOCUMENT ALREADY IN A PURGED STATUS
        4	LEGACY - LEGACY DOCUMENTS CANNONT BE DELETED
        5	PV DOCUMENT WITH LEGACY DOCUMENT
        6	PV DOCUMENT DELETED WITH NO ACTIVE DOCUMENTS
        7	DOCUMENT DELETED BECAUSE PV DOCUMENT DELETED
		8	DOCUMENT NOT DELETED BECAUSE OF OWNERSHIP NEW IN 4.7
****************************************************************************/
DECLARE @currentdate DATETIME,
		@IsMJPSite varchar(1), --SD 4.7
		@NBSS varchar(1), --SD 4.7
		@RSAPrimaryOwnerAccess varchar(1), --SD 4.7
		@DBLevelSharing varchar(250),  --SD 4.7
		@DocAccess varchar(10) --SD 4.7

IF EXISTS (SELECT *
			FROM sys.objects
			WHERE object_id = OBJECT_ID(N'tempdb.[dbo].[#DOCS_TEMP]')
				AND type IN (N'U'))
DROP TABLE [dbo].[#DOCS_TEMP]
		
CREATE TABLE [dbo].[#DOCS_TEMP] (
	ehars_uid CHAR(16)
	, dddcount INT
	, dcount INT)

BEGIN TRANSACTION

BEGIN TRY
PRINT '	/*Set File Status Flag in Delete Log table*/'

-- SD 4.7

select @DBLevelSharing = pref_value
from PREFERENCE
where pref_name = 'dblevelsharing'
and pref_type = 'MJP_CONFIGURATION'

select @IsMJPSite = pref_value
from PREFERENCE
where pref_name = 'isMjpSite'
and pref_type = 'MJP_CONFIGURATION'

select @NBSS = pref_value
from PREFERENCE
where pref_name = 'NBSS'
and pref_type = 'MJP_CONFIGURATION'

select @RSAPrimaryOwnerAccess = pref_value
from PREFERENCE
where pref_name = 'rsaprimaryowneraccess'
and pref_type = 'MJP_CONFIGURATION'

if (SUBSTRING(@site_cd, 3, 2) = '00') OR (@IsMJPSite <> 'Y') 
	SET @DocAccess = 'ALL' -- Anybody can delete
ELSE
begin
	select @DocAccess = case @DBLevelSharing 
							when 1 then 'ALL'	-- Anybody can delete
							when 2 then 'PS'	-- Only Primary or Secondary owner can delete
							when 3 then 'P'		-- Only Primary owner can delete
						end
end

DECLARE @del_count INT
SET @del_count = (SELECT COUNT(document_uid) FROM DOCUMENT_DELETE_DETAIL where file_uid = @file_uid)
	
	UPDATE [dbo].[DOCUMENT_DELETE_LOG]
	SET [file_status] = '3' -- 'Delete In Progress'
	    ,[initial_count] = @del_count
	WHERE file_uid = @file_uid;


PRINT '/*Update status_flag to I if document_uid does not exist in DOCUMENT table*/'
	UPDATE [DOCUMENT_DELETE_DETAIL]
	SET [status_flag] = '1'     --1	INVALID - DOCUMENT_UID NOT FOUND
	WHERE file_uid = @file_uid AND document_uid IN (
			SELECT ddd.document_uid
			FROM [DOCUMENT_DELETE_DETAIL] ddd
			LEFT JOIN DOCUMENT d ON ddd.document_uid = d.document_uid
			WHERE d.document_uid IS NULL
			);

PRINT	'/*Update Detail table with current Status code and doc type code*/'
	UPDATE ddd
	SET ddd.[status_flag] = 
	    CASE doc.status_flag
            WHEN 'D' THEN '2'     --  2	DELETED - DOCUMENT ALREADY IN A DELETED STATUS
            WHEN 'P' THEN '3'     --  3	PURGED  - DOCUMENT ALREADY IN A PURGED STATUS
            ELSE '0'	                    
            END 
		,ddd.[document_type_cd] = doc.document_type_cd
		,ddd.[ehars_uid] = doc.ehars_uid
	FROM [DOCUMENT_DELETE_DETAIL] ddd
	INNER JOIN [dbo].[DOCUMENT] doc ON doc.[document_uid] = ddd.document_uid 
	WHERE ddd.[file_uid] = @file_uid;



PRINT '/*Mark any Legacy Documents as L (doc_type of 003,009,011)*/'
	UPDATE [DOCUMENT_DELETE_DETAIL]
	SET [status_flag] = '4'     --4	LEGACY - LEGACY DOCUMENTS CANNONT BE DELETED
    WHERE file_uid = @file_uid AND document_uid IN (
		    SELECT ddd.document_uid
		    FROM [DOCUMENT_DELETE_DETAIL] ddd
		    LEFT JOIN DOCUMENT d ON ddd.document_uid = d.document_uid
		    WHERE d.document_type_cd IN ('003', '009', '011')
		    )
    AND NOT [status_flag] IN ('1','2','3');

/*5: if input has a PV doc uid and case has any legacy docs
(fill temp table with ehars_uids/document_uids then drop any with legacy)
mark remaining as 5*/

PRINT '/*5: Input is PV and has legacy*/'
		
UPDATE DOCUMENT_DELETE_DETAIL
SET [status_flag] = '5' --5	PV DOCUMENT WITH LEGACY DOCUMENT
WHERE ehars_uid IN (
		SELECT d.ehars_uid
		FROM DOCUMENT d
		INNER JOIN document_delete_detail ddd ON d.ehars_uid = ddd.ehars_uid 
		AND d.document_type_cd IN ('003', '009', '011') 
		AND ddd.file_uid = @file_uid) 
AND document_type_cd = '000'
AND file_uid = @file_uid

--SD 4.7
PRINT '/*8: Check if the user can delete the document */'
	
UPDATE dd
SET [status_flag] = CASE 
					 when @DocAccess = 'ALL' then dd.status_flag
					 when @DocAccess = 'PS' and ((@site_cd = ISNULL(mo.primary_owner, '')) OR
										 (@site_cd = ISNULL(mso.secondary_owner, '')) 
										 --OR (@NBSS = 'Y' and @site_cd = doc.site_cd)
										 )
										 then dd.status_flag
					 when @DocAccess = 'P' and ((@site_cd = ISNULL(mo.primary_owner, '')) OR
										 ((@RSAPrimaryOwnerAccess = 'Y' and @site_cd = ISNULL(mso.secondary_owner, ''))))
										 then dd.status_flag
					 else '8'
					END
from DOCUMENT_DELETE_DETAIL dd
join DOCUMENT doc on doc.document_uid = dd.DOCUMENT_UID
left join MJP_OWNERSHIP mo on dd.document_uid = mo.DOCUMENT_UID
left join MJP_SECONDARY_OWNERSHIP mso on dd.ehars_uid = mso.ehars_uid
where file_uid = @file_uid		    
		    
/*7: If PV has no legacy documents(status<>5) then set status to 0 
	then get all other documents associated with the PV and set status to 7 */

--SD 4.7 Added Override_flag
INSERT INTO DOCUMENT_DELETE_DETAIL(file_uid, document_uid, status_flag, document_type_cd, ehars_uid, override_flag)
SELECT @file_uid
    , document_uid
	, status_flag = '7'
	, document_type_cd
	, ehars_uid
	, 'N'
FROM DOCUMENT
WHERE ehars_uid IN (
		SELECT ehars_uid
		FROM DOCUMENT_DELETE_DETAIL
		WHERE file_uid = @file_uid 
		    AND document_type_cd = '000' 
		    AND status_flag not in ('5', '8')) -- SD 4.7 added check for 8
AND NOT document_uid IN (
		SELECT document_uid
		FROM DOCUMENT_DELETE_DETAIL
		WHERE file_uid = @file_uid
		)
AND NOT status_flag IN ('D', 'P')


PRINT '/*Update Document table (first pass)*/'
	SET @currentdate = GETDATE()

	UPDATE doc
	SET status_flag = 'D'
		,ship_flag = ship_flag + 1
		,modify_dt = CONVERT(VARCHAR(8), @currentdate, 112)
	FROM DOCUMENT doc
	INNER JOIN DOCUMENT_DELETE_DETAIL ddd ON doc.document_uid = ddd.document_uid
	WHERE ddd.status_flag = '0'
	AND ddd.file_uid = @file_uid

--SD - EHARS-4729 - Remove the Person View Detail records for the documents marked as 'D' and not PV
--SD - 4.7 - Moved after update of the override_flag

	--DELETE pvd
	--from PERSON_VIEW_DETAIL pvd 
	--join DOCUMENT doc on pvd.document_uid = doc.document_uid 
	--		and pvd.ehars_uid = doc.ehars_uid
	--		and doc.document_type_cd <> '000'
	--		and doc.status_flag = 'D'
	--INNER JOIN DOCUMENT_DELETE_DETAIL ddd ON doc.document_uid = ddd.document_uid
	--WHERE ddd.status_flag = '0'
	--AND ddd.file_uid = @file_uid


/* Get ehars_uid from DETAIL table excluding exsiting PV documents in DETAIL
	Check all non-PV documents
		if any document's status are not P or D
		then ignore 
		if all non-PV documents are P or D 
		then add PV Document to detail table with status 6
		delete PV document */
PRINT '/*Check for Active PVs with no documents left active (all other documents are P or D) */'

INSERT INTO #DOCS_TEMP (
	ehars_uid
	, dddcount
	, dcount)
SELECT DISTINCT ddd.ehars_uid, 0, 0
FROM DOCUMENT_DELETE_DETAIL ddd
    LEFT JOIN (SELECT ehars_uid
	    FROM DOCUMENT_DELETE_DETAIL
	    WHERE document_type_cd = '000' AND status_flag <> '5' AND status_flag <> '8' AND file_uid = @file_uid) ddd2 
	    ON ddd.ehars_uid = ddd2.ehars_uid
    WHERE ddd.file_uid = @file_uid 
    AND ddd.status_flag <> '5' AND status_flag <> '8'
    AND ddd2.ehars_uid IS NULL

UPDATE td
SET dddcount = (
		SELECT COUNT(ehars_uid)
		FROM DOCUMENT_DELETE_DETAIL
		WHERE document_type_cd <> '000' AND ehars_uid = td.ehars_uid AND file_uid = @file_uid 
		)
FROM #DOCS_TEMP td

UPDATE td
SET dcount = (
		SELECT COUNT(d.ehars_uid)
		FROM DOCUMENT d
		WHERE td.ehars_uid = d.ehars_uid AND d.document_type_cd <> '000' and status_flag <> 'P'
		)
FROM #DOCS_TEMP td

select * from #docs_temp

INSERT INTO DOCUMENT_DELETE_DETAIL(file_uid, document_uid, status_flag, document_type_cd, ehars_uid, override_flag)
SELECT @file_uid
	, d.[document_uid]
	, [status_flag] = '6' --6	PV DOCUMENT DELETED WITH NO ACTIVE DOCUMENTS
	, d.[document_type_cd]
	, d.[ehars_uid]
	, 'N'
FROM DOCUMENT d
INNER JOIN #DOCS_TEMP dt ON d.ehars_uid = dt.ehars_uid AND dt.dcount = dt.dddcount
WHERE document_type_cd = '000'
and d.document_uid not in (select document_uid from document_delete_detail where file_uid = @file_uid) -- SD 4.7 added this condition to avoid duplicate PVS being added

/* If PV and no legacy documents, all docs get deleted as 7 (PV as 0 alt docs as 7)*/
PRINT '/*Update Document table (second pass for 6,7)*/'
	SET @currentdate = GETDATE()

	UPDATE doc
	SET status_flag = 'D'
		,ship_flag = ship_flag + 1
		,modify_dt = CONVERT(VARCHAR(8), @currentdate, 112)
	FROM DOCUMENT doc
	INNER JOIN DOCUMENT_DELETE_DETAIL ddd ON doc.document_uid = ddd.document_uid
	WHERE ddd.status_flag IN ('6', '7')
	AND ddd.file_uid = @file_uid

	--SD 4.7 - Look for the overrides for the documents being deleted and set the override flag on
	-- DOCUMENT_DELETE_DETAIL table
	update ddd
	set override_flag = 'Y'
	from DOCUMENT_DELETE_DETAIL ddd
	join PERSON_VIEW_DETAIL pvd on pvd.document_uid = ddd.document_uid and pvd.override_flag = 'Y'
	join DOCUMENT doc on pvd.document_uid = doc.document_uid 
			and pvd.ehars_uid = doc.ehars_uid
			and doc.status_flag = 'D'
	WHERE ddd.status_flag IN ('0', '6', '7')
	AND ddd.file_uid = @file_uid

--SD - EHARS-4729 - Remove the Person View Detail records for the documents marked as 'D' and not PV
--SD - 4.7 - Added status flag 0 to combine the delete from top

	DELETE pvd
	from PERSON_VIEW_DETAIL pvd 
	join DOCUMENT doc on pvd.document_uid = doc.document_uid 
			and pvd.ehars_uid = doc.ehars_uid
			and doc.document_type_cd <> '000'
			and doc.status_flag = 'D'
	INNER JOIN DOCUMENT_DELETE_DETAIL ddd ON doc.document_uid = ddd.document_uid
	WHERE ddd.status_flag IN ('0', '6', '7') -- SD 4.7 Added status '0'
	AND ddd.file_uid = @file_uid

PRINT '/*UPDATE LOG table as COMPLETE*/'
	SET @currentdate = GETDATE()
    SET @del_count = (SELECT COUNT(document_uid) FROM DOCUMENT_DELETE_DETAIL where file_uid = @file_uid and status_flag IN ('0', '6', '7'))

	UPDATE [dbo].[DOCUMENT_DELETE_LOG]
	SET [file_status] = '4' -- 'Delete Complete'
		,[end_time] = @currentdate
		,final_count = @del_count
	WHERE file_uid = @file_uid;

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
	ROLLBACK TRANSACTION
	SET @currentdate = GETDATE()
    SET @del_count = (SELECT COUNT(document_uid) FROM DOCUMENT_DELETE_DETAIL where file_uid = @file_uid and status_flag IN ('0', '6', '7')) -- SD 4.7 counting only documents that are deleted
	
PRINT '/*UPDATE LOG table as FAILED*/'
	UPDATE [dbo].[DOCUMENT_DELETE_LOG]
	SET [file_status] = '8' -- 'DELETE FAILED'
		,[end_time] = @currentdate
		,final_count = @del_count
	WHERE file_uid = @file_uid;
END CATCH

IF EXISTS (
			SELECT *
			FROM sys.objects
			WHERE object_id = OBJECT_ID(N'tempdb.[dbo].[#DOCS_TEMP]')
				AND type IN (N'U')
			)
		DROP TABLE [dbo].[#DOCS_TEMP]

GO
/****** Object:  StoredProcedure [dbo].[usp_populate_data_for_mcgen]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[usp_populate_data_for_mcgen]
AS
BEGIN

-- IF MCGEN_STAGING EXISTS -> TRUNCATE IT OTHERWISE RAISE ERROR
	IF OBJECT_ID('MCGEN_STAGING','U') IS NOT NULL
		BEGIN
			IF ( SELECT COUNT(1) FROM MCGEN_STAGING ) > 0		
				--RAISERROR( 'ERROR: MCGEN_STAGING table must be empty. Please truncate table.', 16,1)
				GOTO ERROR_EXIT;
		END
	ELSE
		BEGIN			
			--RAISERROR( 'ERROR: MCGEN_STAGING does not exist.', 16,1)
			GOTO ERROR_EXIT;
		END

--	IF PRODUCTION_MATCH_CODE EXISTS -> TRUNCATE IT OTHERWISE RAISE ERROR
	IF OBJECT_ID('PRODUCTION_MATCH_CODE','U') IS NOT NULL 
		BEGIN				
			IF ( SELECT COUNT(1) FROM PRODUCTION_MATCH_CODE ) > 0		
				--RAISERROR( 'ERROR: PRODUCTION_MATCH_CODE table must be empty.  Please truncate table.', 16,1)
				GOTO ERROR_EXIT;
		END
	ELSE
		BEGIN			
			--RAISERROR( 'ERROR: PRODUCTION_MATCH_CODE does not exist.', 16,1)
			GOTO ERROR_EXIT;
		END
		

--	BUILD PRE-STAGED FIELDS/VALUES FOR MATCH_CODE GENERATION
	;WITH DOCS AS
	(
		SELECT 
			a.document_uid,
			a.ehars_uid
		FROM DOCUMENT a
--		WHERE document_type_cd <> '000'
	), STAGE_MATCH_CODE AS
	(
		-- FIRST NAME
		SELECT	a.ehars_uid,
				a.document_uid,
				b.first_name field_value,
				5 match_field_uid
		FROM DOCS a
			INNER JOIN PERSON_NAME b ON a.document_uid = b.document_uid
		WHERE b.doc_belongs_to = 'PERSON'
		
		UNION 
		--	LAST NAME
		SELECT	a.ehars_uid,
				a.document_uid,
				b.last_name,
				4 match_field_uid
		FROM DOCS a
			INNER JOIN PERSON_NAME b ON a.document_uid = b.document_uid	
		WHERE b.doc_belongs_to = 'PERSON'
			
		UNION 
		--	MIDDLE NAME
		SELECT	a.ehars_uid,
				a.document_uid,
				b.middle_name,
				6 match_field_uid 
		FROM DOCS a
			INNER JOIN PERSON_NAME b ON a.document_uid = b.document_uid	
		WHERE b.doc_belongs_to = 'PERSON'
		
		UNION 
		--	LAST NAME SOUNDEX
		SELECT	a.ehars_uid,
				a.document_uid,
				b.last_name_sndx,
				2 match_field_uid 
		FROM DOCS a
			INNER JOIN PERSON_NAME b ON a.document_uid = b.document_uid	
		WHERE b.doc_belongs_to = 'PERSON'	
		
		UNION 
		--	BIRTH DATE
		SELECT	a.ehars_uid,
				a.document_uid,
				b.dob,
				8 match_field_uid 
		FROM DOCS a
			INNER JOIN PERSON b ON a.document_uid = b.document_uid	
		WHERE b.doc_belongs_to = 'PERSON'
			
		UNION 
		--	SEX
		SELECT	a.ehars_uid,
				a.document_uid,
				b.birth_sex,
				11 match_field_uid 
		FROM DOCS a
			INNER JOIN PERSON b ON a.document_uid = b.document_uid		
		WHERE b.doc_belongs_to = 'PERSON'	
		
		UNION 
		--	STARHS SAMPLE ID
		SELECT	DISTINCT a.ehars_uid,
				a.document_uid,
				b.starhs_sample_id,
				3 match_field_uid 
		FROM DOCS a
			INNER JOIN LAB b ON a.document_uid = b.document_uid		
			
		UNION 
		--	LAB NAME
		SELECT	DISTINCT a.ehars_uid,
				a.document_uid,
				c.lab_name1,
				16 match_field_uid
		FROM DOCS a
			INNER JOIN LAB b ON a.document_uid = b.document_uid	
			INNER JOIN CLIA_CODE c ON c.clia_uid = b.clia_uid	
			
			UNION 
		-- PROVIDER FIRST NAME
		SELECT	DISTINCT a.ehars_uid,
				a.document_uid,
				c.first_name,
				14 match_field_uid 
		FROM DOCS a
			INNER JOIN FACILITY_EVENT b ON a.document_uid = b.document_uid	
			INNER JOIN PROVIDER_CODE c ON c.provider_uid = b.provider_uid	
			
				UNION 
		-- PROVIDER LAST NAME
		SELECT	DISTINCT a.ehars_uid,
				a.document_uid,
				c.last_name,
				15 match_field_uid 
		FROM DOCS a
			INNER JOIN FACILITY_EVENT b ON a.document_uid = b.document_uid	
			INNER JOIN PROVIDER_CODE c ON c.provider_uid = b.provider_uid	
			
		UNION 
		--	FACILITY NAME
		SELECT	DISTINCT a.ehars_uid,
				a.document_uid,
				c.name1,
				13 match_field_uid
		FROM DOCS a
			INNER JOIN FACILITY_EVENT b ON a.document_uid = b.document_uid	
			INNER JOIN FACILITY_CODE c ON c.facility_uid = b.facility_uid	
			
		UNION 
		--	SSN
		SELECT	DISTINCT a.ehars_uid,
				a.document_uid,
				b.id_value,
				9 match_field_uid 
		FROM DOCS a
			INNER JOIN ID b ON b.document_uid = a.document_uid
				AND b.id_cd = '012'
		WHERE b.doc_belongs_to = 'PERSON'
				
		UNION 
		--	STATE NO
		SELECT	DISTINCT a.ehars_uid,
				a.document_uid,
				b.id_value,
				1 match_field_uid 
		FROM DOCS a
			INNER JOIN ID b ON b.document_uid = a.document_uid
				AND b.id_cd = (SELECT pref_value FROM Preference WHERE pref_name = 'stateNoCode') 
		WHERE b.doc_belongs_to = 'PERSON'
				
		UNION 
		-- STREET ADDRESS
		SELECT	DISTINCT a.ehars_uid,
				a.document_uid,
				b.street_address1,
				12 match_field_uid 
		FROM DOCS a
			INNER JOIN ADDRESS b ON b.document_uid = a.document_uid				
		WHERE b.doc_belongs_to = 'PERSON' AND b.address_type_cd IN ('RES','CUR')	
				
				UNION 
		-- CITY NAME
		SELECT	DISTINCT a.ehars_uid,
				a.document_uid,
				b.city_name,
				7 match_field_uid 
		FROM DOCS a
			INNER JOIN ADDRESS b ON b.document_uid = a.document_uid				
		WHERE b.doc_belongs_to = 'PERSON' AND b.address_type_cd IN ('RES','CUR')
				
				UNION 
		--	COUNTY NAME
		SELECT	DISTINCT a.ehars_uid,
				a.document_uid,
				b.county_name,
				10 match_field_uid 
		FROM DOCS a
			INNER JOIN ADDRESS b ON b.document_uid = a.document_uid				
		WHERE b.doc_belongs_to = 'PERSON' AND b.address_type_cd IN ('RES','CUR')
	)
	INSERT INTO MCGEN_STAGING
	--OUTPUT INSERTED.*
	SELECT 
		b.match_field_uid,
		a.ehars_uid,
		a.document_uid,
		b.generate_match_code,
		a.field_value,
		CASE b.generate_match_code
			WHEN 0 THEN a.field_value
			ELSE NULL
		END match_cd
	FROM STAGE_MATCH_CODE a
		INNER JOIN MATCHABLE_FIELD b ON a.match_field_uid = b.match_field_uid
	WHERE field_value IS NOT NULL AND field_value <> ''
	ORDER BY document_uid

	GOTO EXITPROC;


ERROR_EXIT:
		RAISERROR( 'ERROR: MCGEN_STAGING and PRODUCTION_MATCH_CODE table must be empty. Please truncate tables.', 16,1)
		GOTO EXITPROC;

EXITPROC:
		declare @iCtr int;

		set @iCtr = 1;

END
GO
/****** Object:  DdlTrigger [trg_ddl_log]    Script Date: 6/1/2023 1:05:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE TRIGGER [trg_ddl_log]
	on database
	for CREATE_FUNCTION, ALTER_FUNCTION,DROP_FUNCTION, CREATE_INDEX, ALTER_INDEX, DROP_INDEX, CREATE_PROCEDURE,
	ALTER_PROCEDURE, DROP_PROCEDURE,CREATE_SYNONYM, DROP_SYNONYM, CREATE_TRIGGER,ALTER_TRIGGER,DROP_TRIGGER,
	CREATE_TABLE, ALTER_TABLE, DROP_TABLE, CREATE_VIEW, ALTER_VIEW,DROP_VIEW
	As

	set nocount on 
	declare @data xml,
        @ehars_version_no varchar(16),
	@build_no varchar(50)

	set @data = EVENTDATA()
	set @ehars_version_no = (select ehars_version_no from EHARS_EUAT.dbo.installer_log where installer_uid = (select max(installer_uid)from EHARS_EUAT.dbo.installer_log))
	set @build_no = (select build_no from EHARS_EUAT.dbo.installer_log where installer_uid = (select max(installer_uid)from EHARS_EUAT.dbo.installer_log))
	insert into dbo.ddl_log(database_name,ehars_version_no,event_type, object_name, object_type, sql_command, login_name,build_no)
	values(@data.value('(/EVENT_INSTANCE/DatabaseName)[1]', 'varchar(256)'),
	@ehars_version_no,
	@data.value('(/EVENT_INSTANCE/EventType)[1]', 'varchar(50)'), 
	@data.value('(/EVENT_INSTANCE/ObjectName)[1]', 'varchar(256)'), 
	@data.value('(/EVENT_INSTANCE/ObjectType)[1]', 'varchar(25)'), 
	@data.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'varchar(max)'), 
	@data.value('(/EVENT_INSTANCE/LoginName)[1]', 'varchar(256)'),
	@build_no
		)
GO
ENABLE TRIGGER [trg_ddl_log] ON DATABASE
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
USE [master]
GO
ALTER DATABASE [EHARS] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [NBS_MSGOUTE]    Script Date: 6/1/2023 8:14:58 PM ******/
CREATE DATABASE [NBS_MSGOUTE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MSGOUT_PRIMARY_DATA01', FILENAME = N'D:\rdsdbdata\DATA\NBS_MSGOUTE1.mdf' , SIZE = 130944KB , MAXSIZE = UNLIMITED, FILEGROWTH = 102400KB ), 
( NAME = N'MSGOUT_PRIMARY_DATA02', FILENAME = N'D:\rdsdbdata\DATA\NBS_MSGOUTE2.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 102400KB ), 
 FILEGROUP [MSGOUT_APP] 
( NAME = N'MSGOUT_APP01', FILENAME = N'D:\rdsdbdata\DATA\NBS_MSGOUTE5.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 102400KB ), 
( NAME = N'MSGOUT_APP02', FILENAME = N'D:\rdsdbdata\DATA\NBS_MSGOUTE6.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 102400KB ), 
 FILEGROUP [MSGOUT_TEXTFILE] 
( NAME = N'MSGOUT_TEXTFILE01', FILENAME = N'D:\rdsdbdata\DATA\NBS_MSGOUTE3.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 102400KB ), 
( NAME = N'MSGOUT_TEXTFILE02', FILENAME = N'D:\rdsdbdata\DATA\NBS_MSGOUTE4.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 102400KB )
 LOG ON 
( NAME = N'PRIMARY_LOG1', FILENAME = N'D:\rdsdbdata\DATA\NBS_MSGOUTE.ldf' , SIZE = 10240KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NBS_MSGOUTE].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [NBS_MSGOUTE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET ARITHABORT OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [NBS_MSGOUTE] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [NBS_MSGOUTE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NBS_MSGOUTE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NBS_MSGOUTE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NBS_MSGOUTE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NBS_MSGOUTE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET RECOVERY FULL 
GO
ALTER DATABASE [NBS_MSGOUTE] SET  MULTI_USER 
GO
ALTER DATABASE [NBS_MSGOUTE] SET PAGE_VERIFY TORN_PAGE_DETECTION  
GO
ALTER DATABASE [NBS_MSGOUTE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NBS_MSGOUTE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NBS_MSGOUTE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [NBS_MSGOUTE]
GO
/****** Object:  User [nbs_rdb]    Script Date: 6/1/2023 8:14:59 PM ******/
CREATE USER [nbs_rdb] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nbs_ods]    Script Date: 6/1/2023 8:14:59 PM ******/
CREATE USER [nbs_ods] FOR LOGIN [nbs_ods] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [admin]    Script Date: 6/1/2023 8:14:59 PM ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [nbs_rdb]
GO
ALTER ROLE [db_owner] ADD MEMBER [nbs_ods]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
/****** Object:  StoredProcedure [dbo].[FAILED_NND_CHECK_SP]    Script Date: 6/1/2023 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE     PROCEDURE [dbo].[FAILED_NND_CHECK_SP]
AS
DECLARE 
	@@FAILED_COUNT INT
BEGIN

/** 
Stored Procedure will detect NNDs in transportq_out that 
are either failed or stuck on attempted

**/

/** Usage

exec nbs_msgoute..FAILED_NND_CHECK_SP

**/


SELECT 
	@@FAILED_COUNT =COUNT(TQ.RECORDID)
FROM 
	NBS_MSGOUTE..TRANSPORTQ_OUT TQ
WHERE 
	TQ.PROCESSINGSTATUS in ('failure', 'attempted')

IF 
	(@@FAILED_COUNT >= 1)
	BEGIN
		PRINT (CONVERT (varchar(200), @@FAILED_COUNT)) + ' NNDs REQUIRE ATTENTION IN NBS_MSGOUTE..TRANSPORTQ_OUT'
			
	END
ELSE
	BEGIN	
		PRINT 'NO FAILED NNDs WERE DETECTED!'
	END
END





GO
/****** Object:  StoredProcedure [dbo].[GetObservationMatch_SP]    Script Date: 6/1/2023 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetObservationMatch_SP] @fillerNbr              VARCHAR(50) = '', 
                                                @labCLIA                VARCHAR(50) = '', 
                                                @orderedTestCd          VARCHAR(50) = '', 
                                                @specimenCollectionDate DATETIME    = NULL, 
                                                @numberOfGoBackYears        int,  
												@Observation_uid        BIGINT OUTPUT
												
AS
    BEGIN
        SET NOCOUNT ON;
        SET @Observation_uid =
        (
            SELECT MAX(observation_uid)
            FROM NBS_MSGOUTE..NBS_INTERFACE 
                  where filler_order_nbr= @fillerNbr
                   AND LAB_CLIA = @labCLIA
                 AND ORDER_TEST_CODE= @orderedTestCd
                 AND  SPECIMEN_COLL_DATE = @specimenCollectionDate
				  AND record_status_time> DATEADD(year, -@numberOfGoBackYears, GETDATE())
        );
    END;


	
GO
/****** Object:  StoredProcedure [dbo].[LoadAnswerLookup]    Script Date: 6/1/2023 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[LoadAnswerLookup]
AS
BEGIN
	DELETE FROM Msg_Answer_Lookup
	WHERE SENDING_SYSTEM_CD = 'NBS';
	INSERT INTO Msg_Answer_Lookup
		   		   SELECT DISTINCT 
			UPPER(CODE_VALUE_GENERAL.CODE) AS ANS_FROM_CODE, 
			CODE_VALUE_GENERAL.CODE_SYSTEM_CD AS ANS_FROM_CODE_SYSTEM_CD, 
			CODE_VALUE_GENERAL.CODE_SYSTEM_DESC_TXT AS ANS_FROM_CODE_SYSTEM_DESC_TXT, 
			CODE_VALUE_GENERAL.CODE_SHORT_DESC_TXT AS ANS_FROM_DISPLAY_NM,  
			CODE_VALUE_GENERAL.CONCEPT_CODE AS ANS_TO_CODE, 
			CODE_VALUE_GENERAL.CODE_SYSTEM_CD AS ANS_TO_CODE_SYSTEM_CD,
			CODE_VALUE_GENERAL.CODE_SYSTEM_DESC_TXT AS ANS_TO_CODE_SYSTEM_DESC_TXT,
			CODE_VALUE_GENERAL.CONCEPT_PREFERRED_NM AS ANS_TO_DISPLAY_NM,
			CASE
			WHEN CODE_VALUE_GENERAL.CODE = CODE_VALUE_GENERAL.CONCEPT_CODE THEN 'NO'
			ELSE 'YES'
			END AS CODE_TRANSLATION_REQUIRED, 
			'PHDC' AS DOC_TYPE_CD,
			'1.3' AS DOC_TYPE_VERSION_TXT,
			CASE
				  WHEN NBS_UI_METADATA.QUESTION_OID IS NULL THEN '2.16.840.1.114222.4.5.1'
				  WHEN NBS_UI_METADATA.QUESTION_OID IS NOT NULL THEN NBS_UI_METADATA.QUESTION_OID
				  END AS QUES_CODE_SYSTEM_CD,
			QUESTION_IDENTIFIER, 
			'NBS' AS SENDING_SYSTEM_CD,
			NBS_UI_METADATA.INVESTIGATION_FORM_CD
		   FROM NBS_ODSE..NBS_ui_metadata 
				INNER JOIN
				NBS_SRTE..CODESET
				ON NBS_UI_METADATA.CODE_SET_GROUP_ID = CODESET.CODE_SET_GROUP_ID
				INNER JOIN
				NBS_SRTE..CODE_VALUE_GENERAL
				ON CODE_VALUE_GENERAL.CODE_SET_NM = CODESET.CODE_SET_NM
		   WHERE NBS_UI_METADATA.DATA_TYPE IN( 'CODED' ) AND  (UPPER(NBS_UI_METADATA.DATA_LOCATION) LIKE '%ANSWER_TXT' OR UPPER(NBS_UI_METADATA.DATA_LOCATION) LIKE 'CONFIRMATION_METHOD%' OR  UPPER(NBS_UI_METADATA.DATA_LOCATION) LIKE 'CASE_MANAGEMENT%')
		   UNION
		   SELECT DISTINCT 
		   UPPER(A.CODE) AS ANS_FROM_CODE, 
		   A.CODE_SYSTEM_CD AS ANS_FROM_CODE_SYSTEM_CD, 
		   A.CODE_SYSTEM_DESC_TXT AS ANS_FROM_CODE_SYSTEM_DESC_TXT,
		   A.CODE_DESC_TXT AS ANS_FROM_DISPLAY_NM, 
		   A.CODE AS ANS_TO_CODE, 
		   A.CODE_SYSTEM_CD AS ANS_TO_CODE_SYSTEM_CD, 
		   A.CODE_SYSTEM_DESC_TXT AS ANS_TO_CODE_SYSTEM_DESC_TXT,
		   A.CODE_DESC_TXT AS ANS_TO_DISPLAY_NM, 
		   'YES' AS CODE_TRANSLATION_REQUIRED, 
		   'PHDC' AS DOC_TYPE_CD,
		   '1.3' AS DOC_TYPE_VERSION_TXT,
		   CASE
				  WHEN B.QUESTION_OID IS NULL THEN '2.16.840.1.114222.4.5.1'
				  WHEN B.QUESTION_OID IS NOT NULL THEN B.QUESTION_OID
				  END AS QUES_CODE_SYSTEM_CD,
		    'COUNTY' as QUESTION_IDENTIFIER, 
		   'NBS' AS SENDING_SYSTEM_CD,
		   'GENERIC' as INVESTIGATION_FORM_CD
		FROM NBS_SRTE..STATE_COUNTY_CODE_VALUE AS A
				INNER JOIN
				NBS_SRTE..CODESET AS C
				ON A.CODE_SET_NM = C.CODE_SET_NM 
				INNER JOIN
				NBS_ODSE..NBS_UI_METADATA AS B
				ON B.CODE_SET_GROUP_ID = C.CODE_SET_GROUP_ID AND (UPPER(B.DATA_LOCATION) LIKE '%ANSWER_TXT' OR UPPER(B.DATA_LOCATION) LIKE 'CONFIRMATION_METHOD%' OR  UPPER(B.DATA_LOCATION) LIKE 'CASE_MANAGEMENT%')
		   UNION
		   SELECT DISTINCT 
			UPPER(A.CONDITION_CD) AS ANS_FROM_CODE, 
			A.CODE_SYSTEM_CD AS ANS_FROM_CODE_SYSTEM_CD, 
			A.CODE_SYSTEM_DESC_TXT AS ANS_FROM_CODE_SYSTEM_DESC_TXT, 
			A.CONDITION_SHORT_NM AS ANS_FROM_DISPLAY_NM, 
			A.CONDITION_CD AS ANS_TO_CODE,
			A.CODE_SYSTEM_CD AS ANS_TO_CODE_SYSTEM_CD, 
			A.CODE_SYSTEM_DESC_TXT AS ANS_TO_CODE_SYSTEM_DESC_TXT,
			A.CONDITION_SHORT_NM AS ANS_TO_DISPLAY_NM, 
			'YES' AS CODE_TRANSLATION_REQUIRED,
			'PHDC' AS DOC_TYPE_CD,
			'1.3' AS DOC_TYPE_VERSION_TXT,
			CASE
			WHEN B.QUESTION_OID IS NULL THEN '2.16.840.1.114222.4.5.1'
			WHEN B.QUESTION_OID IS NOT NULL THEN B.QUESTION_OID
			END AS QUES_CODE_SYSTEM_CD,
			B.QUESTION_IDENTIFIER,
			'NBS' AS SENDING_SYSTEM_CD,
		    B.INVESTIGATION_FORM_CD
		   FROM NBS_SRTE..CONDITION_CODE AS A
				INNER JOIN
				NBS_SRTE..CODESET AS C
				ON A.CONDITION_CODESET_NM = C.CODE_SET_NM
				INNER JOIN
				NBS_ODSE..NBS_UI_METADATA AS B
				ON B.CODE_SET_GROUP_ID = C.CODE_SET_GROUP_ID AND (UPPER(B.DATA_LOCATION) LIKE '%ANSWER_TXT' OR UPPER(B.DATA_LOCATION) LIKE 'CONFIRMATION_METHOD%' OR  UPPER(B.DATA_LOCATION) LIKE 'CASE_MANAGEMENT%');
END;
GO
/****** Object:  StoredProcedure [dbo].[LoadQuestionLookup]    Script Date: 6/1/2023 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LoadQuestionLookup]
AS
BEGIN
	delete from msg_question_lookup WHERE SENDING_SYSTEM_CD = 'NBS';
	INSERT INTO msg_question_lookup
		   SELECT DISTINCT 
				'PHDC' AS DOC_TYPE_CD,
				'1.3' AS DOC_TYPE_VERSION_TXT,
				CASE
				WHEN c.QUESTION_OID IS NULL THEN '2.16.840.1.114222.4.5.1'
				WHEN c.QUESTION_OID IS NOT NULL THEN c.QUESTION_OID
				END AS QUES_CODE_SYSTEM_CD,
				CASE
				WHEN c.QUESTION_OID_SYSTEM_TXT IS NULL and c.QUESTION_OID='2.16.840.1.114222.4.5.232' THEN 'PHIN Questions'
				WHEN c.QUESTION_OID_SYSTEM_TXT IS NULL and c.QUESTION_OID='2.16.840.1.113883.6.1' THEN 'LOINC'
				WHEN c.QUESTION_OID_SYSTEM_TXT IS NULL and c.QUESTION_OID='2.16.840.1.113883.6.96' THEN 'SNOMED_CT'
				WHEN c.QUESTION_OID_SYSTEM_TXT IS NULL and c.QUESTION_OID='2.16.840.1.114222.4.5.274' THEN 'PHIN VS (CDC Local Coding System)'
				WHEN c.QUESTION_OID_SYSTEM_TXT IS NULL and c.QUESTION_OID='L' THEN 'Local'
				WHEN c.QUESTION_OID_SYSTEM_TXT IS NULL THEN 'NEDSS Base System'
				WHEN c.QUESTION_OID_SYSTEM_TXT IS NOT NULL THEN c.QUESTION_OID_SYSTEM_TXT
				END AS QUES_CODE_SYSTEM_DESC_TXT, 
				CASE when c.code_set_group_id='560' then 'CODED_COUNTY'
				else
				UPPER(A.DATA_TYPE) end AS DATA_TYPE, 
				A.QUESTION_IDENTIFIER AS QUESTION_IDENTIFIER, A.QUESTION_LABEL AS QUES_DISPLAY_NAME, D.question_label AS SECTION_NM, 'NBS' AS SENDING_SYSTEM_CD
		   FROM NBS_ODSE..NBS_QUESTION AS A
				INNER JOIN
				NBS_ODSE..NBS_UI_METADATA AS C
				ON A.NBS_QUESTION_UID = C.NBS_QUESTION_UID
				LEFT OUTER JOIN
				NBS_ODSE..NND_METADATA AS B
				ON A.QUESTION_IDENTIFIER = B.QUESTION_IDENTIFIER AND 
				(UPPER(C.DATA_LOCATION) LIKE '%ANSWER_TXT' OR UPPER(C.DATA_LOCATION) LIKE 'CONFIRMATION_METHOD%' OR  UPPER(C.DATA_LOCATION) LIKE 'CASE_MANAGEMENT%')
				LEFT OUTER JOIN (SELECT DISTINCT INVESTIGATION_FORM_CD, QUESTION_LABEL, question_group_seq_nbr FROM NBS_ODSE..NBS_UI_METADATA WHERE question_group_seq_nbr IS NOT NULL AND nbs_ui_component_uid=1016) AS D ON
				C.investigation_form_cd = D.investigation_form_cd AND C.question_group_seq_nbr = D.question_group_seq_nbr  where c.question_identifier not like 'MSG%' 
				ORDER BY A.QUESTION_IDENTIFIER
END;


GO
/****** Object:  StoredProcedure [dbo].[MsgOut_GetUid]    Script Date: 6/1/2023 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE Procedure [dbo].[MsgOut_GetUid]
@classNameCd  VARCHAR(20) = '',
@count	      smallint = 1,
@fromseedValueNbr	varchar(20)  OUTPUT,
@toseedValueNbr	varchar(20) OUTPUT,
@typeCd		varchar(10) output,
@uidPrefixCd	varchar(3) output,
@uidSuffixCd	varchar(3) output
AS
	declare
		@v_count int,
		@v_fromseedValueNbr int,
		@v_toseedValueNbr int,
		@v_max_entity_uid bigint,
		@v_max_act_uid bigint
begin transaction
	select @v_fromseedValueNbr = seed_value_nbr, @typeCd = type_cd, 
		@uidPrefixCd = uid_Prefix_Cd, @uidSuffixCd = uid_Suffix_Cd
		 from msgout_local_uid_generator	 with (XLOCK, REPEATABLEREAD, READPAST)
		 where upper(class_Name_Cd) = upper(@classNameCd )
	
	while (@v_fromseedValueNbr is null)			--UID is being hold
		begin
		waitfor delay '000:00:001'
		select @v_fromseedValueNbr = seed_value_nbr, @typeCd = type_cd, 
			@uidPrefixCd = uid_Prefix_Cd, @uidSuffixCd = uid_Suffix_Cd
			 from msgout_local_uid_generator	 with (XLOCK, REPEATABLEREAD, READPAST)
			 where upper(class_Name_Cd) = upper(@classNameCd )
				Set @v_count = @v_count + 1
			if (@v_count >= 10)
				begin
				rollback transaction
				Return 1
			end
		end
	/*if (@typeCd = 'NBS') 
		select @v_max_entity_uid = max(entity_uid) from entity
		select @v_max_act_uid = max(act_uid) from act
		if (@v_fromseedValueNbr < @v_max_entity_uid)      -- or
				select @v_fromseedValueNbr = @v_max_entity_uid+@count	 
		else if   (@v_fromseedValueNbr < @v_max_act_uid)
		select @v_fromseedValueNbr = @v_max_act_uid+@count	 
			-- end if
		-- end if */
	select @v_toseedValueNbr = @v_fromseedValueNbr + @count
	if (@v_toseedValueNbr is not null)
		update msgout_local_uid_generator set seed_value_nbr = @v_toseedValueNbr
		where class_Name_Cd = @classNameCd	
	
commit transaction
select @fromseedValueNbr = convert(varchar(20), @v_fromseedValueNbr )
	select @toseedValueNbr	 =  convert(varchar(20), 	@v_toseedValueNbr)
print '@fromseedValueNbr ' + convert(varchar(20), @fromseedValueNbr)
print '@toseedValueNbr	' + convert(varchar(20),	@toseedValueNbr)
return
	/*declare
@classNameCd  VARCHAR(20),
@count	      smallint,
@fromseedValueNbr	bigint ,
@toseedValueNbr		bigint ,
@typeCd		varchar(10),
@uidPrefixCd	varchar(3) ,
@uidSuffixCd	varchar(3)
begin
exec getUid 'PERSON', 100, @fromseedValueNbr, @toseedValueNbr, @typeCd, @uidPrefixCd, @uidSuffixCd	
end  */

GO
/****** Object:  StoredProcedure [dbo].[P_NBS_GRANT_PERMISSIONS]    Script Date: 6/1/2023 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[P_NBS_GRANT_PERMISSIONS]
       @l_object_type varchar(10),
       @l_user_name varchar(50),
       @l_permission_type varchar(20)       
AS
DECLARE
@l_object_id integer,
@l_grant_sql nvarchar(200),
@l_object_name nvarchar(200)

BEGIN
set @l_object_id = 0

while(1=1)
 begin 
  select  @l_object_id = min(id)
  from    sysobjects where xtype in (@l_object_type)
  and     id > @l_object_id

  if @l_object_id is null
     break

  select @l_object_name = name
  from    sysobjects
  where  id = @l_object_id

  set @l_grant_sql = 'grant ' + @l_permission_type + ' on ' + @l_object_name + ' to ' + @l_user_name 
  print @l_grant_sql
  exec sp_executesql @l_grant_sql

 end 

END

GO
/****** Object:  StoredProcedure [dbo].[populatePSFTables_sp]    Script Date: 6/1/2023 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[populatePSFTables_sp]

@incrementalOrFull VARCHAR(20)--For example: 'Incremental' or 'Full'
--@lastTimeRun VARCHAR(50) --For example: '01/01/2018 00:00:00.000'
AS
BEGIN
 
 BEGIN TRY
 BEGIN TRANSACTION
		DECLARE @dateLastTimeRun DATETIME, @countSESSIONS BIGINT, @countRISK BIGINT, @countPARTNER BIGINT, @countINDEX BIGINT, @countCLIENT BIGINT, @ind BIGINT, @interviewLocalId VARCHAR(20),
		@dateInterviewLastTimeRun DATETIME, @ifExistsCount BIGINT, @personLocalId VARCHAR(20), @investigationLocalId VARCHAR(20),@contactRecordLocalId VARCHAR(20), @dateContactLastTimeChange DATETIME,
		@contactLocalId VARCHAR(20),@datePersonLastTimeChange DATETIME, @dateInvestigationLastTimeChange DATETIME, @interviewLastChangeTime DATETIME, @countExistingInterviews BIGINT,
		@actualDate DATETIME, @successFailure VARCHAR(10), @maxActivityLogUid BIGINT, @messageTable VARCHAR (1000), @countToBeDeleted BIGINT, 
		@numberOfRecords BIGINT, @numberOfRecordsAfter BIGINT,
		@successMessageSession VARCHAR(1000), @successFailureSession VARCHAR(10),
		@successMessagePartner VARCHAR(1000), @successFailurePartner VARCHAR(10),
		@successMessageClient VARCHAR(1000), @successFailureClient VARCHAR(10),
		@successMessageRisk VARCHAR(1000), @successFailureRisk VARCHAR(10),
		@successMessageIndex VARCHAR(1000), @successFailureIndex VARCHAR(10),
		
		@successMessageDeleteSession VARCHAR(1000), @successFailureDeleteSession VARCHAR(10),
		@successMessageDeletePartner VARCHAR(1000), @successFailureDeletePartner VARCHAR(10),
		@successMessageDeleteClient VARCHAR(1000), @successFailureDeleteClient VARCHAR(10),
		@successMessageDeleteRisk VARCHAR(1000), @successFailureDeleteRisk VARCHAR(10),
		@successMessageDeleteIndex VARCHAR(1000), @successFailureDeleteIndex VARCHAR(10),
		@currentDate VARCHAR(30), 
		@message VARCHAR(100),
		
		@storedProcStarts VARCHAR(30), @storedProcEnds VARCHAR(30),
		@sessionDeleteStarts VARCHAR(30), @sessionDeleteEnds VARCHAR(30),@sessionInsertStarts VARCHAR(30), @sessionInsertEnds VARCHAR(30),
		@indexDeleteStarts VARCHAR(30), @indexDeleteEnds VARCHAR(30),@indexInsertStarts VARCHAR(30), @indexInsertEnds VARCHAR(30),
		@clientDeleteStarts VARCHAR(30), @clientDeleteEnds VARCHAR(30),@clientInsertStarts VARCHAR(30), @clientInsertEnds VARCHAR(30),
		@partnerDeleteStarts VARCHAR(30), @partnerDeleteEnds VARCHAR(30),@partnerInsertStarts VARCHAR(30), @partnerInsertEnds VARCHAR(30),
		@riskDeleteStarts VARCHAR(30), @riskDeleteEnds VARCHAR(30),@riskInsertStarts VARCHAR(30), @riskInsertEnds VARCHAR(30),
		@errorContinue VARCHAR(10);--@errorContinue has been created for not executing any other statement if there was an error before.
		
		
		
		SET @errorContinue = 'true';
		SET @storedProcStarts=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
		SET @message='Stored proc starts at '+@storedProcStarts;
		PRINT  @message;

		--SET @dateLastTimeRun = (SELECT CONVERT(datetime, @lastTimeRun));--_DATETIME format

		SET @actualDate = GetDate();
		SET @successFailure = 'Success';
		
		SET @ifExistsCount = (SELECT COUNT(*) FROM dbo.MsgOut_activity_log WHERE doc_type = 'PSF TABLES'); 
		IF(@ifExistsCount>0)
			SET @dateLastTimeRun = (SELECT top 1 add_time FROM dbo.MsgOut_activity_log WHERE doc_type = 'PSF TABLES' AND message_status = 'Success' order by 1 desc); 
		ELSE
			SET @dateLastTimeRun = (SELECT CONVERT(datetime, '01/01/1900 00:00:00.000'));
			

		IF(LOWER(@incrementalOrFull) = 'full')--Delete all the records in the PSF_SESSION table before inserting them.
		BEGIN
		PRINT 'Option selected: Full. Deleting all PSF tables and inserting them back';

			
		
			

			DELETE FROM PSF_SESSION;
			DELETE FROM PSF_INDEX;
			DELETE FROM PSF_CLIENT;
			DELETE FROM PSF_RISK;
			DELETE FROM PSF_PARTNER;
			
		
			
			SET @dateLastTimeRun = (SELECT CONVERT(datetime, '01/01/1900 00:00:00.000'));--_DATETIME format. In order to bring all the records in the WHERE clause

			
			
		END
		
		
		
		IF(LOWER(@incrementalOrFull) = 'incremental')--Delete only the records that have been changed after the last time the batch process was run
		BEGIN

		PRINT 'Date Last Time Run (Batch Process)';
		PRINT @dateLastTimeRun;

		PRINT 'Option selected: Incremental. Deleting those sessions, indexes and clients which last change time is after last time the batch process was run and then bringing them back';

		--------------------------------------DELETIONS---------------------------------------------
		-----------------------------------------------------------------------------------------------------
		--Deleting from PSF_SESSION

		PRINT '************************************ DELETE STATEMENTS ************************************';
		
		BEGIN TRY

			SET @sessionDeleteStarts=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='before deleting from psf_session '+@sessionDeleteStarts;
			PRINT  @message;
			PRINT 'DELETE FROM PSF_SESSION';
		
	
			SET @countSESSIONS = (SELECT COUNT(*) FROM dbo.psf_session where invLocalId in (select local_id from NBS_ODSE..public_health_case where last_chg_time >  @dateLastTimeRun)
			or irLocalId in (select local_id from nbs_odse..interview where last_chg_time > @dateLastTimeRun));
			PRINT 'total countSessions that have been updated';
			PRINT @countSESSIONS ;
			
			SET @ind = 1;
			WHILE(@ind<@countSESSIONS OR @ind=@countSESSIONS)
				BEGIN
				
				SET @investigationLocalId = (SELECT TOP 1 invLocalId FROM  (SELECT top (@ind) * FROM dbo.psf_session where invLocalId in (select local_id from NBS_ODSE..public_health_case where last_chg_time >  @dateLastTimeRun) or irLocalId in (select local_id from nbs_odse..interview where last_chg_time > @dateLastTimeRun) ORDER BY psfSessionUid ASC) sessionsTable ORDER BY sessionsTable.psfSessionUid DESC);
				PRINT @investigationLocalId ;
				SET @interviewLocalId = (SELECT TOP 1 irLocalId FROM  (SELECT top (@ind) * FROM dbo.psf_session where invLocalId in (select local_id from NBS_ODSE..public_health_case where last_chg_time >  @dateLastTimeRun) or irLocalId in (select local_id from nbs_odse..interview where last_chg_time > @dateLastTimeRun) ORDER BY psfSessionUid ASC) sessionsTable ORDER BY sessionsTable.psfSessionUid DESC);
				PRINT @interviewLocalId ;
				SET @personLocalId = (SELECT TOP 1 clientIdLocalId FROM  (SELECT top (@ind) * FROM dbo.psf_session where invLocalId in (select local_id from NBS_ODSE..public_health_case where last_chg_time >  @dateLastTimeRun) or irLocalId in (select local_id from nbs_odse..interview where last_chg_time > @dateLastTimeRun)  ORDER BY psfSessionUid ASC) sessionsTable ORDER BY sessionsTable.psfSessionUid DESC);
				PRINT @personLocalId ;
				SET @dateInterviewLastTimeRun = (SELECT last_chg_time FROM NBS_ODSE..interview WHERE local_id = @interviewLocalId);
						
						
						
				 SET @dateInvestigationLastTimeChange= (SELECT last_chg_time FROM NBS_ODSE..public_health_case WHERE local_id = @investigationLocalId);
				 
				 IF(
				-- @datePersonLastTimeChange > @dateLastTimeRun OR
				 @dateInvestigationLastTimeChange > @dateLastTimeRun)
				 BEGIN
				 
					SET @datePersonLastTimeChange= (SELECT TOP 1 last_chg_time FROM NBS_ODSE..person WHERE local_id = @personLocalId ORDER BY last_chg_time DESC);
				 
						print 'Delete by investigation id';
						print @dateInterviewLastTimeRun;
						print @datePersonLastTimeChange;
						print @dateInvestigationLastTimeChange;
						print @dateLastTimeRun;
				  
						UPDATE PSF_SESSION SET irStatusCd = 'TOBEDELETED' WHERE invLocalId = @investigationLocalId;
						PRINT 'Delete from PSF_SESSION: ';
						PRINT @investigationLocalId
				 END
				 
				 
				  IF(@dateInterviewLastTimeRun > @dateLastTimeRun
				-- @datePersonLastTimeChange > @dateLastTimeRun OR
				)
				 BEGIN
				  print 'Delete by interview id';
				  print @dateInterviewLastTimeRun;
				  print  @datePersonLastTimeChange;
				  print  @dateInvestigationLastTimeChange;
				  print @dateLastTimeRun;
					UPDATE PSF_SESSION SET irStatusCd = 'TOBEDELETED' WHERE irLocalId = @interviewLocalId;
					PRINT 'Delete from PSF_SESSION: ';
					PRINT @interviewLocalId
				 END
				 
				
				SET @ind = @ind + 1;
				PRINT 'ind';
				print @ind;
				END
				
				
				SET @countToBeDeleted = (SELECT count(*) FROM PSF_SESSION WHERE irStatusCd = 'TOBEDELETED');
				DELETE FROM PSF_SESSION WHERE irStatusCd = 'TOBEDELETED';
				
				--Inserting in the MsgOut_activity_log_detail table
				SET @successFailureDeleteSession = 'Success';
		END TRY
		BEGIN CATCH
			
			SET @successFailureDeleteSession = 'Failure';
			SET @successMessageDeleteSession = 'Exception while deleting from PSF_SESSION table: '+ERROR_MESSAGE();
			SET @errorContinue = 'false';
	
		
		END CATCH;
				
				
		IF(@successFailureDeleteSession = 'Success')
		BEGIN
			SET @successMessageDeleteSession = CAST(@countToBeDeleted AS VARCHAR(20))+' records deleted from PSF_SESSION ('+@incrementalOrFull+' refresh)';
		END
				

		SET @sessionDeleteEnds=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
		SET @message='After deleting from psf_session '+@sessionDeleteEnds;
		PRINT  @message;
		
		-----------------------------------------------------------------------------------------------------
		
		IF(@errorContinue = 'true')
		BEGIN
			BEGIN TRY
			SET @indexDeleteStarts=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='before deleting from psf_index '+@indexDeleteStarts;
			PRINT  @message;
			--Deleting from PSF_INDEX
					
			PRINT 'DELETE FROM PSF_INDEX';
			
					--SET @countINDEX = (SELECT COUNT(*) FROM dbo.PSF_INDEX);
					
					SET @countINDEX = (SELECT COUNT(*) FROM dbo.PSF_INDEX
					where caseNumberLocalId in (select local_id from nbs_odse..public_health_case where last_chg_time > @dateLastTimeRun)
					OR clientIdLocalId in (select local_id from nbs_odse..person where last_chg_time > @dateLastTimeRun)
					OR caseNumberLocalId in (select local_id from nbs_odse..public_health_case where public_health_case_uid in ( select subject_entity_phc_uid from  NBS_ODSE..ct_contact where last_chg_time >  @dateLastTimeRun)))

					SET @ind = 1;
					
					PRINT 'total countINDEX that have been updated';
					PRINT @countINDEX ;
			
					WHILE(@ind<@countINDEX OR @ind=@countINDEX)
					BEGIN

					 SET @personLocalId = (SELECT TOP 1 clientIdLocalId FROM  (SELECT top (@ind) * FROM dbo.PSF_INDEX
					where caseNumberLocalId in (select local_id from nbs_odse..public_health_case where last_chg_time > @dateLastTimeRun)
					OR clientIdLocalId in (select local_id from nbs_odse..person where last_chg_time > @dateLastTimeRun)
					OR caseNumberLocalId in (select local_id from nbs_odse..public_health_case where public_health_case_uid in ( select subject_entity_phc_uid from  NBS_ODSE..ct_contact where last_chg_time >  @dateLastTimeRun)) ORDER BY psfIndexUid ASC) indexTable ORDER BY indexTable.psfIndexUid DESC);
					 PRINT @personLocalId ;
					 
					 SET @investigationLocalId = (SELECT TOP 1 caseNumberLocalId FROM  (SELECT top (@ind) * FROM dbo.PSF_INDEX
					where caseNumberLocalId in (select local_id from nbs_odse..public_health_case where last_chg_time > @dateLastTimeRun)
					OR clientIdLocalId in (select local_id from nbs_odse..person where last_chg_time > @dateLastTimeRun)
					OR caseNumberLocalId in (select local_id from nbs_odse..public_health_case where public_health_case_uid in ( select subject_entity_phc_uid from  NBS_ODSE..ct_contact where last_chg_time >  @dateLastTimeRun))  ORDER BY psfIndexUid ASC) indexTable ORDER BY indexTable.psfIndexUid DESC);
					 PRINT @investigationLocalId ;
					 
					 SET @contactLocalId = (select TOP 1 local_id from NBS_ODSE..ct_contact WHERE subject_entity_phc_uid in (Select public_health_case_uid from NBS_ODSE..public_health_case
					 WHERE local_id = @investigationLocalId) ORDER BY ct_contact.last_chg_time DESC);
					  PRINT @contactLocalId ;

					 SET @datePersonLastTimeChange= ( select last_chg_time from NBS_ODSE..person WHERE local_id =  @personLocalId and person_uid in (
					 SELECT subject_entity_uid FROM NBS_ODSE..participation WHERE act_uid in
					 (SELECT public_health_case_uid FROM NBS_ODSE..public_health_case WHERE local_id = @investigationLocalId)));
					 PRINT 'person last change time';
					 PRINT @datePersonLastTimeChange;
					 
					 SET @dateInvestigationLastTimeChange= (SELECT last_chg_time FROM NBS_ODSE..public_health_case WHERE local_id = @investigationLocalId);
					 
					 PRINT 'investigation last change time';
					 PRINT @dateInvestigationLastTimeChange;
					 
					 SET @dateContactLastTimeChange= (SELECT last_chg_time FROM NBS_ODSE..ct_contact WHERE local_id = @contactLocalId);
					 PRINT 'Contact last change time';
					 PRINT @dateContactLastTimeChange;
					 
					 
					 PRINT 'Batch process last change time';
					 PRINT @dateLastTimeRun;
					 
					 IF((@datePersonLastTimeChange > @dateLastTimeRun) OR
					 (@dateInvestigationLastTimeChange > @dateLastTimeRun) OR
					 (@dateContactLastTimeChange is not null and @dateContactLastTimeChange<>'' and @dateContactLastTimeChange > @dateLastTimeRun))
					 BEGIN
						UPDATE PSF_INDEX SET invStatusCd = 'TOBEDELETED' WHERE caseNumberLocalId = @investigationLocalId;
						PRINT 'Delete FROM PSF_INDEX: ';
						PRINT @investigationLocalId
						PRINT '___________________';

					 END
					SET @IND = @IND + 1;
					
					END
					--If patients were merge, delete those which record_status_cd = 'SUPERCEDED'
					PRINT 'Delete FROM PSF_INDEX the ones which record_status_cd = ''SUPERCEDED'' after merging patients:';
					UPDATE PSF_INDEX SET invStatusCd = 'TOBEDELETED' WHERE clientIdLocalId IN (SELECT local_id FROM nbs_odse.dbo.person WHERE record_status_cd = 'SUPERCEDED');
					PRINT '___________________';
					
					--Inserting in the MsgOut_activity_log_detail table
					SET @countToBeDeleted = (SELECT count(*) FROM PSF_INDEX WHERE invStatusCd = 'TOBEDELETED');
					DELETE FROM PSF_INDEX WHERE invStatusCd = 'TOBEDELETED';
					SET @successFailureDeleteIndex = 'Success';
					
			END TRY
			BEGIN CATCH
				SET @successFailureDeleteIndex = 'Failure';
				SET @successMessageDeleteIndex = 'Exception while deleting from PSF_INDEX table: '+ERROR_MESSAGE();
				SET @errorContinue = 'false';
	
			END CATCH;
					
					
			IF(@successFailureDeleteIndex = 'Success')
			BEGIN
				SET @successMessageDeleteIndex = CAST(@countToBeDeleted AS VARCHAR(20))+' records deleted from PSF_INDEX ('+@incrementalOrFull+' refresh)';
			END
					

			SET @indexDeleteEnds=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='after deleting from psf_index '+@indexDeleteEnds;
			PRINT  @message;
		END
		-----------------------------------------------------------------------------------------------------
		
		IF(@errorContinue = 'true')
		BEGIN
			BEGIN TRY
			SET @clientDeleteStarts=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='before deleting from psf_client '+@clientDeleteStarts;
			PRINT  @message;
			--Deleting FROM PSF_CLIENT
				
			PRINT 'DELETE FROM PSF_CLIENT';
			
						SET @countCLIENT = (SELECT COUNT(*) FROM dbo.psf_client where clientUid in (select person_uid from NBS_ODSE..person where last_chg_time >  @dateLastTimeRun));
						SET @ind = 1;
						
						PRINT 'total countCLIENT that have been updated';
						PRINT @countCLIENT ;
					
						WHILE(@ind<@countCLIENT OR @ind=@countCLIENT)
						BEGIN

						 SET @personLocalId = (SELECT TOP 1 clientUid FROM  (SELECT top (@ind) * FROM dbo.psf_client where clientUid in (select person_uid from NBS_ODSE..person where last_chg_time >  @dateLastTimeRun) ORDER BY psfClientUid ASC) clientTable ORDER BY clientTable.psfClientUid DESC);
						
						 PRINT @personLocalId ;
						 PRINT @investigationLocalId ;

						 SET @datePersonLastTimeChange= ( SELECT last_chg_time FROM NBS_ODSE..person WHERE person_uid =  @personLocalId );

						 IF(@datePersonLastTimeChange > @dateLastTimeRun)
						 BEGIN
							UPDATE PSF_CLIENT SET patientStatusCd = 'TOBEDELETED' WHERE clientUid = @personLocalId;
							PRINT 'Delete FROM PSF_CLIENT personUid: ';
							PRINT @personLocalId
						 END
						SET @IND = @IND + 1;
						
						END
						
						--Inserting in the MsgOut_activity_log_detail table
						SET @countToBeDeleted = (SELECT count(*) FROM PSF_CLIENT WHERE patientStatusCd = 'TOBEDELETED');
						DELETE FROM PSF_CLIENT WHERE patientStatusCd = 'TOBEDELETED';
						SET @successFailureDeleteClient = 'Success';
			END TRY
			BEGIN CATCH
				
						SET @successFailureDeleteClient = 'Failure';
						SET @successMessageDeleteClient = 'Exception while deleting from PSF_CLIENT table: '+ERROR_MESSAGE();
						
						--INSERT INTO  MsgOut_activity_log_detail values
						--(@maxActivityLogUid, NULL, 'PSF_CLIENT', 'PopulatePSFTables',@statusTable, @messageTable);

				SET @errorContinue = 'false';

			END CATCH;
					
					
			IF(@successFailureDeleteClient = 'Success')
			BEGIN
					SET @successMessageDeleteClient = CAST(@countToBeDeleted AS VARCHAR(20))+' records deleted from PSF_CLIENT ('+@incrementalOrFull+' refresh)';
			END

			SET @clientDeleteEnds=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='after deleting from psf_client '+@clientDeleteEnds;
			PRINT  @message;
		END
		-----------------------------------------------------------------------------------------------------

		IF(@errorContinue = 'true')
		BEGIN
			BEGIN TRY
			--Deleting FROM PSF_RISK
			SET @riskDeleteStarts=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='before deleting from psf_risk '+@riskDeleteStarts;
			PRINT  @message;
			PRINT 'DELETE FROM PSF_RISK';
			
					SET @countRISK = (SELECT COUNT(*) FROM dbo.PSF_RISK where invLocalId in (select local_id from NBS_ODSE..public_health_case where last_chg_time >  @dateLastTimeRun));
					SET @ind = 1;
					
					PRINT 'total countRISK that have been updated';
					PRINT @countRISK;
						
					WHILE(@ind<@countRISK OR @ind=@countRISK)
						BEGIN

						 SET @investigationLocalId = (SELECT TOP 1 invLocalId FROM  (SELECT top (@ind) * FROM dbo.PSF_RISK where invLocalId in (select local_id from NBS_ODSE..public_health_case where last_chg_time >  @dateLastTimeRun)  ORDER BY psfRiskUid ASC) sessionsTable ORDER BY sessionsTable.psfRiskUid DESC);
						 PRINT @investigationLocalId ;
						 
						

						 SET @dateInvestigationLastTimeChange= (SELECT last_chg_time FROM NBS_ODSE..public_health_case WHERE local_id = @investigationLocalId);
						 
						 IF(@dateInvestigationLastTimeChange > @dateLastTimeRun)
						 BEGIN
						 
							SET @interviewLocalId = (SELECT irLocalId FROM dbo.PSF_RISK WHERE invLocalId = @investigationLocalId);
						 
							PRINT 'interviewLocalId';
							PRINT @interviewLocalId;
						 
						 
							UPDATE PSF_RISK SET invStatusCd = 'TOBEDELETED' WHERE invLocalId = @investigationLocalId;
							PRINT 'Delete FROM PSF_RISK: ';
							PRINT @investigationLocalId
						 END
								
						SET @IND = @IND + 1;
						
						END
						
						--Inserting in the MsgOut_activity_log_detail table
						SET @countToBeDeleted = (SELECT count(*) FROM PSF_RISK WHERE invStatusCd = 'TOBEDELETED');
						DELETE FROM PSF_RISK WHERE invStatusCd = 'TOBEDELETED';
						SET @successFailureDeleteRisk = 'Success';
			END TRY
			BEGIN CATCH
				
				SET @successFailureDeleteRisk = 'Failure';
				SET @successMessageDeleteRisk = 'Exception while deleting from PSF_RISK table: '+ERROR_MESSAGE();
	SET @errorContinue = 'false';

			END CATCH;
					
					
			IF(@successFailureDeleteRisk = 'Success')
			BEGIN
				SET @successMessageDeleteRisk = CAST(@countToBeDeleted AS VARCHAR(20))+' records deleted from PSF_RISK ('+@incrementalOrFull+' refresh)';
			END
			SET @riskDeleteEnds=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='after deleting from psf_risk '+@riskDeleteEnds;
			PRINT  @message;		
		END
		-----------------------------------------------------------------------------------------------------
		--Deleting FROM PSF_PARTNER
			
		IF(@errorContinue = 'true')
		BEGIN
			BEGIN TRY
			
			SET @partnerDeleteStarts=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='before deleting from psf_partner '+@partnerDeleteStarts;
			PRINT  @message;
			
			PRINT 'DELETE FROM PSF_PARTNER';
			
			
					SET @countPARTNER = (SELECT COUNT(*) FROM dbo.psf_partner where invLocalId in (select local_id from NBS_ODSE..public_health_case where last_chg_time >  @dateLastTimeRun)
					or crLocalId in (select local_id from NBS_ODSE..ct_contact where last_chg_time >  @dateLastTimeRun));
					SET @ind = 1;
					
					PRINT 'total countPARTNER that have been updated';
					PRINT @countPARTNER;
					
					WHILE(@ind<@countPARTNER OR @ind=@countPARTNER)
						BEGIN

						 SET @investigationLocalId = (SELECT invLocalId FROM (SELECT TOP 1 invLocalId,crLocalId  FROM  (SELECT top (@ind) * FROM dbo.psf_partner where invLocalId in (select local_id from NBS_ODSE..public_health_case where last_chg_time >  @dateLastTimeRun)
						or crLocalId in (select local_id from NBS_ODSE..ct_contact where last_chg_time >  @dateLastTimeRun)  ORDER BY psfPartnerUid ASC) sessionsTable ORDER BY sessionsTable.psfPartnerUid DESC)aa);
						 PRINT @investigationLocalId ;
						 
						 SET @contactRecordLocalId = (SELECT crLocalId FROM (SELECT TOP 1 invLocalId,crLocalId  FROM  (SELECT top (@ind) * FROM dbo.psf_partner where invLocalId in (select local_id from NBS_ODSE..public_health_case where last_chg_time >  @dateLastTimeRun)
							or crLocalId in (select local_id from NBS_ODSE..ct_contact where last_chg_time >  @dateLastTimeRun)  ORDER BY psfPartnerUid ASC) sessionsTable ORDER BY sessionsTable.psfPartnerUid DESC)aa);
						 
						 PRINT 'investigationLocalId';
						 PRINT @investigationLocalId;
						 PRINT 'contactRecordLocalId';
						 PRINT @contactRecordLocalId;
						 

						 SET @dateInvestigationLastTimeChange= (SELECT last_chg_time FROM NBS_ODSE..public_health_case WHERE local_id = @investigationLocalId);
						 SET @dateContactLastTimeChange= (SELECT last_chg_time FROM NBS_ODSE..ct_contact WHERE local_id = @contactRecordLocalId);
						 
						 IF(@dateInvestigationLastTimeChange > @dateLastTimeRun)
						 BEGIN
							UPDATE PSF_PARTNER SET invStatusCd = 'TOBEDELETED' WHERE invLocalId = @investigationLocalId;
							
							PRINT 'Delete FROM PSF_PARTNER: ';
							PRINT @investigationLocalId
						
							
						 END
						 
						 
						 IF(@dateContactLastTimeChange > @dateLastTimeRun)
						 BEGIN
							
							UPDATE PSF_PARTNER SET invStatusCd = 'TOBEDELETED' WHERE crLocalId = @contactRecordLocalId;
							
							PRINT 'Delete FROM PSF_PARTNER: ';
							PRINT @contactRecordLocalId
							
						 END
						 
								
						SET @IND = @IND + 1;
						
						END
						
						--Inserting in the MsgOut_activity_log_detail table
						SET @countToBeDeleted = (SELECT count(*) FROM PSF_PARTNER WHERE invStatusCd = 'TOBEDELETED');
						DELETE FROM PSF_PARTNER WHERE invStatusCd = 'TOBEDELETED';
						SET @successFailureDeletePartner = 'Success';
			END TRY
			BEGIN CATCH
				
					SET @successFailureDeletePartner = 'Failure';
					SET @successMessageDeletePartner = 'Exception while deleting from PSF_PARTNER table: '+ERROR_MESSAGE();
				SET @errorContinue = 'false';

			END CATCH;
					
					
			IF(@successFailureDeletePartner = 'Success')
			BEGIN
				SET @successMessageDeletePartner = CAST(@countToBeDeleted AS VARCHAR(20))+' records deleted from PSF_PARTNER ('+@incrementalOrFull+' refresh)';
			END

			
			SET @partnerDeleteEnds=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='after deleting from psf_partner '+@partnerDeleteEnds;
			PRINT @message;
			
			END
		END
		----------------------------------------INSERTS------------------------------------------------------
		-----------------------------------------------------------------------------------------------------
		
		PRINT '************************************ INSERT STATEMENTS ************************************';
			
		--INSERT INTO PSF_SESSION
		
		IF(@errorContinue = 'true')
		BEGIN
			BEGIN TRY
			SET @sessionInsertStarts=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='before inserting in psf_session '+@sessionInsertStarts;
			PRINT  @message;
			
			SET @numberOfRecords = (SELECT COUNT(*) FROM PSF_SESSION);
			
			
				PRINT '-----------------------INSERT INTO PSF_SESSION----------------------------';
				INSERT INTO PSF_SESSION (
				localClientId,
				clientIdSTDMIS,
				clientIdPSID,
				clientIdLocalId,
				clientFirstName,
				clientLastName,
				clientDOB,
				caseNumberPS,
				caseNumberSTDMIS,
				caseNumberLegacyId,
				caseNumberLocalId,
				sessionDate,
				siteID,
				siteTypeValueCode,
				--interventionId,
				careStatusAtInterview,
				irLocalId,
				irStatusCd,
				irAddTime,
				irLastChgTime,
				invLocalId)
				SELECT DISTINCT * FROM (
				--First part of the query
				SELECT DISTINCT
				--(SELECT config_value FROM NBS_ODSE..NBS_configuration WHERE config_key = 'PSDATA_DEFAULT_AGENCY') AS agencyId,
				SUBSTRING(coalesce (NBS_DOCUMENT.SENDING_APP_PATIENT_ID, ENTITY_ID.ROOT_EXTENSION_TXT, person.local_id),1,32) AS localClientId,
				NBS_DOCUMENT.SENDING_APP_PATIENT_ID AS clientIdSTDMIS,
				ENTITY_ID.ROOT_EXTENSION_TXT AS clientIdPSID,
				person.local_id AS clientIdLocalId,
				person.first_nm AS clientFirstName,
				person.last_nm AS clientLastName,
				person.birth_time AS clientDOB,
				SUBSTRING(coalesce(NBS_DOCUMENT.SENDING_APP_EVENT_ID,NULLIF(ACT_ID.ROOT_EXTENSION_TXT,''),public_health_case.local_id),1,32)  AS caseNumberPS,
				NBS_DOCUMENT.SENDING_APP_EVENT_ID AS caseNumberSTDMIS,
				NULLIF(ACT_ID.ROOT_EXTENSION_TXT,'') AS caseNumberLegacyId,
				public_health_case.local_id AS caseNumberLocalId,
				interview.interview_date AS sessionDate,				
				
				COALESCE((select distinct concept_nm from nbs_srte..code_value_general where code_set_nm = 'PS_SITE_TYPE_LOOKUP'
				and code_desc_txt in (coalesce(CAST(orgs.root_extension_txt AS VARCHAR(32)),NULLIF(nbs_answer.answer_txt,''),'DEFAULT'))
				and code_short_desc_txt in (COALESCE(NULLIF(nbs_answer3.answer_txt,''),'DEFAULT'))
				
				),'000') AS siteId,

				
				COALESCE((select concept_preferred_nm from nbs_srte..code_value_general where code_set_nm = 'PS_SITE_TYPE_LOOKUP'
				and code_desc_txt in (
				coalesce(CAST(orgs.root_extension_txt AS VARCHAR(32)),NULLIF(nbs_answer.answer_txt,''),'DEFAULT'))
				and code_short_desc_txt in (coalesce(NULLIF(nbs_answer3.answer_txt,''),'DEFAULT'))),'F88') AS siteTypeValueCode,

				
				dbo.AnswerFromToCode(caseAnswer.answer_txt,'NBS445') AS careStatusAtInterview,
				interview.local_id AS irLocalId,
				interview.record_status_cd AS irStatusCd,
				interview.add_time AS irAddTime,
				interview.last_chg_time AS irLastChgTime,
				public_health_case.local_id AS invLocalId

				--cm.fld_foll_up_dispo AS FL_FUP_DISPOSITION,
				FROM NBS_ODSE.dbo.interview INNER JOIN NBS_ODSE.dbo.act_relationship ON interview.interview_uid = act_relationship.source_act_uid INNER JOIN NBS_ODSE.dbo.public_health_case ON public_health_case.public_health_case_uid = act_relationship.target_act_uid
				LEFT JOIN NBS_ODSE.dbo.case_management cm ON cm.public_health_case_uid = public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.participation part ON part.act_uid = public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.person ON person.person_uid = part.subject_entity_uid
				LEFT JOIN NBS_ODSE.dbo.nbs_answer ON nbs_answer.act_uid=interview.interview_uid AND nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'IXS107')
				--LEFT JOIN NBS_ODSE.dbo.nbs_answer nbs_answer2 ON nbs_answer2.act_uid=interview.interview_uid AND nbs_answer2.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'IXS110')
				LEFT JOIN NBS_ODSE.dbo.nbs_answer nbs_answer3 ON nbs_answer3.act_uid=interview.interview_uid AND nbs_answer3.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'IXS109')
				LEFT JOIN (SELECT root_extension_txt, part2.act_uid from NBS_ODSE.dbo.participation part2 INNER JOIN NBS_ODSE.dbo.interview on part2.act_uid = interview.interview_uid and part2.type_cd = 'OrgAsSiteOfIntv'
				INNER JOIN NBS_ODSE.dbo.organization org on org.organization_uid = part2.subject_entity_uid
				INNER JOIN NBS_ODSE.dbo.entity_id entity2 on org.organization_uid = entity2.entity_uid and entity2.type_cd = 'PSID')orgs on orgs.act_uid = interview.interview_uid
				LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = Public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
				LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
				LEFT JOIN NBS_ODSE.dbo.person personParent ON entity_id.entity_uid = personParent.person_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
				LEFT JOIN NBS_ODSE.dbo.Act_id ON  public_health_case.public_health_case_uid = Act_id.act_uid AND Act_id.type_cd = 'LEGACY' 
				LEFT JOIN NBS_ODSE.dbo.nbs_answer caseAnswer ON caseAnswer.act_uid=interview.interview_uid AND caseAnswer.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS445')

				WHERE person.cd = 'PAT' AND public_health_case.cd IN ('900', '10560') AND cm.fld_foll_up_dispo IN ('1','2','5')
				AND (interview.last_chg_time > @dateLastTimeRun OR public_health_case.last_chg_time > @dateLastTimeRun 
				--OR person.last_chg_time > @dateLastTimeRun
				OR personParent.last_chg_time > @dateLastTimeRun)
				--AND public_health_case.local_id = 'CAS10052002GA01'
				UNION
				--second part of the query
				SELECT DISTINCT
				--(SELECT config_value FROM NBS_ODSE..NBS_configuration WHERE config_key = 'PSDATA_DEFAULT_AGENCY') AS agencyId,
				SUBSTRING(coalesce (NBS_DOCUMENT.SENDING_APP_PATIENT_ID, ENTITY_ID.ROOT_EXTENSION_TXT, person.local_id),1,32) AS localClientId,
				NBS_DOCUMENT.SENDING_APP_PATIENT_ID AS clientIdSTDMIS,
				ENTITY_ID.ROOT_EXTENSION_TXT AS clientIdPSID,
				person.local_id AS clientIdLocalId,
				person.first_nm AS clientFirstName,
				person.last_nm AS clientLastName,
				person.birth_time AS clientDOB,
				SUBSTRING(coalesce(NBS_DOCUMENT.SENDING_APP_EVENT_ID,NULLIF(ACT_ID.ROOT_EXTENSION_TXT,''),public_health_case.local_id),1,32)  AS caseNumberPS,
				NBS_DOCUMENT.SENDING_APP_EVENT_ID AS caseNumberSTDMIS,
				NULLIF(ACT_ID.ROOT_EXTENSION_TXT,'') AS caseNumberLegacyId,
				public_health_case.local_id AS caseNumberLocalId,
				interview.interview_date AS sessionDate,
				
				COALESCE((select distinct concept_nm from nbs_srte..code_value_general where code_set_nm = 'PS_SITE_TYPE_LOOKUP'
				and code_desc_txt in (coalesce(CAST(orgs.root_extension_txt AS VARCHAR(32)),NULLIF(nbs_answer.answer_txt,''),'DEFAULT'))
				and code_short_desc_txt in (COALESCE(NULLIF(nbs_answer3.answer_txt,''),'DEFAULT'))
				
				),'000') AS siteId,

				
				
				COALESCE((select concept_preferred_nm from nbs_srte..code_value_general where code_set_nm = 'PS_SITE_TYPE_LOOKUP'
				and code_desc_txt in (
				coalesce(CAST(orgs.root_extension_txt AS VARCHAR(32)),NULLIF(nbs_answer.answer_txt,''),'DEFAULT'))
				and code_short_desc_txt in (coalesce(NULLIF(nbs_answer3.answer_txt,''),'DEFAULT'))),'F88') AS siteTypeValueCode,
				--coalesce(NULLIF(dbo.AnswerFromToCode(nbs_answer3.answer_txt,'IXS109'),''),'F88') AS siteTypeValueCode,
				
				--nbs_answer3.answer_txt AS siteTypeValueCode,
				--nbs_answer2.answer_txt AS interventionId,
				dbo.AnswerFromToCode(caseAnswer.answer_txt,'NBS445') AS careStatusAtInterview,
				interview.local_id AS irLocalId,
				interview.record_status_cd AS irStatusCd,
				interview.add_time AS irAddTime,
				interview.last_chg_time AS irLastChgTime,
				public_health_case.local_id AS invLocalId
				  FROM NBS_ODSE.dbo.person INNER JOIN NBS_ODSE.dbo.ct_contact ON person.person_uid = ct_contact.contact_entity_uid INNER JOIN NBS_ODSE.dbo.public_health_case ON public_health_case_uid = subject_entity_phc_uid
				 LEFT JOIN NBS_ODSE.dbo.case_management cm ON cm.public_health_case_uid = public_health_case.public_health_case_uid
				 LEFT JOIN NBS_ODSE.dbo.act_relationship act ON act.target_act_uid = ct_contact.contact_entity_phc_uid
				 LEFT JOIN NBS_ODSE.dbo.participation part ON part.act_uid = public_health_case.public_health_case_uid
				 LEFT JOIN NBS_ODSE.dbo.interview ON interview.interview_uid = act.source_act_uid
				 LEFT JOIN NBS_ODSE.dbo.nbs_answer ON nbs_answer.act_uid=interview.interview_uid AND nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'IXS107')
				 --LEFT JOIN NBS_ODSE.dbo.nbs_answer nbs_answer2 ON nbs_answer2.act_uid=interview.interview_uid AND nbs_answer2.nbs_question_uid in (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'IXS110')
				 LEFT JOIN NBS_ODSE.dbo.nbs_answer nbs_answer3 ON nbs_answer3.act_uid=interview.interview_uid AND nbs_answer3.nbs_question_uid in (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'IXS109')
				 LEFT JOIN (SELECT root_extension_txt, part2.act_uid from NBS_ODSE.dbo.participation part2 INNER JOIN NBS_ODSE.dbo.interview on part2.act_uid = interview.interview_uid and part2.type_cd = 'OrgAsSiteOfIntv'
				INNER JOIN NBS_ODSE.dbo.organization org on org.organization_uid = part2.subject_entity_uid
				INNER JOIN NBS_ODSE.dbo.entity_id entity2 on org.organization_uid = entity2.entity_uid and entity2.type_cd = 'PSID')orgs on orgs.act_uid = interview.interview_uid
				 LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = Public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
				LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid and entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
				LEFT JOIN NBS_ODSE.dbo.person personParent ON entity_id.entity_uid = personParent.person_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
				LEFT JOIN NBS_ODSE.dbo.Act_id ON  public_health_case.public_health_case_uid = Act_id.act_uid and Act_id.type_cd = 'LEGACY' 
				LEFT JOIN NBS_ODSE.dbo.nbs_answer caseAnswer ON caseAnswer.act_uid=interview.interview_uid AND caseAnswer.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS445')

				WHERE person.cd = 'PAT' AND public_health_case.cd IN ('900', '10560') AND cm.fld_foll_up_dispo IN ('1','2','5')
				   AND ct_contact.contact_referral_basis_cd IN ('P1', 'P2', 'P3')
				  AND interview.interview_date IS NOT NULL
				AND ct_contact.ct_contact_uid IN (SELECT ct_contact_uid FROM NBS_ODSE.dbo.CT_CONTACT_ANSWER WHERE nbs_question_uid in (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'CON141')  AND answer_txt = 'THSPAT')
				AND (interview.last_chg_time > @dateLastTimeRun OR public_health_case.last_chg_time > @dateLastTimeRun 
				--OR person.last_chg_time > @dateLastTimeRun
				OR personParent.last_chg_time > @dateLastTimeRun)
				 --AND public_health_case.local_id = 'CAS10052002GA01'
				UNION
				--OOJ
				SELECT DISTINCT
				--(SELECT config_value FROM NBS_ODSE..NBS_configuration WHERE config_key = 'PSDATA_DEFAULT_AGENCY') AS agencyId,
				SUBSTRING(coalesce (NBS_DOCUMENT.SENDING_APP_PATIENT_ID, ENTITY_ID.ROOT_EXTENSION_TXT, person.local_id),1,32) AS localClientId,
				NBS_DOCUMENT.SENDING_APP_PATIENT_ID AS clientIdSTDMIS,
				ENTITY_ID.ROOT_EXTENSION_TXT AS clientIdPSID,
				person.local_id AS clientIdLocalId,
				person.first_nm AS clientFirstName,
				person.last_nm AS clientLastName,
				person.birth_time AS clientDOB,
				'' AS caseNumberPS,
				'' AS caseNumberSTDMIS,
				'' AS caseNumberLegacyId,
				'' AS caseNumberLocalId,
				interview.interview_date AS sessionDate,
				
				COALESCE((select distinct concept_nm from nbs_srte..code_value_general where code_set_nm = 'PS_SITE_TYPE_LOOKUP'
				and code_desc_txt in (coalesce(CAST(orgs.root_extension_txt AS VARCHAR(32)),NULLIF(nbs_answer.answer_txt,''),'DEFAULT'))
				and code_short_desc_txt in (COALESCE(NULLIF(nbs_answer3.answer_txt,''),'DEFAULT'))
				
				),'000') AS siteId,
		
				COALESCE((select concept_preferred_nm from nbs_srte..code_value_general where code_set_nm = 'PS_SITE_TYPE_LOOKUP'
				and code_desc_txt in (
				coalesce(CAST(orgs.root_extension_txt AS VARCHAR(32)),NULLIF(nbs_answer.answer_txt,''),'DEFAULT'))
				and code_short_desc_txt in (coalesce(NULLIF(nbs_answer3.answer_txt,''),'DEFAULT'))),'F88') AS siteTypeValueCode,

				dbo.AnswerFromToCode(caseAnswer.answer_txt,'NBS445') AS careStatusAtInterview,
				interview.local_id AS irLocalId,
				interview.record_status_cd AS irStatusCd,
				interview.add_time AS irAddTime,
				interview.last_chg_time AS irLastChgTime,
				public_health_case.local_id AS invLocalId
				FROM
				NBS_ODSE..public_health_case 
				inner join NBS_ODSE..nbs_case_answer nbsCaseAnswerOOJ ON public_health_case_uid = nbsCaseAnswerOOJ.act_uid and  nbs_question_uid in
				(select nbs_question_uid from NBS_ODSE..nbs_question where question_identifier = 'NBS270')
				LEFT JOIN NBS_ODSE..act_relationship act on act.target_act_uid = public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.interview ON interview.interview_uid = act.source_act_uid
				LEFT JOIN NBS_ODSE.dbo.participation part ON part.act_uid = public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.person ON person.person_uid = part.subject_entity_uid
				LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = Public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
				LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
				LEFT JOIN NBS_ODSE.dbo.nbs_answer nbs_answer3 ON nbs_answer3.act_uid=interview.interview_uid AND nbs_answer3.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'IXS109')
				LEFT JOIN NBS_ODSE.dbo.nbs_answer caseAnswer ON caseAnswer.act_uid=interview.interview_uid AND caseAnswer.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS445')
				LEFT JOIN (SELECT root_extension_txt, part2.act_uid from NBS_ODSE.dbo.participation part2 INNER JOIN NBS_ODSE.dbo.interview on part2.act_uid = interview.interview_uid and part2.type_cd = 'OrgAsSiteOfIntv'
				INNER JOIN NBS_ODSE.dbo.organization org on org.organization_uid = part2.subject_entity_uid
				INNER JOIN NBS_ODSE.dbo.entity_id entity2 on org.organization_uid = entity2.entity_uid and entity2.type_cd = 'PSID')orgs on orgs.act_uid = interview.interview_uid
				LEFT JOIN NBS_ODSE.dbo.Act_id ON  public_health_case.public_health_case_uid = Act_id.act_uid AND Act_id.type_cd = 'LEGACY' 
				LEFT JOIN NBS_ODSE.dbo.nbs_answer ON nbs_answer.act_uid=interview.interview_uid AND nbs_answer.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'IXS107')
				LEFT JOIN NBS_ODSE.dbo.case_management cm ON cm.public_health_case_uid = public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.person personParent ON entity_id.entity_uid = personParent.person_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'

				WHERE nbsCaseAnswerOOJ.answer_txt in ('P1','P2','P3') and interview.local_id is not null
				 and person.cd = 'PAT' AND public_health_case.cd IN ('900', '10560') --AND cm.fld_foll_up_dispo IN ('1','2','5')
				 AND (interview.last_chg_time > @dateLastTimeRun OR public_health_case.last_chg_time > @dateLastTimeRun 
				 --OR person.last_chg_time > @dateLastTimeRun
				OR personParent.last_chg_time > @dateLastTimeRun)
				)sessions
				
					
				SET @numberOfRecordsAfter = (SELECT COUNT(*) FROM PSF_SESSION);
				SET @numberOfRecords = @numberOfRecordsAfter - @numberOfRecords;
				SET @successFailureSession = 'Success';
			
				
			END TRY

			BEGIN CATCH
				SET @successFailureSession = 'Failure';
				SET @successMessageSession = 'Exception while inserting from PSF_SESSION table: '+ERROR_MESSAGE();
				SET @errorContinue = 'false';

			END CATCH;
			
			IF(@successFailureSession = 'Success')
			BEGIN
				SET @successMessageSession = CAST(@numberOfRecords AS VARCHAR(20)) +' new records inserted in PSF_SESSION ('+@incrementalOrFull+' refresh)';
			END

			SET @sessionInsertEnds=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='after inserting in psf_session '+@sessionInsertEnds;
			PRINT  @message;
		
				
		END		

		
		-----------------------------------------------------------------------------------------------------
		--Inserting in PSF_INDEX table

		IF(@errorContinue = 'true')
		BEGIN
			BEGIN TRY
			
			PRINT '-----------------------INSERT INTO PSF_INDEX----------------------------';
			
			SET @numberOfRecords = (SELECT COUNT(*) FROM PSF_INDEX);
			SET @indexInsertStarts=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='before inserting in psf_index '+@indexInsertStarts;
			PRINT  @message;
			
			
				INSERT INTO PSF_INDEX
				(agencyId,
				localClientId,
				clientIdSTDMIS,
				clientIdPSID,
				clientIdLocalId,
				clientFirstName,
				clientLastName,
				clientDOB,
				caseNumberPS,
				caseNumberEarliestPS,
				caseNumberSTDMIS,
				caseNumberLegacyId,
				caseNumberLocalId,
				indexDateDemographicsCollected,
				attemptToLocateOutcome,
				reasonForUnsuccessfulAttempt,
				enrollmentStatus,
				totalNumberOfPartnersClaimed,
				totalNumberOfNamedPartners,
				caseOpenDate,
				caseCloseDate,
				clientHIVStatus,
				careStatusAtCaseClose,
				patientAddTime,
				patientLastChgTime,
				patientStatusCd,
				invAddTime,
				invLastChgTime,
				invStatusCd,
				indexLastChgDt)

				SELECT DISTINCT
				(SELECT config_value FROM NBS_ODSE..NBS_configuration WHERE config_key = 'PSDATA_DEFAULT_AGENCY') AS agencyId,
				SUBSTRING(COALESCE (NBS_DOCUMENT.SENDING_APP_PATIENT_ID, ENTITY_ID.ROOT_EXTENSION_TXT, person.local_id),1,32) AS localClientId,
				NBS_DOCUMENT.SENDING_APP_PATIENT_ID AS clientIdSTDMIS,
				ENTITY_ID.ROOT_EXTENSION_TXT AS clientIdPSID,
				person.local_id AS clientIdLocalId,
				person.first_nm AS clientFirstName,
				person.last_nm AS clientLastName,
				person.birth_time AS clientDOB,
				SUBSTRING(COALESCE(NBS_DOCUMENT.SENDING_APP_EVENT_ID,NULLIF(ACT_ID.ROOT_EXTENSION_TXT,''),public_health_case.local_id),1,32)  AS caseNumberPS,
				'' AS caseNumberEarliestPS,
				NBS_DOCUMENT.SENDING_APP_EVENT_ID AS caseNumberSTDMIS,
				NULLIF(ACT_ID.ROOT_EXTENSION_TXT,'') AS caseNumberLegacyId,
				public_health_case.local_id AS caseNumberLocalId,
				person.last_chg_time AS indexDateDemographicsCollected,
				dbo.AnswerFromToCode(cm.pat_intv_status_cd,'NBS192') AS attemptToLocateOutcome,--lookup
				dbo.AnswerFromToCode(caseAnswer.answer_txt,'NBS276') AS reasonUnsuccessfulAttempt,
				dbo.AnswerFromToCode(caseAnswer2.answer_txt,'NBS257') AS enrollmentStatus,--lookup
				COALESCE(CONVERT(BIGINT, caseAnswer3.answer_txt),0)+COALESCE(CONVERT(BIGINT, caseAnswer4.answer_txt),0)+COALESCE(CONVERT(BIGINT, caseAnswer5.answer_txt),0) AS totalNumberOfPartnersClaimed,
				ct_cont.total AS totalNumberOfNamedPartners,
				public_health_case.activity_from_time AS caseOpenDate,
				public_health_case.activity_to_time AS caseCloseDate,
				dbo.AnswerFromToCode(cm.STATUS_900,'NBS153') AS clientHIVStatus,--STATUS900 to be defined
				dbo.AnswerFromToCode(caseAnswer7.answer_txt,'NBS444') AS careStatusAtCaseClose,--Lookup -- This question identifier doesn't exist yet
				person.add_time AS patientAddTime,
				person.last_chg_time AS patientLastChgTime,
				person.record_status_cd AS patientStatusCd,
				public_health_case.add_time AS invAddTime,
				public_health_case.last_chg_time AS invLastChgTime,
				public_health_case.record_status_cd AS invStatusCd,
				NULL AS indexLastChgDt
				FROM 
				NBS_ODSE.dbo.public_health_case
				LEFT JOIN NBS_ODSE.dbo.case_management cm ON cm.public_health_case_uid = public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.participation part ON part.act_uid = public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.person ON person.person_uid = part.subject_entity_uid
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer ON caseAnswer.act_uid=public_health_case.public_health_case_uid AND caseAnswer.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS276')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer2 ON caseAnswer2.act_uid=public_health_case.public_health_case_uid AND caseAnswer2.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS257')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer3 ON caseAnswer3.act_uid=public_health_case.public_health_case_uid AND caseAnswer3.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS130')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer4 ON caseAnswer4.act_uid=public_health_case.public_health_case_uid AND caseAnswer4.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS132')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer5 ON caseAnswer5.act_uid=public_health_case.public_health_case_uid AND caseAnswer5.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS134')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer6 ON caseAnswer6.act_uid=public_health_case.public_health_case_uid AND caseAnswer6.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS257')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer7 ON caseAnswer7.act_uid=public_health_case.public_health_case_uid AND caseAnswer7.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS444')
				LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = Public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
				LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
				LEFT JOIN NBS_ODSE.dbo.person personParent ON entity_id.entity_uid = personParent.person_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
				LEFT JOIN NBS_ODSE.dbo.Act_id ON  public_health_case.public_health_case_uid = Act_id.act_uid AND Act_id.type_cd = 'LEGACY' 
				LEFT JOIN NBS_ODSE.dbo.ct_contact ON person.person_uid = ct_contact.subject_entity_uid
				LEFT JOIN

				(SELECT subject_entity_uid, COUNT(*) AS total FROM NBS_ODSE.dbo.ct_contact WHERE CONTACT_REFERRAL_BASIS_CD IN ('P1','P2','P3') and
				PROCESSING_DECISION_CD IN ('FF','RSC','SR') and record_status_cd <> 'LOG_DEL' GROUP BY subject_entity_uid) ct_cont

				 ON ct_cont.subject_entity_uid = ct_contact.subject_entity_uid

				WHERE person.cd = 'PAT' AND public_health_case.cd IN ('900', '10560') AND cm.fld_foll_up_dispo IN ('1','2','5')

				AND (public_health_case.last_chg_time > @dateLastTimeRun OR person.last_chg_time > @dateLastTimeRun
				OR personParent.last_chg_time > @dateLastTimeRun OR ct_contact.last_chg_time > @dateLastTimeRun )


				--The following query will update the new column caseNumberEarliestPS with the earliest HIV investigation local id (min invAddTime) for the same patient
				UPDATE psf_index SET caseNumberEarliestPS = hivs.caseNumberPS
				FROM psf_index INNER JOIN (
				SELECT clientIdLocalId,caseNumberPS,invAddTime FROM psf_index INNER JOIN
				(SELECT clientIdLocalId AS personLocalId, MIN(invAddTime) AS minTime FROM psf_index WHERE invStatusCd <> 'LOG_DEL' GROUP BY clientIdLocalId)minHiv
				ON minHiv.personLocalId = clientIdLocalId AND invAddTime = minHiv.minTime) hivs
				ON psf_index.clientIdLocalId=hivs.clientIdLocalId


				
				SET @numberOfRecordsAfter = (SELECT COUNT(*) FROM PSF_INDEX);
				
				SET @numberOfRecords = @numberOfRecordsAfter - @numberOfRecords;
				
				SET @successFailureIndex = 'Success';




				
			END TRY
			
			BEGIN CATCH
						SET @successFailureIndex = 'Failure';
						SET @successMessageIndex = 'Exception while inserting from PSF_INDEX table: '+ERROR_MESSAGE();
						SET @errorContinue = 'false';

			END CATCH;
					
					
			IF(@successFailureIndex = 'Success')
			BEGIN
				SET @successMessageIndex = CAST(@numberOfRecords AS VARCHAR(20))+' new records inserted in PSF_INDEX ('+@incrementalOrFull+' refresh)';
			END
					
			SET @indexInsertEnds=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='after inserting in psf_index '+@indexInsertEnds;
			PRINT @message;
		END
		-----------------------------------------------------------------------------------------------------
		
		IF(@errorContinue = 'true')
		BEGIN
			BEGIN TRY
			--Insert into PSF_CLIENT
			PRINT '-----------------------INSERT INTO PSF_CLIENT----------------------------';
			
			SET @numberOfRecords = (SELECT COUNT(*) FROM PSF_CLIENT);
			SET @clientInsertStarts=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='before inserting in psf_client '+@clientInsertStarts;
			PRINT  @message;
			
				
				INSERT INTO PSF_CLIENT
				(
				localClientId,
				clientIdSTDMIS,
				clientIdPSID,
				clientIdLocalId,
				clientFirstName,
				clientLastName,
				clientDOB,
				birthYear,
				ethnicity,
				raceValueCode1,
				raceValueCode2,
				raceValueCode3,
				raceValueCode4,
				raceValueCode5,
				birthGenderValueCode,
				currentGenderValueCode,
				eHarsStateNumber,
				lastModifiedDate,
				patientLastChgTime,
				patientAddTime,
				patientStatusCd,
				clientUid
				)

				SELECT 
				SUBSTRING(COALESCE (NBS_DOCUMENT.SENDING_APP_PATIENT_ID, ENTITY_ID.ROOT_EXTENSION_TXT, person.local_id),1,32) AS localClientId,
				NBS_DOCUMENT.SENDING_APP_PATIENT_ID AS clientIdSTDMIS,
				ENTITY_ID.ROOT_EXTENSION_TXT AS clientIdPSID,
				person.local_id AS clientIdLocalId,
				person.first_nm AS clientFirstName,
				person.last_nm AS clientLastName,
				person.birth_time AS clientDOB,
				COALESCE(YEAR(person.birth_time),'1800') AS birthYear,
				COALESCE(dbo.AnswerFromToCode(COALESCE(
				CASE ETHNIC_GROUP_IND WHEN '2135-2' THEN '2135-2' ELSE NULL END,
				  CASE ETHNIC_GROUP_IND WHEN '2186-5' THEN '2186-5' ELSE NULL END,
				  CASE ETHNIC_GROUP_IND WHEN NULL THEN '99' ELSE NULL END,
				  ETHNIC_UNK_REASON_CD,'99'),'DEM155') ,dbo.AnswerFromToCode(COALESCE(
				 CASE ETHNIC_GROUP_IND WHEN '2135-2' THEN '2135-2' ELSE NULL END,
				  CASE ETHNIC_GROUP_IND WHEN '2186-5' THEN '2186-5' ELSE NULL END,
				  CASE ETHNIC_GROUP_IND WHEN NULL THEN '99' ELSE NULL END,
				  ETHNIC_UNK_REASON_CD,'99'),'NBS273'),'99')AS ethnicity,

				  
				--lookups
				COALESCE(dbo.AnswerFromToCode((SELECT TOP 1 person_race.race_cd FROM NBS_ODSE.dbo.person_race  WHERE person_race.person_uid = person.person_uid),'DEM152'),'99') raceValueCode1,
				dbo.AnswerFromToCode((SELECT TOP 2 person_race.race_cd FROM NBS_ODSE.dbo.person_race  WHERE person_race.person_uid = person.person_uid
				EXCEPT
				SELECT TOP 1 person_race.race_cd FROM NBS_ODSE.dbo.person_race  WHERE person_race.person_uid = person.person_uid),'DEM152') raceValueCode2,
				dbo.AnswerFromToCode((SELECT TOP 3 person_race.race_cd FROM NBS_ODSE.dbo.person_race  WHERE person_race.person_uid = person.person_uid
				EXCEPT
				SELECT TOP 2 person_race.race_cd FROM NBS_ODSE.dbo.person_race  WHERE person_race.person_uid = person.person_uid),'DEM152') raceValueCode3,
				dbo.AnswerFromToCode((SELECT TOP 4 person_race.race_cd FROM NBS_ODSE.dbo.person_race  WHERE person_race.person_uid = person.person_uid
				EXCEPT
				SELECT TOP 3 person_race.race_cd FROM NBS_ODSE.dbo.person_race  WHERE person_race.person_uid = person.person_uid),'DEM152') raceValueCode4,
				dbo.AnswerFromToCode((SELECT TOP 5 person_race.race_cd FROM NBS_ODSE.dbo.person_race  WHERE person_race.person_uid = person.person_uid
				EXCEPT
				SELECT TOP 4 person_race.race_cd FROM NBS_ODSE.dbo.person_race  WHERE person_race.person_uid = person.person_uid),'DEM152') raceValueCode5,

				COALESCE(dbo.AnswerFromToCode(person.birth_gender_cd,'DEM114'),'77') AS birthGenderValueCode,--lookup
				COALESCE(dbo.AnswerFromToCode(PERSON.PREFERRED_GENDER_CD,'NBS274'),dbo.AnswerFromToCode(PERSON.SEX_UNK_REASON_CD,'NBS272'),dbo.AnswerFromToCode(PERSON.CURR_SEX_CD,'DEM113'),'77') AS currentGenderValueCode,


				  PERSON.EHARS_ID AS eHarsStateNumber,
				  person.last_chg_time AS lastModifiedDate,
				  person.last_chg_time AS patientLastChgTime,
				person.add_time AS patientAddTime,
				person.record_status_cd AS patientStatusCd,
				person.person_uid AS clientUid
				   FROM  (

				SELECT DISTINCT personLocalId, MAX(last_Chg_time) AS lastChangeTime,  MAX(local_id) AS publicHealthCase FROM (
								SELECT 
								person.first_nm, person.last_nm, person.local_id AS personLocalId, person.person_uid, person.last_chg_time, public_health_case.local_id
								FROM 
								NBS_ODSE.dbo.public_health_case
								LEFT JOIN NBS_ODSE.dbo.case_management cm ON cm.public_health_case_uid = public_health_case.public_health_case_uid
								LEFT JOIN NBS_ODSE.dbo.participation part ON part.act_uid = public_health_case.public_health_case_uid
								LEFT JOIN NBS_ODSE.dbo.person ON person.person_uid = part.subject_entity_uid
								LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = Public_health_case.public_health_case_uid
								LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
								LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
								LEFT JOIN (SELECT nbs_odse.dbo.act_relationship.target_act_uid, interview.INTERVIEW_DATE FROM NBS_ODSE.dbo.interview left join nbs_odse.dbo.act_relationship ON
								interview.interview_uid = act_relationship.source_act_uid WHERE interview_type_cd = 'INITIAL' and interview_uid IS NOT NULL) interviews ON interviews.target_act_uid = public_health_case.public_health_case_uid
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer ON caseAnswer.act_uid=public_health_case.public_health_case_uid AND caseAnswer.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS254')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer2 ON caseAnswer2.act_uid=public_health_case.public_health_case_uid AND caseAnswer2.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD106')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer3 ON caseAnswer3.act_uid=public_health_case.public_health_case_uid AND caseAnswer3.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD107')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer4 ON caseAnswer4.act_uid=public_health_case.public_health_case_uid AND caseAnswer4.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD108')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer5 ON caseAnswer5.act_uid=public_health_case.public_health_case_uid AND caseAnswer5.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS230')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer6 ON caseAnswer6.act_uid=public_health_case.public_health_case_uid AND caseAnswer6.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS231')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer7 ON caseAnswer7.act_uid=public_health_case.public_health_case_uid AND caseAnswer7.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD114')
								WHERE person.cd = 'PAT' AND public_health_case.cd IN ('900', '10560') AND cm.fld_foll_up_dispo IN ('1','2','5')
								

				UNION


									--CONTACT WITH INVESTIGATION
									SELECT 
									person.first_nm, person.last_nm, person.local_id  AS personLocalId, person.person_uid, person.last_chg_time,  public_health_case.local_id
									 FROM NBS_ODSE..ct_contact LEFT JOIN NBS_ODSE..public_health_case ON
									 ct_contact.contact_entity_phc_uid=public_health_case.public_health_case_uid 
									 LEFT JOIN nbs_odse..participation part ON part.act_uid = public_health_case.public_health_case_uid
									 LEFT JOIN nbs_odse..person ON  person.person_uid = part.subject_entity_uid
									 LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = Public_health_case.public_health_case_uid
									 LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
									 LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
									 LEFT JOIN (SELECT nbs_odse.dbo.act_relationship.target_act_uid, interview.INTERVIEW_DATE FROM NBS_ODSE.dbo.interview LEFT JOIN nbs_odse.dbo.act_relationship ON
									interview.interview_uid = act_relationship.source_act_uid WHERE interview_type_cd = 'INITIAL' and interview_uid IS NOT NULL) interviews ON interviews.target_act_uid = public_health_case.public_health_case_uid
									LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer ON caseAnswer.act_uid=public_health_case.public_health_case_uid AND caseAnswer.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS254')
									LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer2 ON caseAnswer2.act_uid=public_health_case.public_health_case_uid AND caseAnswer2.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD106')
									LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer3 ON caseAnswer3.act_uid=public_health_case.public_health_case_uid AND caseAnswer3.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD107')
									LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer4 ON caseAnswer4.act_uid=public_health_case.public_health_case_uid AND caseAnswer4.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD108')
									LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer5 ON caseAnswer5.act_uid=public_health_case.public_health_case_uid AND caseAnswer5.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS230')
									LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer6 ON caseAnswer6.act_uid=public_health_case.public_health_case_uid AND caseAnswer6.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS231')
									LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer7 ON caseAnswer7.act_uid=public_health_case.public_health_case_uid AND caseAnswer7.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD114')
									WHERE
									 public_health_case.cd IN ('900', '10560')
									 AND person.cd = 'PAT'
									 AND (NBS_ODSE..ct_contact.contact_referral_basis_cd IN ('P1','P2','P3'))            
									-- AND NBS_ODSE..ct_contact.ct_contact_uid IN (SELECT ct_contact_uid FROM NBS_ODSE.dbo.CT_CONTACT_ANSWER WHERE nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'CON141')  AND answer_txt = 'THSPAT')
									 AND (NBS_ODSE..ct_contact.PROCESSING_DECISION_CD IN ('FF','RSC','SR'))
				 
				 UNION

				 
								--CONTACT WITH INVESTIGATION (information FROM contact)
								SELECT 
								person2.first_nm, person2.last_nm, person2.local_id  AS personLocalId, person2.person_uid, person2.last_chg_time,  public_health_case.local_id
								 FROM NBS_ODSE..ct_contact LEFT JOIN NBS_ODSE..public_health_case ON
								 ct_contact.contact_entity_phc_uid=public_health_case.public_health_case_uid 
								 LEFT JOIN nbs_odse..participation part ON part.act_uid = public_health_case.public_health_case_uid
								 LEFT JOIN nbs_odse..person ON  person.person_uid = part.subject_entity_uid
								 LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = Public_health_case.public_health_case_uid
								 LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
								 LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
								 LEFT JOIN (SELECT nbs_odse.dbo.act_relationship.target_act_uid, interview.INTERVIEW_DATE FROM NBS_ODSE.dbo.interview LEFT JOIN nbs_odse.dbo.act_relationship ON
								interview.interview_uid = act_relationship.source_act_uid WHERE interview_type_cd = 'INITIAL' and interview_uid IS NOT NULL) interviews ON interviews.target_act_uid = public_health_case.public_health_case_uid
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer ON caseAnswer.act_uid=public_health_case.public_health_case_uid AND caseAnswer.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS254')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer2 ON caseAnswer2.act_uid=public_health_case.public_health_case_uid AND caseAnswer2.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD106')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer3 ON caseAnswer3.act_uid=public_health_case.public_health_case_uid AND caseAnswer3.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD107')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer4 ON caseAnswer4.act_uid=public_health_case.public_health_case_uid AND caseAnswer4.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD108')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer5 ON caseAnswer5.act_uid=public_health_case.public_health_case_uid AND caseAnswer5.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS230')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer6 ON caseAnswer6.act_uid=public_health_case.public_health_case_uid AND caseAnswer6.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS231')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer7 ON caseAnswer7.act_uid=public_health_case.public_health_case_uid AND caseAnswer7.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD114')
								LEFT JOIN NBS_ODSE..person person2 ON person2.person_uid = ct_contact.contact_entity_uid
								WHERE
								 public_health_case.cd IN ('900', '10560')
								 AND person.cd = 'PAT'
								 AND (NBS_ODSE..ct_contact.contact_referral_basis_cd IN ('P1','P2','P3'))            
								-- AND NBS_ODSE..ct_contact.ct_contact_uid IN (SELECT ct_contact_uid FROM NBS_ODSE.dbo.CT_CONTACT_ANSWER WHERE nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'CON141')  AND answer_txt = 'THSPAT')
								 AND (NBS_ODSE..ct_contact.PROCESSING_DECISION_CD IN ('FF','RSC','SR'))


				 
				 UNION
				 
				 
								 --CONTACT WITH NO INVESTIGATION
								SELECT 
								person.first_nm, person.last_nm, person.local_id  AS personLocalId, person.person_uid, person.last_chg_time, public_health_case.local_id
								FROM nbs_odse..ct_contact 
								LEFT JOIN NBS_ODSE..person ON person_uid = ct_contact.contact_entity_uid
								LEFT JOIN NBS_ODSE..public_health_case ON public_health_case.public_health_case_uid = ct_contact.subject_entity_phc_uid
								LEFT JOIN NBS_ODSE.dbo.case_management cm ON cm.public_health_case_uid = public_health_case.public_health_case_uid
								 LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = Public_health_case.public_health_case_uid
								 LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
								 LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
								 LEFT JOIN (SELECT nbs_odse.dbo.act_relationship.target_act_uid, interview.INTERVIEW_DATE FROM NBS_ODSE.dbo.interview LEFT JOIN nbs_odse.dbo.act_relationship ON
								interview.interview_uid = act_relationship.source_act_uid WHERE interview_type_cd = 'INITIAL' and interview_uid IS NOT NULL) interviews ON interviews.target_act_uid = public_health_case.public_health_case_uid
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer ON caseAnswer.act_uid=public_health_case.public_health_case_uid AND caseAnswer.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS254')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer2 ON caseAnswer2.act_uid=public_health_case.public_health_case_uid AND caseAnswer2.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD106')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer3 ON caseAnswer3.act_uid=public_health_case.public_health_case_uid AND caseAnswer3.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD107')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer4 ON caseAnswer4.act_uid=public_health_case.public_health_case_uid AND caseAnswer4.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD108')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer5 ON caseAnswer5.act_uid=public_health_case.public_health_case_uid AND caseAnswer5.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS230')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer6 ON caseAnswer6.act_uid=public_health_case.public_health_case_uid AND caseAnswer6.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS231')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer7 ON caseAnswer7.act_uid=public_health_case.public_health_case_uid AND caseAnswer7.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD114')
								WHERE 
								person.cd = 'PAT'
								AND (NBS_ODSE..ct_contact.contact_referral_basis_cd IN ('P1','P2','P3'))            
								--AND (NBS_ODSE..ct_contact.PROCESSING_DECISION_CD NOT IN ('FF','RSC','SR'))
								AND public_health_case.cd IN ('900', '10560')
								AND cm.fld_foll_up_dispo IN ('1','2','5')
								
				--OOJ

				UNION
								SELECT distinct
								person.first_nm, person.last_nm, person.local_id AS personLocalId, person.person_uid, person.last_chg_time, public_health_case.local_id
								FROM 
								NBS_ODSE.dbo.public_health_case INNER JOIN NBS_ODSE..participation ON  public_health_case_uid = act_uid
								INNER JOIN NBS_ODSE..person ON subject_entity_uid = person_uid
								inner join NBS_ODSE..nbs_case_answer nbsCaseAnswerOOJ ON public_health_case_uid = nbsCaseAnswerOOJ.act_uid and  nbs_question_uid in
								(select nbs_question_uid from NBS_ODSE..nbs_question where question_identifier = 'NBS270')

								LEFT JOIN NBS_ODSE.dbo.case_management cm ON cm.public_health_case_uid = public_health_case.public_health_case_uid
								LEFT JOIN NBS_ODSE.dbo.participation part ON part.act_uid = public_health_case.public_health_case_uid
								LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = Public_health_case.public_health_case_uid
								LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
								LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
								LEFT JOIN (SELECT nbs_odse.dbo.act_relationship.target_act_uid, interview.INTERVIEW_DATE FROM NBS_ODSE.dbo.interview left join nbs_odse.dbo.act_relationship ON
								interview.interview_uid = act_relationship.source_act_uid WHERE interview_type_cd = 'INITIAL' and interview_uid IS NOT NULL) interviews ON interviews.target_act_uid = public_health_case.public_health_case_uid
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer ON caseAnswer.act_uid=public_health_case.public_health_case_uid AND caseAnswer.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS254')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer2 ON caseAnswer2.act_uid=public_health_case.public_health_case_uid AND caseAnswer2.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD106')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer3 ON caseAnswer3.act_uid=public_health_case.public_health_case_uid AND caseAnswer3.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD107')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer4 ON caseAnswer4.act_uid=public_health_case.public_health_case_uid AND caseAnswer4.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD108')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer5 ON caseAnswer5.act_uid=public_health_case.public_health_case_uid AND caseAnswer5.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS230')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer6 ON caseAnswer6.act_uid=public_health_case.public_health_case_uid AND caseAnswer6.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS231')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer7 ON caseAnswer7.act_uid=public_health_case.public_health_case_uid AND caseAnswer7.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD114')
								WHERE person.cd = 'PAT' AND public_health_case.cd IN ('900', '10560') --AND cm.fld_foll_up_dispo IN ('1','2','5')
								AND nbsCaseAnswerOOJ.answer_txt in ('P1','P2','P3')
								
								)aa GROUP BY personLocalId)
								query1
								LEFT JOIN NBS_ODSE..person ON query1.personLocalId = person.local_id and lastChangeTime = person.last_chg_time and person.person_uid <> person.person_parent_uid
								LEFT JOIN NBS_ODSE..public_health_Case ON query1.publicHealthCase=public_health_case.local_id
								LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = Public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
				LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
				LEFT JOIN NBS_ODSE.dbo.Act_id ON  public_health_case.public_health_case_uid = Act_id.act_uid AND Act_id.type_cd = 'LEGACY' 

				WHERE (
				--public_health_case.last_chg_time > @dateLastTimeRun OR
				 person.last_chg_time > @dateLastTimeRun)

				 
				 
				SET @numberOfRecordsAfter = (SELECT COUNT(*) FROM PSF_CLIENT);
				SET @numberOfRecords = @numberOfRecordsAfter - @numberOfRecords;
				SET @successFailureClient = 'Success';
				
			END TRY

			BEGIN CATCH
				SET @successFailureClient = 'Failure';
				SET @successMessageClient = 'Exception while inserting from PSF_CLIENT table: '+ERROR_MESSAGE();
				SET @errorContinue = 'false';
	
			END CATCH;
					
					
			IF(@successFailureClient = 'Success')
			BEGIN
				SET @successMessageClient = CAST(@numberOfRecords AS VARCHAR(20))+' new records inserted in PSF_CLIENT ('+@incrementalOrFull+' refresh)';
			END
					
					
			SET @clientInsertEnds=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='after inserting in psf_Client '+@clientInsertEnds;
			
			
		END
		
		 -----------------------------------------------------------------------------------------------------

		 
		IF(@errorContinue = 'true')
			BEGIN
			
			BEGIN TRY
			
			--Exception 1: Uncomment this line to throw a SQL Exception
			--THROW 50001, 'Throw SQL Exception', 1;
			
			--Exception 2: OR Uncomment this line to throw a SQL Exception
			--	INSERT INTO  MsgOut_activity_log_detail values
			--	('100', NULL, 'PSF_SESSION', 'PopulatePSFTables','Successssss', 'Successssss', '', '');
	
	
	
			--Insert into PSF_RISK
			PRINT '-----------------------INSERT INTO PSF_RISK----------------------------';
			SET @riskInsertStarts=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='before inserting in psf_risk '+@riskInsertStarts;
			PRINT  @message;
			SET @numberOfRecords = (SELECT COUNT(*) FROM PSF_RISK);
			
			--Exception 2: OR Uncomment this line to throw a SQL Exception
				--INSERT INTO  MsgOut_activity_log_detail values
			--	('100', NULL, 'PSF_SESSION', 'PopulatePSFTables','Successssss', 'Successssss', '', '');
	
	

				INSERT INTO PSF_RISK(localClientId,
				clientIdSTDMIS,
				clientIdPSID,
				clientIdLocalId,
				clientFirstName,
				clientLastName,
				clientDOB,
				invLocalId,
				dateCollectedForRiskProfile,
				withMale,
				withFemale,
				withTransgender,
				vaginalOrAnalSexWithoutCondomP,
				injectionDrugUse,
				invAddtime,
				invLastChgTime,
				invStatusCd,
				irLocalId
				)
				SELECT distinct
				SUBSTRING(COALESCE (NBS_DOCUMENT.SENDING_APP_PATIENT_ID, ENTITY_ID.ROOT_EXTENSION_TXT, person.local_id),1,32) AS localClientId,
				NBS_DOCUMENT.SENDING_APP_PATIENT_ID AS clientIdSTDMIS,
				ENTITY_ID.ROOT_EXTENSION_TXT AS clientIdPSID,
				person.local_id AS clientIdLocalId,
				person.first_nm AS clientFirstName,
				person.last_nm AS clientLastName,
				person.birth_time AS clientDOB,
				public_health_case.local_id AS invLocalId,
				COALESCE(INTERVIEWs.INTERVIEW_DATE,'01/01/1800') AS dateCollectedForRiskProfile,
				dbo.AnswerFromToCode(caseAnswer3.answer_txt,'STD107') AS withMale,--lookup
				dbo.AnswerFromToCode(caseAnswer4.answer_txt,'STD108') AS withFemale,--lookup
				dbo.AnswerFromToCode(caseAnswer5.answer_txt,'NBS230') AS withTransgender,--lookup
				dbo.AnswerFromToCode(caseAnswer6.answer_txt,'NBS231') AS vaginalOrAnalSexWithoutCondomP,--lookup
				COALESCE(dbo.AnswerFromToCode(caseAnswer7.answer_txt,'STD114'),'66') AS injectionDrugUse,--lookup
				public_health_case.add_time AS invAddTime,
				public_health_case.last_chg_time AS invLastChgTime,
				public_health_case.record_status_cd AS invStatusCd,
				interviews.local_id AS irLocalId
				FROM nbs_odse..public_health_case INNER JOIN NBS_ODSE..participation
				ON  public_health_case_uid = act_uid INNER JOIN NBS_ODSE..person ON subject_entity_uid = person_uid
				INNER JOIN PSF_CLIENT on person.local_id = PSF_CLIENT.clientIdLocalId
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer3 ON caseAnswer3.act_uid=public_health_case.public_health_case_uid AND caseAnswer3.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD107')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer4 ON caseAnswer4.act_uid=public_health_case.public_health_case_uid AND caseAnswer4.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD108')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer5 ON caseAnswer5.act_uid=public_health_case.public_health_case_uid AND caseAnswer5.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS230')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer6 ON caseAnswer6.act_uid=public_health_case.public_health_case_uid AND caseAnswer6.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS231')
								LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer7 ON caseAnswer7.act_uid=public_health_case.public_health_case_uid AND caseAnswer7.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD114')
								LEFT JOIN (SELECT nbs_odse.dbo.act_relationship.target_act_uid, interview.INTERVIEW_DATE, interview.local_id, interview.last_Chg_time FROM NBS_ODSE.dbo.interview left join nbs_odse.dbo.act_relationship ON
								interview.interview_uid = act_relationship.source_act_uid WHERE interview_type_cd = 'INITIAL' and interview_uid IS NOT NULL and interview.record_status_cd <> 'LOG_DEL') interviews ON interviews.target_act_uid = public_health_case.public_health_case_uid
								LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = Public_health_case.public_health_case_uid
								LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
								LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
				WHERE participation.type_cd = 'SubjOfPHC' and public_health_case.cd IN ('900', '10560')
				-- and public_health_case.referral_basis_cd in ('P1','P2','P3')
				AND (public_health_case.last_chg_time > @dateLastTimeRun)
				--OR interviews.last_Chg_time > @dateLastTimeRun)
				UNION


				--OOJ
				SELECT distinct
				SUBSTRING(COALESCE (NBS_DOCUMENT.SENDING_APP_PATIENT_ID, ENTITY_ID.ROOT_EXTENSION_TXT, person.local_id),1,32) AS localClientId,
				NBS_DOCUMENT.SENDING_APP_PATIENT_ID AS clientIdSTDMIS,
				ENTITY_ID.ROOT_EXTENSION_TXT AS clientIdPSID,
				person.local_id AS clientIdLocalId,
				person.first_nm AS clientFirstName,
				person.last_nm AS clientLastName,
				person.birth_time AS clientDOB,
				public_health_case.local_id AS invLocalId,
				COALESCE(INTERVIEWs.INTERVIEW_DATE,'01/01/1800') AS dateCollectedForRiskProfile,
				dbo.AnswerFromToCode(caseAnswer3.answer_txt,'STD107') AS withMale,--lookup
				dbo.AnswerFromToCode(caseAnswer4.answer_txt,'STD108') AS withFemale,--lookup
				dbo.AnswerFromToCode(caseAnswer5.answer_txt,'NBS230') AS withTransgender,--lookup
				dbo.AnswerFromToCode(caseAnswer6.answer_txt,'NBS231') AS vaginalOrAnalSexWithoutCondomP,--lookup
				COALESCE(dbo.AnswerFromToCode(caseAnswer7.answer_txt,'STD114'),'66') AS injectionDrugUse,--lookup
				public_health_case.add_time AS invAddTime,
				public_health_case.last_chg_time AS invLastChgTime,
				public_health_case.record_status_cd AS invStatusCd,
				interviews.local_id AS irLocalId
				FROM nbs_odse..public_health_case INNER JOIN NBS_ODSE..participation ON  public_health_case_uid = act_uid INNER JOIN NBS_ODSE..person ON subject_entity_uid = person_uid
				inner join NBS_ODSE..nbs_case_answer nbsCaseAnswerOOJ ON public_health_case_uid = nbsCaseAnswerOOJ.act_uid and  nbs_question_uid in
				(select nbs_question_uid from NBS_ODSE..nbs_question where question_identifier = 'NBS270')
				LEFT JOIN NBS_ODSE..act_relationship act on act.target_act_uid = public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.interview ON interview.interview_uid = act.source_act_uid
				LEFT JOIN NBS_ODSE.dbo.participation part ON part.act_uid = public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = Public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
				LEFT JOIN NBS_ODSE.dbo.Act_id ON  public_health_case.public_health_case_uid = Act_id.act_uid AND Act_id.type_cd = 'LEGACY' 
				LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
				LEFT JOIN (SELECT nbs_odse.dbo.act_relationship.target_act_uid, interview.INTERVIEW_DATE, interview.local_id, interview.last_Chg_time FROM NBS_ODSE.dbo.interview left join nbs_odse.dbo.act_relationship ON
				interview.interview_uid = act_relationship.source_act_uid WHERE interview_type_cd = 'INITIAL' and interview_uid IS NOT NULL and interview.record_status_cd <> 'LOG_DEL')interviews ON interviews.target_act_uid = public_health_case.public_health_case_uid
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer3 ON caseAnswer3.act_uid=public_health_case.public_health_case_uid AND caseAnswer3.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD107')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer4 ON caseAnswer4.act_uid=public_health_case.public_health_case_uid AND caseAnswer4.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD108')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer5 ON caseAnswer5.act_uid=public_health_case.public_health_case_uid AND caseAnswer5.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS230')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer6 ON caseAnswer6.act_uid=public_health_case.public_health_case_uid AND caseAnswer6.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS231')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer7 ON caseAnswer7.act_uid=public_health_case.public_health_case_uid AND caseAnswer7.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD114')
				WHERE participation.type_cd = 'SubjOfPHC' and public_health_case.cd IN ('900', '10560')
				AND nbsCaseAnswerOOJ.answer_txt in ('P1','P2','P3')
				AND (public_health_case.last_chg_time > @dateLastTimeRun)
				 --Update dateCollectedForRiskProfile
								 
								 
				UPDATE PSF_RISK SET dateCollectedForRiskProfile = '01/01/1800', irLocalId = NULL FROM PSF_RISK
				inner join
				(SELECT interview.INTERVIEW_DATE, public_health_case.local_id
				FROM NBS_ODSE.dbo.interview inner join nbs_odse.dbo.act_relationship ON
								interview.interview_uid = act_relationship.source_act_uid 
								inner join nbs_odse.dbo.public_health_case ON act_relationship.target_act_uid = public_health_case.public_health_case_uid
								WHERE
								 interview_type_cd <> 'INITIAL' and interview.record_status_cd <> 'LOG_DEL')interviews
								 on interviews.local_id = PSF_RISK.invLocalId;
								 
								 
				 
				 UPDATE PSF_RISK SET dateCollectedForRiskProfile = interviews.INTERVIEW_DATE, irLocalId = interviews.irLocalId FROM PSF_RISK
				INNER JOIN
				(SELECT interview.local_id as irLocalId, interview.INTERVIEW_DATE, public_health_case.local_id AS invLocalId
				FROM NBS_ODSE.dbo.interview INNER JOIN nbs_odse.dbo.act_relationship ON
								interview.interview_uid = act_relationship.source_act_uid 
								INNER JOIN nbs_odse.dbo.public_health_case ON act_relationship.target_act_uid = public_health_case.public_health_case_uid
								WHERE
								 interview_type_cd = 'INITIAL' and interview_uid IS NOT NULL 
				and interview.record_status_cd <> 'LOG_DEL')interviews
								 on interviews.invLocalId = PSF_RISK.invLocalId;
								 
							

				SET @numberOfRecordsAfter = (SELECT COUNT(*) FROM PSF_RISK);
			
				SET @numberOfRecords = @numberOfRecordsAfter - @numberOfRecords;
			
			
				SET @successFailureRisk = 'Success';
			
				
			END TRY
			
			BEGIN CATCH	
				SET @successFailureRisk = 'Failure';
				SET @successMessageRisk = 'Exception while inserting from PSF_RISK table: '+ERROR_MESSAGE();	
				SET @errorContinue = 'false';	
			
			END CATCH;
			
			IF(@successFailureRisk = 'Success')
			BEGIN
				SET @successMessageRisk = CAST(@numberOfRecords AS VARCHAR(20))+' new records inserted in PSF_RISK ('+@incrementalOrFull+' refresh)';
			END
					
					
			SET @riskInsertEnds=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='after inserting in psf_risk '+@riskInsertEnds;
		END	
		 -----------------------------------------------------------------------------------------------------
		 
		IF(@errorContinue = 'true')
		BEGIN
			BEGIN TRY
			
			
			 --Insert into PSF_PARTNER
			PRINT '-----------------------INSERT INTO PSF_PARTNER----------------------------';

			SET @numberOfRecords = (SELECT COUNT(*) FROM PSF_PARTNER);
			SET @partnerInsertStarts=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='before inserting in psf_partner '+@partnerInsertStarts;
			PRINT  @message;

		
				INSERT INTO PSF_PARTNER(
				agencyId,
				localClientId,
				clientIdSTDMIS,
				clientIdPSID,
				clientIdLocalId,
				clientFirstName,
				clientLastName,
				clientDOB,
				caseNumberPS,
				caseNumberEarliestPS,
				caseNumberSTDMIS,
				caseNumberLegacyId,
				caseNumberLocalId,
				partnerDateDemographicsCollected,
				partnerType,
				attemptToLocateOutcome,
				reasonForUnsuccessfulAttempt,
				enrollmentStatus,
				partnerNotifiability,
				actualNotificationMethod,
				previousHivTestValueCode,
				previousHIVTestResult,
				HIVTestPerformed,
				sampleDate,
				HIVTestResult,
				provisionOfResultValueCode,
				syphilisTest,
				syphilisTestResult,
				currentHIVMedicalCareStatus,
				firstMedicalCareAppointmentDate,
				currentlyOnPrEP,
				referredToPrEP,
				crLocalId,
				invLocalId,
				patientAddTime,
				patientLastChgTime,
				patientStatusCd,
				invAddtime,
				invLastChgTime,
				invStatusCd,
				crAddTime,
				crLastChgTime,
				crStatusCd,
				partnerLastChgDt)
				SELECT distinct
				(SELECT config_value FROM NBS_ODSE..NBS_configuration WHERE config_key = 'PSDATA_DEFAULT_AGENCY')  as agencyID,
				--Comes FROM the partner
				SUBSTRING(COALESCE (NBS_DOCUMENT.SENDING_APP_PATIENT_ID, ENTITY_ID.ROOT_EXTENSION_TXT, person.local_id),1,32) AS localClientId,
				NBS_DOCUMENT.SENDING_APP_PATIENT_ID AS clientIdSTDMIS,
				ENTITY_ID.ROOT_EXTENSION_TXT AS clientIdPSID,
				person.local_id AS clientIdLocalId,
				--From investigation, if not FROM the contact record
				(SELECT CASE WHEN person2.person_uid is not null then person2.first_nm
				ELSE person.first_nm END) as clientFirstName,
				(SELECT CASE WHEN person2.person_uid is not null then person2.last_nm
				ELSE person.last_nm END) as clientLastName,
				(SELECT CASE WHEN person2.person_uid is not null then person2.birth_time
				ELSE person.birth_time END) as clientDOB,
				--This comes FROM the index's investigation
				SUBSTRING(COALESCE(NBS_DOCUMENT.SENDING_APP_EVENT_ID,NULLIF(ACT_ID.ROOT_EXTENSION_TXT,''),phc.local_id),1,32)  AS caseNumberPS,
				'' AS caseNumberEarliestPS,
				NBS_DOCUMENT.SENDING_APP_EVENT_ID AS caseNumberSTDMIS,
				NULLIF(ACT_ID.ROOT_EXTENSION_TXT,'') AS caseNumberLegacyId,
				phc.local_id AS caseNumberLocalId,
				--From contact record linking index to partner
				person.last_chg_time AS partnerDateDemographicsCollected,
				dbo.AnswerFromToCode(CT_CONTACT.CONTACT_REFERRAL_BASIS_CD,'CON144') as partnerType,--FROM contact record
				--From partner investigation
				dbo.AnswerFromToCode(cm.pat_intv_status_cd,'NBS192') as attemptToLocateOutcome,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS276,'NBS276') as reasonForUnsuccessfulAttempt,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS257,'NBS257') AS enrollmentStatus,
				dbo.AnswerFromToCode(cm.INIT_FOLL_UP_NOTIFIABLE,'NBS143') AS partnerNotifiability,
				dbo.AnswerFromToCode(cm.ACT_REF_TYPE_CD,'NBS177') as actualNotificationMethod,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS254,'NBS254') as previousHivTestValueCode,
				dbo.AnswerFromToCode(caseAnswerPivoted.STD106,'STD106') as previousHIVTestResult,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS262,'NBS262') as HIVTestPerformed,
				caseAnswerPivoted.NBS450 as sampleDate,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS263,'NBS263') as HIVTestResult,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS265,'NBS265') as provisionOfResultValueCode,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS447,'NBS447') as syphilisTest,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS448,'NBS448') as syphilisTestResult,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS267,'NBS267') as currentHIVMedicalCareStatus,
				caseAnswerPivoted.NBS302 as firstMedicalCareAppointmentDate,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS443,'NBS443') as currentlyOnPrEP,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS446,'NBS446') as referredToPrEP,
				ct_contact.local_id as crLocalId,
				phc2.local_id as invLocalID,
				(SELECT CASE WHEN person2.person_uid is not null then person2.add_time
				ELSE person.add_time END) as patientAddTime,

				(SELECT CASE WHEN person2.person_uid is not null then person2.last_chg_time
				ELSE person.last_chg_time END) as patientLastChgTime,

				(SELECT CASE WHEN person2.person_uid is not null then person2.record_status_cd
				ELSE person.record_status_cd END) as patientStatusCd,

				phc2.add_time as invAddtime,
				phc2.last_chg_time as invLastChgTime,
				phc2.record_status_cd as invStatusCd,
				ct_contact.add_time as crAddTime,
				ct_contact.last_chg_time as crLastChgTime,
				ct_contact.record_status_cd as crStatusCd,
				'' as partnerLastChgDt
				 FROM 
				 dbo.psf_index INNER JOIN NBS_ODSE..public_health_case phc on caseNumberLocalId = phc.local_id
				 LEFT JOIN NBS_ODSE..ct_contact  on ct_contact.subject_entity_phc_uid = phc.public_health_case_uid
				 --person coming FROM the contact record
				 LEFT JOIN NBS_ODSE..person on ct_contact.contact_entity_uid = person.person_uid and person.cd = 'PAT'
				 --person coming FROM the partner investigation
				 LEFT JOIN NBS_ODSE..public_health_case phc2 on phc2.public_health_case_uid = contact_entity_phc_uid
				  LEFT JOIN (SELECT act_uid, subject_entity_uid FROM NBS_ODSE..participation WHERE  participation.type_cd = 'SubjOfPHC') part on part.act_uid = phc2.public_health_case_uid
				  
				 LEFT JOIN NBS_ODSE..person person2 on person2.person_uid = part.subject_entity_uid
				 LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = ct_contact.subject_entity_phc_uid
				 LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
				 LEFT JOIN NBS_ODSE.dbo.Act_id ON ct_contact.subject_entity_phc_uid = Act_id.act_uid AND Act_id.type_cd = 'LEGACY' 
				 
				 LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
				 LEFT JOIN NBS_ODSE.dbo.case_management cm ON cm.public_health_case_uid = phc2.public_health_case_uid
				-- LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer ON caseAnswer.act_uid=phc2.public_health_case_uid AND caseAnswer.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS276')
				-- LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer2 ON caseAnswer2.act_uid=phc2.public_health_case_uid AND caseAnswer2.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS257')
				-- LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer3 ON caseAnswer3.act_uid=phc2.public_health_case_uid AND caseAnswer3.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS254')
				--LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer4 ON caseAnswer4.act_uid=phc2.public_health_case_uid AND caseAnswer4.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD106')
				--LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer5 ON caseAnswer5.act_uid=phc2.public_health_case_uid AND caseAnswer5.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS262')

				--LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer7 ON caseAnswer7.act_uid=phc2.public_health_case_uid AND caseAnswer7.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS263')
				--LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer8 ON caseAnswer8.act_uid=phc2.public_health_case_uid AND caseAnswer8.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS265')
				--LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer9 ON caseAnswer9.act_uid=phc2.public_health_case_uid AND caseAnswer9.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS447')
				--LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer10 ON caseAnswer10.act_uid=phc2.public_health_case_uid AND caseAnswer10.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS448')
				--LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer11 ON caseAnswer11.act_uid=phc2.public_health_case_uid AND caseAnswer11.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS267')

				--LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer13 ON caseAnswer13.act_uid=phc2.public_health_case_uid AND caseAnswer13.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS443')
				--LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer14 ON caseAnswer14.act_uid=phc2.public_health_case_uid AND caseAnswer14.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS446')
				
				LEFT JOIN (
							 select   act_uid, [NBS276] ,
							 [NBS257],[NBS254],[STD106],[NBS262],[NBS263],[NBS265],[NBS447],[NBS448],[NBS267],[NBS443],[NBS446],[NBS302],[NBS450]
						from (SELECT 
							Question_identifier
							,answer_txt
							,act_uid
						FROM [NBS_ODSE].[dbo].[NBS_case_answer]   inner join nbs_Odse.[dbo].nbs_question  on
						NBS_case_answer.nbs_question_uid = nbs_question.nbs_question_uid)
						ANSWERS
						pivot (max(answer_txt) for Question_identifier in ([NBS276] ,
							 [NBS257],[NBS254],[STD106],[NBS262],[NBS263],[NBS265],[NBS447],[NBS448],[NBS267],[NBS443],[NBS446],[NBS302],[NBS450])) 
						as question_identifier 
						)caseAnswerPivoted on caseAnswerPivoted.act_uid = phc2.public_health_case_uid
				
				--LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer12 ON caseAnswer12.act_uid=phc2.public_health_case_uid AND caseAnswer12.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS302')
				--LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer6 ON caseAnswer6.act_uid=phc2.public_health_case_uid AND caseAnswer6.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS450')
				WHERE ct_contact.contact_referral_basis_cd IN ('P1', 'P2', 'P3')
				AND phc.cd IN ('900', '10560')
				AND (ct_contact.last_chg_time > @dateLastTimeRun OR phc2.last_chg_time > @dateLastTimeRun)
				--OOJ
				UNION
				SELECT distinct
				(SELECT config_value FROM NBS_ODSE..NBS_configuration WHERE config_key = 'PSDATA_DEFAULT_AGENCY')  as agencyID,
				--Comes FROM the partner
				SUBSTRING(COALESCE (NBS_DOCUMENT.SENDING_APP_PATIENT_ID, ENTITY_ID.ROOT_EXTENSION_TXT, person.local_id),1,32) AS localClientId,
				NBS_DOCUMENT.SENDING_APP_PATIENT_ID AS clientIdSTDMIS,
				ENTITY_ID.ROOT_EXTENSION_TXT AS clientIdPSID,
				person.local_id AS clientIdLocalId,
				--From investigation, if not FROM the contact record
				 person.first_nm as clientFirstName,
				 person.last_nm as clientLastName,
				person.birth_time as clientDOB,
				--This comes FROM the index's investigation
				CONCAT('OOJ',phc.local_id ) AS caseNumberPS,
				'' AS caseNumberEarliestPS,
				'' AS caseNumberSTDMIS,
				'' AS caseNumberLegacyId,
				'' AS caseNumberLocalId,
				--From contact record linking index to partner
				person.last_chg_time AS partnerDateDemographicsCollected,
				--dbo.AnswerFromToCode(CT_CONTACT.CONTACT_REFERRAL_BASIS_CD,'CON144') as partnerType,--FROM contact record
				dbo.AnswerFromToCode(nbsCaseAnswerOOJ.answer_txt,'NBS270') as partnerType,
				--From partner investigation
				dbo.AnswerFromToCode(cm.pat_intv_status_cd,'NBS192') as attemptToLocateOutcome,				
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS276,'NBS276') as reasonForUnsuccessfulAttempt,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS257,'NBS257') AS enrollmentStatus,
				dbo.AnswerFromToCode(cm.INIT_FOLL_UP_NOTIFIABLE,'NBS143') AS partnerNotifiability,
				dbo.AnswerFromToCode(cm.ACT_REF_TYPE_CD,'NBS177') as actualNotificationMethod,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS254,'NBS254') as previousHivTestValueCode,
				dbo.AnswerFromToCode(caseAnswerPivoted.STD106,'STD106') as previousHIVTestResult,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS262,'NBS262') as HIVTestPerformed,
				caseAnswerPivoted.NBS450 as sampleDate,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS263,'NBS263') as HIVTestResult,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS265,'NBS265') as provisionOfResultValueCode,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS447,'NBS447') as syphilisTest,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS448,'NBS448') as syphilisTestResult,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS267,'NBS267') as currentHIVMedicalCareStatus,
				caseAnswerPivoted.NBS302 as firstMedicalCareAppointmentDate,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS443,'NBS443') as currentlyOnPrEP,
				dbo.AnswerFromToCode(caseAnswerPivoted.NBS446,'NBS446') as referredToPrEP,
				
				
				NULL as crLocalId,
				phc.local_id as invLocalID,
				person.add_time as patientAddTime,
				person.last_chg_time as patientLastChgTime,
				person.record_status_cd as patientStatusCd,
				phc.add_time as invAddtime,
				phc.last_chg_time as invLastChgTime,
				phc.record_status_cd as invStatusCd,
				NULL as crAddTime,
				NULL as crLastChgTime,
				NULL as crStatusCd,
				'' as partnerLastChgDt
				 FROM 
				 nbs_odse..public_health_case phc INNER JOIN NBS_ODSE..participation ON  public_health_case_uid = act_uid INNER JOIN NBS_ODSE..person ON subject_entity_uid = person_uid AND person.cd = 'PAT'
				inner join NBS_ODSE..nbs_case_answer nbsCaseAnswerOOJ ON public_health_case_uid = nbsCaseAnswerOOJ.act_uid and  nbs_question_uid in
				(select nbs_question_uid from NBS_ODSE..nbs_question where question_identifier = 'NBS270')
				 LEFT JOIN NBS_ODSE.dbo.EDX_event_process ON EDX_event_process.nbs_event_uid = phc.public_health_case_uid
				 LEFT JOIN NBS_ODSE.dbo.NBS_document ON EDX_event_process.nbs_document_uid = NBS_document.nbs_document_uid
				 LEFT JOIN NBS_ODSE.dbo.Act_id ON phc.public_health_case_uid = Act_id.act_uid AND Act_id.type_cd = 'LEGACY' 
				 LEFT JOIN NBS_ODSE.dbo.entity_id ON entity_id.entity_uid = person.person_parent_uid AND entity_id.type_cd = 'PSID' AND entity_id.record_status_cd = 'ACTIVE'
				 LEFT JOIN NBS_ODSE.dbo.case_management cm ON cm.public_health_case_uid = phc.public_health_case_uid
				
				
				LEFT JOIN (
							 select   act_uid, [NBS276] ,
							 [NBS257],[NBS254],[STD106],[NBS262],[NBS263],[NBS265],[NBS447],[NBS448],[NBS267],[NBS443],[NBS446],[NBS302],[NBS450]
						from (SELECT 
							Question_identifier
							,answer_txt
							,act_uid
						FROM [NBS_ODSE].[dbo].[NBS_case_answer]   inner join nbs_Odse.[dbo].nbs_question  on
						NBS_case_answer.nbs_question_uid = nbs_question.nbs_question_uid)
						ANSWERS
						pivot (max(answer_txt) for Question_identifier in ([NBS276] ,
							 [NBS257],[NBS254],[STD106],[NBS262],[NBS263],[NBS265],[NBS447],[NBS448],[NBS267],[NBS443],[NBS446],[NBS302],[NBS450])) 
						as question_identifier 
						)caseAnswerPivoted on caseAnswerPivoted.act_uid = phc.public_health_case_uid
						
						
				
				/* LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer ON caseAnswer.act_uid=phc.public_health_case_uid AND caseAnswer.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS276')
				 LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer2 ON caseAnswer2.act_uid=phc.public_health_case_uid AND caseAnswer2.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS257')
				 LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer3 ON caseAnswer3.act_uid=phc.public_health_case_uid AND caseAnswer3.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS254')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer4 ON caseAnswer4.act_uid=phc.public_health_case_uid AND caseAnswer4.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'STD106')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer5 ON caseAnswer5.act_uid=phc.public_health_case_uid AND caseAnswer5.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS262')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer6 ON caseAnswer6.act_uid=phc.public_health_case_uid AND caseAnswer6.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS450')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer7 ON caseAnswer7.act_uid=phc.public_health_case_uid AND caseAnswer7.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS263')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer8 ON caseAnswer8.act_uid=phc.public_health_case_uid AND caseAnswer8.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS265')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer9 ON caseAnswer9.act_uid=phc.public_health_case_uid AND caseAnswer9.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS447')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer10 ON caseAnswer10.act_uid=phc.public_health_case_uid AND caseAnswer10.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS448')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer11 ON caseAnswer11.act_uid=phc.public_health_case_uid AND caseAnswer11.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS267')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer12 ON caseAnswer12.act_uid=phc.public_health_case_uid AND caseAnswer12.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS302')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer13 ON caseAnswer13.act_uid=phc.public_health_case_uid AND caseAnswer13.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS443')
				LEFT JOIN NBS_ODSE.dbo.nbs_case_answer caseAnswer14 ON caseAnswer14.act_uid=phc.public_health_case_uid AND caseAnswer14.nbs_question_uid IN (SELECT nbs_question_uid FROM NBS_ODSE.dbo.nbs_question WHERE question_identifier = 'NBS446')
				*/
				
				
				
				
				
				WHERE nbsCaseAnswerOOJ.answer_txt IN ('P1','P2','P3')
				AND phc.cd IN ('900', '10560')
				AND (phc.last_chg_time > @dateLastTimeRun);


				--The following query will update the new column caseNumberEarliestPS with the earliest HIV investigation local id (min invAddTime) for the same patient.
				--It will match psf_index with psf_partner using caseNumberPSand it will set caseNumberEarliestPS from psf_index in psf_partner
				 UPDATE psf_partner SET caseNumberEarliestPS = indexEarliest.caseNumberEarliestPS
				 FROM psf_partner INNER JOIN
				 (SELECT psf_partner.caseNumberPS, psf_index.caseNumberEarliestPS FROM psf_partner INNER JOIN psf_index ON 
				 psf_index.caseNumberPS = psf_partner.caseNumberPS) indexEarliest
				 ON indexEarliest.caseNumberPS = psf_partner.caseNumberPS
				
				-- For Partner OOJ, caseNumberEarliestPS should be OOJ
				
				UPDATE PSF_PARTNER SET caseNumberEarliestPS = caseNumberPS WHERE caseNumberPS like 'OOJ%';
				
				--ND-17981: update partnerLastChdDt with the max value between invLastChgTime, crLastChgTime and patientLastChgTime
				
				UPDATE PSF_PARTNER SET partnerLastChgDt = invLastChgTime WHERE (invLastChgTime>crLastChgTime OR (crLastChgTime IS NULL AND invLastChgTime IS NOT NULL));
				UPDATE PSF_PARTNER SET partnerLastChgDt = crLastChgTime WHERE (crLastChgTime>invLastChgTime OR (invLastChgTime IS NULL AND crLastChgTime IS NOT NULL));
				UPDATE PSF_PARTNER SET partnerLastChgDt = patientLastChgTime WHERE (patientLastChgTime>partnerLastChgDt OR (partnerLastChgDt IS NULL AND patientLastChgTime IS NOT NULL));
				SELECT invLastChgTime, crLastChgTime, patientLastChgTime, partnerLastChgDt FROM psf_partner;

				SET @numberOfRecordsAfter = (SELECT COUNT(*) FROM PSF_PARTNER);
				
				SET @numberOfRecords = @numberOfRecordsAfter - @numberOfRecords;
				SET @successFailurePartner = 'Success';
				  
			END TRY
			
			BEGIN CATCH
				
				SET @successFailurePartner = 'Failure';
				SET @successMessagePartner = 'Exception while inserting from PSF_PARTNER table: '+ERROR_MESSAGE();
						SET @errorContinue = 'false';

			END CATCH;
					
					
			IF(@successFailurePartner = 'Success')
			BEGIN
				SET @successMessagePartner = CAST(@numberOfRecords AS VARCHAR(20))+' new records inserted in PSF_PARTNER ('+@incrementalOrFull+' refresh)';
			END
						
			SET @partnerInsertEnds=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='after inserting in psf_partner '+@partnerInsertEnds;
			print  @message;
			
		END
		
		 ----------------------------------RESOLVING REPEATED RECORDS IN PSF_CLIENT----------------------------------
		 --In case after populating the table in incremental mode a repeated client is added to the psf_client,
		 --we delete it FROM the psf_client the oldest one:
		 
		 PRINT '--------------------Removing repeating records in psf_client---------------------------';
		IF(@errorContinue = 'true')
		BEGIN
			DECLARE @countClient2 BIGINT, @indClient BIGINT, @localClientId VARCHAR(20), @clientUid VARCHAR(20),
			@clientRepeated VARCHAR(20), @time1 DATETIME, @time2Repeated DATETIME, @countClients BIGINT, @indexClient BIGINT;

			SET @indClient =1;
			
			SET @countClient2 = (SELECT COUNT(*) FROM dbo.psf_client);

			WHILE(@indClient<=@countClient2)
			BEGIN


				SET @localClientId = (SELECT clientIdLocalId FROM (SELECT top 1 clientIdLocalId,clientUid FROM (SELECT top (@indClient) * FROM dbo.PSF_CLIENT  order BY clientIdLocalId asc) clients ORDER BY clientIdLocalId DESC)aa);
				SET @clientUid = (SELECT clientUid FROM (SELECT top 1 clientIdLocalId,clientUid FROM (SELECT top (@indClient) * FROM dbo.PSF_CLIENT  order BY clientIdLocalId asc) clients ORDER BY clientIdLocalId DESC)bb);
				SET @countClients= (SELECT count(*) FROM dbo.psf_client WHERE clientIdLocalId = @localClientId AND clientUid <>  @clientUid);

				SET @indexClient = 1;
				while(@indexClient <= @countClients)

				BEGIN

							SET @clientRepeated= (SELECT clientUId FROM(SELECT top 1 clientUId FROM (SELECT top (@indexClient) * FROM dbo.psf_client WHERE clientIdLocalId = @localClientId AND clientUid <>  @clientUid order by 1 asc)clients2
							order by 1 desc)aa );


							IF(@clientRepeated IS NOT NULL)
							BEGIN

								SET @time1=(SELECT patientLastChgTime FROM dbo.psf_client WHERE clientIdLocalId = @localClientId AND clientUid =  @clientUid);
								SET @time2Repeated =(SELECT patientLastChgTime FROM dbo.psf_client WHERE clientIdLocalId = @localClientId AND clientUid =  @clientRepeated);

								IF (@time2Repeated > @time1)
								BEGIN
								  print 'to be deleted';
								  print @clientUid;
								DELETE FROM dbo.PSF_CLIENT WHERE clientIdLocalId = @localClientId AND clientUid =  @clientUid
								END
								ELSE
								BEGIN
								 print 'to be deleted';
								  print @clientRepeated;
								DELETE FROM dbo.PSF_CLIENT WHERE clientIdLocalId = @localClientId AND clientUid =  @clientRepeated
								END
							END
							--ELSE
							--	BEGIN
							--	SET @indClient=@indClient+1;
							--	END

						SET @indexClient = @indexClient+1;
					
				END 

				SET @indClient=@indClient+1;


			END
			 

			 
			SET @currentDate=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='before updating indexlastchgdt '+@currentDate;
			PRINT  @message;
		 END
		-------------------------------------------------------------------------------------------------------------
		IF(@errorContinue = 'true')
		BEGIN
			
			--UPDATE PSF_INDEX.indexLastChgDt

			--Update the PSF_INDEX with the max last updated date between psf_session AND psf_index per each investigationLocalId
			PRINT '-----------------------UPDATE PSF_INDEX.indexLastChgDt WITH PSF_SESSION----------------------------';

			UPDATE PSF_INDEX SET indexLastChgDt = dates.indexLastChgDt FROM PSF_INDEX AS index_
			INNER JOIN (SELECT caseNumberLocalId, MAX(indexLastChgDt) AS indexLastChgDt FROM (
			SELECT psf_index.caseNumberLocalId, 
			CASE WHEN irLastChgTime > invLastChgTime
			THEN irLastChgTime
			ELSE invLastChgTime
			END AS indexLastChgDt FROM psf_index LEFT JOIN psf_session ON
			psf_index.caseNumberLocalId = psf_session.caseNumberLocalId) aa
			GROUP BY caseNumberLocalId) dates
			ON dates.caseNumberLocalId = index_.caseNumberLocalId;


			PRINT '-----------------------UPDATE PSF_INDEX.indexLastChgDt WITH PSF_CLIENT----------------------------';

			--On meeting 08/27/2018 it was decided to link PSF_CLIENT AND PSF_INDEX through PSF_SESSION.clientIdLocalId
/*
			UPDATE PSF_INDEX SET indexLastChgDt = dates.indexLastChgDt FROM PSF_INDEX AS index_
			INNER JOIN (SELECT caseNumberLocalId, MAX(indexLastChgDt) AS indexLastChgDt FROM (
			SELECT psf_index.caseNumberLocalId, 
			CASE WHEN clientDates.lastModifiedDate > PSF_INDEX.indexLastChgDt
			THEN clientDates.lastModifiedDate
			ELSE PSF_INDEX.indexLastChgDt
			END AS indexLastChgDt FROM psf_index LEFT JOIN (
			 SELECT MAX(PSF_CLIENT.lastModifiedDate) AS lastModifiedDate, PSF_SESSION.caseNumberLocalId FROM PSF_CLIENT INNER JOIN PSF_SESSION ON PSF_SESSION.clientIdLocalId = PSF_CLIENT.clientIdLocalID
			 group by PSF_SESSION.caseNumberLocalId
			 )clientDates ON
			psf_index.caseNumberLocalId = clientDates.caseNumberLocalId) aa
			GROUP BY caseNumberLocalId) dates
			ON dates.caseNumberLocalId = index_.caseNumberLocalId;
*/
			PRINT '-----------------------UPDATE PSF_INDEX.indexLastChgDt WITH PSF_RISK----------------------------';

			UPDATE PSF_INDEX SET indexLastChgDt = dates.indexLastChgDt FROM PSF_INDEX AS index_
			INNER JOIN (SELECT caseNumberLocalId, MAX(indexLastChgDt) AS indexLastChgDt FROM (
			SELECT psf_index.caseNumberLocalId, 
			CASE WHEN psf_risk.invLastChgTime > psf_index.indexLastChgDt
			THEN psf_risk.invLastChgTime
			ELSE psf_index.indexLastChgDt
			END AS indexLastChgDt FROM psf_index LEFT JOIN psf_risk ON
			psf_index.caseNumberLocalId = psf_risk.invLocalId) aa
			GROUP BY caseNumberLocalId) dates
			ON dates.caseNumberLocalId = index_.caseNumberLocalId;


			PRINT '-----------------------UPDATE PSF_INDEX.indexLastChgDt WITH PSF_PARTNER----------------------------';

			UPDATE PSF_INDEX SET indexLastChgDt = dates.indexLastChgDt FROM PSF_INDEX AS index_
			INNER JOIN (SELECT caseNumberLocalId, MAX(indexLastChgDt) AS indexLastChgDt FROM (
			SELECT psf_index.caseNumberLocalId, 
			CASE WHEN PSF_PARTNER.invLastChgTime > psf_index.indexLastChgDt
			THEN PSF_PARTNER.invLastChgTime
			ELSE psf_index.indexLastChgDt
			END AS indexLastChgDt FROM psf_index LEFT JOIN PSF_PARTNER ON
			psf_index.caseNumberLocalId = PSF_PARTNER.caseNumberLocalId) aa
			GROUP BY caseNumberLocalId) dates
			ON dates.caseNumberLocalId = index_.caseNumberLocalId;

			UPDATE PSF_INDEX SET indexLastChgDt = dates.indexLastChgDt FROM PSF_INDEX AS index_
			INNER JOIN (SELECT caseNumberLocalId, MAX(indexLastChgDt) AS indexLastChgDt FROM (
			SELECT psf_index.caseNumberLocalId, 
			CASE WHEN PSF_PARTNER.crLastChgTime > psf_index.indexLastChgDt
			THEN PSF_PARTNER.crLastChgTime
			ELSE psf_index.indexLastChgDt
			END AS indexLastChgDt FROM psf_index LEFT JOIN PSF_PARTNER ON
			psf_index.caseNumberLocalId = PSF_PARTNER.caseNumberLocalId) aa
			GROUP BY caseNumberLocalId) dates
			ON dates.caseNumberLocalId = index_.caseNumberLocalId;

			SET @currentDate=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
			SET @message='before logging '+@currentDate;
			PRINT  @message;
		END
			
			COMMIT TRANSACTION;
			END TRY
			BEGIN CATCH

				PRINT 'Exception during execution.';
				PRINT 'Inserting in the MsgOut_activity_log table';

				SET @successFailure = 'Failure';
				
						
				SET @storedProcEnds=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
				SET @message='Stored proc ends at '+@storedProcEnds;
				PRINT  @message;
		
				ROLLBACK TRANSACTION;
			
					INSERT INTO MsgOut_activity_log values ('PSF TABLES', null, 'Active', @actualDate, 
					@successFailure,ERROR_MESSAGE(),'Populate PSF Tables ('+@incrementalOrFull+' refresh)', '10000000', @actualDate, @storedProcStarts, @storedProcEnds);
					SET @errorContinue = 'false';
					
					
					
					

					 
			
			
			END CATCH;


			IF (@successFailure='Success')
				BEGIN
				--Inserting in the MsgOut_activity_log table
				PRINT 'Inserting in the MsgOut_activity_log table';

						
				SET @storedProcEnds=(SELECT CONVERT(CHAR(24), GETDATE(), 121));
				SET @message='Stored proc ends at '+@storedProcEnds;
				PRINT  @message;
			
			
				IF (@successFailureDeleteSession='Failure' OR  @successFailureSession='Failure' OR
					@successFailureDeleteIndex='Failure' OR  @successFailureIndex='Failure' OR
					@successFailureDeletePartner='Failure' OR  @successFailurePartner='Failure' OR
					@successFailureDeleteClient='Failure' OR  @successFailureClient='Failure' OR
					@successFailureDeleteRisk='Failure' OR  @successFailureRisk='Failure')
					
					INSERT INTO MsgOut_activity_log values ('PSF TABLES', null, 'Active', @actualDate, 
					'Failure','Please, see the msgout_activity_log_detail table for more details','Populate PSF Tables ('+@incrementalOrFull+' refresh)', '10000000', @actualDate, @storedProcStarts, @storedProcEnds);
					
				ELSE
				
					INSERT INTO MsgOut_activity_log values ('PSF TABLES', null, 'Active', @actualDate, 
					 @successFailure,'','Populate PSF Tables ('+@incrementalOrFull+' refresh)', '10000000', @actualDate, @storedProcStarts, @storedProcEnds);
			END
		
		------------------------------ Exception logging in MsgOut_activity_log_detail table ---------------------------------------
		--Logging in MsgOut_activity_log_detail success/Failure on deleting PSF_SESSION
		
		SET @maxActivityLogUid = (SELECT MAX(activity_log_uid) from MsgOut_activity_log);
		
		
		IF(@successFailureDeleteSession<>'')
				INSERT INTO  MsgOut_activity_log_detail values
				(@maxActivityLogUid, NULL, 'PSF_SESSION', 'PopulatePSFTables',@successFailureDeleteSession, @successMessageDeleteSession, @sessionDeleteStarts, @sessionDeleteEnds);
		
			
			
		--Logging in MsgOut_activity_log_detail success/Failure on deleting PSF_INDEX
		
		IF(@successFailureDeleteIndex<>'')
				INSERT INTO  MsgOut_activity_log_detail values
				(@maxActivityLogUid, NULL, 'PSF_INDEX', 'PopulatePSFTables',@successFailureDeleteIndex, @successMessageDeleteIndex, @indexDeleteStarts, @indexDeleteEnds);
		
				
				
		--Logging in MsgOut_activity_log_detail success/Failure on deleting PSF_CLIENT
		IF(@successFailureDeleteClient<>'')
				INSERT INTO  MsgOut_activity_log_detail values
				(@maxActivityLogUid, NULL, 'PSF_CLIENT', 'PopulatePSFTables',@successFailureDeleteClient, @successMessageDeleteClient, @clientDeleteStarts, @clientDeleteEnds);
		
				
					
		--Logging in MsgOut_activity_log_detail success/Failure on deleting PSF_RISK				
		IF(@successFailureDeleteRisk<>'')
				INSERT INTO  MsgOut_activity_log_detail values
				(@maxActivityLogUid, NULL, 'PSF_RISK', 'PopulatePSFTables',@successFailureDeleteRisk, @successMessageDeleteRisk, @riskDeleteStarts, @riskDeleteEnds);
		
				
					
		--Logging in MsgOut_activity_log_detail success/Failure on deleting PSF_PARTNER
		IF(@successFailureDeletePartner<>'')
				INSERT INTO  MsgOut_activity_log_detail values
				(@maxActivityLogUid, NULL, 'PSF_PARTNER', 'PopulatePSFTables',@successFailureDeletePartner, @successMessageDeletePartner, @partnerDeleteStarts, @partnerDeleteEnds);
		
			
		-----Logging in MsgOut_activity_log_detail success/Failure on inserts
		
		
		IF(@successFailureSession<>'')
			INSERT INTO  MsgOut_activity_log_detail values
			(@maxActivityLogUid, NULL, 'PSF_SESSION', 'PopulatePSFTables',@successFailureSession, @successMessageSession, @sessionInsertStarts, @sessionInsertEnds);
	
		IF(@successFailureIndex<>'')
			INSERT INTO  MsgOut_activity_log_detail values
			(@maxActivityLogUid, NULL, 'PSF_INDEX', 'PopulatePSFTables',@successFailureIndex, @successMessageIndex, @indexInsertStarts, @indexInsertEnds);
	
		IF(@successFailureClient<>'')
			INSERT INTO  MsgOut_activity_log_detail values
			(@maxActivityLogUid, NULL, 'PSF_CLIENT', 'PopulatePSFTables',@successFailureClient, @successMessageClient, @clientInsertStarts, @clientInsertEnds);
	
		IF(@successFailureRisk<>'')
			INSERT INTO  MsgOut_activity_log_detail values
			(@maxActivityLogUid, NULL, 'PSF_RISK', 'PopulatePSFTables',@successFailureRisk, @successMessageRisk, @riskInsertStarts, @riskInsertEnds);
	
		IF(@successFailurePartner<>'')
			INSERT INTO  MsgOut_activity_log_detail values
			(@maxActivityLogUid, NULL, 'PSF_PARTNER', 'PopulatePSFTables',@successFailurePartner, @successMessagePartner, @partnerInsertStarts, @partnerInsertEnds);
			
			
	
	IF (@successFailureDeleteSession='Failure' OR  @successFailureSession='Failure' OR
					@successFailureDeleteIndex='Failure' OR  @successFailureIndex='Failure' OR
					@successFailureDeletePartner='Failure' OR  @successFailurePartner='Failure' OR
					@successFailureDeleteClient='Failure' OR  @successFailureClient='Failure' OR
					@successFailureDeleteRisk='Failure' OR  @successFailureRisk='Failure' OR @errorContinue='false')
					BEGIN
						RAISERROR ('Exception thrown from Stored procedure', 11,1);
						RETURN 0;
						END
	
	
END --Stored procedure

PRINT '-----------------------STORED PROC ENDS----------------------------';
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_NBS_INTERFACE_VAL]    Script Date: 6/1/2023 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UPDATE_NBS_INTERFACE_VAL]
AS 
BEGIN



	SELECT  DISTINCT  OBS.OBSERVATION_UID, 
			ACT_ID.ROOT_EXTENSION_TXT AS FILLER_ORDER_NBR,
			OBS.EFFECTIVE_FROM_TIME AS EFFECTIVE_FROM_TIME,
			EID.ROOT_EXTENSION_TXT AS LAB_CLIA,
			OBS.CD AS ORDERED_TEST_CD,
			EDX_ACTIVITY_LOG.SOURCE_UID AS NBS_INTERFACE_UID
	INTO NBS_MSGOUTE..#TEMPTABLE
	FROM    NBS_ODSE..OBSERVATION OBS
			INNER JOIN NBS_ODSE..ACT_ID ON ACT_ID.ACT_UID = OBS.OBSERVATION_UID
			INNER JOIN NBS_ODSE..PARTICIPATION PAR ON PAR.ACT_UID = OBS.OBSERVATION_UID
			INNER JOIN NBS_ODSE..ENTITY_ID EID ON EID.ENTITY_UID= PAR.SUBJECT_ENTITY_UID
			INNER JOIN NBS_ODSE..EDX_ACTIVITY_LOG ON EDX_ACTIVITY_LOG.TARGET_UID=OBS.OBSERVATION_UID
	WHERE  PAR.ACT_CLASS_CD = 'OBS'
			AND PAR.TYPE_CD = 'AUT'
			AND PAR.SUBJECT_CLASS_CD = 'ORG'
			AND EID.ASSIGNING_AUTHORITY_CD = 'CLIA'
			AND EID.TYPE_CD = 'FI'
			AND OBS.OBS_DOMAIN_CD_ST_1 = 'ORDER'
			AND OBS.ELECTRONIC_IND = 'Y'
			AND ACT_ID.TYPE_CD = 'FN'
	ORDER BY
		 OBS.OBSERVATION_UID DESC

--------------------

			UPDATE
				NBS_MSGOUTE..NBS_INTERFACE
			SET
				NBS_INTERFACE.OBSERVATION_UID = #TEMPTABLE.OBSERVATION_UID,
				NBS_INTERFACE.FILLER_ORDER_NBR = #TEMPTABLE.FILLER_ORDER_NBR,
				NBS_INTERFACE.LAB_CLIA = #TEMPTABLE.LAB_CLIA,
				NBS_INTERFACE.ORDER_TEST_CODE = #TEMPTABLE.ORDERED_TEST_CD,
				NBS_INTERFACE.SPECIMEN_COLL_DATE = #TEMPTABLE.EFFECTIVE_FROM_TIME  
			FROM
				NBS_MSGOUTE..NBS_INTERFACE
			INNER JOIN
				NBS_MSGOUTE..#TEMPTABLE
			ON 
				NBS_INTERFACE.NBS_INTERFACE_UID = #TEMPTABLE.NBS_INTERFACE_UID
			WHERE 			
				NBS_INTERFACE.RECORD_STATUS_CD in ('QUEUED', 'SUCCESS')
				AND NBS_INTERFACE.DOC_TYPE_CD ='11648804'
;
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdateObservationMatch_SP]    Script Date: 6/1/2023 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateObservationMatch_SP] 
@numberOfYears int
AS 
BEGIN

	IF OBJECT_ID('tempdb.dbo.#TEMPNBSINT_QUEUED', 'U') IS NOT NULL
	  DROP TABLE #TEMPNBSINT_QUEUED; 
	IF OBJECT_ID('tempdb.dbo.#TEMPNBSINT_PROCESSED', 'U') IS NOT NULL
	  DROP TABLE #TEMPNBSINT_PROCESSED; 


	SELECT 
		order_test_code, 
		filler_order_nbr, 
		lab_clia, 
		specimen_coll_date
	INTO NBS_MSGOUTE..#TEMPNBSINT_QUEUED
	FROM NBS_MSGOUTE..NBS_interface 
	WHERE record_status_cd='QUEUED';

	SELECT DISTINCT
		NBS_interface.order_test_code, 
		NBS_interface.filler_order_nbr, 
		NBS_interface.lab_clia, 
		NBS_interface.specimen_coll_date,
		NBS_interface.OBSERVATION_UID
		,NBS_interface.record_status_cd
	INTO NBS_MSGOUTE..#TEMPNBSINT_PROCESSED
	FROM NBS_MSGOUTE..NBS_interface 
	INNER JOIN NBS_MSGOUTE..#TEMPNBSINT_QUEUED
	ON 
	#TEMPNBSINT_QUEUED.order_test_code  =NBS_interface.order_test_code
	AND #TEMPNBSINT_QUEUED.filler_order_nbr = NBS_interface.filler_order_nbr
	AND #TEMPNBSINT_QUEUED.lab_clia =NBS_interface.lab_clia
	AND #TEMPNBSINT_QUEUED.specimen_coll_date= NBS_interface.specimen_coll_date
	WHERE NBS_interface.record_status_cd='SUCCESS' and 
	NBS_interface.record_status_time> DATEADD(year, -@numberOfYears, GETDATE());
	


	UPDATE
		NBS_MSGOUTE..NBS_INTERFACE
	SET
		 NBS_INTERFACE.OBSERVATION_UID =#TEMPNBSINT_PROCESSED.OBSERVATION_UID
	FROM
		NBS_MSGOUTE..#TEMPNBSINT_PROCESSED
	INNER JOIN
		NBS_MSGOUTE..NBS_INTERFACE
	ON 
		NBS_INTERFACE.FILLER_ORDER_NBR=#TEMPNBSINT_PROCESSED.FILLER_ORDER_NBR 
		and NBS_INTERFACE.LAB_CLIA=#TEMPNBSINT_PROCESSED.LAB_CLIA
		and NBS_INTERFACE.ORDER_TEST_CODE=#TEMPNBSINT_PROCESSED.order_test_code
		and NBS_INTERFACE.SPECIMEN_COLL_DATE=#TEMPNBSINT_PROCESSED.specimen_coll_date
	WHERE 			
		NBS_INTERFACE.RECORD_STATUS_CD in ('QUEUED')
		AND NBS_INTERFACE.DOC_TYPE_CD ='11648804';
END;

GO
/****** Object:  StoredProcedure [dbo].[UpdateSpecimenCollDate_SP]    Script Date: 6/1/2023 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateSpecimenCollDate_SP]
(
    @NBSInterfaceUid bigint,
    @specimentCollectionDate DATETIME

)  AS
BEGIN   
DECLARE @message varchar(1000); 
	begin try 
		UPDATE NBS_MSGOUTE.dbo.NBS_interface set specimen_coll_date=@specimentCollectionDate where nbs_interface_uid=@NBSInterfaceUid;
	end try
	begin catch
	SET @message='failed:'+ ERROR_MESSAGE();
	return;	
	end catch    
END 
GO
/****** Object:  UserDefinedFunction [dbo].[AnswerFromToCode]    Script Date: 6/1/2023 8:14:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[AnswerFromToCode] (@fromCode VARCHAR(100), @questionIdentifier VARCHAR(20))
RETURNS VARCHAR(250)
AS BEGIN
    DECLARE @toCode VARCHAR(250)
	SET @toCode = (SELECT ANS_TO_CODE from MSG_ANSWER_LOOKUP WHERE investigation_form_cd = 'GENERIC_PSF' AND QUESTION_IDENTIFIER = @questionIdentifier AND ans_from_code = @fromCode)
    
    RETURN @toCode
END


GO
/****** Object:  Table [dbo].[MSG_ANSWER]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MSG_ANSWER_LOOKUP]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MSG_CASE_INVESTIGATION]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MSG_CONTAINER]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MSG_INTERVIEW]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MSG_ORGANIZATION]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MSG_PATIENT]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MSG_PLACE]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MSG_PROVIDER]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MSG_QUESTION_LOOKUP]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MSG_TREATMENT]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MSG_XML_MAPPING]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MsgOut_activity_log]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MsgOut_activity_log_detail]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MsgOut_Error_log]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MsgOut_Local_UID_generator]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MsgOut_Message]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MsgOut_Receiving_facility]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MsgOut_Receiving_Message]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[MsgOut_Sending_facility]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[NBS_interface]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[NETSS_TransportQ_out]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[PSF_CLIENT]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[PSF_INDEX]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[PSF_PARTNER]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[PSF_RISK]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[PSF_SESSION]    Script Date: 6/1/2023 8:14:59 PM ******/
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
/****** Object:  Table [dbo].[TransportQ_out]    Script Date: 6/1/2023 8:14:59 PM ******/
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
SET ANSI_PADDING ON

GO
/****** Object:  Index [index_lookup_psf]    Script Date: 6/1/2023 8:14:59 PM ******/
CREATE NONCLUSTERED INDEX [index_lookup_psf] ON [dbo].[MSG_ANSWER_LOOKUP]
(
	[INVESTIGATION_FORM_CD] ASC,
	[QUESTION_IDENTIFIER] ASC,
	[ANS_FROM_CODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_MsgOut_Message_STATUS_CD]    Script Date: 6/1/2023 8:14:59 PM ******/
CREATE NONCLUSTERED INDEX [IDX_MsgOut_Message_STATUS_CD] ON [dbo].[MsgOut_Message]
(
	[status_cd] ASC
)
INCLUDE ( 	[message_uid],
	[msg_id_root_txt]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_NBS_INTERFACE_UPD_OBS]    Script Date: 6/1/2023 8:14:59 PM ******/
CREATE NONCLUSTERED INDEX [IDX_NBS_INTERFACE_UPD_OBS] ON [dbo].[NBS_interface]
(
	[filler_order_nbr] ASC,
	[lab_clia] ASC,
	[specimen_coll_date] ASC,
	[order_test_code] ASC,
	[record_status_time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_TransportQ_MSG_PID]    Script Date: 6/1/2023 8:14:59 PM ******/
CREATE NONCLUSTERED INDEX [IDX_TransportQ_MSG_PID] ON [dbo].[TransportQ_out]
(
	[messageId] ASC,
	[processingStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
USE [master]
GO
ALTER DATABASE [NBS_MSGOUTE] SET  READ_WRITE 
GO

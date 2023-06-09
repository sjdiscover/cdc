USE [master]
GO
/****** Object:  Database [NBS_SRTE]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE DATABASE [NBS_SRTE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'nbs_srte_generic113_Data', FILENAME = N'D:\rdsdbdata\DATA\NBS_SRTE.mdf' , SIZE = 80832KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'nbs_srte_generic113_Log', FILENAME = N'D:\rdsdbdata\DATA\NBS_SRTE.ldf' , SIZE = 1024KB , MAXSIZE = 307200KB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NBS_SRTE].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [NBS_SRTE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NBS_SRTE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NBS_SRTE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NBS_SRTE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NBS_SRTE] SET ARITHABORT OFF 
GO
ALTER DATABASE [NBS_SRTE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NBS_SRTE] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [NBS_SRTE] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [NBS_SRTE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NBS_SRTE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NBS_SRTE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NBS_SRTE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NBS_SRTE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NBS_SRTE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NBS_SRTE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NBS_SRTE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NBS_SRTE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NBS_SRTE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NBS_SRTE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NBS_SRTE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NBS_SRTE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NBS_SRTE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NBS_SRTE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NBS_SRTE] SET RECOVERY FULL 
GO
ALTER DATABASE [NBS_SRTE] SET  MULTI_USER 
GO
ALTER DATABASE [NBS_SRTE] SET PAGE_VERIFY TORN_PAGE_DETECTION  
GO
ALTER DATABASE [NBS_SRTE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NBS_SRTE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NBS_SRTE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [NBS_SRTE]
GO
/****** Object:  User [srte_admin]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE USER [srte_admin] FOR LOGIN [srte_admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nbs_rdb]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE USER [nbs_rdb] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nbs_ods]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE USER [nbs_ods] FOR LOGIN [nbs_ods] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [admin]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [srte_admin]
GO
ALTER ROLE [db_owner] ADD MEMBER [nbs_rdb]
GO
ALTER ROLE [db_owner] ADD MEMBER [nbs_ods]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
/****** Object:  StoredProcedure [dbo].[CDF_State_CNTY_sp]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--
-- New procedure 03/23/2004
-- modified 03/03/2010 to remove seq_num, assigning_authority_cd, assigning_authority_desc_txt from code_value_general 
CREATE procedure [dbo].[CDF_State_CNTY_sp]
@state_code varchar(20)
as
 declare
@v_code varchar(20), 
@v_code_desc_txt varchar(300), 
@v_code_short_desc_txt varchar(50), 
@v_nbs_uid int, 
@v_parent_is_cd varchar(25)
		
declare
   c_state_cd cursor
	for SELECT code, code_desc_txt, code_short_desc_txt,  parent_is_cd
		FROM   nbs_srte..State_county_code_value
		WHERE  	parent_is_cd = @state_code;
BEGIN
	Delete from nbs_srte..code_value_general where code_set_nm = 'STATE_CNTY';

   OPEN c_state_cd 
		FETCH next from  c_state_cd  INTO @v_code, @v_code_desc_txt, @v_code_short_desc_txt, @v_parent_is_cd
	 	WHILE @@FETCH_STATUS = 0
   begin
	Insert into nbs_srte..code_value_general(code_set_nm, code, code_desc_txt, code_short_desc_txt, nbs_uid, parent_is_cd)
	values ('STATE_CNTY', @v_code, @v_code_desc_txt, @v_code_short_desc_txt, 0, @v_parent_is_cd);
   
 	FETCH next from  c_state_cd  INTO @v_code, @v_code_desc_txt, @v_code_short_desc_txt,  @v_parent_is_cd
   end	
   	 CLOSE c_state_cd
	DEALLOCATE c_state_cd 
/*
begin
  exec   CDF_State_CNTY_sp '47'
end;
*/
end;

GO
/****** Object:  StoredProcedure [dbo].[CorrectCodesBeforeConversion]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[CorrectCodesBeforeConversion]
@pcondition_cd varchar(50)
as
begin
	BEGIN TRY
		
			
		if  @pcondition_cd = '10030'
		Begin
			
			begin transaction
			
			--- Update code_value_general to set effective_to_time for code_set_nm='PHVS_BODYREGIONOFRASH_VZ' AND code='PHC1'
			
			UPDATE NBS_SRTE.dbo.Code_value_general
			SET effective_to_time=GETDATE()
			WHERE code_set_nm='PHVS_BODYREGIONOFRASH_VZ' AND code='PHC1';
			
			/* ND-11714 Lab Section: IgG Test Type is being ported for both Acute and Convalescent block even when the later is not populated in Legacy page */
			
			UPDATE NBS_SRTE.dbo.Code_value_general
			SET effective_to_time=GETDATE()
			WHERE code_set_nm='PHVS_LABTESTINTERPRETATION_VZ' AND code='NI';
			
			commit transaction
			
		End
		
	END TRY	
	
	BEGIN CATCH
		SELECT ERROR_NUMBER() AS ErrorNumber
		 ,ERROR_SEVERITY() AS ErrorSeverity
		 ,ERROR_STATE() AS ErrorState
		 ,ERROR_PROCEDURE() AS ErrorProcedure
		 ,ERROR_LINE() AS ErrorLine
		 ,ERROR_MESSAGE() AS ErrorMessage
		 ROLLBACK TRANSACTION
	END CATCH			
	
end

GO
/****** Object:  StoredProcedure [dbo].[insertNewCondition_sp]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
/*
Description : 
    Use this procedure to add a new condition. A new row is inserted 
    into CONDITION_CODE and LDF_PAGE_SET tables. Note that the new condition added 
    appears under "Generic Investigation" in the LDF Administration 
    screen.
    
    1)  This stored procedure should be created in the nbs_srte database by 
        a DB Administrator (dbo permissions)

    2)  This procedure should be executed against the nbs_srte database by a 
        System Administrator who has dbo permissions.    

Tables affected : 
    SRT Tables : CONDITION_CODE,  LDF_PAGE_SET

Parameters : 
    (1) - Short description for the new condition
    (2) - Program area code for the new condition. - For a list of available 
          program areas codes, perform 
            SELECT program_area_cd  from nbs_srte.PROGRAM_AREA_CODE

Pre Execution:
	Prior to executing the stored procedure, the Weblogic Application Server service should be stopped.  Do not execute 	the stored procedure while users are connected to the NBS.

Usage : 

    begin
    	DECLARE @condition_short_nm varchar(50)
    	DECLARE @prog_area_cd varchar(20)
    	SELECT @condition_short_nm = 'Insert Condition Name'
    	SELECT @prog_area_cd = 'Insert Program Area Code, e.g., GCD'
    	EXEC  [nbs_srte].[dbo].[insertNewCondition_sp] @condition_short_nm, @prog_area_cd
    end ;


Post Execution:
	After the stored procedure has been executed and a new condition and ldf_page_set record have been added, the 		Weblogic Application Server service should be restarted.



*/


CREATE PROCEDURE [dbo].[insertNewCondition_sp]
	(
	 @condition_short_nm 	[varchar](50),
	 @prog_area_cd       	[varchar](20))

AS 

    declare
		@v_next_condition_cd int,
		@v_next_ldf_page_set_id int,
		@v_next_nbs_uid int,
		@v_parent_is_cd varchar(20),
		@v_next_display_row smallint,
                                 @v_today  datetime
    
    begin transaction
        select @v_next_condition_cd = MAX(CONVERT(int,condition_cd)) + 1
        from Condition_code
        WHERE  condition_cd < '999999'
        
        select @v_next_ldf_page_set_id = MAX(CONVERT(int, ldf_page_id)) + 1 
        FROM LDF_page_set
        
        select @v_next_nbs_uid = MAX(nbs_uid) + 1 
        FROM condition_code
        
        select @v_parent_is_cd = parent_is_cd 
        FROM LDF_page_set
        WHERE business_object_nm = 'PHC'  AND ui_display = 'Link'
              
        select @v_next_display_row = MAX(display_row) + 1
        FROM LDF_page_set
        WHERE business_object_nm = 'PHC'

        select @v_today = convert(datetime, (convert(varchar(12), getDate(), 101)))

        print '---- inserting new condition ---------------'
        print 'condition description: ' + @condition_short_nm 
        print 'program area : ' + @prog_area_cd
        print 'condition_code : ' + convert(varchar(10), @v_next_condition_cd )
        print 'nbs_uid        : ' + convert(varchar(10),@v_next_nbs_uid)
        print 'date        : ' + convert(varchar(12),@v_today,101)

   
        INSERT INTO [Condition_code] 
        	 ( 
        	 [condition_cd],
        	 [condition_codeset_nm],
        	 [condition_seq_num],
        	 [assigning_authority_cd],
        	 [assigning_authority_desc_txt],
        	 [code_system_cd],
        	 [code_system_desc_txt],
        	 [condition_desc_txt],
        	 [condition_short_nm],
        	 [effective_from_time],
        	 [effective_to_time],
        	 [indent_level_nbr],
        	 [investigation_form_cd],
        	 [is_modifiable_ind],
        	 [nbs_uid],
        	 [nnd_ind],
        	 [parent_is_cd],
        	 [prog_area_cd],
        	 [reportable_morbidity_ind],
        	 [reportable_summary_ind],
        	 [status_cd],
        	 [status_time])
        VALUES 
        	(     
        	 @v_next_condition_cd,
        	 'PHC_TYPE',
        	 1,
        	 '2.16.840.1.114222',
        	 'Centers for Disease Control',
        	 'NBS',
        	 'NEDSS Base System',
        	 @condition_short_nm,
        	 @condition_short_nm,
        	  @v_today,
        	 null,
        	 1,
        	 'INV_FORM_GEN',
        	 'N',
        	 @v_next_nbs_uid,
        	 'N',
        	 null,
        	 @prog_area_cd,
        	 'N',
        	 'N',
        	 'A',
        	 @v_today)
    

        print '---- inserting new ldf page set record ---------------'
        print 'ldf_page_set_id: ' + convert(varchar(10),@v_next_ldf_page_set_id)


        INSERT INTO.[LDF_page_set] 
        	 ( 
        	 [ldf_page_id],
        	 [business_object_nm],
        	 [condition_cd],
        	 [ui_display],
        	 [indent_level_nbr],
        	 [parent_is_cd],
        	 [code_set_nm],
        	 [seq_num],
        	 [code_version],
        	 [nbs_uid],
        	 [effective_from_time],
        	 [effective_to_time],
        	 [status_cd],
        	 [code_short_desc_txt],
        	 [display_row],
        	 [display_column]) 
         
        VALUES 
        	( 
        	 @v_next_ldf_page_set_id,
        	 'PHC',
        	 @v_next_condition_cd,
        	 'Link',
        	 2,
        	 @v_parent_is_cd,
        	 'LDF_PAGE_SET',
        	 1,
        	 1,
        	 @v_next_nbs_uid ,
        	 @v_today,
        	 null,
        	 'A',
        	 @condition_short_nm,
        	 @v_next_display_row,
        	 2)

    commit transaction
    print '---- done! ---------------'


GO
/****** Object:  StoredProcedure [dbo].[Labtest_Progarea_sp]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE     procedure [dbo].[Labtest_Progarea_sp]
@msg varchar(2000) OUTPUT
as

declare
	@count int
BEGIN TRAN
	set @count=0;
	Delete from Labtest_Progarea_Mapping;

         IF (@@ERROR <> 0) BEGIN
        PRINT 'FAILURE. Records cannot be deleted from Labtest_Progarea_Mapping!'
        ROLLBACK TRAN
        RETURN 1
    END
	-- oad by Loinc
	Insert into Labtest_Progarea_Mapping
	    SELECT distinct lt.lab_test_cd, lt.laboratory_id, lt.lab_test_desc_txt, lt.test_type_cd,
		cc.condition_cd, cc.CONDITION_SHORT_NM,   cc.condition_desc_txt,  cc.prog_area_cd,
		 pg.prog_area_desc_txt, lt.organism_result_test_ind, lt.indent_level_nbr
		FROM   	Lab_test lt, Labtest_loinc ll,
		loinc_code lc,  Loinc_condition ld,
		Condition_code cc, program_area_code pg
		WHERE  	lt.lab_test_cd =  ll.lab_test_cd
		AND  lt.laboratory_id =   ll.laboratory_id
		AND  ll.LOINC_CD = lc.LOINC_CD
		and  lc.LOINC_CD = ld.LOINC_CD
		AND  ld.CONDITION_CD =  cc.CONDITION_CD
		and  cc.PROG_AREA_CD = pg.PROG_AREA_CD
		and (lt.drug_test_ind is NULL or lt.drug_test_ind ='N');
		-- AND (lt.organism_result_test_ind is NULL or lt.organism_result_test_ind = 'N');
	-- load by  default condition code

 
	Insert into Labtest_Progarea_Mapping
		SELECT distinct lt.lab_test_cd, lt.laboratory_id, lt.lab_test_desc_txt, lt.test_type_cd,
		cc.condition_cd, cc.CONDITION_SHORT_NM,   cc.condition_desc_txt,  cc.prog_area_cd, pg.prog_area_desc_txt,
                          lt.organism_result_test_ind, lt.indent_level_nbr
		FROM   	Lab_test lt, Condition_code cc, program_area_code pg
		WHERE lt.DEFAULT_CONDITION_CD =  cc.CONDITION_CD
		and  cc.PROG_AREA_CD = pg.PROG_AREA_CD
		and (lt.drug_test_ind is NULL or lt.drug_test_ind ='N')
		--AND (lt.organism_result_test_ind is NULL or lt.organism_result_test_ind = 'N')
		and lt.lab_test_cd not in (
			select lp.lab_test_cd
				  from Labtest_Progarea_Mapping lp
				  where lp.laboratory_id = lt.LABORATORY_ID);
	-- load by  default programe_cd

	Insert into Labtest_Progarea_Mapping
		SELECT distinct lt.lab_test_cd, lt.laboratory_id, lt.lab_test_desc_txt, lt.test_type_cd,
		null condition_cd, null CONDITION_SHORT_NM,   null condition_desc_txt, lt.default_prog_area_cd,  pg.prog_area_desc_txt,
		 lt.organism_result_test_ind,  lt.indent_level_nbr
		FROM   	Lab_test lt,  program_area_code pg
		WHERE lt.default_prog_area_cd =  pg.PROG_AREA_CD
		and (lt.drug_test_ind is NULL or lt.drug_test_ind ='N')
		--AND (lt.organism_result_test_ind is NULL or lt.organism_result_test_ind = 'N')
		and lt.lab_test_cd not in (
			select lp.lab_test_cd
				  from Labtest_Progarea_Mapping lp
				  where lp.laboratory_id = lt.LABORATORY_ID); 
           IF (@@ERROR <> 0) BEGIN
        	PRINT 'FAILURE. Records cannot be inserted into Labtest_Progarea_Mapping!'
		select @msg = 'FAILURE!! Records cannot be inserted into Labtest_Progarea_Mapping|0';
	        ROLLBACK TRAN

	    END
COMMIT TRAN

	select @count = count(*) from Labtest_Progarea_Mapping;
	select @msg = 'SUCCESS|' + CAST(@count AS varchar(20));	





GO
/****** Object:  StoredProcedure [dbo].[P_NBS_GRANT_PERMISSIONS]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Codeset_update]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[usp_Codeset_update]
AS
/******************************************************************************
**      Name:	usp_Codeset_update
**      Desc:	This Store Proc update codeset table based on the Codeset_Group_Metadata table
**				
**      Author: Venkata Mannam
**      Date:	01/31/2008
*******************************************************************************
**      Change History
*******************************************************************************
**		Date:		Author:				Description:
**		--------	--------			---------------------------------------
**						
**		
*******************************************************************************/



PRINT 'Updating Codeset Table'



 UPDATE Codeset 
 SET codeset.code_set_group_id = (select code_set_group_id from Codeset_Group_Metadata
 where codeset.code_set_nm =Codeset_Group_Metadata.code_set_nm)


GO
/****** Object:  StoredProcedure [dbo].[usp_getLabCodingSystem]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_getLabCodingSystem] 
	   @laboratoryID varchar(50), @labcode varchar(50), @labcodeDescTxt varchar(250) OUTPUT, @labCdSysemCd varchar(50) OUTPUT, @labCdSystemDescTxt varchar(250) OUTPUT, @altLabcode varchar(50) OUTPUT, @altLabcodeDescTxt varchar(250) OUTPUT, @altLabCdSysemCd varchar(50) OUTPUT, @altLabCdSystemDescTxt varchar(250) OUTPUT, @descTxt varchar(250) OUTPUT
AS
BEGIN
	IF( @laboratoryID IS NULL
	  )
	-- IF @laboratoryID is not set use 'DEFAULT' as default value.
	BEGIN
		SET @laboratoryID = 'DEFAULT';
	END;
	-- Step 1: look up into Lab_test, labtest_loinc, loinc_code tables with lab code and labaratory ID

	SELECT @labCdSysemCd = Lab_coding_system.coding_system_cd, @labCdSystemDescTxt = Lab_coding_system.code_system_desc_txt, @labcodeDescTxt = Lab_test.lab_test_desc_txt, @altLabcode = Labtest_loinc.loinc_cd, @altLabCdSysemCd = 'LN', @altLabCdSystemDescTxt = 'LOINC', @altLabcodeDescTxt = LOINC_code.component_name, @descTxt=Lab_coding_system.laboratory_system_desc_txt 
	FROM nbs_srte..Lab_test
		 INNER JOIN
		 nbs_srte..Lab_coding_system
		 ON lab_test.laboratory_id = Lab_coding_system.laboratory_id
		 INNER JOIN
		 Labtest_loinc
		 ON Labtest_loinc.lab_test_cd = Lab_test.lab_test_cd
		 INNER JOIN
		 LOINC_code
		 ON LOINC_code.loinc_cd = Labtest_loinc.loinc_cd
	WHERE Lab_test.lab_test_cd = @labcode AND 
		  Lab_test.laboratory_id = @laboratoryID;
	-- Step 1.1: look up into Lab_test with lab code and labaratory ID
	IF( @labCdSysemCd IS NULL AND 
		@labCdSystemDescTxt IS NULL AND 
		@labcodeDescTxt IS NULL
	  )
	BEGIN
		SELECT @labCdSysemCd = Lab_coding_system.coding_system_cd, @labCdSystemDescTxt = Lab_coding_system.code_system_desc_txt, @labcodeDescTxt = Lab_test.lab_test_desc_txt, @descTxt=Lab_coding_system.laboratory_system_desc_txt 
		FROM nbs_srte..Lab_test
			 INNER JOIN
			 nbs_srte..Lab_coding_system
			 ON lab_test.laboratory_id = Lab_coding_system.laboratory_id
		WHERE Lab_test.lab_test_cd = @labcode AND 
			  Lab_test.laboratory_id = @laboratoryID
	END;

	-- Step 2: look up into Lab_result, labresult_snomed, snomed_code tables with lab code and labaratory ID
	IF( @labCdSysemCd IS NULL AND 
		@labCdSystemDescTxt IS NULL AND 
		@labcodeDescTxt IS NULL
	  )
	BEGIN
		SELECT @labCdSysemCd = Lab_coding_system.coding_system_cd, @labCdSystemDescTxt = Lab_coding_system.code_system_desc_txt, @labcodeDescTxt = Lab_result.lab_result_desc_txt, @altLabcode = Lab_result_Snomed.snomed_cd, @altLabCdSysemCd = 'SNM', @altLabCdSystemDescTxt = 'SNOMED', @altLabcodeDescTxt = Snomed_code.snomed_desc_txt, @descTxt=Lab_coding_system.laboratory_system_desc_txt 
		FROM nbs_srte..Lab_result
			 INNER JOIN
			 nbs_srte..Lab_coding_system
			 ON Lab_result.laboratory_id = Lab_coding_system.laboratory_id
			 INNER JOIN
			 nbs_srte..Lab_result_Snomed
			 ON Lab_result.lab_result_cd = Lab_result_Snomed.lab_result_cd
			 INNER JOIN
			 nbs_srte..Snomed_code
			 ON Snomed_code.snomed_cd = Lab_result_Snomed.snomed_cd
		WHERE Lab_result.lab_result_cd = @labcode AND 
			  Lab_result.laboratory_id = @laboratoryID;
	END;
	-- Step 2.1: look up into Lab_result table with lab code and labaratory ID
	IF( @labCdSysemCd IS NULL AND 
		@labCdSystemDescTxt IS NULL AND 
		@labcodeDescTxt IS NULL
	  )
	BEGIN
		SELECT @labCdSysemCd = Lab_coding_system.coding_system_cd, @labCdSystemDescTxt = Lab_coding_system.code_system_desc_txt, @labcodeDescTxt = Lab_result.lab_result_desc_txt, @descTxt=Lab_coding_system.laboratory_system_desc_txt 
		FROM nbs_srte..Lab_result
			 INNER JOIN
			 nbs_srte..Lab_coding_system
			 ON Lab_result.laboratory_id = Lab_coding_system.laboratory_id
		WHERE Lab_result.lab_result_cd = @labcode AND 
			  Lab_result.laboratory_id = @laboratoryID;
	END;
	-- Step 3: look up into Snomed_code table with lab code
	IF( @labCdSysemCd IS NULL AND 
		@labCdSystemDescTxt IS NULL AND 
		@labcodeDescTxt IS NULL
	  )
	BEGIN

		IF EXISTS
		(
			SELECT *
			FROM nbs_srte..Snomed_code
			WHERE snomed_cd = @labcode
		)
		BEGIN
			SELECT @labCdSystemDescTxt = 'SNOMED', @labCdSysemCd = 'SNM', @labcodeDescTxt = Snomed_code.snomed_desc_txt
			FROM nbs_srte..Snomed_code
			WHERE snomed_cd = @labcode;
		END;
	END;
	-- Step 4: look up into Loinc_code table with lab code
	IF( @labCdSysemCd IS NULL AND 
		@labCdSystemDescTxt IS NULL AND 
		@labcodeDescTxt IS NULL
	  )
	BEGIN
		IF EXISTS
		(
			SELECT *
			FROM nbs_srte..LOINC_code
			WHERE loinc_cd = @labcode
		)
		BEGIN
			SELECT @labCdSystemDescTxt = 'LOINC', @labCdSysemCd = 'LN', @labcodeDescTxt = LOINC_code.component_name
			FROM nbs_srte..LOINC_code
			WHERE loinc_cd = @labcode;
		END;
	END;
	-- Step 5: if the coding system is still null provide the coding system for default lab.
	IF( @labCdSysemCd IS NULL AND 
		@labCdSystemDescTxt IS NULL AND 
		@labcodeDescTxt IS NULL
	  )
	BEGIN
		SELECT @labCdSystemDescTxt = code_system_desc_txt, @labCdSysemCd = coding_system_cd, @descTxt=Lab_coding_system.laboratory_system_desc_txt 
		FROM nbs_srte..Lab_coding_system
		WHERE laboratory_id = 'DEFAULT';
	END;
END;

GO
/****** Object:  Table [dbo].[Anatomic_site_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[City_code_value]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Cntycity_code_value]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Code_to_condition]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Code_value_clinical]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Code_value_general]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Codeset]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Codeset_Group_Metadata]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Condition_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Country_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Country_Code_ISO]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Country_XREF]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[ELR_XREF]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[IMRDBMapping]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Investigation_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Jurisdiction_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Jurisdiction_participation]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Lab_coding_system]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Lab_result]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Lab_result_Snomed]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Lab_test]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Labtest_loinc]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Labtest_Progarea_Mapping]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Language_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[LDF_page_set]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[LOINC_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Loinc_condition]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Loinc_snomed_condition]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[NAICS_Industry_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Occupation_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[organizationUidLabel]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Participation_type]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Program_area_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Race_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Snomed_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Snomed_condition]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Specimen_source_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Standard_XREF]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[State_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[State_county_code_value]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[State_model]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[TotalIDM]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Treatment_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Unit_code]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[XSS_Filter_Pattern]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Zip_code_value]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  Table [dbo].[Zipcnty_code_value]    Script Date: 6/1/2023 8:16:20 PM ******/
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
/****** Object:  View [dbo].[V_CODE_TO_CONDITION_RHAP]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_CODE_TO_CONDITION_RHAP]
AS

select cc.condition_cd as condition_cd, cc.condition_desc_txt as condition_desc_txt, cc.code_system_cd,
ctc.code as diagnosis_cd, ctc.code_desc_txt as diagnosis_desc_txt, ctc.code_system_cd as diagnosis_code_system_cd, ctc.code_system_desc_txt as diagnosis_code_system_desc_txt,
cc.rhap_parse_nbs_ind, cc.rhap_action_value
from NBS_SRTE..condition_code as cc
inner join NBS_SRTE..Code_to_condition as ctc on cc.condition_cd=ctc.condition_cd



GO
/****** Object:  View [dbo].[V_CODED_LAB_RESULT]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*ND-9506: SQL script for creating a V_CODED_LAB_RESULT view = organism + coded lab result views*/

CREATE VIEW [dbo].[V_CODED_LAB_RESULT]
AS
  --Coded
  (SELECT snomed_cd               AS code,
          snomed_desc_txt         AS code_short_desc_txt,
          snomed_cd               AS concept_code,
          snomed_desc_txt         AS concept_preferred_nm,
          snomed_desc_txt         AS concept_nm,
          'SCT'					AS code_system_cd,
          'SNOMED'                AS code_system_desc_txt,
          'CODED_LAB_RESULT'    AS code_set_nm
   FROM   NBS_SRTE.dbo.snomed_code
   UNION
   (SELECT lab_result_cd,
           lab_result_desc_txt,
           lab_result_cd                   AS concept_code,
           lab_result_desc_txt             AS concept_preferred_nm,
           lab_result_desc_txt             AS concept_nm,
          case
						when lab_coding_system.laboratory_id = 'DEFAULT' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_OID')
						when lab_coding_system.laboratory_id = 'L' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_OID')
						else lab_coding_system.laboratory_id end as Code_system_cd,
		  case
						when lab_coding_system.laboratory_id = 'DEFAULT' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_DESC')
						when lab_coding_system.laboratory_id = 'L' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_DESC')
						else  laboratory_system_desc_txt end as  code_system_desc_txt,
           'CODED_LAB_RESULT'            AS code_set_nm
    FROM   NBS_SRTE.dbo.lab_result
           INNER JOIN NBS_SRTE.dbo.lab_coding_system
                   ON lab_result.laboratory_id = lab_coding_system.laboratory_id
    WHERE  organism_name_ind = 'N'))
  UNION
  --organism
  (SELECT snomed_cd               AS code,
          snomed_desc_txt         AS code_short_desc_txt,
          snomed_cd               AS concept_code,
          snomed_desc_txt         AS concept_preferred_nm,
          snomed_desc_txt         AS concept_nm,
          'SCT'					AS code_system_cd,
          'SNOMED'                AS code_system_desc_txt,
          'CODED_LAB_RESULT'    AS code_set_nm
   FROM   NBS_SRTE.dbo.snomed_code
   UNION
   (SELECT lab_result_cd,
           lab_result_desc_txt,
           lab_result_cd                   AS concept_code,
           lab_result_desc_txt             AS concept_preferred_nm,
           lab_result_desc_txt             AS concept_nm,
          case
						when lab_coding_system.laboratory_id = 'DEFAULT' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_OID')
						when lab_coding_system.laboratory_id = 'L' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_OID')
						else lab_coding_system.laboratory_id end as Code_system_cd,
		  case
						when lab_coding_system.laboratory_id = 'DEFAULT' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_DESC')
						when lab_coding_system.laboratory_id = 'L' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_DESC')
						else  laboratory_system_desc_txt end as  code_system_desc_txt,
           'CODED_LAB_RESULT'            AS code_set_nm
    FROM   NBS_SRTE.dbo.lab_result
           INNER JOIN NBS_SRTE.dbo.lab_coding_system
                   ON lab_result.laboratory_id = lab_coding_system.laboratory_id
    WHERE  organism_name_ind = 'Y'))
	UNION 
	(SELECT	'NI'						AS code,
			'NOT SPECIFIED'				AS code_short_desc_txt,
			'NI'						AS concept_code,
			'NOT SPECIFIED'				AS concept_preferred_nm,
			'NO INFORMATION'			AS concept_nm,
			'2.16.840.1.113883.5.1008'	AS code_system_cd,
			'NullFlavor'				AS code_system_desc_txt,
			'CODED_LAB_RESULT'			AS code_set_nm
		 );  


GO
/****** Object:  View [dbo].[V_Condition_code]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Condition_code]
AS
SELECT     condition_cd, condition_codeset_nm, condition_seq_num, assigning_authority_cd, assigning_authority_desc_txt, code_system_cd, 
                      code_system_desc_txt, condition_desc_txt, condition_short_nm, effective_from_time, effective_to_time, indent_level_nbr, investigation_form_cd, 
                      is_modifiable_ind, nbs_uid, nnd_ind, parent_is_cd, prog_area_cd, reportable_morbidity_ind, reportable_summary_ind, status_cd, status_time, 
                      condition_desc_txt AS code_desc_txt, condition_codeset_nm AS code_set_nm, condition_short_nm AS code_short_desc_txt, condition_cd AS code, 
                      condition_seq_num AS seq_num, condition_cd as concept_code,condition_short_nm as concept_preferred_nm, condition_desc_txt as concept_nm
FROM         dbo.Condition_code

GO
/****** Object:  View [dbo].[V_Country_code]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  View [dbo].[V_Country_code]    Script Date: 11/23/2010 11:12:41 ******/
CREATE VIEW [dbo].[V_Country_code] AS
SELECT code, assigning_authority_cd, assigning_authority_desc_txt, code_desc_txt, code_short_desc_txt, effective_from_time, effective_to_time, excluded_txt, key_info_txt, indent_level_nbr, is_modifiable_ind, parent_is_cd, status_cd, status_time, code_set_nm, seq_num, nbs_uid, source_concept_id, code_system_cd, code_system_desc_txt,
code as concept_code, code_short_desc_txt as concept_preferred_nm, code_desc_txt as concept_nm
FROM nbs_srte.dbo.Country_code

GO
/****** Object:  View [dbo].[V_Jurisdiction_code]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  View [dbo].[V_Jurisdiction_code]    Script Date: 11/23/2010 11:13:24 ******/
CREATE VIEW [dbo].[V_Jurisdiction_code] AS
SELECT code, type_cd, assigning_authority_cd, assigning_authority_desc_txt, code_desc_txt, code_short_desc_txt, effective_from_time, effective_to_time, indent_level_nbr, is_modifiable_ind, parent_is_cd, state_domain_cd, status_cd, status_time, code_set_nm, code_seq_num, nbs_uid, source_concept_id, code_system_cd, code_system_desc_txt, export_ind,
code as concept_code, code_short_desc_txt as concept_preferred_nm, code_desc_txt as concept_nm
FROM nbs_srte.dbo.Jurisdiction_code

GO
/****** Object:  View [dbo].[V_LAB_REASON_FOR_STUDY]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

   
/*ND-9509 : SQL script for creating a reason for study view*/

CREATE VIEW [dbo].[V_LAB_REASON_FOR_STUDY] AS
SELECT  distinct
		  reason_cd					AS code,
          reason_desc_txt			AS code_short_desc_txt,
          reason_cd					AS concept_code,
          reason_desc_txt			AS concept_preferred_nm,
          reason_desc_txt			AS concept_nm,
          (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_OID')
		  AS code_system_cd,
          'NBS'						AS code_system_desc_txt,
          'LAB_REASON_FOR_STUDY'	AS code_set_nm
FROM NBS_ODSE.dbo.Observation_reason

GO
/****** Object:  View [dbo].[V_Lab_result]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  View [dbo].[V_Lab_result]    Script Date: 11/23/2010 11:13:40 ******/
CREATE VIEW [dbo].[V_Lab_result] AS
SELECT lab_result_cd AS code, laboratory_id, lab_result_desc_txt AS code_desc_txt , lab_result_desc_txt as code_short_desc_txt, effective_from_time, effective_to_time, nbs_uid, default_prog_area_cd, organism_name_ind, default_condition_cd, pa_derivation_exclude_cd,code_system_cd, code_set_nm,
lab_result_cd as concept_code,lab_result_desc_txt as concept_preferred_nm, lab_result_desc_txt as concept_nm
FROM dbo.Lab_result WHERE laboratory_id = 'DEFAULT'

GO
/****** Object:  View [dbo].[V_OBSERVATION_METHOD]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
/*ND-9716: SQL script for creating a V_OBSERVATION_METHOD view*/
CREATE VIEW [dbo].[V_OBSERVATION_METHOD]
AS
  SELECT code,
         code_short_desc_txt,
         concept_code,
         concept_preferred_nm,
         concept_nm,
		 
		 case
						when code_system_cd= 'DEFAULT' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_OID')
						when code_system_cd = 'L' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_OID')
						else code_system_cd end as Code_system_cd,
		  case
						when code_system_cd = 'DEFAULT' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_DESC')
						when code_system_cd = 'L' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_DESC')
						else  code_system_desc_txt end as  code_system_desc_txt,
						
         'OBSERVATION_METHOD'                          AS code_set_nm
  FROM   code_value_general
  WHERE  code_set_nm = 'OBS_METH_SUSC'
  UNION
  SELECT DISTINCT method_cd,
                  method_desc_txt                                     AS
                  code_short_desc_txt,
                  method_cd                                           AS
                  concept_code,
                  method_desc_txt                                     AS
                  concept_preferred_nm,
                  method_desc_txt                                     AS
                  concept_nm,
                  (SELECT config_value
                   FROM   nbs_odse.dbo.nbs_configuration
                   WHERE  config_key = 'MSG_SENDING_APPLICATION_OID') AS
                  code_system_cd,
                  'NBS'                                               AS
                  code_system_desc_txt,
                  'OBSERVATION_METHOD'                                AS
                  code_set_nm
  FROM   nbs_odse.dbo.observation
  WHERE  method_cd NOT IN (SELECT code
                           FROM   code_value_general
                           WHERE  code_set_nm = 'OBS_METH_SUSC')


GO
/****** Object:  View [dbo].[V_ORDERED_LAB_TEST]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*ND-9460: SQL script for creating ordered test view*/

CREATE VIEW [dbo].[V_ORDERED_LAB_TEST]
AS
  SELECT loinc_cd                AS code,
         component_name          AS code_short_desc_txt,
         loinc_cd                AS concept_code,
         component_name          AS concept_preferred_nm,
         component_name          AS concept_nm,
         'LN'					AS code_system_cd,
         'LOINC'                 AS code_system_desc_txt,
         'ORDERED_LAB_TEST'    AS code_set_nm
  FROM   NBS_SRTE.dbo.loinc_code
  UNION
  (SELECT lab_test_cd,
          lab_test_desc_txt,
          lab_test_cd                     AS concept_code,
          lab_test_desc_txt               AS concept_preferred_nm,
          lab_test_desc_txt               AS concept_nm,
          case
						when lab_coding_system.laboratory_id = 'DEFAULT' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_OID')
						when lab_coding_system.laboratory_id = 'L' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_OID')
						else lab_coding_system.laboratory_id end as Code_system_cd,
		  case
						when lab_coding_system.laboratory_id = 'DEFAULT' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_DESC')
						when lab_coding_system.laboratory_id = 'L' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_DESC')
						else  laboratory_system_desc_txt end as  code_system_desc_txt,
          'ORDERED_LAB_TEST'            AS code_set_nm
   FROM   NBS_SRTE.dbo.lab_test
          INNER JOIN nbs_srte.dbo.lab_coding_system
                  ON lab_test.laboratory_id = lab_coding_system.laboratory_id
   WHERE  test_type_cd = 'O') ;

GO
/****** Object:  View [dbo].[V_Race_code]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  View [dbo].[V_Race_code]    Script Date: 11/23/2010 11:14:09 ******/
CREATE VIEW [dbo].[V_Race_code] AS
SELECT code, assigning_authority_cd, assigning_authority_desc_txt, code_desc_txt, code_short_desc_txt, effective_from_time, effective_to_time, excluded_txt, key_info_txt, indent_level_nbr, is_modifiable_ind, parent_is_cd, status_cd, status_time, code_set_nm, seq_num, nbs_uid, source_concept_id, code_system_cd, code_system_desc_txt,
code as concept_code, code_short_desc_txt as concept_preferred_nm, code_desc_txt as concept_nm
FROM nbs_srte.dbo.Race_code

GO
/****** Object:  View [dbo].[V_RESULTED_LAB_TEST]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* ND-9462 - SQL script for creating a Resulted test view*/
CREATE VIEW [dbo].[V_RESULTED_LAB_TEST]
AS
SELECT loinc_cd                AS code,
         component_name          AS code_short_desc_txt,
         loinc_cd                AS concept_code,
         component_name          AS concept_preferred_nm,
         component_name          AS concept_nm,
         'LN'					AS code_system_cd,
         'LOINC'                 AS code_system_desc_txt,
         'RESULTED_LAB_TEST'   AS code_set_nm
  FROM   NBS_SRTE.dbo.loinc_code
  UNION
  (SELECT lab_test_cd,
          lab_test_desc_txt,
          lab_test_cd                     AS concept_code,
          lab_test_desc_txt               AS concept_preferred_nm,
          lab_test_desc_txt               AS concept_nm,
          case
						when lab_coding_system.laboratory_id = 'DEFAULT' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_OID')
						when lab_coding_system.laboratory_id = 'L' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_OID')
						else lab_coding_system.laboratory_id end as Code_system_cd,
		  case
						when lab_coding_system.laboratory_id = 'DEFAULT' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_DESC')
						when lab_coding_system.laboratory_id = 'L' then (SELECT config_value FROM NBS_ODSE.dbo.NBS_configuration WHERE config_key = 'MSG_SENDING_APPLICATION_DESC')
						else  laboratory_system_desc_txt end as  code_system_desc_txt,
          'RESULTED_LAB_TEST'           AS code_set_nm
   FROM   NBS_SRTE.dbo.lab_test
          INNER JOIN nbs_srte.dbo.lab_coding_system
                  ON lab_test.laboratory_id = lab_coding_system.laboratory_id
   WHERE  test_type_cd = 'R')
   UNION   
    (SELECT  'NI'                AS code,
         'No Information Given'          AS code_short_desc_txt,
         'NI'                AS concept_code,
         'No Information Given'          AS concept_preferred_nm,
         'No Information Given'          AS concept_nm,
         'L'	 AS code_system_cd,
		'LOCAL'               AS code_system_desc_txt,
         'RESULTED_LAB_TEST'    AS code_set_nm
		 );

GO
/****** Object:  View [dbo].[V_SPECIMEN_SOURCE]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_SPECIMEN_SOURCE]
AS
  SELECT code,
         code_short_desc_txt,
         concept_code,
         concept_preferred_nm,
         concept_nm,
         CASE
						WHEN code LIKE '%[a-z]%' AND code NOT LIKE '%[0-9]%' THEN 'HL70487'
						WHEN  isNumeric(code)=1 THEN 'SCT'
						ELSE 'L' END AS code_system_cd,


         			CASE
						WHEN code LIKE '%[a-z]%' AND code NOT LIKE '%[0-9]%' THEN 'Health Level Seven'
						WHEN  isNumeric(code)=1 THEN 'SNOMED-CT'
						ELSE 'Local ' END AS code_system_desc_txt,

         'SPECIMEN_SOURCE'                             AS code_set_nm
  FROM   nbs_srte.dbo.code_value_general
  WHERE  code_set_nm = 'SPECMN_SRC'
  UNION
  SELECT DISTINCT cd,
                  cd_desc_txt                                         AS
                  code_short_desc_txt,
                  cd                                                  AS
                  concept_code,
                  cd_desc_txt                                         AS
                  concept_preferred_nm,
                  cd_desc_txt                                         AS
                  concept_nm,
                  CASE
						WHEN cd LIKE '%[a-z]%' AND cd NOT LIKE '%[0-9]%' THEN 'HL70487'
						WHEN  isNumeric(cd)=1 THEN 'SCT'
						ELSE 'L' END AS code_system_cd,
                 CASE
						WHEN cd LIKE '%[a-z]%' AND cd NOT LIKE '%[0-9]%' THEN 'Health Level Seven'
						WHEN  isNumeric(cd)=1 THEN 'SNOMED-CT'
						ELSE 'Local ' END AS code_system_desc_txt ,
                  'SPECIMEN_SOURCE'                                   AS
                  code_set_nm
  FROM   nbs_odse.dbo.material
  WHERE  cd IS NOT NULL
         AND cd NOT IN (SELECT code
                        FROM   nbs_srte.dbo.code_value_general WHERE  code_set_nm = 'SPECMN_SRC')


  UNION SELECT '119324002' AS code, 'Specimen of unknown material' AS code_short_desc_txt, '119324002' AS concept_code,
  'Specimen of unknown material' AS concept_preferred_nm, 'Specimen of unknown material' AS concept_nm, 'SCT'  AS code_system_cd, 'SNOMED-CT' AS code_system_desc_txt, 'SPECIMEN_SOURCE' AS code_set_nm
  WHERE ((SELECT count(*) FROM 
  (SELECT code AS code FROM nbs_srte.dbo.code_value_general
  WHERE  code_set_nm = 'SPECMN_SRC' AND code ='119324002'
  UNION
  SELECT cd AS code FROM  nbs_odse.dbo.material
  WHERE  cd IS NOT NULL
         AND cd NOT IN (SELECT code
                        FROM   nbs_srte.dbo.code_value_general
                        WHERE  code_set_nm = 'SPECMN_SRC') AND cd ='119324002') AS tableunion)) = 0;


GO
/****** Object:  View [dbo].[V_State_code]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  View [dbo].[V_State_code]    Script Date: 11/23/2010 11:14:20 ******/
CREATE VIEW [dbo].[V_State_code]
AS
SELECT state_cd,assigning_authority_cd,assigning_authority_desc_txt,state_nm,
           code_desc_txt,code_desc_txt AS code_short_desc_txt,effective_from_time,effective_to_time,excluded_txt,indent_level_nbr,
           is_modifiable_ind,key_info_txt,parent_is_cd,status_cd,status_time,code_set_nm,seq_num,
           nbs_uid,source_concept_id,code_system_cd,code_system_desc_txt,state_cd AS code,
state_cd as concept_code,code_desc_txt as concept_preferred_nm, code_desc_txt as concept_nm
 FROM dbo.State_code

GO
/****** Object:  View [dbo].[V_State_county_code_value]    Script Date: 6/1/2023 8:16:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  View [dbo].[V_State_county_code_value]    Script Date: 11/23/2010 11:14:33 ******/
CREATE VIEW [dbo].[V_State_county_code_value] AS
SELECT code, assigning_authority_cd, assigning_authority_desc_txt, code_desc_txt, code_short_desc_txt, effective_from_time, effective_to_time, excluded_txt, Indent_level_nbr, is_modifiable_ind, parent_is_cd, status_cd, status_time, code_set_nm, seq_num, nbs_uid, source_concept_id, code_system_cd, code_system_desc_txt,
code as concept_code, code_short_desc_txt as concept_preferred_nm, code_desc_txt as concept_nm
FROM nbs_srte.dbo.State_county_code_value

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Country_code]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_Country_code] ON [dbo].[Country_code]
(
	[code_desc_txt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_CITY_CODE_ELR1]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE NONCLUSTERED INDEX [IDX_CITY_CODE_ELR1] ON [dbo].[City_code_value]
(
	[parent_is_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [INDEX_CODE_VALUE_GENERAL_IND01]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE NONCLUSTERED INDEX [INDEX_CODE_VALUE_GENERAL_IND01] ON [dbo].[Code_value_general]
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Index [RDB_PERF_03312021_1]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE NONCLUSTERED INDEX [RDB_PERF_03312021_1] ON [dbo].[Codeset]
(
	[code_set_group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Condition_code__276EDEB3]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ__Condition_code__276EDEB3] ON [dbo].[Condition_code]
(
	[nbs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_JUR_PART_ELR1]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE NONCLUSTERED INDEX [IDX_JUR_PART_ELR1] ON [dbo].[Jurisdiction_participation]
(
	[type_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_JUR_PART_ELR2]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE NONCLUSTERED INDEX [IDX_JUR_PART_ELR2] ON [dbo].[Jurisdiction_participation]
(
	[fips_cd] ASC,
	[type_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Lab_result__1BE81D6E]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ__Lab_result__1BE81D6E] ON [dbo].[Lab_result]
(
	[nbs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IDX_LOINC_code_02172021_06]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE NONCLUSTERED INDEX [IDX_LOINC_code_02172021_06] ON [dbo].[LOINC_code]
(
	[time_aspect] ASC,
	[system_cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__LOINC_code__47DBAE45]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ__LOINC_code__47DBAE45] ON [dbo].[LOINC_code]
(
	[nbs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Program_area_cod__5441852A]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ__Program_area_cod__5441852A] ON [dbo].[Program_area_code]
(
	[nbs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Snomed_code__284DF453]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ__Snomed_code__284DF453] ON [dbo].[Snomed_code]
(
	[nbs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
GO
/****** Object:  Index [UQ__State_model__2E1BDC42]    Script Date: 6/1/2023 8:16:20 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ__State_model__2E1BDC42] ON [dbo].[State_model]
(
	[nbs_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
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
USE [master]
GO
ALTER DATABASE [NBS_SRTE] SET  READ_WRITE 
GO

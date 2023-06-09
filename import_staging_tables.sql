USE [IMPORT_STAGING]
GO
/****** Object:  Table [dbo].[ACRF_WORKINGTABLE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACRF_WORKINGTABLE](
	[record_no] [numeric](10, 0) NULL,
	[parent_id] [varchar](255) NULL,
	[rollup_no] [varchar](255) NULL,
	[doc_type] [varchar](255) NULL,
	[stateno] [varchar](255) NULL,
	[import_uid] [numeric](10, 0) NULL,
	[cityno] [varchar](255) NULL,
	[source] [varchar](255) NULL,
	[rep_city] [varchar](255) NULL,
	[rcvd_dt] [varchar](255) NULL,
	[init_invest] [varchar](255) NULL,
	[surv_method] [varchar](255) NULL,
	[complete_dt] [varchar](255) NULL,
	[author] [varchar](255) NULL,
	[author_phone] [varchar](255) NULL,
	[medrecno] [varchar](255) NULL,
	[cts_no] [varchar](255) NULL,
	[adap_no] [varchar](255) NULL,
	[ryan_no] [varchar](255) NULL,
	[stdmis_no] [varchar](255) NULL,
	[prison_no] [varchar](255) NULL,
	[rvct_no] [varchar](255) NULL,
	[pathars_no] [varchar](255) NULL,
	[patasd_no] [varchar](255) NULL,
	[hivno_hars] [varchar](255) NULL,
	[pems_client_unique_key] [varchar](255) NULL,
	[pems_local_client_key] [varchar](255) NULL,
	[pems_form_id] [varchar](255) NULL,
	[ucsf_no] [varchar](255) NULL,
	[ssn] [varchar](255) NULL,
	[tracking_id] [varchar](255) NULL,
	[gen_id1] [varchar](255) NULL,
	[prefix] [varchar](255) NULL,
	[f_name] [varchar](255) NULL,
	[l_name] [varchar](255) NULL,
	[m_name] [varchar](255) NULL,
	[f_name_sndx] [varchar](255) NULL,
	[l_name_sndx] [varchar](255) NULL,
	[suffix] [varchar](255) NULL,
	[name_use_cd] [varchar](255) NULL,
	[addr_1] [varchar](255) NULL,
	[addr_2] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[cnty] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[zip_code] [varchar](255) NULL,
	[cntry] [varchar](255) NULL,
	[cntry_usd] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[addr_type_cd] [varchar](255) NULL,
	[fac_cplt_form] [varchar](255) NULL,
	[fac_cplt_name2] [varchar](255) NULL,
	[fac_cplt_addr1] [varchar](255) NULL,
	[fac_cplt_addr2] [varchar](255) NULL,
	[fac_cplt_city] [varchar](255) NULL,
	[fac_cplt_cnty] [varchar](255) NULL,
	[fac_cplt_st] [varchar](255) NULL,
	[fac_cplt_zip] [varchar](255) NULL,
	[fac_cplt_cntry] [varchar](255) NULL,
	[fac_cplt_usd] [varchar](255) NULL,
	[fac_cplt_set] [varchar](255) NULL,
	[fac_cplt_phone] [varchar](255) NULL,
	[fac_cplt_uid] [varchar](255) NULL,
	[fac_cplt_type] [varchar](255) NULL,
	[fac_cplt_email] [varchar](255) NULL,
	[fac_cplt_fax] [varchar](255) NULL,
	[fac_cplt_fund] [varchar](255) NULL,
	[fac_cplt_fund_cd] [varchar](255) NULL,
	[census_tract] [varchar](255) NULL,
	[census_block_gp] [varchar](255) NULL,
	[census_metro_area] [varchar](255) NULL,
	[census_group] [varchar](255) NULL,
	[cong_district] [varchar](255) NULL,
	[birth_dt] [varchar](255) NULL,
	[alias_birth_dt] [varchar](255) NULL,
	[education] [varchar](255) NULL,
	[race1] [varchar](255) NULL,
	[race2] [varchar](255) NULL,
	[race3] [varchar](255) NULL,
	[race4] [varchar](255) NULL,
	[race5] [varchar](255) NULL,
	[ethnicity] [varchar](255) NULL,
	[ethnicity2] [varchar](255) NULL,
	[birth_sex] [varchar](255) NULL,
	[gender] [varchar](255) NULL,
	[curr_sex] [varchar](255) NULL,
	[marital_status] [varchar](255) NULL,
	[birth_cntry] [varchar](255) NULL,
	[birth_usd] [varchar](255) NULL,
	[hcw] [varchar](255) NULL,
	[hcw_occup] [varchar](255) NULL,
	[vital_status] [varchar](255) NULL,
	[death_dt] [varchar](255) NULL,
	[death_st] [varchar](255) NULL,
	[diag_status] [varchar](255) NULL,
	[age_at_hiv] [varchar](255) NULL,
	[age_at_aids] [varchar](255) NULL,
	[event_cd] [varchar](255) NULL,
	[facility_name] [varchar](255) NULL,
	[facility_name2] [varchar](255) NULL,
	[facility_phone] [varchar](255) NULL,
	[facility_addr1] [varchar](255) NULL,
	[facility_addr2] [varchar](255) NULL,
	[facility_city] [varchar](255) NULL,
	[facility_cnty] [varchar](255) NULL,
	[facility_st] [varchar](255) NULL,
	[facility_zip] [varchar](255) NULL,
	[facility_cntry] [varchar](255) NULL,
	[facility_usd] [varchar](255) NULL,
	[facility_set] [varchar](255) NULL,
	[facility_uid] [varchar](255) NULL,
	[facility_type] [varchar](255) NULL,
	[facility_fax] [varchar](255) NULL,
	[facility_email] [varchar](255) NULL,
	[facility_fund] [varchar](255) NULL,
	[facility_fund_cd] [varchar](255) NULL,
	[phys_first] [varchar](255) NULL,
	[phys_last] [varchar](255) NULL,
	[phys_middle] [varchar](255) NULL,
	[phys_suffix] [varchar](255) NULL,
	[phys_phone] [varchar](255) NULL,
	[specialty_cd] [varchar](255) NULL,
	[swm] [varchar](255) NULL,
	[swf] [varchar](255) NULL,
	[idu] [varchar](255) NULL,
	[rcvd_clot_factor] [varchar](255) NULL,
	[factor_type] [varchar](255) NULL,
	[factor_dt] [varchar](255) NULL,
	[sexidu] [varchar](255) NULL,
	[sexbi] [varchar](255) NULL,
	[sexhemo] [varchar](255) NULL,
	[sex_transf] [varchar](255) NULL,
	[sex_transpl] [varchar](255) NULL,
	[sex_aidshiv] [varchar](255) NULL,
	[rcvd_transf] [varchar](255) NULL,
	[first_trans_dt] [varchar](255) NULL,
	[last_trans_dt] [varchar](255) NULL,
	[rcvd_transpl] [varchar](255) NULL,
	[hlth_worker] [varchar](255) NULL,
	[occupation] [varchar](255) NULL,
	[other_risk] [varchar](255) NULL,
	[nir] [varchar](255) NULL,
	[nir_dt] [varchar](255) NULL,
	[rec_reviewed] [varchar](255) NULL,
	[asympt_dt] [varchar](255) NULL,
	[sympt_dt] [varchar](255) NULL,
	[candlung_dt] [varchar](255) NULL,
	[cande_dt] [varchar](255) NULL,
	[cervcanc_dt] [varchar](255) NULL,
	[cocci_dt] [varchar](255) NULL,
	[cryptoco_dt] [varchar](255) NULL,
	[cryptosp_dt] [varchar](255) NULL,
	[cmv_dt] [varchar](255) NULL,
	[cmvret_dt] [varchar](255) NULL,
	[hivnceph_dt] [varchar](255) NULL,
	[herpes_dt] [varchar](255) NULL,
	[histo_dt] [varchar](255) NULL,
	[iso_dt] [varchar](255) NULL,
	[ks_dt] [varchar](255) NULL,
	[burkl_dt] [varchar](255) NULL,
	[lymphim_dt] [varchar](255) NULL,
	[lymphb_dt] [varchar](255) NULL,
	[mycoav_dt] [varchar](255) NULL,
	[mycopulm_dt] [varchar](255) NULL,
	[mycodism_dt] [varchar](255) NULL,
	[mycoth_dt] [varchar](255) NULL,
	[pcp_dt] [varchar](255) NULL,
	[pneum_dt] [varchar](255) NULL,
	[pml_dt] [varchar](255) NULL,
	[salmnela_dt] [varchar](255) NULL,
	[toxo_dt] [varchar](255) NULL,
	[wasting_dt] [varchar](255) NULL,
	[immunodef] [varchar](255) NULL,
	[lab_test_name] [varchar](255) NULL,
	[colldate] [varchar](255) NULL,
	[specimen_receive_dt] [varchar](255) NULL,
	[result_dt] [varchar](255) NULL,
	[specimentype] [varchar](255) NULL,
	[lab_result] [varchar](255) NULL,
	[lab_units] [varchar](255) NULL,
	[viral_range] [varchar](255) NULL,
	[interpretation] [varchar](255) NULL,
	[lab_specific_note] [varchar](255) NULL,
	[doc_diag] [varchar](255) NULL,
	[doc_diag_dt] [varchar](255) NULL,
	[informed] [varchar](255) NULL,
	[notifier] [varchar](255) NULL,
	[referred] [varchar](255) NULL,
	[ref_sats] [varchar](255) NULL,
	[rcvd_antiretv] [varchar](255) NULL,
	[rcvd_pcpproph] [varchar](255) NULL,
	[enrol_trial] [varchar](255) NULL,
	[enrol_clinic] [varchar](255) NULL,
	[ins_hiv] [varchar](255) NULL,
	[ins_aids] [varchar](255) NULL,
	[refer_obgyn] [varchar](255) NULL,
	[pregnant] [varchar](255) NULL,
	[live_infant] [varchar](255) NULL,
	[child_fname] [varchar](255) NULL,
	[child_lname] [varchar](255) NULL,
	[child_mname] [varchar](255) NULL,
	[child_birth_dt] [varchar](255) NULL,
	[child_sndx] [varchar](255) NULL,
	[child_coded_id] [varchar](255) NULL,
	[child_stateno] [varchar](255) NULL,
	[birth_hosp_name] [varchar](255) NULL,
	[birth_hosp_name2] [varchar](255) NULL,
	[birth_hosp_addr1] [varchar](255) NULL,
	[birth_hosp_addr2] [varchar](255) NULL,
	[birth_hosp_city] [varchar](255) NULL,
	[birth_hosp_cnty] [varchar](255) NULL,
	[birth_hosp_state] [varchar](255) NULL,
	[birth_hosp_zip] [varchar](255) NULL,
	[birth_hosp_cntry] [varchar](255) NULL,
	[birth_hosp_usd] [varchar](255) NULL,
	[birth_hosp_set] [varchar](255) NULL,
	[birth_hosp_phone] [varchar](255) NULL,
	[birth_fac_id] [varchar](255) NULL,
	[birth_fac_type] [varchar](255) NULL,
	[birth_hosp_fax] [varchar](255) NULL,
	[birth_hosp_email] [varchar](255) NULL,
	[birth_hosp_fund] [varchar](255) NULL,
	[birth_hosp_fund_cd] [varchar](255) NULL,
	[ridr_dup_status] [varchar](255) NULL,
	[ridr_state_cd] [varchar](255) NULL,
	[ridr_stateno] [varchar](255) NULL,
	[ridr_comments] [varchar](255) NULL,
	[ridr_verify_date] [varchar](255) NULL,
	[ridr_verify_by] [varchar](255) NULL,
	[comments] [varchar](255) NULL,
	[site_cd] [varchar](255) NULL,
	[phys_cplt_uid] [varchar](255) NULL,
	[phys_cplt_first] [varchar](255) NULL,
	[phys_cplt_middle] [varchar](255) NULL,
	[phys_cplt_last] [varchar](255) NULL,
	[phys_cplt_suffix] [varchar](255) NULL,
	[phys_cplt_prefix] [varchar](255) NULL,
	[phys_cplt_phone] [varchar](255) NULL,
	[phys_cplt_specialty_cd] [varchar](255) NULL,
	[provider_uid] [varchar](255) NULL,
	[phys_prefix] [varchar](255) NULL,
	[lab_clia_no] [varchar](255) NULL,
	[specimen_id] [varchar](255) NULL,
	[accession_no] [varchar](255) NULL,
	[starhs_sample_id] [varchar](255) NULL,
	[sreason] [varchar](255) NULL,
	[genotype_sequence] [varchar](max) NULL,
	[xlab_hiv] [varchar](255) NULL,
	[xlab_hiv_dt] [varchar](255) NULL,
	[lab_test_type] [varchar](255) NULL,
	[manufacturer] [varchar](255) NULL,
	[result_range_lower] [varchar](255) NULL,
	[result_range_upper] [varchar](255) NULL,
	[pediatric_risk_factor] [varchar](255) NULL,
	[m_hiv_status] [varchar](255) NULL,
	[m_first_pos_dt] [varchar](255) NULL,
	[m_counseled] [varchar](255) NULL,
	[m_perinatl_hiv] [varchar](255) NULL,
	[m_idu] [varchar](255) NULL,
	[m_hetsex_idu] [varchar](255) NULL,
	[m_hetsex_bimale] [varchar](255) NULL,
	[m_hetsex_hemo] [varchar](255) NULL,
	[m_hetsex_transfus] [varchar](255) NULL,
	[m_hetsex_transpl] [varchar](255) NULL,
	[m_hetsex_hivaids] [varchar](255) NULL,
	[m_transfus] [varchar](255) NULL,
	[m_first_trans_dt] [varchar](255) NULL,
	[m_last_trans_dt] [varchar](255) NULL,
	[m_transpl] [varchar](255) NULL,
	[c_idu] [varchar](255) NULL,
	[c_rcvd_clot_factor] [varchar](255) NULL,
	[c_clott_factor] [varchar](255) NULL,
	[c_factor_dt] [varchar](255) NULL,
	[c_rcvd_transf] [varchar](255) NULL,
	[c_first_transf_dt] [varchar](255) NULL,
	[c_last_transf_dt] [varchar](255) NULL,
	[c_rcvd_transpl] [varchar](255) NULL,
	[c_sex_male] [varchar](255) NULL,
	[c_sex_female] [varchar](255) NULL,
	[c_oth_risk] [varchar](255) NULL,
	[c_nir] [varchar](255) NULL,
	[c_complete_dt] [varchar](255) NULL,
	[mmp_parid] [varchar](255) NULL,
	[fimr_id] [varchar](255) NULL,
	[source_rpt] [varchar](255) NULL,
	[interview_dt] [varchar](255) NULL,
	[positive_test] [varchar](255) NULL,
	[first_pos_test_dt] [varchar](255) NULL,
	[ever_tested_neg] [varchar](255) NULL,
	[last_negtest_dt] [varchar](255) NULL,
	[times_tested_2yrs] [varchar](255) NULL,
	[medicines_taken] [varchar](255) NULL,
	[medicines_list] [varchar](255) NULL,
	[med_begin_dt] [varchar](255) NULL,
	[med_last_dt] [varchar](255) NULL,
	[current_meds] [varchar](255) NULL,
	[previous_hiv_test] [varchar](255) NULL,
	[first_ever_test_dt] [varchar](255) NULL,
	[annon_test] [varchar](255) NULL,
	[times_tested_pos] [varchar](255) NULL,
	[regular_test] [varchar](255) NULL,
	[just_checking] [varchar](255) NULL,
	[required_test] [varchar](255) NULL,
	[other_reason] [varchar](255) NULL,
	[reason] [varchar](255) NULL,
	[first_postest_worried] [varchar](255) NULL,
	[first_postest_regular] [varchar](255) NULL,
	[first_postest_checking] [varchar](255) NULL,
	[first_postest_required] [varchar](255) NULL,
	[first_postest_other] [varchar](255) NULL,
	[first_postest_reason] [varchar](255) NULL,
	[test_site_name] [varchar](255) NULL,
	[test_site_state] [varchar](255) NULL,
	[test_site_type] [varchar](255) NULL,
	[last_negtest_sitename] [varchar](255) NULL,
	[last_negtest_st] [varchar](255) NULL,
	[last_negtest_sitetype] [varchar](255) NULL,
	[possibly_exposed] [varchar](255) NULL,
	[address_dt] [varchar](255) NULL,
	[lip_dt] [varchar](255) NULL,
	[drug_cd] [varchar](255) NULL,
	[drug_rsn] [varchar](255) NULL,
	[other_drug_rsn] [varchar](255) NULL,
	[drug_start_dt] [varchar](255) NULL,
	[drug_last_use_dt] [varchar](255) NULL,
	[prophylaxis_start_dt] [varchar](255) NULL,
	[prophylaxis_last_use_dt] [varchar](255) NULL,
	[arv_source] [varchar](255) NULL,
	[other_arv_source] [varchar](255) NULL,
	[arv_rpt_dt] [varchar](255) NULL,
	[arv_taken] [varchar](255) NULL,
	[fac_ord_uid] [varchar](255) NULL,
	[fac_ord_name] [varchar](255) NULL,
	[fac_ord_name2] [varchar](255) NULL,
	[fac_ord_type] [varchar](255) NULL,
	[fac_ord_set] [varchar](255) NULL,
	[fac_ord_addr1] [varchar](255) NULL,
	[fac_ord_addr2] [varchar](255) NULL,
	[fac_ord_zip] [varchar](255) NULL,
	[fac_ord_city] [varchar](255) NULL,
	[fac_ord_cnty] [varchar](255) NULL,
	[fac_ord_st] [varchar](255) NULL,
	[fac_ord_cntry] [varchar](255) NULL,
	[fac_ord_usd] [varchar](255) NULL,
	[fac_ord_phone] [varchar](255) NULL,
	[fac_ord_fax] [varchar](255) NULL,
	[fac_ord_email] [varchar](255) NULL,
	[fac_ord_fund] [varchar](255) NULL,
	[fac_ord_fund_cd] [varchar](255) NULL,
	[phys_ord_uid] [varchar](255) NULL,
	[phys_ord_prefix] [varchar](255) NULL,
	[phys_ord_last] [varchar](255) NULL,
	[phys_ord_first] [varchar](255) NULL,
	[phys_ord_middle] [varchar](255) NULL,
	[phys_ord_suffix] [varchar](255) NULL,
	[phys_ord_specialty_cd] [varchar](255) NULL,
	[phys_ord_phone] [varchar](255) NULL,
	[lab_rollup_no] [varchar](255) NULL,
	[care_nolab] [varchar](255) NULL,
	[care_nolab_dt] [varchar](255) NULL,
	[invest_type_cd] [varchar](255) NULL,
	[invest_ident_method] [varchar](255) NULL,
	[invest_ident_dt] [varchar](255) NULL,
	[invest_incl] [varchar](255) NULL,
	[invest_start_dt] [varchar](255) NULL,
	[invest_dispo] [varchar](255) NULL,
	[invest_dispo_dt] [varchar](255) NULL,
	[invest_dispo_method] [varchar](255) NULL,
	[int_dispo] [varchar](255) NULL,
	[int_dispo_dt] [varchar](255) NULL,
	[cluster_uid] [varchar](255) NULL,
	[cluster_ident_method] [varchar](255) NULL,
	[person_ident_method] [varchar](255) NULL,
	[person_ident_dt] [varchar](255) NULL,
	[acute_suspect] [varchar](255) NULL,
	[acute_symp] [varchar](255) NULL,
	[acute_symp_dt] [varchar](255) NULL,
	[acute_other] [varchar](255) NULL,
	[acute_other_dt] [varchar](255) NULL,
	[acute_other_specify] [varchar](255) NULL,
	[ssn_alias] [varchar](255) NULL,
	[medicaidno] [varchar](255) NULL,
	[insno] [varchar](255) NULL,
	[rephlthdeptno] [varchar](255) NULL,
	[addr_original_type_cd] [varchar](255) NULL,
	[geographic_level] [varchar](255) NULL,
	[evalweb_client_id] [varchar](255) NULL,
	[evalweb_form_id] [varchar](255) NULL,
	[evalweb_ps_case_num] [varchar](255) NULL,
	[idss_person_id] [varchar](255) NULL,
	[idss_event_id] [varchar](255) NULL,
	[gender_identity] [varchar](255) NULL,
	[other_gender_identity] [varchar](255) NULL,
	[gender_identity_dt] [varchar](255) NULL,
	[sexual_orientation] [varchar](255) NULL,
	[other_sexual_orientation] [varchar](255) NULL,
	[sexual_orientation_dt] [varchar](255) NULL,
	[c_breastfed_bp] [varchar](255) NULL,
	[c_prechewed_food_bp] [varchar](255) NULL,
	[c_breastfed_non_bp] [varchar](255) NULL,
	[c_prechewed_food_non_bp] [varchar](255) NULL,
	[other_drug_specify] [varchar](255) NULL,
	[first_postest_self] [varchar](255) NULL,
	[last_negtest_self] [varchar](255) NULL,
	[times_tested_2yrs_self] [varchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARCHIVE_BIRTH_HISTORY]    Script Date: 6/1/2023 8:39:16 PM ******/
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
	[congenital_disorders] [char](1) NULL,
	[congenital_disorders_cd] [varchar](50) NULL,
	[infant_transfer] [char](1) NULL,
	[breastfed_discharge] [char](1) NULL,
	[neonatal_status] [char](1) NULL,
	[neonatal_status_weeks] [char](2) NULL,
	[month_preg_pnc] [char](2) NULL,
	[zido_preg] [char](1) NULL,
	[zido_week] [char](2) NULL,
	[zido_labor] [char](1) NULL,
	[zido_prior_preg] [char](1) NULL,
	[other_art_preg] [char](1) NULL,
	[other_art_preg_cd] [varchar](18) NULL,
	[other_art_labor] [char](1) NULL,
	[other_art_labor_cd] [varchar](18) NULL,
	[maternal_dob] [char](8) NULL,
	[maternal_sndx] [char](4) NULL,
	[maternal_stateno] [varchar](35) NULL,
	[maternal_birth_country_cd] [char](3) NULL,
	[maternal_birth_country_usd] [char](3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARV_PROPHYLAXIS]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIRTH_DELIVERY]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIRTH_HISTORY]    Script Date: 6/1/2023 8:39:16 PM ******/
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
	[zido_preg] [char](1) NULL,
	[zido_week] [char](2) NULL,
	[zido_labor] [char](1) NULL,
	[zido_prior_preg] [char](1) NULL,
	[other_art_preg] [char](1) NULL,
	[other_art_preg_cd] [varchar](18) NULL,
	[other_art_labor] [char](1) NULL,
	[other_art_labor_cd] [varchar](18) NULL,
	[rupture_dt] [char](8) NULL,
	[rupture_time] [char](8) NULL,
	[delivery_dt] [char](8) NULL,
	[delivery_time] [char](8) NULL,
	[birth_history_avail] [char](1) NULL,
 CONSTRAINT [PK_BIRTH_HISTORY] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIRTH_WORKINGTABLE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BIRTH_WORKINGTABLE](
	[record_no] [numeric](10, 0) NULL,
	[parent_id] [varchar](255) NULL,
	[rollup_no] [varchar](255) NULL,
	[doc_type] [varchar](255) NULL,
	[stateno] [varchar](255) NULL,
	[import_uid] [numeric](10, 0) NULL,
	[cityno] [varchar](255) NULL,
	[source] [varchar](255) NULL,
	[rep_city] [varchar](255) NULL,
	[rcvd_dt] [varchar](255) NULL,
	[init_invest] [varchar](255) NULL,
	[surv_method] [varchar](255) NULL,
	[complete_dt] [varchar](255) NULL,
	[author] [varchar](255) NULL,
	[certificate_no] [varchar](255) NULL,
	[author_phone] [varchar](255) NULL,
	[birth_fac_id] [varchar](255) NULL,
	[birth_hosp_name] [varchar](255) NULL,
	[birth_hosp_name2] [varchar](255) NULL,
	[birth_fac_type] [varchar](255) NULL,
	[birth_hosp_set] [varchar](255) NULL,
	[birth_hosp_addr1] [varchar](255) NULL,
	[birth_hosp_addr2] [varchar](255) NULL,
	[birth_hosp_city] [varchar](255) NULL,
	[birth_hosp_cnty] [varchar](255) NULL,
	[birth_hosp_state] [varchar](255) NULL,
	[birth_hosp_zip] [varchar](255) NULL,
	[birth_hosp_cntry] [varchar](255) NULL,
	[birth_hosp_usd] [varchar](255) NULL,
	[birth_hosp_phone] [varchar](255) NULL,
	[birth_hosp_fax] [varchar](255) NULL,
	[birth_hosp_email] [varchar](255) NULL,
	[birth_hosp_fund] [varchar](255) NULL,
	[birth_hosp_fund_cd] [varchar](255) NULL,
	[cts_no] [varchar](255) NULL,
	[adap_no] [varchar](255) NULL,
	[ryan_no] [varchar](255) NULL,
	[stdmis_no] [varchar](255) NULL,
	[prison_no] [varchar](255) NULL,
	[rvct_no] [varchar](255) NULL,
	[pathars_no] [varchar](255) NULL,
	[patasd_no] [varchar](255) NULL,
	[hivno_hars] [varchar](255) NULL,
	[pems_client_unique_key] [varchar](255) NULL,
	[pems_local_client_key] [varchar](255) NULL,
	[pems_form_id] [varchar](255) NULL,
	[ucsf_no] [varchar](255) NULL,
	[ssn] [varchar](255) NULL,
	[tracking_id] [varchar](255) NULL,
	[gen_id1] [varchar](255) NULL,
	[mmp_parid] [varchar](255) NULL,
	[fimr_id] [varchar](255) NULL,
	[prefix] [varchar](255) NULL,
	[f_name] [varchar](255) NULL,
	[l_name] [varchar](255) NULL,
	[m_name] [varchar](255) NULL,
	[suffix] [varchar](255) NULL,
	[name_use_cd] [varchar](255) NULL,
	[birth_sex] [varchar](255) NULL,
	[birth_place] [varchar](255) NULL,
	[birth_dt] [varchar](255) NULL,
	[mother_prefix] [varchar](255) NULL,
	[mother_f_name] [varchar](255) NULL,
	[mother_l_name] [varchar](255) NULL,
	[mother_m_name] [varchar](255) NULL,
	[mother_suffix] [varchar](255) NULL,
	[mother_name_use_cd] [varchar](255) NULL,
	[mother_addr_1] [varchar](255) NULL,
	[mother_addr_2] [varchar](255) NULL,
	[mother_city] [varchar](255) NULL,
	[mother_cnty] [varchar](255) NULL,
	[mother_state] [varchar](255) NULL,
	[mother_zip_code] [varchar](255) NULL,
	[mother_cntry] [varchar](255) NULL,
	[mother_cntry_usd] [varchar](255) NULL,
	[mother_phone] [varchar](255) NULL,
	[mother_addr_type_cd] [varchar](255) NULL,
	[mother_cityno] [varchar](255) NULL,
	[mother_stateno] [varchar](255) NULL,
	[mother_cts_no] [varchar](255) NULL,
	[mother_adap_no] [varchar](255) NULL,
	[mother_ryan_no] [varchar](255) NULL,
	[mother_stdmis_no] [varchar](255) NULL,
	[mother_prison_no] [varchar](255) NULL,
	[mother_rvct_no] [varchar](255) NULL,
	[mother_pathars_no] [varchar](255) NULL,
	[mother_patasd_no] [varchar](255) NULL,
	[mother_hivno_hars] [varchar](255) NULL,
	[m_pems_client_unique_key] [varchar](255) NULL,
	[m_pems_local_client_key] [varchar](255) NULL,
	[m_pems_form_id] [varchar](255) NULL,
	[mother_ucsf_no] [varchar](255) NULL,
	[mother_ssn] [varchar](255) NULL,
	[mother_tracking_id] [varchar](255) NULL,
	[mother_gen_id1] [varchar](255) NULL,
	[mother_birth_dt] [varchar](255) NULL,
	[mother_mmp_parid] [varchar](255) NULL,
	[mother_fimr_id] [varchar](255) NULL,
	[mother_birth_cntry] [varchar](255) NULL,
	[mother_birth_usd] [varchar](255) NULL,
	[mother_ethnicity] [varchar](255) NULL,
	[mother_ethnicity2] [varchar](255) NULL,
	[mother_race1] [varchar](255) NULL,
	[mother_race2] [varchar](255) NULL,
	[mother_race3] [varchar](255) NULL,
	[mother_race4] [varchar](255) NULL,
	[mother_race5] [varchar](255) NULL,
	[first_prenatal_care_dt] [varchar](255) NULL,
	[last_prenatal_care_dt] [varchar](255) NULL,
	[num_pnc_visits] [varchar](255) NULL,
	[last_normal_menses_dt] [varchar](255) NULL,
	[num_prev_live_births] [varchar](255) NULL,
	[last_live_birth_dt] [varchar](255) NULL,
	[delivery_method] [varchar](255) NULL,
	[father_ethnicity] [varchar](255) NULL,
	[father_ethnicity2] [varchar](255) NULL,
	[father_race1] [varchar](255) NULL,
	[father_race2] [varchar](255) NULL,
	[father_race3] [varchar](255) NULL,
	[father_race4] [varchar](255) NULL,
	[father_race5] [varchar](255) NULL,
	[m_hiv_status] [varchar](255) NULL,
	[m_first_pos_dt] [varchar](255) NULL,
	[m_counseled] [varchar](255) NULL,
	[m_perinatl_hiv] [varchar](255) NULL,
	[m_idu] [varchar](255) NULL,
	[m_hetsex_idu] [varchar](255) NULL,
	[m_hetsex_bimale] [varchar](255) NULL,
	[m_hetsex_hemo] [varchar](255) NULL,
	[m_hetsex_transfus] [varchar](255) NULL,
	[m_hetsex_transpl] [varchar](255) NULL,
	[m_hetsex_hivaids] [varchar](255) NULL,
	[m_transfus] [varchar](255) NULL,
	[m_transpl] [varchar](255) NULL,
	[m_first_trans_dt] [varchar](255) NULL,
	[m_last_trans_dt] [varchar](255) NULL,
	[c_idu] [varchar](255) NULL,
	[c_rcvd_clot_factor] [varchar](255) NULL,
	[c_clott_factor] [varchar](255) NULL,
	[c_factor_dt] [varchar](255) NULL,
	[c_rcvd_transf] [varchar](255) NULL,
	[c_first_transf_dt] [varchar](255) NULL,
	[c_last_transf_dt] [varchar](255) NULL,
	[c_rcvd_transpl] [varchar](255) NULL,
	[c_sex_male] [varchar](255) NULL,
	[c_sex_female] [varchar](255) NULL,
	[c_oth_risk] [varchar](255) NULL,
	[c_nir] [varchar](255) NULL,
	[c_complete_dt] [varchar](255) NULL,
	[birth_weight_grams] [varchar](255) NULL,
	[gestation_est] [varchar](255) NULL,
	[birth_type] [varchar](255) NULL,
	[anencephaly] [varchar](255) NULL,
	[cong_heart_dis] [varchar](255) NULL,
	[omphalocele] [varchar](255) NULL,
	[limb_reduct_defect] [varchar](255) NULL,
	[cleft_lip_palate] [varchar](255) NULL,
	[cleft_palate_only] [varchar](255) NULL,
	[susp_chromo_disorder] [varchar](255) NULL,
	[chrom_karyo_conf] [varchar](255) NULL,
	[chrom_karyo_pend] [varchar](255) NULL,
	[spina_bifida] [varchar](255) NULL,
	[cong_diaphrm_hernia] [varchar](255) NULL,
	[gastro] [varchar](255) NULL,
	[down_synd] [varchar](255) NULL,
	[ds_karyo_conf] [varchar](255) NULL,
	[ds_karyo_pend] [varchar](255) NULL,
	[hypospadias] [varchar](255) NULL,
	[none_of_above] [varchar](255) NULL,
	[transferred_24hrs] [varchar](255) NULL,
	[trans_facility_uid] [varchar](255) NULL,
	[trans_facility_name] [varchar](255) NULL,
	[trans_facility_name2] [varchar](255) NULL,
	[trans_facility_type] [varchar](255) NULL,
	[trans_facility_set] [varchar](255) NULL,
	[trans_facility_addr1] [varchar](255) NULL,
	[trans_facility_addr2] [varchar](255) NULL,
	[trans_facility_zip] [varchar](255) NULL,
	[trans_facility_city] [varchar](255) NULL,
	[trans_facility_cnty] [varchar](255) NULL,
	[trans_facility_st] [varchar](255) NULL,
	[trans_facility_cntry] [varchar](255) NULL,
	[trans_facility_usd] [varchar](255) NULL,
	[trans_facility_phone] [varchar](255) NULL,
	[trans_facility_fax] [varchar](255) NULL,
	[trans_facility_email] [varchar](255) NULL,
	[trans_facility_fund] [varchar](255) NULL,
	[trans_facility_fund_cd] [varchar](255) NULL,
	[infant_vital_status] [varchar](255) NULL,
	[breastfed_discharge] [varchar](255) NULL,
	[comments] [varchar](255) NULL,
	[site_cd] [varchar](255) NULL,
	[ssn_alias] [varchar](255) NULL,
	[medrecno] [varchar](255) NULL,
	[medicaidno] [varchar](255) NULL,
	[insno] [varchar](255) NULL,
	[rephlthdeptno] [varchar](255) NULL,
	[mother_ssn_alias] [varchar](255) NULL,
	[mother_medrecno] [varchar](255) NULL,
	[mother_medicaidno] [varchar](255) NULL,
	[mother_insno] [varchar](255) NULL,
	[mother_rephlthdeptno] [varchar](255) NULL,
	[census_metro_area] [varchar](255) NULL,
	[census_tract] [varchar](225) NULL,
	[census_group] [varchar](225) NULL,
	[census_block_gp] [varchar](225) NULL,
	[cong_district] [varchar](225) NULL,
	[addr_original_type_cd] [varchar](255) NULL,
	[geographic_level] [varchar](255) NULL,
	[evalweb_client_id] [varchar](255) NULL,
	[evalweb_form_id] [varchar](255) NULL,
	[evalweb_ps_case_num] [varchar](255) NULL,
	[idss_person_id] [varchar](255) NULL,
	[idss_event_id] [varchar](255) NULL,
	[mother_evalweb_client_id] [varchar](255) NULL,
	[mother_evalweb_form_id] [varchar](255) NULL,
	[mother_evalweb_ps_case_num] [varchar](255) NULL,
	[mother_idss_person_id] [varchar](255) NULL,
	[mother_idss_event_id] [varchar](255) NULL,
	[c_breastfed_bp] [varchar](255) NULL,
	[c_prechewed_food_bp] [varchar](255) NULL,
	[c_breastfed_non_bp] [varchar](255) NULL,
	[c_prechewed_food_non_bp] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BIRTHING_PERSON_HISTORY]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONVERSION_STATUS]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONVERSION_STATUS](
	[RunNum] [int] IDENTITY(1,1) NOT NULL,
	[conversion_type] [varchar](50) NOT NULL,
	[site_cd] [char](4) NOT NULL,
	[status_code] [int] NULL,
	[status] [varchar](1000) NULL,
	[startdate] [datetime] NULL,
	[enddate] [datetime] NULL,
	[error_description] [varchar](2000) NULL,
	[conversion_directory] [varchar](2000) NULL,
	[conversion_file] [varchar](2000) NULL,
 CONSTRAINT [PK_CONVERSION_STATUS] PRIMARY KEY CLUSTERED 
(
	[RunNum] ASC,
	[conversion_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDL_LOG]    Script Date: 6/1/2023 8:39:16 PM ******/
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
/****** Object:  Table [dbo].[DEATH]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEATH_DX]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEATH_WORKINGTABLE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEATH_WORKINGTABLE](
	[record_no] [numeric](10, 0) NULL,
	[parent_id] [varchar](255) NULL,
	[rollup_no] [varchar](255) NULL,
	[doc_type] [varchar](255) NULL,
	[stateno] [varchar](255) NULL,
	[import_uid] [numeric](10, 0) NULL,
	[cityno] [varchar](255) NULL,
	[source] [varchar](255) NULL,
	[rep_city] [varchar](255) NULL,
	[rcvd_dt] [varchar](255) NULL,
	[init_invest] [varchar](255) NULL,
	[surv_method] [varchar](255) NULL,
	[complete_dt] [varchar](255) NULL,
	[medrecno] [varchar](255) NULL,
	[cts_no] [varchar](255) NULL,
	[adap_no] [varchar](255) NULL,
	[ryan_no] [varchar](255) NULL,
	[stdmis_no] [varchar](255) NULL,
	[prison_no] [varchar](255) NULL,
	[rvct_no] [varchar](255) NULL,
	[pathars_no] [varchar](255) NULL,
	[patasd_no] [varchar](255) NULL,
	[hivno_hars] [varchar](255) NULL,
	[pems_client_unique_key] [varchar](255) NULL,
	[pems_local_client_key] [varchar](255) NULL,
	[pems_form_id] [varchar](255) NULL,
	[ucsf_no] [varchar](255) NULL,
	[ssn] [varchar](255) NULL,
	[tracking_id] [varchar](255) NULL,
	[gen_id1] [varchar](255) NULL,
	[prefix] [varchar](255) NULL,
	[f_name] [varchar](255) NULL,
	[l_name] [varchar](255) NULL,
	[m_name] [varchar](255) NULL,
	[f_name_sndx] [varchar](255) NULL,
	[l_name_sndx] [varchar](255) NULL,
	[suffix] [varchar](255) NULL,
	[name_use_cd] [varchar](255) NULL,
	[addr_1] [varchar](255) NULL,
	[addr_2] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[cnty] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[zip_code] [varchar](255) NULL,
	[cntry] [varchar](255) NULL,
	[cntry_usd] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[addr_type_cd] [varchar](255) NULL,
	[birth_dt] [varchar](255) NULL,
	[education] [varchar](255) NULL,
	[race1] [varchar](255) NULL,
	[race2] [varchar](255) NULL,
	[race3] [varchar](255) NULL,
	[race4] [varchar](255) NULL,
	[race5] [varchar](255) NULL,
	[ethnicity] [varchar](255) NULL,
	[ethnicity2] [varchar](255) NULL,
	[birth_sex] [varchar](255) NULL,
	[gender] [varchar](255) NULL,
	[curr_sex] [varchar](255) NULL,
	[marital_status] [varchar](255) NULL,
	[certificate_no] [varchar](255) NULL,
	[death_dt] [varchar](255) NULL,
	[death_city] [varchar](255) NULL,
	[death_st] [varchar](255) NULL,
	[death_cnty] [varchar](255) NULL,
	[death_cntry] [varchar](255) NULL,
	[death_usd] [varchar](255) NULL,
	[death_place] [varchar](255) NULL,
	[autopsy] [varchar](255) NULL,
	[death_cause] [varchar](255) NULL,
	[rel_cause1] [varchar](255) NULL,
	[rel_cause2] [varchar](255) NULL,
	[rel_cause3] [varchar](255) NULL,
	[rel_cause4] [varchar](255) NULL,
	[rel_cause5] [varchar](255) NULL,
	[rel_cause6] [varchar](255) NULL,
	[rel_cause7] [varchar](255) NULL,
	[rel_cause8] [varchar](255) NULL,
	[rel_cause9] [varchar](255) NULL,
	[rel_cause10] [varchar](255) NULL,
	[rel_cause11] [varchar](255) NULL,
	[rel_cause12] [varchar](255) NULL,
	[rel_cause13] [varchar](255) NULL,
	[rel_cause14] [varchar](255) NULL,
	[rel_cause15] [varchar](255) NULL,
	[rel_cause16] [varchar](255) NULL,
	[rel_cause17] [varchar](255) NULL,
	[rel_cause18] [varchar](255) NULL,
	[rel_cause19] [varchar](255) NULL,
	[rel_cause20] [varchar](255) NULL,
	[comments] [varchar](255) NULL,
	[site_cd] [varchar](255) NULL,
	[mmp_parid] [varchar](255) NULL,
	[fimr_id] [varchar](255) NULL,
	[ssn_alias] [varchar](255) NULL,
	[medicaidno] [varchar](255) NULL,
	[insno] [varchar](255) NULL,
	[rephlthdeptno] [varchar](255) NULL,
	[census_metro_area] [varchar](255) NULL,
	[census_tract] [varchar](225) NULL,
	[census_group] [varchar](225) NULL,
	[census_block_gp] [varchar](225) NULL,
	[cong_district] [varchar](225) NULL,
	[addr_original_type_cd] [varchar](255) NULL,
	[geographic_level] [varchar](255) NULL,
	[evalweb_client_id] [varchar](255) NULL,
	[evalweb_form_id] [varchar](255) NULL,
	[evalweb_ps_case_num] [varchar](255) NULL,
	[idss_person_id] [varchar](255) NULL,
	[idss_event_id] [varchar](255) NULL,
	[gender_identity] [varchar](255) NULL,
	[other_gender_identity] [varchar](255) NULL,
	[gender_identity_dt] [varchar](255) NULL,
	[sexual_orientation] [varchar](255) NULL,
	[other_sexual_orientation] [varchar](255) NULL,
	[sexual_orientation_dt] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DML_LOG]    Script Date: 6/1/2023 8:39:16 PM ******/
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
/****** Object:  Table [dbo].[DOCUMENT]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ERROR_DESCRIPTION]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ERROR_DESCRIPTION](
	[Error_NO] [int] NOT NULL,
	[Type_of_Error] [char](10) NULL,
	[Description] [varchar](2000) NOT NULL,
 CONSTRAINT [PK_Error_Description] PRIMARY KEY CLUSTERED 
(
	[Error_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACILITY_CODE_STAGING]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACILITY_CODE_STAGING](
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
	[import_uid] [numeric](10, 0) NULL,
 CONSTRAINT [PK_FACILITY_CODE_STAGING] PRIMARY KEY CLUSTERED 
(
	[facility_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACILITY_EVENT]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FIELD_TRANSLATION]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIELD_TRANSLATION](
	[field_name] [varchar](25) NOT NULL,
	[incoming_value] [varchar](100) NULL,
	[outgoing_value] [varchar](100) NULL,
	[description] [varchar](1024) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FIELD_VALIDATION]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FIELD_VALIDATION](
	[workflow_name] [varchar](25) NOT NULL,
	[field_name] [varchar](40) NOT NULL,
	[required] [bit] NOT NULL,
	[length] [varchar](5) NULL,
	[ehars_input_validation] [varchar](25) NULL,
	[field_order] [int] NOT NULL,
	[tab_name] [varchar](255) NULL,
	[tab_section_name] [varchar](255) NULL,
	[display_name] [varchar](255) NULL,
	[mandatory] [bit] NULL,
	[section_mandatory] [bit] NULL,
	[section_dependent] [bit] NULL,
	[field_dependency] [varchar](255) NULL,
	[display] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ID]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMPORT_DETAIL]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_DETAIL](
	[import_uid] [numeric](10, 0) NOT NULL,
	[import_detail_uid] [int] IDENTITY(1,1) NOT NULL,
	[record_no] [int] NOT NULL,
	[rollup_no] [varchar](50) NULL,
	[state_no] [varchar](50) NULL,
	[document_uid] [varchar](50) NULL,
	[import_record_type_UID] [int] NOT NULL,
	[error_no] [int] NOT NULL,
	[field_name] [varchar](255) NULL,
	[field_value] [varchar](255) NULL,
	[status_flag] [varchar](50) NULL,
	[edit_check_message] [varchar](8000) NULL,
	[doc_type] [varchar](3) NULL,
 CONSTRAINT [PK_Import_Detail] PRIMARY KEY CLUSTERED 
(
	[import_detail_uid] ASC,
	[import_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMPORT_DOCUMENT_MAPPING]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_DOCUMENT_MAPPING](
	[import_uid] [numeric](10, 0) NOT NULL,
	[record_no] [int] NOT NULL,
	[document_uid] [varchar](16) NULL,
	[ehars_uid] [varchar](16) NULL,
	[load] [bit] NOT NULL,
 CONSTRAINT [PK_IMPORT_DOCUMENT_MAPPING] PRIMARY KEY CLUSTERED 
(
	[import_uid] ASC,
	[record_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMPORT_LOG]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_LOG](
	[import_uid] [numeric](10, 0) NOT NULL,
	[file_name] [varchar](50) NOT NULL,
	[start_date_time_stamp] [varchar](50) NULL,
	[end_date_time_stamp] [varchar](50) NULL,
	[import_process_flow_uid] [int] NOT NULL,
	[error_description] [varchar](255) NULL,
	[total_number_of_records] [int] NULL,
	[rejected_number_of_records] [int] NULL,
	[imported_number_of_records_with_edit_checks] [int] NULL,
	[imported_number_of_records_with_success] [int] NULL,
	[number_of_cases_updated] [int] NULL,
	[number_of_cases_created] [int] NULL,
	[number_of_1_to_0_matches] [int] NULL,
	[number_of_1_to_1_matches] [int] NULL,
	[user_id] [varchar](50) NOT NULL,
	[workflow_name] [varchar](10) NULL,
	[match_type] [int] NULL,
	[match_field_uid] [varchar](50) NULL,
	[template_uid] [numeric](18, 0) NULL,
	[one_to_one_hybrid_match] [char](1) NULL,
	[one_to_zero_hybrid_match] [char](1) NULL,
 CONSTRAINT [PK_IMPORT_LOG] PRIMARY KEY CLUSTERED 
(
	[import_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMPORT_MAPPING]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_MAPPING](
	[mapping_uid] [int] IDENTITY(1,1) NOT NULL,
	[import_uid] [numeric](10, 0) NOT NULL,
	[staging_document_uid] [varchar](50) NOT NULL,
	[ehars_document_uid] [varchar](50) NULL,
	[ehars_uid] [varchar](50) NULL,
	[rank] [int] NULL,
	[staging_state_no] [varchar](35) NULL,
	[staging_first_name] [varchar](50) NULL,
	[staging_middle_name] [varchar](50) NULL,
	[staging_last_name] [varchar](50) NULL,
	[staging_ssn] [varchar](35) NULL,
	[staging_dob] [char](10) NULL,
	[staging_birth_sex] [char](8) NULL,
	[staging_ethnicity] [varchar](256) NULL,
	[staging_race] [varchar](256) NULL,
	[ehars_state_no] [varchar](35) NULL,
	[ehars_first_name] [varchar](50) NULL,
	[ehars_middle_name] [varchar](50) NULL,
	[ehars_last_name] [varchar](50) NULL,
	[ehars_ssn] [varchar](35) NULL,
	[ehars_dob] [char](10) NULL,
	[ehars_birth_sex] [char](8) NULL,
	[ehars_ethnicity] [varchar](256) NULL,
	[ehars_race] [varchar](256) NULL,
	[staging_site_cd] [char](4) NULL,
	[ehars_site_cd] [char](4) NULL,
	[is_view_restricted] [char](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMPORT_MATCH_CODE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_MATCH_CODE](
	[match_cd_uid] [int] IDENTITY(1,1) NOT NULL,
	[import_uid] [numeric](10, 0) NOT NULL,
	[document_uid] [varchar](50) NOT NULL,
	[match_field_uid] [int] NOT NULL,
	[match_cd] [varchar](50) NULL,
 CONSTRAINT [PK_IMPORT_MATCH_CODE] PRIMARY KEY CLUSTERED 
(
	[match_cd_uid] ASC,
	[import_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMPORT_PROCESS_FLOW]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_PROCESS_FLOW](
	[import_process_flow_uid] [int] NOT NULL,
	[descrption] [varchar](70) NOT NULL,
	[user_message] [varchar](70) NULL,
 CONSTRAINT [PK_Import_Process_Flow] PRIMARY KEY CLUSTERED 
(
	[import_process_flow_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMPORT_QUEUE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_QUEUE](
	[import_uid] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[file_name] [varchar](50) NOT NULL,
	[user_id] [varchar](50) NOT NULL,
	[import_queue_status_uid] [int] NULL,
 CONSTRAINT [PK_IMPORT_QUEUE] PRIMARY KEY CLUSTERED 
(
	[import_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMPORT_QUEUE_STATUS]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_QUEUE_STATUS](
	[import_queue_status_uid] [int] NOT NULL,
	[description] [varchar](70) NULL,
 CONSTRAINT [PK_import_queue_status_uid] PRIMARY KEY CLUSTERED 
(
	[import_queue_status_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMPORT_RECORD_TYPE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_RECORD_TYPE](
	[import_record_type_uid] [int] NOT NULL,
	[description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Import_Record_Type] PRIMARY KEY CLUSTERED 
(
	[import_record_type_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMPORT_RELEVANT_FIELD]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_RELEVANT_FIELD](
	[workflow_name] [varchar](20) NOT NULL,
	[match_field_uid] [int] NOT NULL,
 CONSTRAINT [PK_IMPORT_RELEVANT_FIELD] PRIMARY KEY CLUSTERED 
(
	[workflow_name] ASC,
	[match_field_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMPORT_TEMPLATE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_TEMPLATE](
	[template_uid] [numeric](10, 0) IDENTITY(1,1) NOT NULL,
	[template_name] [varchar](50) NULL,
	[workflow_name] [varchar](10) NULL,
 CONSTRAINT [PK_IMPORT_TEMPLATE] PRIMARY KEY CLUSTERED 
(
	[template_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMPORT_TEMPLATE_FIELD]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_TEMPLATE_FIELD](
	[template_uid] [numeric](10, 0) NULL,
	[field_name] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INCIDENCE_WORKINGTABLE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INCIDENCE_WORKINGTABLE](
	[record_no] [numeric](10, 0) NULL,
	[parent_id] [varchar](255) NULL,
	[rollup_no] [varchar](255) NULL,
	[doc_type] [varchar](255) NULL,
	[stateno] [varchar](255) NULL,
	[import_uid] [numeric](10, 0) NULL,
	[cityno] [varchar](255) NULL,
	[source] [varchar](255) NULL,
	[rep_city] [varchar](255) NULL,
	[rcvd_dt] [varchar](255) NULL,
	[init_invest] [varchar](255) NULL,
	[surv_method] [varchar](255) NULL,
	[complete_dt] [varchar](255) NULL,
	[author] [varchar](255) NULL,
	[author_phone] [varchar](255) NULL,
	[medrecno] [varchar](255) NULL,
	[cts_no] [varchar](255) NULL,
	[adap_no] [varchar](255) NULL,
	[ryan_no] [varchar](255) NULL,
	[stdmis_no] [varchar](255) NULL,
	[prison_no] [varchar](255) NULL,
	[rvct_no] [varchar](255) NULL,
	[pathars_no] [varchar](255) NULL,
	[patasd_no] [varchar](255) NULL,
	[hivno_hars] [varchar](255) NULL,
	[pems_client_unique_key] [varchar](255) NULL,
	[pems_local_client_key] [varchar](255) NULL,
	[pems_form_id] [varchar](255) NULL,
	[ucsf_no] [varchar](255) NULL,
	[ssn] [varchar](255) NULL,
	[tracking_id] [varchar](255) NULL,
	[gen_id1] [varchar](255) NULL,
	[prefix] [varchar](255) NULL,
	[f_name] [varchar](255) NULL,
	[l_name] [varchar](255) NULL,
	[m_name] [varchar](255) NULL,
	[f_name_sndx] [varchar](255) NULL,
	[l_name_sndx] [varchar](255) NULL,
	[suffix] [varchar](255) NULL,
	[name_use_cd] [varchar](255) NULL,
	[addr_1] [varchar](255) NULL,
	[addr_2] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[cnty] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[zip_code] [varchar](255) NULL,
	[cntry] [varchar](255) NULL,
	[cntry_usd] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[addr_type_cd] [varchar](255) NULL,
	[fac_cplt_form] [varchar](255) NULL,
	[fac_cplt_name2] [varchar](255) NULL,
	[fac_cplt_addr1] [varchar](255) NULL,
	[fac_cplt_addr2] [varchar](255) NULL,
	[fac_cplt_city] [varchar](255) NULL,
	[fac_cplt_cnty] [varchar](255) NULL,
	[fac_cplt_st] [varchar](255) NULL,
	[fac_cplt_zip] [varchar](255) NULL,
	[fac_cplt_cntry] [varchar](255) NULL,
	[fac_cplt_usd] [varchar](255) NULL,
	[fac_cplt_set] [varchar](255) NULL,
	[fac_cplt_phone] [varchar](255) NULL,
	[fac_cplt_uid] [varchar](255) NULL,
	[fac_cplt_type] [varchar](255) NULL,
	[fac_cplt_email] [varchar](255) NULL,
	[fac_cplt_fax] [varchar](255) NULL,
	[fac_cplt_fund] [varchar](255) NULL,
	[fac_cplt_fund_cd] [varchar](255) NULL,
	[birth_dt] [varchar](255) NULL,
	[alias_birth_dt] [varchar](255) NULL,
	[education] [varchar](255) NULL,
	[race1] [varchar](255) NULL,
	[race2] [varchar](255) NULL,
	[race3] [varchar](255) NULL,
	[race4] [varchar](255) NULL,
	[race5] [varchar](255) NULL,
	[ethnicity] [varchar](255) NULL,
	[ethnicity2] [varchar](255) NULL,
	[birth_sex] [varchar](255) NULL,
	[gender] [varchar](255) NULL,
	[curr_sex] [varchar](255) NULL,
	[marital_status] [varchar](255) NULL,
	[birth_cntry] [varchar](255) NULL,
	[birth_usd] [varchar](255) NULL,
	[hcw] [varchar](255) NULL,
	[hcw_occup] [varchar](255) NULL,
	[source_rpt] [varchar](255) NULL,
	[interview_dt] [varchar](255) NULL,
	[possibly_exposed] [varchar](255) NULL,
	[regular_test] [varchar](255) NULL,
	[just_checking] [varchar](255) NULL,
	[required_test] [varchar](255) NULL,
	[other_reason] [varchar](255) NULL,
	[reason] [varchar](255) NULL,
	[previous_hiv_test] [varchar](255) NULL,
	[positive_test] [varchar](255) NULL,
	[first_pos_test_dt] [varchar](255) NULL,
	[annon_test] [varchar](255) NULL,
	[test_site_name] [varchar](255) NULL,
	[test_site_state] [varchar](255) NULL,
	[test_site_type] [varchar](255) NULL,
	[first_postest_worried] [varchar](255) NULL,
	[first_postest_regular] [varchar](255) NULL,
	[first_postest_checking] [varchar](255) NULL,
	[first_postest_required] [varchar](255) NULL,
	[first_postest_other] [varchar](255) NULL,
	[first_postest_reason] [varchar](255) NULL,
	[ever_tested_neg] [varchar](255) NULL,
	[last_negtest_dt] [varchar](255) NULL,
	[last_negtest_sitename] [varchar](255) NULL,
	[last_negtest_st] [varchar](255) NULL,
	[last_negtest_sitetype] [varchar](255) NULL,
	[times_tested_2yrs] [varchar](255) NULL,
	[times_tested_pos] [varchar](255) NULL,
	[first_ever_test_dt] [varchar](255) NULL,
	[medicines_taken] [varchar](255) NULL,
	[medicines_list] [varchar](255) NULL,
	[med_begin_dt] [varchar](255) NULL,
	[current_meds] [varchar](255) NULL,
	[med_last_dt] [varchar](255) NULL,
	[comments] [varchar](255) NULL,
	[site_cd] [varchar](255) NULL,
	[phys_cplt_uid] [varchar](255) NULL,
	[phys_cplt_first] [varchar](255) NULL,
	[phys_cplt_middle] [varchar](255) NULL,
	[phys_cplt_last] [varchar](255) NULL,
	[phys_cplt_suffix] [varchar](255) NULL,
	[phys_cplt_prefix] [varchar](255) NULL,
	[phys_cplt_phone] [varchar](255) NULL,
	[phys_cplt_specialty_cd] [varchar](255) NULL,
	[mmp_parid] [varchar](255) NULL,
	[fimr_id] [varchar](255) NULL,
	[address_dt] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVESTIGATION_CASE]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVESTIGATION_CLUSTER]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LAB]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LAB_ANALYTE]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LAB_GENOTYPE]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LAB_WORKINGTABLE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LAB_WORKINGTABLE](
	[record_no] [numeric](10, 0) NULL,
	[parent_id] [varchar](255) NULL,
	[rollup_no] [varchar](255) NULL,
	[doc_type] [varchar](255) NULL,
	[stateno] [varchar](255) NULL,
	[import_uid] [numeric](10, 0) NULL,
	[cityno] [varchar](255) NULL,
	[source] [varchar](255) NULL,
	[rep_city] [varchar](255) NULL,
	[rcvd_dt] [varchar](255) NULL,
	[init_invest] [varchar](255) NULL,
	[surv_method] [varchar](255) NULL,
	[complete_dt] [varchar](255) NULL,
	[medrecno] [varchar](255) NULL,
	[cts_no] [varchar](255) NULL,
	[adap_no] [varchar](255) NULL,
	[ryan_no] [varchar](255) NULL,
	[stdmis_no] [varchar](255) NULL,
	[prison_no] [varchar](255) NULL,
	[rvct_no] [varchar](255) NULL,
	[pathars_no] [varchar](255) NULL,
	[patasd_no] [varchar](255) NULL,
	[hivno_hars] [varchar](255) NULL,
	[pems_client_unique_key] [varchar](255) NULL,
	[pems_local_client_key] [varchar](255) NULL,
	[pems_form_id] [varchar](255) NULL,
	[ucsf_no] [varchar](255) NULL,
	[ssn] [varchar](255) NULL,
	[tracking_id] [varchar](255) NULL,
	[gen_id1] [varchar](255) NULL,
	[prefix] [varchar](255) NULL,
	[f_name] [varchar](255) NULL,
	[l_name] [varchar](255) NULL,
	[m_name] [varchar](255) NULL,
	[f_name_sndx] [varchar](255) NULL,
	[l_name_sndx] [varchar](255) NULL,
	[suffix] [varchar](255) NULL,
	[name_use_cd] [varchar](255) NULL,
	[addr_1] [varchar](255) NULL,
	[addr_2] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[cnty] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[zip_code] [varchar](255) NULL,
	[cntry] [varchar](255) NULL,
	[cntry_usd] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[addr_type_cd] [varchar](255) NULL,
	[birth_dt] [varchar](255) NULL,
	[education] [varchar](255) NULL,
	[race1] [varchar](255) NULL,
	[race2] [varchar](255) NULL,
	[race3] [varchar](255) NULL,
	[race4] [varchar](255) NULL,
	[race5] [varchar](255) NULL,
	[ethnicity] [varchar](255) NULL,
	[ethnicity2] [varchar](255) NULL,
	[birth_sex] [varchar](255) NULL,
	[gender] [varchar](255) NULL,
	[curr_sex] [varchar](255) NULL,
	[marital_status] [varchar](255) NULL,
	[facility_name] [varchar](255) NULL,
	[facility_name2] [varchar](255) NULL,
	[facility_phone] [varchar](255) NULL,
	[facility_addr1] [varchar](255) NULL,
	[facility_addr2] [varchar](255) NULL,
	[facility_city] [varchar](255) NULL,
	[facility_cnty] [varchar](255) NULL,
	[facility_st] [varchar](255) NULL,
	[facility_zip] [varchar](255) NULL,
	[facility_cntry] [varchar](255) NULL,
	[facility_usd] [varchar](255) NULL,
	[facility_set] [varchar](255) NULL,
	[facility_uid] [varchar](255) NULL,
	[facility_type] [varchar](255) NULL,
	[facility_fax] [varchar](255) NULL,
	[facility_email] [varchar](255) NULL,
	[facility_fund] [varchar](255) NULL,
	[facility_fund_cd] [varchar](255) NULL,
	[phys_first] [varchar](255) NULL,
	[phys_last] [varchar](255) NULL,
	[phys_middle] [varchar](255) NULL,
	[phys_suffix] [varchar](255) NULL,
	[phys_phone] [varchar](255) NULL,
	[specialty_cd] [varchar](255) NULL,
	[accession_no] [varchar](255) NULL,
	[specimen_id] [varchar](255) NULL,
	[lab_test_name] [varchar](255) NULL,
	[colldate] [varchar](255) NULL,
	[specimen_receive_dt] [varchar](255) NULL,
	[result_dt] [varchar](255) NULL,
	[specimentype] [varchar](255) NULL,
	[lab_result] [varchar](255) NULL,
	[lab_units] [varchar](255) NULL,
	[viral_range] [varchar](255) NULL,
	[interpretation] [varchar](255) NULL,
	[lab_clia_no] [varchar](255) NULL,
	[lab_specific_note] [varchar](255) NULL,
	[starhs_sample_id] [varchar](255) NULL,
	[comments] [varchar](255) NULL,
	[site_cd] [varchar](255) NULL,
	[sreason] [varchar](255) NULL,
	[provider_uid] [varchar](255) NULL,
	[phys_prefix] [varchar](255) NULL,
	[lab_test_type] [varchar](255) NULL,
	[result_range_lower] [varchar](255) NULL,
	[result_range_upper] [varchar](255) NULL,
	[manufacturer] [varchar](255) NULL,
	[genotype_sequence] [varchar](max) NULL,
	[swm] [varchar](255) NULL,
	[swf] [varchar](255) NULL,
	[idu] [varchar](255) NULL,
	[rcvd_clot_factor] [varchar](255) NULL,
	[factor_type] [varchar](255) NULL,
	[factor_dt] [varchar](255) NULL,
	[sexidu] [varchar](255) NULL,
	[sexbi] [varchar](255) NULL,
	[sexhemo] [varchar](255) NULL,
	[sex_transf] [varchar](255) NULL,
	[sex_transpl] [varchar](255) NULL,
	[sex_aidshiv] [varchar](255) NULL,
	[rcvd_transf] [varchar](255) NULL,
	[first_trans_dt] [varchar](255) NULL,
	[last_trans_dt] [varchar](255) NULL,
	[rcvd_transpl] [varchar](255) NULL,
	[hlth_worker] [varchar](255) NULL,
	[occupation] [varchar](255) NULL,
	[other_risk] [varchar](255) NULL,
	[nir] [varchar](255) NULL,
	[nir_dt] [varchar](255) NULL,
	[rec_reviewed] [varchar](255) NULL,
	[pediatric_risk_factor] [varchar](255) NULL,
	[m_hiv_status] [varchar](255) NULL,
	[m_first_pos_dt] [varchar](255) NULL,
	[m_counseled] [varchar](255) NULL,
	[m_perinatl_hiv] [varchar](255) NULL,
	[m_idu] [varchar](255) NULL,
	[m_hetsex_idu] [varchar](255) NULL,
	[m_hetsex_bimale] [varchar](255) NULL,
	[m_hetsex_hemo] [varchar](255) NULL,
	[m_hetsex_transfus] [varchar](255) NULL,
	[m_hetsex_transpl] [varchar](255) NULL,
	[m_hetsex_hivaids] [varchar](255) NULL,
	[m_transfus] [varchar](255) NULL,
	[m_first_trans_dt] [varchar](255) NULL,
	[m_last_trans_dt] [varchar](255) NULL,
	[m_transpl] [varchar](255) NULL,
	[c_idu] [varchar](255) NULL,
	[c_rcvd_clot_factor] [varchar](255) NULL,
	[c_clott_factor] [varchar](255) NULL,
	[c_factor_dt] [varchar](255) NULL,
	[c_rcvd_transf] [varchar](255) NULL,
	[c_first_transf_dt] [varchar](255) NULL,
	[c_last_transf_dt] [varchar](255) NULL,
	[c_rcvd_transpl] [varchar](255) NULL,
	[c_sex_male] [varchar](255) NULL,
	[c_sex_female] [varchar](255) NULL,
	[c_oth_risk] [varchar](255) NULL,
	[c_nir] [varchar](255) NULL,
	[c_complete_dt] [varchar](255) NULL,
	[mmp_parid] [varchar](255) NULL,
	[fimr_id] [varchar](255) NULL,
	[lab_rollup_no] [varchar](255) NULL,
	[ssn_alias] [varchar](255) NULL,
	[medicaidno] [varchar](255) NULL,
	[insno] [varchar](255) NULL,
	[rephlthdeptno] [varchar](255) NULL,
	[census_metro_area] [varchar](255) NULL,
	[census_tract] [varchar](225) NULL,
	[census_group] [varchar](225) NULL,
	[census_block_gp] [varchar](225) NULL,
	[cong_district] [varchar](225) NULL,
	[addr_original_type_cd] [varchar](255) NULL,
	[geographic_level] [varchar](255) NULL,
	[evalweb_client_id] [varchar](255) NULL,
	[evalweb_form_id] [varchar](255) NULL,
	[evalweb_ps_case_num] [varchar](255) NULL,
	[idss_person_id] [varchar](255) NULL,
	[idss_event_id] [varchar](255) NULL,
	[gender_identity] [varchar](255) NULL,
	[other_gender_identity] [varchar](255) NULL,
	[gender_identity_dt] [varchar](255) NULL,
	[sexual_orientation] [varchar](255) NULL,
	[other_sexual_orientation] [varchar](255) NULL,
	[sexual_orientation_dt] [varchar](255) NULL,
	[c_breastfed_bp] [varchar](255) NULL,
	[c_prechewed_food_bp] [varchar](255) NULL,
	[c_breastfed_non_bp] [varchar](255) NULL,
	[c_prechewed_food_non_bp] [varchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOCAL_FIELD]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOCAL_FIELD](
	[document_uid] [char](16) NOT NULL,
	[local_field_uid] [char](16) NOT NULL,
	[local_field_value] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OBSERVATION]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OI]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OTHER_HEALTH_CONDITIONS]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PCRF_TMP]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PCRF_TMP](
	[workflow_name] [varchar](25) NOT NULL,
	[field_name] [varchar](40) NOT NULL,
	[required] [bit] NOT NULL,
	[length] [varchar](5) NOT NULL,
	[ehars_input_validation] [varchar](25) NULL,
	[field_order] [int] NOT NULL,
	[tab_name] [varchar](255) NULL,
	[tab_section_name] [varchar](255) NULL,
	[display_name] [varchar](255) NULL,
	[mandatory] [bit] NULL,
	[section_mandatory] [bit] NULL,
	[section_dependent] [bit] NULL,
	[field_dependency] [varchar](255) NULL,
	[display] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PCRF_WORKINGTABLE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PCRF_WORKINGTABLE](
	[record_no] [numeric](10, 0) NULL,
	[parent_id] [varchar](255) NULL,
	[rollup_no] [varchar](255) NULL,
	[doc_type] [varchar](255) NULL,
	[stateno] [varchar](255) NULL,
	[import_uid] [numeric](10, 0) NULL,
	[cityno] [varchar](255) NULL,
	[source] [varchar](255) NULL,
	[rep_city] [varchar](255) NULL,
	[rcvd_dt] [varchar](255) NULL,
	[init_invest] [varchar](255) NULL,
	[surv_method] [varchar](255) NULL,
	[complete_dt] [varchar](255) NULL,
	[author] [varchar](255) NULL,
	[author_phone] [varchar](255) NULL,
	[medrecno] [varchar](255) NULL,
	[cts_no] [varchar](255) NULL,
	[adap_no] [varchar](255) NULL,
	[ryan_no] [varchar](255) NULL,
	[stdmis_no] [varchar](255) NULL,
	[prison_no] [varchar](255) NULL,
	[rvct_no] [varchar](255) NULL,
	[pathars_no] [varchar](255) NULL,
	[patasd_no] [varchar](255) NULL,
	[hivno_hars] [varchar](255) NULL,
	[pems_client_unique_key] [varchar](255) NULL,
	[pems_local_client_key] [varchar](255) NULL,
	[pems_form_id] [varchar](255) NULL,
	[ucsf_no] [varchar](255) NULL,
	[ssn] [varchar](255) NULL,
	[tracking_id] [varchar](255) NULL,
	[gen_id1] [varchar](255) NULL,
	[mmp_parid] [varchar](255) NULL,
	[fimr_id] [varchar](255) NULL,
	[ssn_alias] [varchar](255) NULL,
	[medicaidno] [varchar](255) NULL,
	[insno] [varchar](255) NULL,
	[rephlthdeptno] [varchar](255) NULL,
	[prefix] [varchar](255) NULL,
	[f_name] [varchar](255) NULL,
	[l_name] [varchar](255) NULL,
	[m_name] [varchar](255) NULL,
	[suffix] [varchar](255) NULL,
	[name_use_cd] [varchar](255) NULL,
	[addr_type_cd] [varchar](255) NULL,
	[address_dt] [varchar](255) NULL,
	[addr_1] [varchar](255) NULL,
	[addr_2] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[cnty] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[zip_code] [varchar](255) NULL,
	[cntry] [varchar](255) NULL,
	[cntry_usd] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[census_tract] [varchar](255) NULL,
	[census_block_gp] [varchar](255) NULL,
	[census_metro_area] [varchar](255) NULL,
	[census_group] [varchar](255) NULL,
	[cong_district] [varchar](255) NULL,
	[fac_cplt_uid] [varchar](255) NULL,
	[fac_cplt_form] [varchar](255) NULL,
	[fac_cplt_name2] [varchar](255) NULL,
	[fac_cplt_type] [varchar](255) NULL,
	[fac_cplt_set] [varchar](255) NULL,
	[fac_cplt_addr1] [varchar](255) NULL,
	[fac_cplt_addr2] [varchar](255) NULL,
	[fac_cplt_zip] [varchar](255) NULL,
	[fac_cplt_city] [varchar](255) NULL,
	[fac_cplt_cnty] [varchar](255) NULL,
	[fac_cplt_st] [varchar](255) NULL,
	[fac_cplt_cntry] [varchar](255) NULL,
	[fac_cplt_usd] [varchar](255) NULL,
	[fac_cplt_phone] [varchar](255) NULL,
	[fac_cplt_email] [varchar](255) NULL,
	[fac_cplt_fax] [varchar](255) NULL,
	[fac_cplt_fund] [varchar](255) NULL,
	[fac_cplt_fund_cd] [varchar](255) NULL,
	[phys_cplt_uid] [varchar](255) NULL,
	[phys_cplt_first] [varchar](255) NULL,
	[phys_cplt_middle] [varchar](255) NULL,
	[phys_cplt_last] [varchar](255) NULL,
	[phys_cplt_suffix] [varchar](255) NULL,
	[phys_cplt_prefix] [varchar](255) NULL,
	[phys_cplt_phone] [varchar](255) NULL,
	[phys_cplt_specialty_cd] [varchar](255) NULL,
	[birth_dt] [varchar](255) NULL,
	[alias_birth_dt] [varchar](255) NULL,
	[education] [varchar](255) NULL,
	[race1] [varchar](255) NULL,
	[race2] [varchar](255) NULL,
	[race3] [varchar](255) NULL,
	[race4] [varchar](255) NULL,
	[race5] [varchar](255) NULL,
	[ethnicity] [varchar](255) NULL,
	[ethnicity2] [varchar](255) NULL,
	[birth_sex] [varchar](255) NULL,
	[curr_sex] [varchar](255) NULL,
	[gender] [varchar](255) NULL,
	[marital_status] [varchar](255) NULL,
	[birth_cntry] [varchar](255) NULL,
	[birth_usd] [varchar](255) NULL,
	[vital_status] [varchar](255) NULL,
	[death_dt] [varchar](255) NULL,
	[death_st] [varchar](255) NULL,
	[diag_status] [varchar](255) NULL,
	[age_at_hiv] [varchar](255) NULL,
	[age_hiv_mths] [varchar](255) NULL,
	[age_at_aids] [varchar](255) NULL,
	[age_aids_mths] [varchar](255) NULL,
	[last_med_eval_dt] [varchar](255) NULL,
	[init_hiv_eval_dt] [varchar](255) NULL,
	[event_cd] [varchar](255) NULL,
	[facility_uid] [varchar](255) NULL,
	[facility_name] [varchar](255) NULL,
	[facility_name2] [varchar](255) NULL,
	[facility_type] [varchar](255) NULL,
	[facility_set] [varchar](255) NULL,
	[facility_addr1] [varchar](255) NULL,
	[facility_addr2] [varchar](255) NULL,
	[facility_zip] [varchar](255) NULL,
	[facility_city] [varchar](255) NULL,
	[facility_cnty] [varchar](255) NULL,
	[facility_st] [varchar](255) NULL,
	[facility_cntry] [varchar](255) NULL,
	[facility_usd] [varchar](255) NULL,
	[facility_phone] [varchar](255) NULL,
	[facility_fax] [varchar](255) NULL,
	[facility_email] [varchar](255) NULL,
	[facility_fund] [varchar](255) NULL,
	[facility_fund_cd] [varchar](255) NULL,
	[provider_uid] [varchar](255) NULL,
	[phys_prefix] [varchar](255) NULL,
	[phys_first] [varchar](255) NULL,
	[phys_last] [varchar](255) NULL,
	[phys_middle] [varchar](255) NULL,
	[phys_suffix] [varchar](255) NULL,
	[phys_specialty_cd] [varchar](255) NULL,
	[phys_phone] [varchar](255) NULL,
	[m_hiv_status] [varchar](255) NULL,
	[m_first_pos_dt] [varchar](255) NULL,
	[m_counseled] [varchar](255) NULL,
	[m_perinatl_hiv] [varchar](255) NULL,
	[m_idu] [varchar](255) NULL,
	[m_hetsex_idu] [varchar](255) NULL,
	[m_hetsex_bimale] [varchar](255) NULL,
	[m_hetsex_hemo] [varchar](255) NULL,
	[m_hetsex_transfus] [varchar](255) NULL,
	[m_hetsex_transpl] [varchar](255) NULL,
	[m_hetsex_hivaids] [varchar](255) NULL,
	[m_transfus] [varchar](255) NULL,
	[m_first_trans_dt] [varchar](255) NULL,
	[m_last_trans_dt] [varchar](255) NULL,
	[m_transpl] [varchar](255) NULL,
	[c_idu] [varchar](255) NULL,
	[c_rcvd_clot_factor] [varchar](255) NULL,
	[c_clott_factor] [varchar](255) NULL,
	[c_factor_dt] [varchar](255) NULL,
	[c_rcvd_transf] [varchar](255) NULL,
	[c_first_transf_dt] [varchar](255) NULL,
	[c_last_transf_dt] [varchar](255) NULL,
	[c_rcvd_transpl] [varchar](255) NULL,
	[c_sex_male] [varchar](255) NULL,
	[c_sex_female] [varchar](255) NULL,
	[c_oth_risk] [varchar](255) NULL,
	[c_nir] [varchar](255) NULL,
	[c_complete_dt] [varchar](255) NULL,
	[bact_dt] [varchar](255) NULL,
	[candlung_dt] [varchar](255) NULL,
	[cande_dt] [varchar](255) NULL,
	[cervcanc_dt] [varchar](255) NULL,
	[cocci_dt] [varchar](255) NULL,
	[cryptoco_dt] [varchar](255) NULL,
	[cryptosp_dt] [varchar](255) NULL,
	[cmv_dt] [varchar](255) NULL,
	[cmvret_dt] [varchar](255) NULL,
	[hivnceph_dt] [varchar](255) NULL,
	[herpes_dt] [varchar](255) NULL,
	[histo_dt] [varchar](255) NULL,
	[iso_dt] [varchar](255) NULL,
	[ks_dt] [varchar](255) NULL,
	[lip_dt] [varchar](255) NULL,
	[burkl_dt] [varchar](255) NULL,
	[lymphim_dt] [varchar](255) NULL,
	[lymphb_dt] [varchar](255) NULL,
	[mycoav_dt] [varchar](255) NULL,
	[mycopulm_dt] [varchar](255) NULL,
	[mycodism_dt] [varchar](255) NULL,
	[mycoth_dt] [varchar](255) NULL,
	[pcp_dt] [varchar](255) NULL,
	[pneum_dt] [varchar](255) NULL,
	[pml_dt] [varchar](255) NULL,
	[toxo_dt] [varchar](255) NULL,
	[wasting_dt] [varchar](255) NULL,
	[fac_ord_uid] [varchar](255) NULL,
	[fac_ord_name] [varchar](255) NULL,
	[fac_ord_name2] [varchar](255) NULL,
	[fac_ord_type] [varchar](255) NULL,
	[fac_ord_set] [varchar](255) NULL,
	[fac_ord_addr1] [varchar](255) NULL,
	[fac_ord_addr2] [varchar](255) NULL,
	[fac_ord_zip] [varchar](255) NULL,
	[fac_ord_city] [varchar](255) NULL,
	[fac_ord_cnty] [varchar](255) NULL,
	[fac_ord_st] [varchar](255) NULL,
	[fac_ord_cntry] [varchar](255) NULL,
	[fac_ord_usd] [varchar](255) NULL,
	[fac_ord_phone] [varchar](255) NULL,
	[fac_ord_fax] [varchar](255) NULL,
	[fac_ord_email] [varchar](255) NULL,
	[fac_ord_fund] [varchar](255) NULL,
	[fac_ord_fund_cd] [varchar](255) NULL,
	[phys_ord_uid] [varchar](255) NULL,
	[phys_ord_prefix] [varchar](255) NULL,
	[phys_ord_last] [varchar](255) NULL,
	[phys_ord_first] [varchar](255) NULL,
	[phys_ord_middle] [varchar](255) NULL,
	[phys_ord_suffix] [varchar](255) NULL,
	[phys_ord_phone] [varchar](255) NULL,
	[phys_ord_specialty_cd] [varchar](255) NULL,
	[lab_rollup_no] [varchar](255) NULL,
	[lab_clia_no] [varchar](255) NULL,
	[specimen_id] [varchar](255) NULL,
	[accession_no] [varchar](255) NULL,
	[starhs_sample_id] [varchar](255) NULL,
	[sreason] [varchar](255) NULL,
	[genotype_sequence] [varchar](max) NULL,
	[xlab_hiv] [varchar](255) NULL,
	[xlab_hiv_dt] [varchar](255) NULL,
	[lab_test_type] [varchar](255) NULL,
	[manufacturer] [varchar](255) NULL,
	[result_range_lower] [varchar](255) NULL,
	[result_range_upper] [varchar](255) NULL,
	[lab_test_name] [varchar](255) NULL,
	[colldate] [varchar](255) NULL,
	[specimen_receive_dt] [varchar](255) NULL,
	[result_dt] [varchar](255) NULL,
	[specimentype] [varchar](255) NULL,
	[lab_result] [varchar](255) NULL,
	[lab_units] [varchar](255) NULL,
	[interpretation] [varchar](255) NULL,
	[lab_specific_note] [varchar](255) NULL,
	[doc_diag] [varchar](255) NULL,
	[doc_diag_dt] [varchar](255) NULL,
	[phys_not_hiv] [varchar](255) NULL,
	[phys_not_hiv_dt] [varchar](255) NULL,
	[birth_history] [varchar](255) NULL,
	[birth_fac_id] [varchar](255) NULL,
	[birth_hosp_name] [varchar](255) NULL,
	[birth_hosp_name2] [varchar](255) NULL,
	[birth_fac_type] [varchar](255) NULL,
	[birth_hosp_set] [varchar](255) NULL,
	[birth_hosp_addr1] [varchar](255) NULL,
	[birth_hosp_addr2] [varchar](255) NULL,
	[birth_hosp_city] [varchar](255) NULL,
	[birth_hosp_cnty] [varchar](255) NULL,
	[birth_hosp_state] [varchar](255) NULL,
	[birth_hosp_zip] [varchar](255) NULL,
	[birth_hosp_cntry] [varchar](255) NULL,
	[birth_hosp_usd] [varchar](255) NULL,
	[birth_hosp_phone] [varchar](255) NULL,
	[birth_hosp_fax] [varchar](255) NULL,
	[birth_hosp_email] [varchar](255) NULL,
	[birth_hosp_fund] [varchar](255) NULL,
	[birth_hosp_fund_cd] [varchar](255) NULL,
	[birth_weight_grams] [varchar](255) NULL,
	[birth_type] [varchar](255) NULL,
	[birth_delivery_method] [varchar](255) NULL,
	[congenital_disorders] [varchar](255) NULL,
	[congenital_disorders_cd1] [varchar](255) NULL,
	[congenital_disorders_cd2] [varchar](255) NULL,
	[congenital_disorders_cd3] [varchar](255) NULL,
	[congenital_disorders_cd4] [varchar](255) NULL,
	[congenital_disorders_cd5] [varchar](255) NULL,
	[neonatal_status] [varchar](255) NULL,
	[neonatal_weeks] [varchar](255) NULL,
	[month_preg_pnc] [varchar](255) NULL,
	[no_prenatal_visits] [varchar](255) NULL,
	[bp_arv_prior_preg] [varchar](255) NULL,
	[bp_arv_prior_preg_drug_cd] [varchar](255) NULL,
	[bp_arv_prior_preg_drug_start_dt] [varchar](255) NULL,
	[bp_arv_prior_preg_drug_last_use_dt] [varchar](255) NULL,
	[bp_arv_preg] [varchar](255) NULL,
	[bp_arv_preg_drug_cd] [varchar](255) NULL,
	[bp_arv_preg_drug_start_dt] [varchar](255) NULL,
	[bp_arv_preg_drug_last_use_dt] [varchar](255) NULL,
	[bp_arv_labor] [varchar](255) NULL,
	[bp_arv_labor_drug_cd] [varchar](255) NULL,
	[bp_arv_labor_drug_start_dt] [varchar](255) NULL,
	[bp_arv_labor_drug_last_use_dt] [varchar](255) NULL,
	[bp_birth_dt] [varchar](255) NULL,
	[bp_sndx] [varchar](255) NULL,
	[bp_stateno] [varchar](255) NULL,
	[bp_birth_cntry] [varchar](255) NULL,
	[bp_birth_cntry_usd] [varchar](255) NULL,
	[arv_taken] [varchar](255) NULL,
	[drug_cd] [varchar](255) NULL,
	[drug_rsn] [varchar](255) NULL,
	[other_drug_rsn] [varchar](255) NULL,
	[drug_start_dt] [varchar](255) NULL,
	[drug_last_use_dt] [varchar](255) NULL,
	[rcvd_pcpproph] [varchar](255) NULL,
	[prophylaxis_start_dt] [varchar](255) NULL,
	[prophylaxis_last_use_dt] [varchar](255) NULL,
	[breastfed] [varchar](255) NULL,
	[caretaker] [varchar](255) NULL,
	[enrol_trial] [varchar](255) NULL,
	[enrol_clinic] [varchar](255) NULL,
	[ins_hiv] [varchar](255) NULL,
	[ins_aids] [varchar](255) NULL,
	[ridr_dup_status] [varchar](255) NULL,
	[ridr_state_cd] [varchar](255) NULL,
	[ridr_stateno] [varchar](255) NULL,
	[ridr_comments] [varchar](255) NULL,
	[ridr_verify_date] [varchar](255) NULL,
	[ridr_verify_by] [varchar](255) NULL,
	[comments] [varchar](255) NULL,
	[site_cd] [varchar](255) NULL,
	[addr_original_type_cd] [varchar](255) NULL,
	[geographic_level] [varchar](255) NULL,
	[evalweb_client_id] [varchar](255) NULL,
	[evalweb_form_id] [varchar](255) NULL,
	[evalweb_ps_case_num] [varchar](255) NULL,
	[idss_person_id] [varchar](255) NULL,
	[c_breastfed_bp] [varchar](255) NULL,
	[c_prechewed_food_bp] [varchar](255) NULL,
	[c_breastfed_non_bp] [varchar](255) NULL,
	[c_prechewed_food_non_bp] [varchar](255) NULL,
	[cs_rsn_HIV] [varchar](255) NULL,
	[cs_rsn_prev_cs] [varchar](255) NULL,
	[cs_rsn_malpresentation] [varchar](255) NULL,
	[cs_rsn_long_labor] [varchar](255) NULL,
	[cs_rsn_pref] [varchar](255) NULL,
	[cs_rsn_fetal_distress] [varchar](255) NULL,
	[cs_rsn_abruptia_previa] [varchar](255) NULL,
	[cs_rsn_other] [varchar](255) NULL,
	[cs_rsn_other_specify] [varchar](255) NULL,
	[cs_rsn_not_specified] [varchar](255) NULL,
	[delivery_dt] [varchar](255) NULL,
	[delivery_time] [varchar](255) NULL,
	[rupture_dt] [varchar](255) NULL,
	[rupture_time] [varchar](255) NULL,
	[screen_substance] [varchar](255) NULL,
	[screen_substance_cd] [varchar](255) NULL,
	[screen_substance_detail] [varchar](255) NULL,
	[screen_substance_result] [varchar](255) NULL,
	[screen_substance_dt] [varchar](255) NULL,
	[bp_ssn] [varchar](255) NULL,
	[bp_ssn_alias] [varchar](255) NULL,
	[bp_tracking_id] [varchar](255) NULL,
	[bp_gen_id1] [varchar](255) NULL,
	[bp_ucsf_no] [varchar](255) NULL,
	[bp_pems_form_id] [varchar](255) NULL,
	[bp_pems_local_client_key] [varchar](255) NULL,
	[bp_pems_client_unique_key] [varchar](255) NULL,
	[bp_rvct_no] [varchar](255) NULL,
	[bp_prison_no] [varchar](255) NULL,
	[bp_stdmis_no] [varchar](255) NULL,
	[bp_ryan_no] [varchar](255) NULL,
	[bp_adap_no] [varchar](255) NULL,
	[bp_cts_no] [varchar](255) NULL,
	[bp_medrecno] [varchar](255) NULL,
	[bp_medicaidno] [varchar](255) NULL,
	[bp_pathars_no] [varchar](255) NULL,
	[bp_patasd_no] [varchar](255) NULL,
	[bp_hivno_hars] [varchar](255) NULL,
	[bp_insno] [varchar](255) NULL,
	[bp_rephlthdeptno] [varchar](255) NULL,
	[bp_mmp_parid] [varchar](255) NULL,
	[bp_fimr_id] [varchar](255) NULL,
	[bp_evalweb_client_id] [varchar](255) NULL,
	[bp_evalweb_form_id] [varchar](255) NULL,
	[bp_evalweb_ps_case_num] [varchar](255) NULL,
	[bp_idss_person_id] [varchar](255) NULL,
	[preg_before] [varchar](255) NULL,
	[preg_outcome] [varchar](255) NULL,
	[preg_outcome_dt] [varchar](255) NULL,
	[bp_cd4_test] [varchar](255) NULL,
	[bp_vl_test] [varchar](255) NULL,
	[bp_arv_prior_preg_other_drug_cd] [varchar](255) NULL,
	[bp_arv_preg_other_drug_cd] [varchar](255) NULL,
	[bp_arv_preg_drug_rsn] [varchar](255) NULL,
	[bp_arv_preg_other_drug_rsn] [varchar](255) NULL,
	[bp_arv_labor_other_drug_cd] [varchar](255) NULL,
	[bp_arv_labor_drug_rsn] [varchar](255) NULL,
	[bp_arv_labor_other_drug_rsn] [varchar](255) NULL,
	[bp_screen_condition_cd] [varchar](255) NULL,
	[bp_screen_condition_dt] [varchar](255) NULL,
	[bp_dx_condition_cd] [varchar](255) NULL,
	[bp_dx_condition_dt] [varchar](255) NULL,
	[bp_use_substance] [varchar](255) NULL,
	[bp_use_alcohol] [varchar](255) NULL,
	[bp_use_amp] [varchar](255) NULL,
	[bp_use_barbs] [varchar](255) NULL,
	[bp_use_bdps] [varchar](255) NULL,
	[bp_use_cocaine] [varchar](255) NULL,
	[bp_use_crack] [varchar](255) NULL,
	[bp_use_fentanyl] [varchar](255) NULL,
	[bp_use_hallucinogens] [varchar](255) NULL,
	[bp_use_heroin] [varchar](255) NULL,
	[bp_use_k2] [varchar](255) NULL,
	[bp_use_mj] [varchar](255) NULL,
	[bp_use_meth] [varchar](255) NULL,
	[bp_use_meph] [varchar](255) NULL,
	[bp_use_nicotine] [varchar](255) NULL,
	[bp_use_opiates] [varchar](255) NULL,
	[bp_use_pcp] [varchar](255) NULL,
	[bp_screen_substance] [varchar](255) NULL,
	[bp_screen_substance_cd] [varchar](255) NULL,
	[bp_screen_substance_detail] [varchar](255) NULL,
	[bp_screen_substance_result] [varchar](255) NULL,
	[bp_screen_substance_dt] [varchar](255) NULL,
	[other_drug_specify] [varchar](255) NULL,
	[idss_event_id] [varchar](255) NULL,
	[gender_identity] [varchar](255) NULL,
	[other_gender_identity] [varchar](255) NULL,
	[gender_identity_dt] [varchar](255) NULL,
	[sexual_orientation] [varchar](255) NULL,
	[other_sexual_orientation] [varchar](255) NULL,
	[sexual_orientation_dt] [varchar](255) NULL,
	[specialty_cd] [varchar](255) NULL,
	[bp_cityno] [varchar](255) NULL,
	[bp_idss_event_id] [varchar](255) NULL,
	[prenatal_care_start] [varchar](255) NULL,
	[num_prev_preg] [varchar](255) NULL,
	[bp_screen_condition_result] [varchar](255) NULL,
	[bp_dx_condition_result] [varchar](255) NULL,
	[bp_use_other_substance] [varchar](255) NULL,
	[bp_use_other_substance_detail] [varchar](255) NULL,
	[bp_use_substance_notdocumented] [varchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PCRFBIRTH_WORKINGTABLE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PCRFBIRTH_WORKINGTABLE](
	[record_id] [numeric](10, 0) NULL,
	[parent_id] [varchar](255) NULL,
	[rollup_no] [varchar](255) NULL,
	[doc_type] [varchar](255) NULL,
	[stateno] [varchar](255) NULL,
	[import_uid] [numeric](10, 0) NOT NULL,
	[cityno] [varchar](255) NULL,
	[source] [varchar](255) NULL,
	[rep_city] [varchar](255) NULL,
	[rcvd_dt] [varchar](255) NULL,
	[init_invest] [varchar](255) NULL,
	[complete_dt] [varchar](255) NULL,
	[author] [varchar](255) NULL,
	[author_phone] [varchar](255) NULL,
	[medrecno] [varchar](255) NULL,
	[cts_no] [varchar](255) NULL,
	[adap_no] [varchar](255) NULL,
	[ryan_no] [varchar](255) NULL,
	[stdmis_no] [varchar](255) NULL,
	[prison_no] [varchar](255) NULL,
	[rvct_no] [varchar](255) NULL,
	[pathars_no] [varchar](255) NULL,
	[patasd_no] [varchar](255) NULL,
	[hivno_hars] [varchar](255) NULL,
	[pems_client_unique_key] [varchar](255) NULL,
	[pems_local_client_key] [varchar](255) NULL,
	[pems_form_id] [varchar](255) NULL,
	[ucsf_no] [varchar](255) NULL,
	[ssn] [varchar](255) NULL,
	[tracking_id] [varchar](255) NULL,
	[gen_id1] [varchar](255) NULL,
	[f_name] [varchar](255) NULL,
	[l_name] [varchar](255) NULL,
	[m_name] [varchar](255) NULL,
	[f_name_sndx] [varchar](255) NULL,
	[l_name_sndx] [varchar](255) NULL,
	[suffix] [varchar](255) NULL,
	[name_use_cd] [varchar](255) NULL,
	[addr_1] [varchar](255) NULL,
	[addr_2] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[cnty] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[zip_code] [varchar](255) NULL,
	[cntry] [varchar](255) NULL,
	[cntry_usd] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[addr_type_cd] [varchar](255) NULL,
	[fac_cplt_form] [varchar](255) NULL,
	[fac_cplt_addr1] [varchar](255) NULL,
	[fac_cplt_addr2] [varchar](255) NULL,
	[fac_cplt_city] [varchar](255) NULL,
	[fac_cplt_cnty] [varchar](255) NULL,
	[fac_cplt_st] [varchar](255) NULL,
	[fac_cplt_zip] [varchar](255) NULL,
	[fac_cplt_cntry] [varchar](255) NULL,
	[fac_cplt_usd] [varchar](255) NULL,
	[fac_cplt_set] [varchar](255) NULL,
	[fac_cplt_phone] [varchar](255) NULL,
	[fac_cplt_uid] [varchar](255) NULL,
	[birth_dt] [varchar](255) NULL,
	[race1] [varchar](255) NULL,
	[race2] [varchar](255) NULL,
	[race3] [varchar](255) NULL,
	[race4] [varchar](255) NULL,
	[race5] [varchar](255) NULL,
	[ethnicity] [varchar](255) NULL,
	[birth_sex] [varchar](255) NULL,
	[birth_cntry] [varchar](255) NULL,
	[birth_usd] [varchar](255) NULL,
	[certificate_no] [varchar](255) NULL,
	[diag_status] [varchar](255) NULL,
	[age_at_hiv] [varchar](255) NULL,
	[age_hiv_mths] [varchar](255) NULL,
	[age_at_aids] [varchar](255) NULL,
	[age_aids_mths] [varchar](255) NULL,
	[event_cd] [varchar](255) NULL,
	[facility_name] [varchar](255) NULL,
	[facility_phone] [varchar](255) NULL,
	[facility_addr1] [varchar](255) NULL,
	[facility_addr2] [varchar](255) NULL,
	[facility_city] [varchar](255) NULL,
	[facility_cnty] [varchar](255) NULL,
	[facility_st] [varchar](255) NULL,
	[facility_zip] [varchar](255) NULL,
	[facility_cntry] [varchar](255) NULL,
	[facility_usd] [varchar](255) NULL,
	[facility_set] [varchar](255) NULL,
	[facility_uid] [varchar](255) NULL,
	[phys_first] [varchar](255) NULL,
	[phys_last] [varchar](255) NULL,
	[phys_middle] [varchar](255) NULL,
	[phys_suffix] [varchar](255) NULL,
	[phys_phone] [varchar](255) NULL,
	[specialty_cd] [varchar](255) NULL,
	[bact] [varchar](255) NULL,
	[bact_dt] [varchar](255) NULL,
	[cand_lung] [varchar](255) NULL,
	[candlung_dt] [varchar](255) NULL,
	[cand_esoph] [varchar](255) NULL,
	[cande_dt] [varchar](255) NULL,
	[cocci] [varchar](255) NULL,
	[cocci_dt] [varchar](255) NULL,
	[cryptoco] [varchar](255) NULL,
	[cryptoco_dt] [varchar](255) NULL,
	[cryptosp] [varchar](255) NULL,
	[cryptosp_dt] [varchar](255) NULL,
	[cmv] [varchar](255) NULL,
	[cmv_dt] [varchar](255) NULL,
	[cmvret] [varchar](255) NULL,
	[cmvret_dt] [varchar](255) NULL,
	[hiv_enceph] [varchar](255) NULL,
	[hivnceph_dt] [varchar](255) NULL,
	[herpes] [varchar](255) NULL,
	[herpes_dt] [varchar](255) NULL,
	[histo] [varchar](255) NULL,
	[histo_dt] [varchar](255) NULL,
	[iso] [varchar](255) NULL,
	[iso_dt] [varchar](255) NULL,
	[ks] [varchar](255) NULL,
	[ks_dt] [varchar](255) NULL,
	[lip] [varchar](255) NULL,
	[lip_dt] [varchar](255) NULL,
	[burkl] [varchar](255) NULL,
	[burkl_dt] [varchar](255) NULL,
	[lymph_immuno] [varchar](255) NULL,
	[lymphim_dt] [varchar](255) NULL,
	[lymph_brain] [varchar](255) NULL,
	[lymphb_dt] [varchar](255) NULL,
	[myco_avium] [varchar](255) NULL,
	[mycoav_dt] [varchar](255) NULL,
	[myco_tb_pulm] [varchar](255) NULL,
	[mycopulm_dt] [varchar](255) NULL,
	[myco_tb_dissem] [varchar](255) NULL,
	[mycodism_dt] [varchar](255) NULL,
	[myco_other] [varchar](255) NULL,
	[mycoth_dt] [varchar](255) NULL,
	[pcp] [varchar](255) NULL,
	[pcp_dt] [varchar](255) NULL,
	[pml] [varchar](255) NULL,
	[pml_dt] [varchar](255) NULL,
	[toxo_brain] [varchar](255) NULL,
	[toxo_dt] [varchar](255) NULL,
	[wasting] [varchar](255) NULL,
	[wasting_dt] [varchar](255) NULL,
	[immunodef] [varchar](255) NULL,
	[lab_test_name] [varchar](255) NULL,
	[colldate] [varchar](255) NULL,
	[specimen_receive_dt] [varchar](255) NULL,
	[result_dt] [varchar](255) NULL,
	[specimentype] [varchar](255) NULL,
	[lab_result] [varchar](255) NULL,
	[lab_units] [varchar](255) NULL,
	[viral_range] [varchar](255) NULL,
	[interpretation] [varchar](255) NULL,
	[lab_specific_note] [varchar](255) NULL,
	[doc_diag] [varchar](255) NULL,
	[doc_diag_dt] [varchar](255) NULL,
	[rcvd_antiretv] [varchar](255) NULL,
	[rcvd_pcpproph] [varchar](255) NULL,
	[enrol_trial] [varchar](255) NULL,
	[enrol_clinic] [varchar](255) NULL,
	[ins_hiv] [varchar](255) NULL,
	[ins_aids] [varchar](255) NULL,
	[birth_hosp_name] [varchar](255) NULL,
	[birth_hosp_addr1] [varchar](255) NULL,
	[birth_hosp_addr2] [varchar](255) NULL,
	[birth_hosp_city] [varchar](255) NULL,
	[birth_hosp_cnty] [varchar](255) NULL,
	[birth_hosp_state] [varchar](255) NULL,
	[birth_hosp_zip] [varchar](255) NULL,
	[birth_hosp_cntry] [varchar](255) NULL,
	[birth_hosp_usd] [varchar](255) NULL,
	[birth_hosp_set] [varchar](255) NULL,
	[birth_hosp_phone] [varchar](255) NULL,
	[birth_fac_id] [varchar](255) NULL,
	[birth_history] [varchar](255) NULL,
	[birth_res_addr1] [varchar](255) NULL,
	[birth_res_addr2] [varchar](255) NULL,
	[birth_res_city] [varchar](255) NULL,
	[birth_res_county] [varchar](255) NULL,
	[birth_res_state] [varchar](255) NULL,
	[birth_res_zip] [varchar](255) NULL,
	[birth_res_cntry] [varchar](255) NULL,
	[birth_res_cntry_usd] [varchar](255) NULL,
	[birth_weight_lbs] [varchar](255) NULL,
	[birth_weight_oz] [varchar](255) NULL,
	[birth_weight_grams] [varchar](255) NULL,
	[birth_type] [varchar](255) NULL,
	[delivery] [varchar](255) NULL,
	[birth_defects] [varchar](255) NULL,
	[neonatal_status] [varchar](255) NULL,
	[neonatal_weeks] [varchar](255) NULL,
	[prenatal_care_start] [varchar](255) NULL,
	[no_prenatal_visits] [varchar](255) NULL,
	[mother_fname] [varchar](255) NULL,
	[mother_lname] [varchar](255) NULL,
	[mother_mname] [varchar](255) NULL,
	[maternal_dob] [varchar](255) NULL,
	[maternal_sndx] [varchar](255) NULL,
	[maternal_stateno] [varchar](255) NULL,
	[maternal_birth_cntry] [varchar](255) NULL,
	[anti_retv_hiv] [varchar](255) NULL,
	[anti_retv_dt] [varchar](255) NULL,
	[pcp_prophylaxis] [varchar](255) NULL,
	[prophylaxis_start_dt] [varchar](255) NULL,
	[breastfed] [varchar](255) NULL,
	[caretaker] [varchar](255) NULL,
	[birth_place] [varchar](255) NULL,
	[first_prenatal_care_dt] [varchar](255) NULL,
	[last_prenatal_care_dt] [varchar](255) NULL,
	[last_normal_menses_dt] [varchar](255) NULL,
	[num_prev_live_birth] [varchar](255) NULL,
	[last_live_birth_dt] [varchar](255) NULL,
	[gestation_est] [varchar](255) NULL,
	[fathers_ethnicity] [varchar](255) NULL,
	[f_race1] [varchar](255) NULL,
	[f_race2] [varchar](255) NULL,
	[f_race3] [varchar](255) NULL,
	[f_race4] [varchar](255) NULL,
	[f_race5] [varchar](255) NULL,
	[m_hiv_status] [varchar](255) NULL,
	[m_first_pos_dt] [varchar](255) NULL,
	[m_counseled] [varchar](255) NULL,
	[m_perinatl_hiv] [varchar](255) NULL,
	[m_idu] [varchar](255) NULL,
	[m_hetsex_idu] [varchar](255) NULL,
	[m_hetsex_bimale] [varchar](255) NULL,
	[m_hetsex_hemo] [varchar](255) NULL,
	[m_hetsex_transfus] [varchar](255) NULL,
	[m_hetsex_transpl] [varchar](255) NULL,
	[m_hetsex_hivaids] [varchar](255) NULL,
	[m_transfus] [varchar](255) NULL,
	[m_transpl] [varchar](255) NULL,
	[c_idu] [varchar](255) NULL,
	[c_idu_cophi] [varchar](255) NULL,
	[c_clott_hemo] [varchar](255) NULL,
	[c_clott_factor] [varchar](255) NULL,
	[c_factor_dt] [varchar](255) NULL,
	[c_transfus] [varchar](255) NULL,
	[c_first_trans_dt] [varchar](255) NULL,
	[c_last_trans_dt] [varchar](255) NULL,
	[c_transpl] [varchar](255) NULL,
	[c_transpl_cophi] [varchar](255) NULL,
	[c_sex_male] [varchar](255) NULL,
	[c_sex_male_cophi] [varchar](255) NULL,
	[c_sex_female] [varchar](255) NULL,
	[c_sex_fem_cophi] [varchar](255) NULL,
	[c_oth_risk] [varchar](255) NULL,
	[c_oth_risk_cophi] [varchar](255) NULL,
	[c_nir] [varchar](255) NULL,
	[c_invest_dt] [varchar](255) NULL,
	[anencephaly] [varchar](255) NULL,
	[cong_heart_dis] [varchar](255) NULL,
	[omphalocele] [varchar](255) NULL,
	[limb_reduct_defect] [varchar](255) NULL,
	[cleft_lip_palate] [varchar](255) NULL,
	[cleft_palate_only] [varchar](255) NULL,
	[susp_chromo_disorder] [varchar](255) NULL,
	[chrom_karyo_conf] [varchar](255) NULL,
	[chrom_karyo_pend] [varchar](255) NULL,
	[spina_bifida] [varchar](255) NULL,
	[cong_diaphrm_hernia] [varchar](255) NULL,
	[gastro] [varchar](255) NULL,
	[down_synd] [varchar](255) NULL,
	[ds_karyo_conf] [varchar](255) NULL,
	[ds_karyo_pend] [varchar](255) NULL,
	[hypospadias] [varchar](255) NULL,
	[none_of_above] [varchar](255) NULL,
	[phys_cplt_uid] [varchar](255) NULL,
	[phys_cplt_first] [varchar](255) NULL,
	[phys_cplt_middle] [varchar](255) NULL,
	[phys_cplt_last] [varchar](255) NULL,
	[phys_cplt_suffix] [varchar](255) NULL,
	[phys_cplt_prefix] [varchar](255) NULL,
	[phys_cplt_phone] [varchar](255) NULL,
	[phys_cplt_specialty_cd] [varchar](255) NULL,
	[provider_uid] [varchar](255) NULL,
	[phys_prefix] [varchar](255) NULL,
	[lab_clia_no] [varchar](255) NULL,
	[specimen_id] [varchar](255) NULL,
	[accession_no] [varchar](255) NULL,
	[starhs_sample_id] [varchar](255) NULL,
	[sreason] [varchar](255) NULL,
	[xlab_hiv] [varchar](255) NULL,
	[xlab_hiv_dt] [varchar](255) NULL,
	[lab_test_type] [varchar](255) NULL,
	[manufacturer] [varchar](255) NULL,
	[result_range_lower] [varchar](255) NULL,
	[result_range_upper] [varchar](255) NULL,
	[mmp_parid] [varchar](255) NULL,
	[fimr_id] [varchar](255) NULL,
	[address_dt] [varchar](255) NULL,
	[prophylaxis_last_use_dt] [varchar](255) NULL,
	[m_arv_prior_preg] [varchar](255) NULL,
	[m_arv_prior_preg_drug_rsn] [varchar](255) NULL,
	[m_arv_prior_preg_other_drug_rsn] [varchar](255) NULL,
	[m_arv_prior_preg_drug_cd] [varchar](255) NULL,
	[m_arv_prior_preg_drug_start_dt] [varchar](255) NULL,
	[m_arv_prior_preg_drug_last_use_dt] [varchar](255) NULL,
	[m_arv_preg] [varchar](255) NULL,
	[m_arv_preg_drug_rsn] [varchar](255) NULL,
	[m_arv_preg_other_drug_rsn] [varchar](255) NULL,
	[m_arv_preg_drug_cd] [varchar](255) NULL,
	[m_arv_preg_drug_start_dt] [varchar](255) NULL,
	[m_arv_preg_drug_last_use_dt] [varchar](255) NULL,
	[m_arv_labor] [varchar](255) NULL,
	[m_arv_labor_drug_rsn] [varchar](255) NULL,
	[m_arv_labor_other_drug_rsn] [varchar](255) NULL,
	[m_arv_labor_drug_cd] [varchar](255) NULL,
	[m_arv_labor_drug_start_dt] [varchar](255) NULL,
	[m_arv_labor_drug_last_use_dt] [varchar](255) NULL,
	[arv_taken] [varchar](255) NULL,
	[drug_rsn] [varchar](255) NULL,
	[other_drug_rsn] [varchar](255) NULL,
	[drug_cd] [varchar](255) NULL,
	[drug_start_dt] [varchar](255) NULL,
	[drug_last_use_dt] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSON]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSON_NAME]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PREGNANCY_OUTCOME]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRETEST_QUESTIONNAIRE]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PROVIDER_CODE_STAGING]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVIDER_CODE_STAGING](
	[provider_uid] [char](16) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[middle_name] [varchar](50) NULL,
	[name_suffix] [varchar](10) NULL,
	[name_prefix] [varchar](4) NULL,
	[phone] [varchar](10) NULL,
	[specialty_cd] [varchar](50) NULL,
	[ship_flag] [int] NULL,
	[import_uid] [numeric](10, 0) NULL,
 CONSTRAINT [PK_HC_PROVIDER] PRIMARY KEY CLUSTERED 
(
	[provider_uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RIDR]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RIDR](
	[document_uid] [char](16) NOT NULL,
	[state_cd] [char](2) NULL,
	[stateno] [varchar](35) NULL,
	[ridr_seq] [int] NOT NULL,
	[ehars_uid] [char](16) NULL,
	[duplicate_status] [varchar](50) NULL,
	[last_verify_dt] [datetime] NULL,
	[verify_by] [varchar](50) NULL,
	[comments] [varchar](1024) NULL,
 CONSTRAINT [PK_RIDR] PRIMARY KEY CLUSTERED 
(
	[document_uid] ASC,
	[ridr_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RISK]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUBSTANCE_HISTORY]    Script Date: 6/1/2023 8:39:16 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UPDADDR_TMP]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UPDADDR_TMP](
	[workflow_name] [varchar](25) NOT NULL,
	[field_name] [varchar](40) NOT NULL,
	[required] [bit] NOT NULL,
	[length] [varchar](5) NOT NULL,
	[ehars_input_validation] [varchar](25) NULL,
	[field_order] [int] NOT NULL,
	[tab_name] [varchar](255) NULL,
	[tab_section_name] [varchar](255) NULL,
	[display_name] [varchar](255) NULL,
	[mandatory] [bit] NULL,
	[section_mandatory] [bit] NULL,
	[section_dependent] [bit] NULL,
	[field_dependency] [varchar](255) NULL,
	[display] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UPDADDR_WORKINGTABLE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UPDADDR_WORKINGTABLE](
	[record_no] [numeric](10, 0) NULL,
	[import_uid] [numeric](10, 0) NULL,
	[document_uid] [varchar](255) NULL,
	[doc_belongs_to] [varchar](255) NULL,
	[addr_seq] [varchar](255) NULL,
	[addr_type_cd] [varchar](255) NULL,
	[addr_original_type_cd] [varchar](255) NULL,
	[addr_1] [varchar](255) NULL,
	[addr_2] [varchar](255) NULL,
	[city] [varchar](255) NULL,
	[cnty] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[zip_code] [varchar](255) NULL,
	[cntry] [varchar](255) NULL,
	[census_tract] [varchar](255) NULL,
	[geographic_level] [varchar](255) NULL,
	[census_block_gp] [varchar](255) NULL,
	[census_metro_area] [varchar](255) NULL,
	[census_group] [varchar](255) NULL,
	[cong_district] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UPDGLAB_TMP]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UPDGLAB_TMP](
	[workflow_name] [varchar](25) NOT NULL,
	[field_name] [varchar](40) NOT NULL,
	[required] [bit] NOT NULL,
	[length] [varchar](5) NOT NULL,
	[ehars_input_validation] [varchar](25) NULL,
	[field_order] [int] NOT NULL,
	[tab_name] [varchar](255) NULL,
	[tab_section_name] [varchar](255) NULL,
	[display_name] [varchar](255) NULL,
	[mandatory] [bit] NULL,
	[section_mandatory] [bit] NULL,
	[section_dependent] [bit] NULL,
	[field_dependency] [varchar](255) NULL,
	[display] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UPDGLAB_WORKINGTABLE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UPDGLAB_WORKINGTABLE](
	[record_no] [numeric](10, 0) NULL,
	[import_uid] [numeric](10, 0) NULL,
	[document_uid] [varchar](255) NULL,
	[lab_seq] [varchar](255) NULL,
	[lab_test_name] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UPDNIC_TMP]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UPDNIC_TMP](
	[workflow_name] [varchar](25) NOT NULL,
	[field_name] [varchar](40) NOT NULL,
	[required] [bit] NOT NULL,
	[length] [varchar](5) NOT NULL,
	[ehars_input_validation] [varchar](25) NULL,
	[field_order] [int] NOT NULL,
	[tab_name] [varchar](255) NULL,
	[tab_section_name] [varchar](255) NULL,
	[display_name] [varchar](255) NULL,
	[mandatory] [bit] NULL,
	[section_mandatory] [bit] NULL,
	[section_dependent] [bit] NULL,
	[field_dependency] [varchar](255) NULL,
	[display] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UPDNIC_WORKINGTABLE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UPDNIC_WORKINGTABLE](
	[record_no] [numeric](10, 0) NULL,
	[import_uid] [numeric](10, 0) NULL,
	[document_uid] [varchar](255) NULL,
	[invest_seq] [varchar](255) NULL,
	[invest_type_cd] [varchar](255) NULL,
	[invest_ident_method] [varchar](255) NULL,
	[invest_ident_dt] [varchar](255) NULL,
	[invest_incl] [varchar](255) NULL,
	[invest_start_dt] [varchar](255) NULL,
	[invest_dispo] [varchar](255) NULL,
	[invest_dispo_dt] [varchar](255) NULL,
	[invest_dispo_method] [varchar](255) NULL,
	[int_dispo] [varchar](255) NULL,
	[int_dispo_dt] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WORKFLOW_TYPE]    Script Date: 6/1/2023 8:39:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WORKFLOW_TYPE](
	[workflow_name] [varchar](20) NOT NULL,
	[description] [varchar](50) NULL,
	[working_table] [varchar](25) NULL,
	[update_flag] [char](1) NULL,
 CONSTRAINT [PK_WORKFLOW_TYPE] PRIMARY KEY CLUSTERED 
(
	[workflow_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
ALTER TABLE [dbo].[IMPORT_DOCUMENT_MAPPING] ADD  CONSTRAINT [DF_IMPORT_DOCUMENT_MAPPING_load]  DEFAULT ((0)) FOR [load]
GO
ALTER TABLE [dbo].[IMPORT_LOG] ADD  CONSTRAINT [DF_IMPORT_LOG_match_type]  DEFAULT ((1)) FOR [match_type]
GO
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESS_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_ADDRESS_DOCUMENT]
GO
ALTER TABLE [dbo].[BIRTH_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_BIRTH_HISTORY_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[BIRTH_HISTORY] CHECK CONSTRAINT [FK_BIRTH_HISTORY_DOCUMENT]
GO
ALTER TABLE [dbo].[DEATH]  WITH CHECK ADD  CONSTRAINT [FK_DEATH_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[DEATH] CHECK CONSTRAINT [FK_DEATH_DOCUMENT]
GO
ALTER TABLE [dbo].[DEATH_DX]  WITH CHECK ADD  CONSTRAINT [FK_DEATH_DX_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[DEATH_DX] CHECK CONSTRAINT [FK_DEATH_DX_DOCUMENT]
GO
ALTER TABLE [dbo].[DEATH_WORKINGTABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_Death_workingtable_IMPORT_LOG] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_LOG] ([import_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[DEATH_WORKINGTABLE] CHECK CONSTRAINT [FK_Death_workingtable_IMPORT_LOG]
GO
ALTER TABLE [dbo].[FACILITY_CODE_STAGING]  WITH NOCHECK ADD  CONSTRAINT [FK_FACILITY_CODE_STAGING_IMPORT_LOG] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_LOG] ([import_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FACILITY_CODE_STAGING] NOCHECK CONSTRAINT [FK_FACILITY_CODE_STAGING_IMPORT_LOG]
GO
ALTER TABLE [dbo].[ID]  WITH CHECK ADD  CONSTRAINT [FK_ID_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[ID] CHECK CONSTRAINT [FK_ID_DOCUMENT]
GO
ALTER TABLE [dbo].[IMPORT_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_Import_Detail_Error_Description] FOREIGN KEY([error_no])
REFERENCES [dbo].[ERROR_DESCRIPTION] ([Error_NO])
GO
ALTER TABLE [dbo].[IMPORT_DETAIL] CHECK CONSTRAINT [FK_Import_Detail_Error_Description]
GO
ALTER TABLE [dbo].[IMPORT_DETAIL]  WITH NOCHECK ADD  CONSTRAINT [FK_Import_Detail_Import_Record_Type] FOREIGN KEY([import_record_type_UID])
REFERENCES [dbo].[IMPORT_RECORD_TYPE] ([import_record_type_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[IMPORT_DETAIL] CHECK CONSTRAINT [FK_Import_Detail_Import_Record_Type]
GO
ALTER TABLE [dbo].[IMPORT_DOCUMENT_MAPPING]  WITH NOCHECK ADD  CONSTRAINT [FK_IMPORT_DOCUMENT_MAPPING_IMPORT_LOG] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_LOG] ([import_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[IMPORT_DOCUMENT_MAPPING] CHECK CONSTRAINT [FK_IMPORT_DOCUMENT_MAPPING_IMPORT_LOG]
GO
ALTER TABLE [dbo].[IMPORT_LOG]  WITH NOCHECK ADD  CONSTRAINT [FK_Import_Log_Import_Process_Flow] FOREIGN KEY([import_process_flow_uid])
REFERENCES [dbo].[IMPORT_PROCESS_FLOW] ([import_process_flow_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[IMPORT_LOG] CHECK CONSTRAINT [FK_Import_Log_Import_Process_Flow]
GO
ALTER TABLE [dbo].[IMPORT_LOG]  WITH NOCHECK ADD  CONSTRAINT [FK_Import_Log_IMPORT_QUEUE] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_QUEUE] ([import_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[IMPORT_LOG] CHECK CONSTRAINT [FK_Import_Log_IMPORT_QUEUE]
GO
ALTER TABLE [dbo].[IMPORT_MAPPING]  WITH NOCHECK ADD  CONSTRAINT [FK_IMPORT_MAPPING_IMPORT_LOG] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_LOG] ([import_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[IMPORT_MAPPING] CHECK CONSTRAINT [FK_IMPORT_MAPPING_IMPORT_LOG]
GO
ALTER TABLE [dbo].[IMPORT_MATCH_CODE]  WITH NOCHECK ADD  CONSTRAINT [FK_IMPORT_MATCH_CODE_IMPORT_LOG] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_LOG] ([import_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[IMPORT_MATCH_CODE] CHECK CONSTRAINT [FK_IMPORT_MATCH_CODE_IMPORT_LOG]
GO
ALTER TABLE [dbo].[IMPORT_QUEUE]  WITH NOCHECK ADD  CONSTRAINT [FK_IMPORT_QUEUE_IMPORT_QUEUE_STATUS] FOREIGN KEY([import_queue_status_uid])
REFERENCES [dbo].[IMPORT_QUEUE_STATUS] ([import_queue_status_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[IMPORT_QUEUE] NOCHECK CONSTRAINT [FK_IMPORT_QUEUE_IMPORT_QUEUE_STATUS]
GO
ALTER TABLE [dbo].[IMPORT_RELEVANT_FIELD]  WITH CHECK ADD  CONSTRAINT [FK_IMPORT_RELEVANT_FIELD_WORKFLOW_TYPE] FOREIGN KEY([workflow_name])
REFERENCES [dbo].[WORKFLOW_TYPE] ([workflow_name])
GO
ALTER TABLE [dbo].[IMPORT_RELEVANT_FIELD] CHECK CONSTRAINT [FK_IMPORT_RELEVANT_FIELD_WORKFLOW_TYPE]
GO
ALTER TABLE [dbo].[IMPORT_TEMPLATE_FIELD]  WITH NOCHECK ADD  CONSTRAINT [FK_IMPORT_TEMPLATE_FIELD_IMPORT_TEMPLATE] FOREIGN KEY([template_uid])
REFERENCES [dbo].[IMPORT_TEMPLATE] ([template_uid])
GO
ALTER TABLE [dbo].[IMPORT_TEMPLATE_FIELD] NOCHECK CONSTRAINT [FK_IMPORT_TEMPLATE_FIELD_IMPORT_TEMPLATE]
GO
ALTER TABLE [dbo].[INCIDENCE_WORKINGTABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_INCIDENCE_WORKINGTABLE_IMPORT_LOG] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_LOG] ([import_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[INCIDENCE_WORKINGTABLE] CHECK CONSTRAINT [FK_INCIDENCE_WORKINGTABLE_IMPORT_LOG]
GO
ALTER TABLE [dbo].[LAB]  WITH CHECK ADD  CONSTRAINT [FK_LAB_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[LAB] CHECK CONSTRAINT [FK_LAB_DOCUMENT]
GO
ALTER TABLE [dbo].[LAB_WORKINGTABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_lab_WORKINGTABLE_IMPORT_LOG] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_LOG] ([import_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[LAB_WORKINGTABLE] CHECK CONSTRAINT [FK_lab_WORKINGTABLE_IMPORT_LOG]
GO
ALTER TABLE [dbo].[LOCAL_FIELD]  WITH CHECK ADD  CONSTRAINT [FK_LOCAL_FIELD_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[LOCAL_FIELD] CHECK CONSTRAINT [FK_LOCAL_FIELD_DOCUMENT]
GO
ALTER TABLE [dbo].[OBSERVATION]  WITH CHECK ADD  CONSTRAINT [FK_OBSERVATION_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[OBSERVATION] CHECK CONSTRAINT [FK_OBSERVATION_DOCUMENT]
GO
ALTER TABLE [dbo].[OI]  WITH CHECK ADD  CONSTRAINT [FK_OI_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[OI] CHECK CONSTRAINT [FK_OI_DOCUMENT]
GO
ALTER TABLE [dbo].[PCRF_WORKINGTABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_PCRF_WORKINGTABLE_IMPORT_LOG] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_LOG] ([import_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PCRF_WORKINGTABLE] CHECK CONSTRAINT [FK_PCRF_WORKINGTABLE_IMPORT_LOG]
GO
ALTER TABLE [dbo].[PCRFBIRTH_WORKINGTABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_PCRFBIRTH_WORKINGTABLE_IMPORT_LOG] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_LOG] ([import_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PCRFBIRTH_WORKINGTABLE] CHECK CONSTRAINT [FK_PCRFBIRTH_WORKINGTABLE_IMPORT_LOG]
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
ALTER TABLE [dbo].[PRETEST_QUESTIONNAIRE]  WITH CHECK ADD  CONSTRAINT [FK_PRETEST_QUESTIONNAIRE_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[PRETEST_QUESTIONNAIRE] CHECK CONSTRAINT [FK_PRETEST_QUESTIONNAIRE_DOCUMENT]
GO
ALTER TABLE [dbo].[PROVIDER_CODE_STAGING]  WITH CHECK ADD  CONSTRAINT [FK_PROVIDE_CODE_STAGING_IMPORT_LOG] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_LOG] ([import_uid])
GO
ALTER TABLE [dbo].[PROVIDER_CODE_STAGING] CHECK CONSTRAINT [FK_PROVIDE_CODE_STAGING_IMPORT_LOG]
GO
ALTER TABLE [dbo].[RIDR]  WITH NOCHECK ADD  CONSTRAINT [FK_RIDR_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[RIDR] CHECK CONSTRAINT [FK_RIDR_DOCUMENT]
GO
ALTER TABLE [dbo].[RISK]  WITH CHECK ADD  CONSTRAINT [FK_RISK_DOCUMENT] FOREIGN KEY([document_uid])
REFERENCES [dbo].[DOCUMENT] ([document_uid])
GO
ALTER TABLE [dbo].[RISK] CHECK CONSTRAINT [FK_RISK_DOCUMENT]
GO
ALTER TABLE [dbo].[UPDADDR_WORKINGTABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_UPDADDR_WORKINGTABLE_IMPORT_LOG] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_LOG] ([import_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[UPDADDR_WORKINGTABLE] CHECK CONSTRAINT [FK_UPDADDR_WORKINGTABLE_IMPORT_LOG]
GO
ALTER TABLE [dbo].[UPDGLAB_WORKINGTABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_UPDGLAB_WORKINGTABLE_IMPORT_LOG] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_LOG] ([import_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[UPDGLAB_WORKINGTABLE] CHECK CONSTRAINT [FK_UPDGLAB_WORKINGTABLE_IMPORT_LOG]
GO
ALTER TABLE [dbo].[UPDNIC_WORKINGTABLE]  WITH NOCHECK ADD  CONSTRAINT [FK_UPDNIC_WORKINGTABLE_IMPORT_LOG] FOREIGN KEY([import_uid])
REFERENCES [dbo].[IMPORT_LOG] ([import_uid])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[UPDNIC_WORKINGTABLE] CHECK CONSTRAINT [FK_UPDNIC_WORKINGTABLE_IMPORT_LOG]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'record_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a parent record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for group(parent and child record)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rollup_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'doc_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state STATENO (statenox)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'stateno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a import' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'import_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a city' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cityno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A import file source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier representing the reporting City i.e., where the system is installed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rep_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the document was received at the health department.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rcvd_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Captures if this document initiated a follow up investigation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'init_invest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the form or document was completed or populated with information (I.e., when the chart abstraction was complete)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'complete_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person who completed the document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the person who completed the document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'author_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Medical record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'medrecno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'City Id no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cts_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AIDS Drug Assistance Program (ADAP) Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'adap_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ryan White Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ryan_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'STD*MIS Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'stdmis_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prison Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'prison_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PATNO (HARS)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pathars_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PATNO (ASD)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'patasd_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HIVNO (HARS)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'hivno_hars'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems clint uniqe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_client_unique_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems local client' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_local_client_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems form' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_form_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UCSF Patient Identifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ucsf_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Social Security Number (SSN)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ssn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for aTracking' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'tracking_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a Generic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'gen_id1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons first name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons last name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'l_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons midle name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'm_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons first name in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_name_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons last name in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'l_name_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons name suffix.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of name being used. Examples include, maiden, birth, biological etc. The default value is legal.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'name_use_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a persons street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a persons street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person city.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person county.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for a persons address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'zip_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code for a persons address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The FIPS U.S. Dependency country code for the persons address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cntry_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value indicating a persons telephone number the format includes the storage of dashes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value indicating a persons telephone number the format includes the storage of dashes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_type_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of health care facility. LOOKUP:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_form'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_addr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_addr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual city name of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual county name for the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state code of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_st'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_zip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The U.S. Dependency code for the facilitys address- where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the funding setting.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_set'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unique identifier for a health care facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An optional field that designates the persons census tract.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'census_tract'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An optional field that designates the persons census group.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'census_block_gp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A date of birth' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating if the person is of Hispanic or Latino origin. A person of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish Culture or origin, regardless of race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ethnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons biological sex at birth noted on persons birth certificate.  M (Male) or F (Female).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons  gender or psychosocial construct that most people use to classify a person as male, female, both or neither.The state determines if they want to display this field upon installing eHARS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Physiological anatomy and biology that determines if someone is male, female, or intersexed. The state determines if they want to display this field upon installing eHARS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'curr_sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons marital status.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'marital_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code of the Birth country' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating which U.S.Possession or Other country of birth.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons living status at time form was completed- alive, dead or unknown.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'vital_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons date of death.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'death_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state postal code for where the person died.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'death_st'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of Diagnosis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'diag_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual field for enter age at diagnosis of HIV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'age_at_hiv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual field for enter age at diagnosis of AIDS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'age_at_aids'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of event that occurred.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'event_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual field containg the primary name of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_addr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_addr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual city name of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual county name for the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state code of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_st'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_zip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The U.S. Dependency code for the facilitys address- where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the funding setting.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_set'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier of the facility associated with this event.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician first name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_first'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician Last name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_last'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician Middle Name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_middle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician Phone number.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician Specialty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'specialty_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Adult sex with male' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'swm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Adult sex with female' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'swf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Adult IDU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'idu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Received clotting factor for hemophilia/coagulation disorder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rcvd_clot_factor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code that designates the persons clotting factor.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'factor_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The field incates the recive date for a clotting factor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'factor_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Heterosexual contact with intravenous/injection drug user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'sexidu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Heterosexual contact with bisexual male' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'sexbi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Heterosexual contact with person with hemophilia/coagulation disorder' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'sexhemo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Heterosexual contact with transfusion recipient with documented HIV infection' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'sex_transf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Heterosexual contact with transplant recipient with documented HIV infection' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'sex_transpl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Heterosexual contact with person with AIDS or documented HIV infection, risk not specified' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'sex_aidshiv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Received transfusion of blood/blood components (other than clotting factor)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rcvd_transf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date Received transfusion of blood/blood components (other than clotting factor) :' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'first_trans_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For risk factor- patient received transfusion of blood/blood components- last date the patient received transfusion.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'last_trans_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Received transplant of tissue/organs or artificial insemination' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rcvd_transpl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Worked in a health care or clinical laboratory setting' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'hlth_worker'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Occupation Type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'occupation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Other documented risk' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'other_risk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'No identified risk factor (NIR) Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'nir'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What was the date the investigation was complete?:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'nir_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clinical Record Reviewed ?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rec_reviewed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Asymptomatic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'asympt_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received symptomatic(not aids)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'sympt_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Candidiasis, bronchi, trachea, or lungs date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'candlung_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Candidiasis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cande_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Carcinoma, invasive cervica' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cervcanc_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Coccidioidomycosis, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cocci_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Cryptococcosis, extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cryptoco_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Cryptosporidiosis, chronic intestinal (>1 mo. duration)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cryptosp_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Cytomegalovirus disease (other than in liver, spleen, or nodes)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cmv_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Cytomegalovirus retinitis (with loss of vision)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cmvret_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received HIV encephalopathy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'hivnceph_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Herpes simplex: chronic ulcer(s) (>1 mo. duration) or bronchitis, pneumonitis, or esophagitis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'herpes_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Histoplasmosis, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'histo_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Isosporiasis, chronic intestinal (>1 mo. duration)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'iso_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Kaposis sarcoma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ks_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Lymphoma, Burkitts (or equivalent term)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'burkl_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Lymphoma, primary in brain' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lymphim_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Lymphoma, primary in brain' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lymphb_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Mycobacterium avium complex or M. kansasii, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'mycoav_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received M. tuberculosis, pulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'mycopulm_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received M. tuberculosis, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'mycodism_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Mycobacterium, of other species or unidentified species, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'mycoth_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Pneumocystis carinii pneumonia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pcp_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Pneumonia, recurrent, in 12 mo. Period' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pneum_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Progressive multifocal leukoencephalopathy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pml_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Salmonella septicemia, recurrent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'salmnela_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Toxoplasmosis of brain, onset at >1 mo. of age' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'toxo_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Wasting syndrome due to HIV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'wasting_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If HIV tests were not positive or were not done, does this patient have an immunodeficiency that would disqualify him/her from AIDS case definition :' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'immunodef'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HIV-1 IFA all lab test names are allowed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lab_test_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lab test collection date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'colldate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the lab that performed the test received the specimen from either a health care provider or another laboratory.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'specimen_receive_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the test result was reported or processed at the lab.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'result_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of specimen collected.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'specimentype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lab_result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reported units.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lab_units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reference range or detection limit for viral load or the optical density for STARHS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'viral_range'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An interpretation of the lab result, values include within range =, below range(limit) <, above range (limit) > for viral load.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'interpretation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date of last documented negative HIV test?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lab_specific_note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If HIV laboratory test were not documented, is HIV diagnosis documented by a physician?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'doc_diag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If yes, provide a date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'doc_diag_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has this patient been informed of his/her HIV infection?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'informed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This patients partners will be notified about their HIV exposure and counseled by:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'notifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HIV related medical services' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'referred'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Substance abuse treatment services' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ref_sats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Anti-retroviral therapy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rcvd_antiretv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PCP prophylaxis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rcvd_pcpproph'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This patient has been enrolled at (Clinical Trial):' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'enrol_trial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This patient has been enrolled at (Clinic):' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'enrol_clinic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'At time of HIV diagnosis, medical treatment primarily reimbursed by' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ins_hiv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'At time of AIDS diagnosis, medical treatment primarily reimbursed by:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ins_aids'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This patient is receiving or has been referred for gynecological or obstetrical services:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'refer_obgyn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Is this patient currently pregnant?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pregnant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Has this patient delivered live-born infants?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'live_infant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Child first name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'child_fname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Child last name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'child_lname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Child midle name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'child_mname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Child Birth Date.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'child_birth_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Child in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'child_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Child  STATENO (statenox)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'child_stateno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Hospital name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Hospital Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_addr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Hospital Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_addr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Hospital city' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Hospital county' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Hospital state' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for a Birth Hospital address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_zip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code of the Birth Hospital.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The U.S. Dependency code for the Birth Hospital- where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the funding setting.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_set'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Phone Number for a Birth Hospital .' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier of the Birth Facility with this event.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_fac_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains the work flow information for ACRF' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ACRF_WORKINGTABLE'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF, did the mother receive AZT during pregnancy.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'zido_preg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF, what week did AZT therapy started.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'zido_week'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From PCRF, did the mother receive AZT during labor.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'zido_labor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF, did the mother receive AZT prior to this pregnancy.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'zido_prior_preg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From PCRF, did the mother receive other anti-retroviral drugs during pregnancy. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'other_art_preg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' From PCRF, the other anti-retroviral drugs the mother received during pregnancy.  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'other_art_preg_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From PCRF, did the mother receive other anti-retroviral drugs during labor/delivery. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'other_art_labor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From PCRF, the other anti-retroviral drugs the mother received during labor/delivery. ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY', @level2type=N'COLUMN',@level2name=N'other_art_labor_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information pertaining to the child''s birth or the mother''s prenatal care, labor and delivery. This information is collected on the birth history section of the PCRF and the birth certificate.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BIRTH_HISTORY'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'record_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a parent record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for group(parent and child record)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rollup_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'doc_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state STATENO (statenox)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'stateno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a import' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'import_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a city' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cityno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A import file source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reporting City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rep_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Received at Health Department:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rcvd_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Did this report/document initiate a new case investigation?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'init_invest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the form or document was completed or populated with information (I.e., when the chart abstraction was complete)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'complete_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Medical record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'medrecno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'City Id no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cts_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AIDS Drug Assistance Program (ADAP) Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'adap_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ryan White Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ryan_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'STD*MIS Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'stdmis_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prison Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'prison_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RVCT (TB) Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rvct_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PATNO (HARS)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pathars_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PATNO (ASD)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'patasd_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HIVNO (HARS)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'hivno_hars'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems clint uniqe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_client_unique_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems local client' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_local_client_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems form' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_form_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UCSF Patient Identifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ucsf_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Social Security Number (SSN)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ssn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a Tracking' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'tracking_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a Generic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'gen_id1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons first name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons last name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'l_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons midle name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'm_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons first name in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_name_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons last name in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'l_name_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons name suffix.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of name being used. Examples include, maiden, birth, biological etc. The default value is legal.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'name_use_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a persons street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a persons street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person city.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person county.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person state' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for a persons address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'zip_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code for a persons address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The FIPS U.S. Dependency country code for the persons address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cntry_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value indicating a persons telephone number the format includes the storage of dashes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of a persons  address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_type_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A date of birth' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating if the person is of Hispanic or Latino origin. A person of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish Culture or origin, regardless of race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ethnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons biological sex at birth noted on persons birth certificate.  M (Male) or F (Female).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons  gender or psychosocial construct that most people use to classify a person as male, female, both or neither.The state determines if they want to display this field upon installing eHARS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Physiological anatomy and biology that determines if someone is male, female, or intersexed. The state determines if they want to display this field upon installing eHARS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'curr_sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons marital status.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'marital_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons Death Certificate Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'certificate_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons date of death.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'death_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual city name for where the person died.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'death_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual State name for where the person died.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'death_st'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual county name for where the person died.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'death_cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual country name for where the person died.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'death_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The U.S. Dependency code where the person died.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'death_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The place where the person died (e.g., hospital, at home, DOA). LOOKUP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'death_place'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Was an autopsy performed?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'autopsy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the cause of death.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'death_cause'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the cause of death.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rel_cause1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the cause of death.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rel_cause2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the cause of death.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rel_cause3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the cause of death.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rel_cause4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the cause of death.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rel_cause5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual description of the cause of death.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rel_cause6'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains the work flow information for DEATH' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DEATH_WORKINGTABLE'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a errors.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ERROR_DESCRIPTION', @level2type=N'COLUMN',@level2name=N'Error_NO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of errors' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ERROR_DESCRIPTION', @level2type=N'COLUMN',@level2name=N'Type_of_Error'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Description  for errors' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ERROR_DESCRIPTION', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains  type of errors and error description for all import files
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ERROR_DESCRIPTION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier of the facility associated with this event.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'facility_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual field that contains the facility and provider name information in a concatenated format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'name1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual field that contains the facility and provider name information in a concatenated format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'name2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'street_address1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'street_address2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The city FIPS code for the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'city_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual city name of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'city_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The county FIPS code of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'county_fips'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual county name for the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'county_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state code of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'state_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'zip_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'country_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The U.S. Dependency code for the facility''s address- where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'country_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fax number of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The email address of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of health care facility. LOOKUP:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'facility_type_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the funding setting.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'setting_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating if the facility receives HRSA funding.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'funding_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of HRSA funding a facility recieves.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'funding_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TBD: A field used by the application to determine if the information for this facility needs to be transferred.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'ship_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a import' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING', @level2type=N'COLUMN',@level2name=N'import_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table contains the facility information from source file
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FACILITY_CODE_STAGING'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Translation group name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIELD_TRANSLATION', @level2type=N'COLUMN',@level2name=N'field_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value from import file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIELD_TRANSLATION', @level2type=N'COLUMN',@level2name=N'incoming_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Translate value' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIELD_TRANSLATION', @level2type=N'COLUMN',@level2name=N'outgoing_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of Translation' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIELD_TRANSLATION', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table contains translate the value from source file
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FIELD_TRANSLATION'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for import file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL', @level2type=N'COLUMN',@level2name=N'import_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sequence column unique identifier for import file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL', @level2type=N'COLUMN',@level2name=N'import_detail_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for Record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL', @level2type=N'COLUMN',@level2name=N'record_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for group(parent and child record)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL', @level2type=N'COLUMN',@level2name=N'rollup_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state STATENO (statenox)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL', @level2type=N'COLUMN',@level2name=N'state_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for record type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL', @level2type=N'COLUMN',@level2name=N'import_record_type_UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for error' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL', @level2type=N'COLUMN',@level2name=N'error_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A translate group name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL', @level2type=N'COLUMN',@level2name=N'field_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A value from' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL', @level2type=N'COLUMN',@level2name=N'field_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A value indicating the status of the import document' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL', @level2type=N'COLUMN',@level2name=N'status_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A detail edit check validation message' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL', @level2type=N'COLUMN',@level2name=N'edit_check_message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A actual document type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL', @level2type=N'COLUMN',@level2name=N'doc_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table contains all import files details includeing import_uid,error number
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DETAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a import file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DOCUMENT_MAPPING', @level2type=N'COLUMN',@level2name=N'import_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DOCUMENT_MAPPING', @level2type=N'COLUMN',@level2name=N'record_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for staging Document' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DOCUMENT_MAPPING', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for existing ehars case for coresponding document' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DOCUMENT_MAPPING', @level2type=N'COLUMN',@level2name=N'ehars_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0'' not been loaded, ''1'' it loaded succefully' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DOCUMENT_MAPPING', @level2type=N'COLUMN',@level2name=N'load'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains relation b/w record number and document uid
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_DOCUMENT_MAPPING'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for Specific import file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_MAPPING', @level2type=N'COLUMN',@level2name=N'mapping_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for import file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_MAPPING', @level2type=N'COLUMN',@level2name=N'import_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A source document uid in staging' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_MAPPING', @level2type=N'COLUMN',@level2name=N'staging_document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A match document uid in ehars' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_MAPPING', @level2type=N'COLUMN',@level2name=N'ehars_document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier match in ehars' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_MAPPING', @level2type=N'COLUMN',@level2name=N'ehars_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A persentage of ranking' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_MAPPING', @level2type=N'COLUMN',@level2name=N'rank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains manual match results
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_MAPPING'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for match code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_MATCH_CODE', @level2type=N'COLUMN',@level2name=N'match_cd_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for import file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_MATCH_CODE', @level2type=N'COLUMN',@level2name=N'import_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_MATCH_CODE', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for dataflux matchble field' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_MATCH_CODE', @level2type=N'COLUMN',@level2name=N'match_field_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for dataflux match code value' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_MATCH_CODE', @level2type=N'COLUMN',@level2name=N'match_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains matchcode information for source files
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_MATCH_CODE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for import process flow' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_PROCESS_FLOW', @level2type=N'COLUMN',@level2name=N'import_process_flow_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description for import process' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_PROCESS_FLOW', @level2type=N'COLUMN',@level2name=N'descrption'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A user status message' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_PROCESS_FLOW', @level2type=N'COLUMN',@level2name=N'user_message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains status of import file
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_PROCESS_FLOW'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for import file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_QUEUE', @level2type=N'COLUMN',@level2name=N'import_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A actual file name of source import file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_QUEUE', @level2type=N'COLUMN',@level2name=N'file_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A current user' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_QUEUE', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A current import process identifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_QUEUE', @level2type=N'COLUMN',@level2name=N'import_queue_status_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains status of queue
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_QUEUE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A current import process identifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_QUEUE_STATUS', @level2type=N'COLUMN',@level2name=N'import_queue_status_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A status description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_QUEUE_STATUS', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains status of queue
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_QUEUE_STATUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for record type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_RECORD_TYPE', @level2type=N'COLUMN',@level2name=N'import_record_type_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A status description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_RECORD_TYPE', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains description for import file
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_RECORD_TYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of workflow(ACRF,PCRF,DEATH,LAB,INCIDENCE)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_RELEVANT_FIELD', @level2type=N'COLUMN',@level2name=N'workflow_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A dataflux field name identifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_RELEVANT_FIELD', @level2type=N'COLUMN',@level2name=N'match_field_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table contains the work flow and field uid information 
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'IMPORT_RELEVANT_FIELD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'record_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a parent record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for group(parent and child record)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rollup_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'doc_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state STATENO (statenox)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'stateno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a import' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'import_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a city' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cityno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Document Source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reporting City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rep_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Received at Health Department:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rcvd_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Did this report/document initiate a new case investigation?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'init_invest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the form or document was completed or populated with information (I.e., when the chart abstraction was complete)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'complete_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person who completed the document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the person who completed the document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'author_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Medical record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'medrecno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'City Id no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cts_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AIDS Drug Assistance Program (ADAP) Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'adap_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ryan White Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ryan_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'STD*MIS Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'stdmis_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prison Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'prison_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RVCT (TB) Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rvct_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PATNO (HARS)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pathars_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PATNO (ASD)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'patasd_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HIVNO (HARS)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'hivno_hars'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems clint uniqe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_client_unique_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems local client' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_local_client_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems form' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_form_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UCSF Patient Identifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ucsf_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Social Security Number (SSN)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ssn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a Tracking' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'tracking_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a Generic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'gen_id1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons first name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons last name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'l_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons midle name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'm_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons first name in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_name_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons last name in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'l_name_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons name suffix.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of name being used. Examples include, maiden, birth, biological etc. The default value is legal.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'name_use_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a persons street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a persons street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person city.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person county.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person state' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for a persons address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'zip_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code for a persons address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The FIPS U.S. Dependency country code for the persons address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cntry_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value indicating a persons telephone number the format includes the storage of dashes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of a persons  address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_type_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of health care facility. LOOKUP:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_form'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_addr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_addr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual city name of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual county name for the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state code of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_st'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_zip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The U.S. Dependency code for the facilitys address- where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state code of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_set'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unique identifier for a health care facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A date of birth' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating if the person is of Hispanic or Latino origin. A person of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish Culture or origin, regardless of race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ethnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons biological sex at birth noted on persons birth certificate.  M (Male) or F (Female).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons  gender or psychosocial construct that most people use to classify a person as male, female, both or neither.The state determines if they want to display this field upon installing eHARS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Physiological anatomy and biology that determines if someone is male, female, or intersexed. The state determines if they want to display this field upon installing eHARS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'curr_sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons marital status.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'marital_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the persons country of birth.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating which U.S.Possession or Other country of birth.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Source recived date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'source_rpt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Todays Date?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'interview_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When you first tested positive for HIV were you given a number or a code to use to get your results instead of your name (Anonymous test)?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'possibly_exposed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What was the name of the place where you got your first positive HIV test? For example, this could be the name of a health clinic, blood bank, doctors office, or STD clinic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'regular_test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Site State' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'just_checking'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Site' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'required_test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Because you thought/were worried that you might have been exposed to HIV in the 6 months before (the date in question 2)?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'other_reason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Because you got tested on a regular basis (for example, once a year or every six months), and it was time for you to get tested again?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'reason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Because you were just checking to make sure you were HIV negative?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'previous_hiv_test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Because you were required to get the test by either insurance, the military, the court, or by some other agency?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'positive_test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Because there were some other reason you wanted to get tested?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'first_pos_test_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'(If so, what is the reason)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'annon_test'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When was the very first time you ever got tested for HIV (When you got the test, not When you got the results)? Please make your best guess if you are not sure.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'test_site_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Have you ever had an HIV test that was negative?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'test_site_state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Before your first positive HIV test (in Question 2), when did you last test negative for HIV? List when you got the test, not when you got the results.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'test_site_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What was the name of the place where you had your last negative HIV test? For example this could be the name of a health clinic, blood bank, doctors office, or STD clinic.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'first_postest_worried'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'In the two years before your first positive HIV test (in Question 2) how many times, did you get tested HIV? your first positive HIV test (in Question 2) has been included for you in the count.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'first_postest_regular'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'In the two years before your first positive HIV test (in Question 2) how many times, did you get tested HIV? your first positive HIV test (in Question 2) has been included for you in the count.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'first_postest_required'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'In the past six months have you taken any medicines shown in the picture on the last page to treat or try to prevent HIV or Hepatitis?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'first_postest_other'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Which ones did you take? (If you are not sure of when you took the medicines, please include the ones you MIGHT have taken in the six months before your first positive test)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'first_postest_reason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What was the first day you took any of the medications shown in the pictures? Please make your best guess if you are not sure.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ever_tested_neg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Are you now taking any of the medicines shown in the pictures?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'last_negtest_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When was the last day you took any of the medicines shown in the pictures? Please youre your best guess if you are not sure.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'last_negtest_sitename'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Site State:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'last_negtest_st'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Site type' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'last_negtest_sitetype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'n the past two years, how many times did you get tested for HIV? Todays test has been included for you in this count.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'times_tested_2yrs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'In the two years before your first positive test how many times did you get tested for HIV? Your first positive test has been included for you in this count' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'times_tested_pos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When was the very first time you ever got tested for HIV, (when you got the test, not when you got the results)? Please make your best guess if you dont know for sure' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'first_ever_test_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'In the past six months have you taken any medicines to prevent HIV or Hepatitis?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'medicines_taken'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Which ones did you take? (If you are not sure of which medicines you took in the last six months, please include medicines you MIGHT have taken during that time)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'medicines_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'What was the month and year of the very first time you ever tested positive for HIV? List when you got your test, not when you got your results. We will refer to this test date again' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'med_begin_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Are you now taking any of the medicines shown in the pictures?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'current_meds'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When was the last day you took any of the medicines shown in the pictures? Please youre your best guess if you are not sure.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'med_last_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains the work flow information for INCIDENCE' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'INCIDENCE_WORKINGTABLE'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'record_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a parent record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for group(parent and child record)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rollup_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'doc_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state STATENO (statenox)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'stateno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a import' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'import_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a city' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cityno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A import file source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reporting City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rep_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Received at Health Department:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rcvd_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Did this report/document initiate a new case investigation?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'init_invest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the form or document was completed or populated with information (I.e., when the chart abstraction was complete)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'complete_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Medical record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'medrecno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'City Id no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cts_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AIDS Drug Assistance Program (ADAP) Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'adap_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ryan White Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ryan_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'STD*MIS Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'stdmis_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prison Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'prison_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RVCT (TB) Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rvct_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PATNO (HARS)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pathars_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PATNO (ASD)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'patasd_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HIVNO (HARS)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'hivno_hars'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems clint uniqe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_client_unique_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems local client' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_local_client_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems form' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_form_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UCSF Patient Identifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ucsf_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Social Security Number (SSN)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ssn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a Tracking' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'tracking_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a Generic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'gen_id1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons first name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons last name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'l_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons midle name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'm_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons first name in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_name_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons last name in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'l_name_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons name suffix.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of name being used. Examples include, maiden, birth, biological etc. The default value is legal.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'name_use_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a persons street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a persons street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person city.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code for a persons address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person state' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for a persons address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'zip_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code for a persons address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The FIPS U.S. Dependency country code for the persons address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cntry_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value indicating a persons telephone number the format includes the storage of dashes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of a persons  address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_type_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A date of birth' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating if the person is of Hispanic or Latino origin. A person of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish Culture or origin, regardless of race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ethnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons biological sex at birth noted on persons birth certificate.  M (Male) or F (Female).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons  gender or psychosocial construct that most people use to classify a person as male, female, both or neither.The state determines if they want to display this field upon installing eHARS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Physiological anatomy and biology that determines if someone is male, female, or intersexed. The state determines if they want to display this field upon installing eHARS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'curr_sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The persons marital status.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'marital_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual field containg the primary name of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_addr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_addr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual city name of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual county name for the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state code of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_st'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_zip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code of the facilitys address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The U.S. Dependency code for the facilitys address- where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the funding setting.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_set'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier of the facility associated with this event.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician first name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_first'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician Last name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_last'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician Middle Name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_middle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician Phone number.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician Details.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'specialty_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for Specimen' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'specimen_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HIV-1 IFA all lab test names are allowed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lab_test_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lab test collection date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'colldate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the lab that performed the test received the specimen from either a health care provider or another laboratory.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'specimen_receive_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the test result was reported or processed at the lab.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'result_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of specimen collected.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'specimentype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lab_result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reported units.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lab_units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reference range or detection limit for viral load or the optical density for STARHS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'viral_range'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An interpretation of the lab result, values include within range =, below range(limit) <, above range (limit) > for viral load.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'interpretation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Clinical Laboratory Improvement Amendments Provider Identification of the laboratory that performed the test.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lab_clia_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reason STARHS was not Performed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lab_specific_note'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of specimen collected.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'starhs_sample_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains the work flow information for LAB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LAB_WORKINGTABLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a local field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD', @level2type=N'COLUMN',@level2name=N'local_field_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local field''s value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD', @level2type=N'COLUMN',@level2name=N'local_field_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information on locally defined variables.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LOCAL_FIELD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An internal unique identifier for a document. For person based local fields the ehars_uid is stored in this field.  For document based local fields the document_uid is stored in this field.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION', @level2type=N'COLUMN',@level2name=N'document_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An internal unique identifier for an observation.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION', @level2type=N'COLUMN',@level2name=N'obs_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the observed object.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION', @level2type=N'COLUMN',@level2name=N'obs_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information on a person''s observations.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OBSERVATION'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'record_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a parent record' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for group(parent and child record)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rollup_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'doc_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state STATENO (statenox)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'stateno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a Import file' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'import_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a city' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cityno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A import file source' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reporting City' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rep_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date Received at Health Department:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rcvd_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Did this report/document initiate a new case investigation?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'init_invest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the form or document was completed or populated with information (I.e., when the chart abstraction was complete)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'complete_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person who completed the document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the person who completed the document.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'author_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Medical record.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'medrecno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'City Id no' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cts_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AIDS Drug Assistance Program (ADAP) Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'adap_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ryan White Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ryan_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'STD*MIS Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'stdmis_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prison Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'prison_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RVCT (TB) Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'rvct_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PATNO (HARS)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pathars_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PATNO (ASD)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'patasd_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HIVNO (HARS)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'hivno_hars'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems clint uniqe' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_client_unique_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems local client' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_local_client_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a pems form' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pems_form_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'UCSF Patient Identifier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ucsf_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Social Security Number (SSN)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ssn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a Tracking' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'tracking_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for a city' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'gen_id1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s first name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s last name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'l_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s midle name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'm_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s first name in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_name_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s last name in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'l_name_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s name suffix.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of name being used. Examples include, maiden, birth, biological etc. The default value is legal.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'name_use_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person''s street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person''s street address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'addr_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person city.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person county.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a person state' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for a person''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'zip_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code for a person''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The FIPS U.S. Dependency country code for the person''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cntry_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value indicating a person''s telephone number the format includes the storage of dashes.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the type of health care facility. LOOKUP:' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_form'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_addr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_addr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual city name of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual county name for the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state code of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_st'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_zip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The U.S. Dependency code for the facility''s address- where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the funding setting.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_set'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unique identifier for a health care facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fac_cplt_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A date of birth' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the persons race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'race5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating if the person is of Hispanic or Latino origin. A person of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish Culture or origin, regardless of race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ethnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s biological sex at birth noted on person''s birth certificate.  M (Male) or F (Female).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code of the Birth Residential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating which U.S.Possession or Other country of birth.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Certificate Number' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'certificate_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'DIAGNOSIS STATUS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'diag_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AGE AT DIAGNOSIS HIV INFECTION' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'age_at_hiv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'AGE OF DIAGNOSIS AIDS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'age_at_aids'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'diagnosis code' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'event_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A textual field containg the primary name of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The phone number of the facility.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_addr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Text used for line one of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_addr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual city name of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual county name for the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The state code of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_st'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_zip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code of the facility''s address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The U.S. Dependency code for the facility''s address- where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the funding setting.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_set'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier of the facility associated with this event.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'facility_uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician first name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_first'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician Last name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_last'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician Middle Name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_middle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician in a soundex format.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician Phone number.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'phys_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Physician Specialty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'specialty_cd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Candidiasis, bronchi, trachea, or lungs' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cand_lung'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Candidiasis, bronchi, trachea, or lungs date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'candlung_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Candidiasis, esophageal' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cand_esoph'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Candidiasis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cande_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Coccidioidomycosis, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cocci'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Coccidioidomycosis, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cocci_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cryptococcosis, extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cryptoco'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Cryptococcosis, extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cryptoco_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cryptosporidiosis, chronic intestinal (>1 mo. duration)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cryptosp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Cryptosporidiosis, chronic intestinal (>1 mo. duration)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cryptosp_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cytomegalovirus disease (other than in liver, spleen, or nodes)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cmv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Cytomegalovirus disease (other than in liver, spleen, or nodes)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cmv_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cytomegalovirus retinitis (with loss of vision)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cmvret'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Cytomegalovirus retinitis (with loss of vision)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'cmvret_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HIV encephalopathy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'hiv_enceph'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received HIV encephalopathy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'hivnceph_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Herpes simplex: chronic ulcer(s) (>1 mo. duration) or bronchitis, pneumonitis, or esophagitis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'herpes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Herpes simplex: chronic ulcer(s) (>1 mo. duration) or bronchitis, pneumonitis, or esophagitis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'herpes_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Histoplasmosis, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'histo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Histoplasmosis, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'histo_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Isosporiasis, chronic intestinal (>1 mo. duration)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'iso'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Isosporiasis, chronic intestinal (>1 mo. duration)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'iso_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kaposi''s sarcoma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Kaposi''s sarcoma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'ks_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lymphoid interstitial pneumonia and/or pulmonary lymphoid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Lymphoid interstitial pneumonia and/or pulmonary lymphoid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lip_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lymphoma, Burkitt''s (or equivalent term)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'burkl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Lymphoma, Burkitt''s (or equivalent term)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'burkl_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lymphoma, immunoblastic (or equivalent term)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lymph_immuno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Lymphoma, immunoblastic (or equivalent term)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lymphim_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lymphoma, primary in brain' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lymph_brain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Lymphoma, primary in brain' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lymphb_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mycobacterium avium complex or M. kansasii, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'myco_avium'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Mycobacterium avium complex or M. kansasii, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'mycoav_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'M. tuberculosis, pulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'myco_tb_pulm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received M. tuberculosis, pulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'mycopulm_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'M. tuberculosis, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'myco_tb_dissem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received M. tuberculosis, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'mycodism_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mycobacterium, of other species or unidentified species, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'myco_other'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Mycobacterium, of other species or unidentified species, disseminated or extrapulmonary' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'mycoth_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pneumocystis carinii pneumonia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pcp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Pneumocystis carinii pneumonia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pcp_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Pneumonia, recurrent, in 12 mo. Period' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pml'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Pneumonia, recurrent, in 12 mo. Period' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'pml_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Toxoplasmosis of brain, onset at >1 mo. of age' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'toxo_brain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Toxoplasmosis of brain, onset at >1 mo. of age' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'toxo_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Wasting syndrome due to HIV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'wasting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the patient received Wasting syndrome due to HIV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'wasting_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If HIV tests were not positive or were not done, does this patient have an immunodeficiency that would disqualify him/her from AIDS case definition :' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'immunodef'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HIV-1 IFA all lab test names are allowed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lab_test_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Lab test collection date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'colldate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the lab that performed the test received the specimen from either a health care provider or another laboratory.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'specimen_receive_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the test result was reported or processed at the lab.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'result_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of specimen collected.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'specimentype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result value.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lab_result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reported units.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'lab_units'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reference range or detection limit for viral load or the optical density for STARHS.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'viral_range'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Hospital name' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Hospital Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_addr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Hospital Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_addr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Hospital city' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Hospital county' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_cnty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Hospital state' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for a Birth Hospital address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_zip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code of the Birth Hospital.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The U.S. Dependency code for the Birth Hospital- where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code that designates the funding setting.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_set'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Phone Number for a Birth Hospital .' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_hosp_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier of the Birth Facility with this event.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_fac_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains information pertaining to the child''s birth or the mother''s prenatal care, labor and delivery. This information is collected on the birth history section of the PCRF and the birth certificate.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_history'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Residential Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_res_addr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Residential Address' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_res_addr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Residential city' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_res_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Residential county' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_res_county'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a Birth Residential state' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_res_state'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The zip code for a Birth Residential address.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_res_zip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ISO country code of the Birth Residential' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_res_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The U.S. Dependency code for the Birth Residential- where applicable.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_res_cntry_usd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF and BC,The child''s birth weight (lbs).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_weight_lbs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF and BC,The child''s birth weight (oz).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_weight_oz'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF and BC,The child''s birth weight (grams).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_weight_grams'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF and BC,The type of birth (single, twin etc.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF and BC,The method of delivery (e.g., vaginal, cesarean)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'delivery'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From PCRF,If the child has birth defects (yes, no, unknown value).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_defects'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From PCRF,The child''s neonatal status.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'neonatal_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From PCRF,The gestational age of the child.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'neonatal_weeks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From PCRF,The  prenatal care Stating Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'prenatal_care_start'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From PCRF,The number of prenatal care visits.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'no_prenatal_visits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Mother first name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'mother_fname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Mother Last name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'mother_lname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Mother Middle name.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'mother_mname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF, the mother''s date of birth.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'maternal_dob'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF, the mother''s last name soundex.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'maternal_sndx'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF, the mother''s STATENO identifier.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'maternal_stateno'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'From the PCRF, the mother''s country of birth.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'maternal_birth_cntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of place where the child was born,  like home or hospital.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'birth_place'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the mother''s first prenatal care visit.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'first_prenatal_care_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the mother''s last prenatal care visit.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'last_prenatal_care_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the mother''s last menses.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'last_normal_menses_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the mother''s last live birth.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'last_live_birth_dt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A field indicating if the Father is of Hispanic or Latino origin. A Father of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish Culture or origin, regardless of race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'fathers_ethnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Father race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_race1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Father race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_race2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Father race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_race3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Father race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_race4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Father race.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE', @level2type=N'COLUMN',@level2name=N'f_race5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains the work flow information for PCRF
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PCRFBIRTH_WORKINGTABLE'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the workflow .' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORKFLOW_TYPE', @level2type=N'COLUMN',@level2name=N'workflow_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The textual description of a each work flow' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORKFLOW_TYPE', @level2type=N'COLUMN',@level2name=N'description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the working table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORKFLOW_TYPE', @level2type=N'COLUMN',@level2name=N'working_table'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A table that maintains the work flow information 
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORKFLOW_TYPE'
GO

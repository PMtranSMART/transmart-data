--
-- Type: TABLE; Owner: BIOMART; Name: CTD2_TRIAL_DETAILS
--
 CREATE TABLE "BIOMART"."CTD2_TRIAL_DETAILS" 
  (	"CTD_TD_SEQ" NUMBER, 
"CTD_STUDY_ID" NUMBER, 
"CONTROL" VARCHAR2(2000 BYTE), 
"BLINDING_PROCEDURE" VARCHAR2(2000 BYTE), 
"NO_OF_ARMS" VARCHAR2(2000 BYTE), 
"SPONSOR" VARCHAR2(2000 BYTE), 
"PATIENT_STUDIED" VARCHAR2(2000 BYTE), 
"SOURCE_TYPE" VARCHAR2(2000 BYTE), 
"TRIAL_DESCRIPTION" VARCHAR2(4000 BYTE), 
"ARM_NAME" VARCHAR2(250 BYTE), 
"PATIENT_STUDY" VARCHAR2(250 BYTE), 
"CLASS_TYPE" VARCHAR2(250 BYTE), 
"CLASS_VALUE" VARCHAR2(250 BYTE), 
"ASTHMA_DURATION" VARCHAR2(250 BYTE), 
"REGION" VARCHAR2(250 BYTE), 
"AGE" VARCHAR2(100 BYTE), 
"GENDER" VARCHAR2(100 BYTE), 
"MINOR_PARTICIPATION" VARCHAR2(100 BYTE), 
"SYMPTOM_SCORE" VARCHAR2(100 BYTE), 
"RESCUE_MEDICATION" VARCHAR2(2000 BYTE), 
"THERAPEUTIC_INTERVENTION" VARCHAR2(255 BYTE), 
"SMOKERS" VARCHAR2(255 BYTE), 
"FORMER_SMOKERS" VARCHAR2(255 BYTE), 
"NEVER_SMOKERS" VARCHAR2(255 BYTE), 
"SMOKING_PACK_YEARS" VARCHAR2(255 BYTE), 
"PULM_PATH_NAME" VARCHAR2(255 BYTE), 
"PULM_PATH_PCT" VARCHAR2(50 BYTE), 
"PULM_PATH_VALUE" VARCHAR2(50 BYTE), 
"PULM_PATH_METHOD" VARCHAR2(255 BYTE), 
"ALLOW_MED_THERAPY_OCS" VARCHAR2(1000 BYTE), 
"ALLOW_MED_THERAPY_ICS" VARCHAR2(1000 BYTE), 
"ALLOW_MED_THERAPY_LABA" VARCHAR2(1000 BYTE), 
"ALLOW_MED_THERAPY_LTRA" VARCHAR2(1000 BYTE), 
"ALLOW_MED_THERAPY_DESC" VARCHAR2(4000 BYTE), 
"ALLOW_MED_THERAPY_CORTSTER" VARCHAR2(1000 BYTE), 
"ALLOW_MED_THERAPY_IMMUNO" VARCHAR2(1000 BYTE), 
"ALLOW_MED_THERAPY_CYTO" VARCHAR2(1000 BYTE), 
"ALLOW_MED_TREAT_OCS" VARCHAR2(1000 BYTE), 
"ALLOW_MED_TREAT_ICS" VARCHAR2(1000 BYTE), 
"ALLOW_MED_TREAT_LABA" VARCHAR2(1000 BYTE), 
"ALLOW_MED_TREAT_LTRA" VARCHAR2(1000 BYTE), 
"ALLOW_MED_TREAT_DESC" VARCHAR2(4000 BYTE), 
"ALLOW_MED_TREAT_CORTSTER" VARCHAR2(1000 BYTE), 
"ALLOW_MED_TREAT_IMMUNO" VARCHAR2(1000 BYTE), 
"ALLOW_MED_TREAT_CYTO" VARCHAR2(1000 BYTE), 
"PAT_CHAR_BASE_CLIN_VAR" VARCHAR2(500 BYTE), 
"PAT_CHAR_BASE_CLIN_VAR_PCT" VARCHAR2(250 BYTE), 
"PAT_CHAR_BASE_CLIN_VAR_VALUE" VARCHAR2(250 BYTE), 
"BIOMARKER_NAME_NAME" VARCHAR2(250 BYTE), 
"PAT_CHAR_BIOMARKER_PCT" VARCHAR2(250 BYTE), 
"PAT_CHAR_BIOMARKER_VALUE" VARCHAR2(250 BYTE), 
"PAT_CHAR_CELLINFO_NAME" VARCHAR2(250 BYTE), 
"PAT_CHAR_CELLINFO_TYPE" VARCHAR2(250 BYTE), 
"PAT_CHAR_CELLINFO_COUNT" VARCHAR2(250 BYTE), 
"PAT_CHAR_PRIORMED_NAME" VARCHAR2(250 BYTE), 
"PAT_CHAR_PRIORMED_PCT" VARCHAR2(500 BYTE), 
"PAT_CHAR_PRIORMED_DOSE" VARCHAR2(250 BYTE), 
"DISEASE_PHENOTYPE_NAME" VARCHAR2(1000 BYTE), 
"DISEASE_SEVERITY_NAME" VARCHAR2(500 BYTE), 
"INCL_AGE" VARCHAR2(2000 BYTE), 
"INCL_DIFFICULT_TO_TREAT" VARCHAR2(2000 BYTE), 
"INCL_DISEASE_DIAGNOSIS" VARCHAR2(2000 BYTE), 
"INCL_STEROID_DOSE" VARCHAR2(2000 BYTE), 
"INCL_LABA" VARCHAR2(2000 BYTE), 
"INCL_OCS" VARCHAR2(2000 BYTE), 
"INCL_XOLAIR" VARCHAR2(2000 BYTE), 
"INCL_LTRA_INHIBITOR" VARCHAR2(2000 BYTE), 
"INCL_FEV1" VARCHAR2(2000 BYTE), 
"INCL_FEV1_REVERSIBILITY" VARCHAR2(2000 BYTE), 
"INCL_SMOKING" VARCHAR2(2000 BYTE), 
"INCL_TLC" VARCHAR2(2000 BYTE), 
"INCL_FVC" VARCHAR2(2000 BYTE), 
"INCL_DLCO" VARCHAR2(2000 BYTE), 
"INCL_SGRQ" VARCHAR2(2000 BYTE), 
"INCL_HRCT" VARCHAR2(2000 BYTE), 
"INCL_BIOPSY" VARCHAR2(2000 BYTE), 
"INCL_DYPSNEA_ON_EXERTION" VARCHAR2(2000 BYTE), 
"INCL_CONCOMITANT_MED" VARCHAR2(2000 BYTE), 
"INCL_FORMER_SMOKERS" VARCHAR2(2000 BYTE), 
"INCL_NEVER_SMOKERS" VARCHAR2(2000 BYTE), 
"INCL_SMOKING_PACK_YEARS" VARCHAR2(2000 BYTE), 
"INCL_FEV_FVC" VARCHAR2(2000 BYTE), 
"TRIAL_DES_MINIMAL_SYMPTOM" VARCHAR2(2000 BYTE), 
"TRIAL_DES_RESCUE_MED" VARCHAR2(4000 BYTE), 
"TRIAL_DES_EXCLUSION_CRITERIA" VARCHAR2(4000 BYTE), 
"TRIAL_DES_OPEN_LABEL_STATUS" VARCHAR2(250 BYTE), 
"TRIAL_DES_RANDOM_STATUS" VARCHAR2(250 BYTE), 
"TRIAL_DES_NATURE_OF_TRIAL" VARCHAR2(250 BYTE), 
"TRIAL_DES_BLINDED_STATUS" VARCHAR2(250 BYTE), 
"TRIAL_DES_RUN_IN_PERIOD" VARCHAR2(2000 BYTE), 
"TRIAL_DES_TREATMENT" VARCHAR2(2000 BYTE), 
"TRIAL_DES_WASHOUT_PERIOD" VARCHAR2(2000 BYTE), 
"TRIAL_STATUS_NAME" VARCHAR2(2000 BYTE), 
"TRIAL_PHASE_NAME" VARCHAR2(2000 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "BIOMART" ;
--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_CTD2_TRIAL_DETAILS
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_CTD2_TRIAL_DETAILS" 
BEFORE INSERT ON CTD2_TRIAL_DETAILS
 FOR EACH ROW BEGIN     
 IF INSERTING THEN      
	IF :NEW."CTD_TD_SEQ" IS NULL THEN 
		SELECT SEQ_CLINICAL_TRIAL_DESIGN_ID.NEXTVAL INTO :NEW."CTD_TD_SEQ" FROM DUAL;  
	END IF;    
 END IF; 
END;







/
ALTER TRIGGER "BIOMART"."TRG_CTD2_TRIAL_DETAILS" ENABLE;

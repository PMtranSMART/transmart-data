--
-- Type: TABLE; Owner: BIOMART; Name: CTD2_CLIN_INHIB_EFFECT
--
 CREATE TABLE "BIOMART"."CTD2_CLIN_INHIB_EFFECT" 
  (	"CTD_CIE_SEQ" NUMBER, 
"CTD_STUDY_ID" NUMBER, 
"EVENT_DESCRIPTION_NAME" VARCHAR2(4000 BYTE), 
"EVENT_DEFINITION_NAME" VARCHAR2(4000 BYTE), 
"ADVERSE_EFFECT_NAME" VARCHAR2(4000 BYTE), 
"SIGNAL_EFFECT_NAME" VARCHAR2(4000 BYTE), 
"PHARMACO_PARAMETER_NAME" VARCHAR2(500 BYTE), 
"DISCONTINUATION_RATE_VALUE" VARCHAR2(250 BYTE), 
"BENEFICIAL_EFFECT_NAME" VARCHAR2(4000 BYTE), 
"DRUG_EFFECT" VARCHAR2(4000 BYTE), 
"CLINICAL_VARIABLE_NAME" VARCHAR2(250 BYTE), 
"QP_SM_PERCENTAGE_CHANGE" VARCHAR2(250 BYTE), 
"QP_SM_ABSOLUTE_CHANGE" VARCHAR2(250 BYTE), 
"QP_SM_RATE_OF_CHANGE" VARCHAR2(250 BYTE), 
"QP_SM_TREATMENT_PERIOD" VARCHAR2(250 BYTE), 
"QP_SM_GROUP_CHANGE" VARCHAR2(250 BYTE), 
"QP_SM_P_VALUE" VARCHAR2(250 BYTE), 
"CE_SM_NO" VARCHAR2(250 BYTE), 
"CE_SM_EVENT_RATE" VARCHAR2(250 BYTE), 
"CE_TIME_TO_EVENT" VARCHAR2(250 BYTE), 
"CE_REDUCTION" VARCHAR2(250 BYTE), 
"CE_P_VALUE" VARCHAR2(250 BYTE), 
"CLINICAL_CORRELATION" VARCHAR2(2000 BYTE), 
"COEFFICIENT_VALUE" VARCHAR2(250 BYTE), 
"STATISTICS_P_VALUE" VARCHAR2(250 BYTE), 
"STATISTICS_DESCRIPTION" VARCHAR2(4000 BYTE), 
"PRIMARY_ENDPOINT_TYPE" VARCHAR2(250 BYTE), 
"PRIMARY_ENDPOINT_DEFINITION" VARCHAR2(4000 BYTE), 
"PRIMARY_ENDPOINT_TEST_NAME" VARCHAR2(2000 BYTE), 
"PRIMARY_ENDPOINT_TIME_PERIOD" VARCHAR2(2000 BYTE), 
"PRIMARY_ENDPOINT_CHANGE" VARCHAR2(2000 BYTE), 
"PRIMARY_ENDPOINT_P_VALUE" VARCHAR2(2000 BYTE), 
"SECONDARY_ENDPOINT_TYPE" VARCHAR2(2000 BYTE), 
"SECONDARY_ENDPOINT_DEFINITION" VARCHAR2(4000 BYTE), 
"SECONDARY_ENDPOINT_TEST_NAME" VARCHAR2(2000 BYTE), 
"SECONDARY_ENDPOINT_TIME_PERIOD" VARCHAR2(4000 BYTE), 
"SECONDARY_ENDPOINT_CHANGE" VARCHAR2(4000 BYTE), 
"SECONDARY_ENDPOINT_P_VALUE" VARCHAR2(4000 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "BIOMART" ;
--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_CTD2_CLIN_INHIB_EFFECT
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_CTD2_CLIN_INHIB_EFFECT" 
BEFORE INSERT ON CTD2_CLIN_INHIB_EFFECT 
 FOR EACH ROW BEGIN     
 IF INSERTING THEN      
	IF :NEW."CTD_CIE_SEQ" IS NULL THEN 
		SELECT SEQ_CLINICAL_TRIAL_DESIGN_ID.NEXTVAL INTO :NEW."CTD_CIE_SEQ" FROM DUAL;  
	END IF;    
 END IF; 
END;







/
ALTER TRIGGER "BIOMART"."TRG_CTD2_CLIN_INHIB_EFFECT" ENABLE;

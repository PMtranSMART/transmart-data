--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: SAMPLE_CATEGORIES
--
 CREATE TABLE "I2B2DEMODATA"."SAMPLE_CATEGORIES" 
  (	"TRIAL_NAME" VARCHAR2(100 BYTE), 
"TISSUE_TYPE" VARCHAR2(2000 BYTE), 
"DATA_TYPES" VARCHAR2(2000 BYTE), 
"DISEASE" VARCHAR2(2000 BYTE), 
"TISSUE_STATE" VARCHAR2(2000 BYTE), 
"SAMPLE_ID" VARCHAR2(250 BYTE), 
"BIOBANK" VARCHAR2(3 BYTE), 
"SOURCE_ORGANISM" VARCHAR2(255 BYTE), 
"TREATMENT" VARCHAR2(255 BYTE), 
"SAMPLE_TREATMENT" VARCHAR2(2000 BYTE), 
"SUBJECT_TREATMENT" VARCHAR2(2000 BYTE), 
"TIMEPOINT" VARCHAR2(250 BYTE), 
 CHECK (BioBank in('No','Yes')) ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;


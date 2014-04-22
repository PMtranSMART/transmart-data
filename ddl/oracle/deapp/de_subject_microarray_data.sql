--
-- Type: TABLE; Owner: DEAPP; Name: DE_SUBJECT_MICROARRAY_DATA
--
 CREATE TABLE "DEAPP"."DE_SUBJECT_MICROARRAY_DATA" 
  (	"TRIAL_SOURCE" VARCHAR2(200 BYTE), 
"TRIAL_NAME" VARCHAR2(50 BYTE), 
"PROBESET_ID" NUMBER(22,0), 
"ASSAY_ID" NUMBER(18,0), 
"PATIENT_ID" NUMBER(18,0), 
"RAW_INTENSITY" NUMBER(18,4), 
"LOG_INTENSITY" NUMBER(18,4), 
"ZSCORE" NUMBER(18,4)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;


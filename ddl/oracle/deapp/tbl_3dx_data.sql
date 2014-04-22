--
-- Type: TABLE; Owner: DEAPP; Name: TBL_3DX_DATA
--
 CREATE TABLE "DEAPP"."TBL_3DX_DATA" 
  (	"TRIAL_NAME" VARCHAR2(50 BYTE), 
"PROBESET_ID" NUMBER(22,0), 
"ASSAY_ID" NUMBER(18,0), 
"PATIENT_ID" NUMBER(18,0), 
"RAW_INTENSITY" NUMBER(18,4), 
"LOG_INTENSITY" NUMBER(18,4), 
"ZSCORE" NUMBER(18,4), 
"PROBE_ID" VARCHAR2(100 BYTE), 
"GENE_SYMBOL" VARCHAR2(100 BYTE), 
"GENE_ID" NUMBER(18,0)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;


--
-- Type: TABLE; Owner: TM_LZ; Name: RWG_ANALYSIS
--
 CREATE TABLE "TM_LZ"."RWG_ANALYSIS" 
  (	"STUDY_ID" VARCHAR2(500 BYTE), 
"COHORTS" VARCHAR2(500 BYTE), 
"ANALYSIS_ID" VARCHAR2(255 BYTE), 
"PVALUE_CUTOFF" NUMBER(5,3), 
"FOLDCHANGE_CUTOFF" NUMBER(5,3), 
"LSMEAN_CUTOFF" NUMBER(5,3), 
"ANALYSIS_TYPE" VARCHAR2(500 BYTE), 
"DATA_TYPE" VARCHAR2(500 BYTE), 
"PLATFORM" VARCHAR2(500 BYTE), 
"LONG_DESC" VARCHAR2(500 BYTE), 
"SHORT_DESC" VARCHAR2(500 BYTE), 
"IMPORT_DATE" TIMESTAMP (6) DEFAULT sysdate NOT NULL ENABLE, 
"BIO_ASSAY_ANALYSIS_ID" NUMBER(18,0)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;


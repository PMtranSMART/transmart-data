--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: PATIENT_DIMENSION_BKP
--
 CREATE TABLE "I2B2DEMODATA"."PATIENT_DIMENSION_BKP" 
  (	"PATIENT_NUM" NUMBER(38,0), 
"VITAL_STATUS_CD" VARCHAR2(50 BYTE), 
"BIRTH_DATE" DATE, 
"DEATH_DATE" DATE, 
"SEX_CD" VARCHAR2(50 BYTE), 
"AGE_IN_YEARS_NUM" NUMBER(38,0), 
"LANGUAGE_CD" VARCHAR2(50 BYTE), 
"RACE_CD" VARCHAR2(50 BYTE), 
"MARITAL_STATUS_CD" VARCHAR2(50 BYTE), 
"RELIGION_CD" VARCHAR2(50 BYTE), 
"ZIP_CD" VARCHAR2(50 BYTE), 
"STATECITYZIP_PATH" VARCHAR2(700 BYTE), 
"UPDATE_DATE" DATE, 
"DOWNLOAD_DATE" DATE, 
"IMPORT_DATE" DATE, 
"SOURCESYSTEM_CD" VARCHAR2(50 BYTE), 
"UPLOAD_ID" NUMBER(38,0), 
"PATIENT_BLOB" CLOB, 
"INCOME_CD" VARCHAR2(50 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" 
LOB ("PATIENT_BLOB") STORE AS BASICFILE (
 TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 PCTVERSION 10
 NOCACHE NOLOGGING ) ;


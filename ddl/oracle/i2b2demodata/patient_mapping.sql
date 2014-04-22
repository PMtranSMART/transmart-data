--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: PATIENT_MAPPING
--
 CREATE TABLE "I2B2DEMODATA"."PATIENT_MAPPING" 
  (	"PATIENT_IDE" VARCHAR2(200 BYTE) NOT NULL ENABLE, 
"PATIENT_IDE_SOURCE" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"PATIENT_NUM" NUMBER(38,0) NOT NULL ENABLE, 
"PATIENT_IDE_STATUS" VARCHAR2(50 BYTE), 
"UPLOAD_DATE" DATE, 
"UPDATE_DATE" DATE, 
"DOWNLOAD_DATE" DATE, 
"IMPORT_DATE" DATE, 
"SOURCESYSTEM_CD" VARCHAR2(50 BYTE), 
"UPLOAD_ID" NUMBER(38,0)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;

--
-- Type: INDEX; Owner: I2B2DEMODATA; Name: PM_UPLOADID_IDX
--
CREATE INDEX "I2B2DEMODATA"."PM_UPLOADID_IDX" ON "I2B2DEMODATA"."PATIENT_MAPPING" ("UPLOAD_ID")
TABLESPACE "USERS" ;


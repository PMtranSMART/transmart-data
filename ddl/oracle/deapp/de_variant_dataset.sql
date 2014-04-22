--
-- Type: TABLE; Owner: DEAPP; Name: DE_VARIANT_DATASET
--
 CREATE TABLE "DEAPP"."DE_VARIANT_DATASET" 
  (	"DATASET_ID" VARCHAR2(50 BYTE), 
"DATASOURCE_ID" VARCHAR2(200 BYTE), 
"ETL_ID" VARCHAR2(20 BYTE), 
"ETL_DATE" DATE, 
"GENOME" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"METADATA_COMMENT" CLOB, 
"VARIANT_DATASET_TYPE" VARCHAR2(50 BYTE), 
 PRIMARY KEY ("DATASET_ID")
 USING INDEX
 TABLESPACE "USERS"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" 
LOB ("METADATA_COMMENT") STORE AS BASICFILE (
 TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE LOGGING ) ;


--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: SET_UPLOAD_STATUS
--
 CREATE TABLE "I2B2DEMODATA"."SET_UPLOAD_STATUS" 
  (	"UPLOAD_ID" NUMBER, 
"SET_TYPE_ID" NUMBER(38,0), 
"SOURCE_CD" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
"NO_OF_RECORD" NUMBER, 
"LOADED_RECORD" NUMBER, 
"DELETED_RECORD" NUMBER, 
"LOAD_DATE" DATE NOT NULL ENABLE, 
"END_DATE" DATE, 
"LOAD_STATUS" VARCHAR2(100 BYTE), 
"TRANSFORM_NAME" VARCHAR2(500 BYTE), 
"MESSAGE" CLOB, 
"INPUT_FILE_NAME" CLOB, 
"LOG_FILE_NAME" CLOB
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" 
LOB ("MESSAGE") STORE AS BASICFILE (
 TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE LOGGING ) 
LOB ("INPUT_FILE_NAME") STORE AS BASICFILE (
 TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE LOGGING ) 
LOB ("LOG_FILE_NAME") STORE AS BASICFILE (
 TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE LOGGING ) ;


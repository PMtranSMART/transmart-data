--
-- Type: TABLE; Owner: I2B2METADATA; Name: ET$000D012E0001
--
 CREATE TABLE "I2B2METADATA"."ET$000D012E0001" 
  (	"C_HLEVEL" NUMBER(22,0), 
"C_FULLNAME" VARCHAR2(700 BYTE), 
"C_NAME" VARCHAR2(2000 BYTE), 
"C_SYNONYM_CD" CHAR(1 BYTE), 
"C_VISUALATTRIBUTES" CHAR(3 BYTE), 
"C_TOTALNUM" NUMBER(22,0), 
"C_BASECODE" VARCHAR2(50 BYTE), 
"C_FACTTABLECOLUMN" VARCHAR2(50 BYTE), 
"C_TABLENAME" VARCHAR2(50 BYTE), 
"C_COLUMNNAME" VARCHAR2(50 BYTE), 
"C_COLUMNDATATYPE" VARCHAR2(50 BYTE), 
"C_OPERATOR" VARCHAR2(10 BYTE), 
"C_DIMCODE" VARCHAR2(700 BYTE), 
"C_TOOLTIP" VARCHAR2(900 BYTE), 
"UPDATE_DATE" DATE, 
"DOWNLOAD_DATE" DATE, 
"IMPORT_DATE" DATE, 
"SOURCESYSTEM_CD" VARCHAR2(50 BYTE), 
"VALUETYPE_CD" VARCHAR2(50 BYTE), 
"I2B2_ID" NUMBER(22,0), 
"C_METADATAXML" CLOB, 
"C_COMMENT" CLOB
  ) 
  ORGANIZATION EXTERNAL 
   ( TYPE ORACLE_DATAPUMP
     DEFAULT DIRECTORY "DATA_PUMP_DIR"
     ACCESS PARAMETERS
     ( DEBUG = (0 , 0) DATAPUMP INTERNAL TABLE "I2B2METADATA"."I2B2"  JOB ( "I2B2METADATA","SYS_IMPORT_FULL_01",2) WORKERID 1 PARALLEL 1 VERSION '11.1.0.0.0' ENCRYPTPASSWORDISNULL  COMPRESSION DISABLED  ENCRYPTION DISABLED                     )
     LOCATION
      ( 'bogus.dat'
      )
   )
  REJECT LIMIT UNLIMITED;


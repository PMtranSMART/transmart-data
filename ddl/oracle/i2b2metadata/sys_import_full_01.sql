--
-- Type: TABLE; Owner: I2B2METADATA; Name: SYS_IMPORT_FULL_01
--
 CREATE TABLE "I2B2METADATA"."SYS_IMPORT_FULL_01" 
  (	"PROCESS_ORDER" NUMBER, 
"DUPLICATE" NUMBER, 
"DUMP_FILEID" NUMBER, 
"DUMP_POSITION" NUMBER, 
"DUMP_LENGTH" NUMBER, 
"DUMP_ORIG_LENGTH" NUMBER, 
"DUMP_ALLOCATION" NUMBER, 
"COMPLETED_ROWS" NUMBER, 
"ERROR_COUNT" NUMBER, 
"ELAPSED_TIME" NUMBER, 
"OBJECT_TYPE_PATH" VARCHAR2(200 BYTE), 
"OBJECT_PATH_SEQNO" NUMBER, 
"OBJECT_TYPE" VARCHAR2(30 BYTE), 
"IN_PROGRESS" CHAR(1 BYTE), 
"OBJECT_NAME" VARCHAR2(500 BYTE), 
"OBJECT_LONG_NAME" VARCHAR2(4000 BYTE), 
"OBJECT_SCHEMA" VARCHAR2(30 BYTE), 
"ORIGINAL_OBJECT_SCHEMA" VARCHAR2(30 BYTE), 
"ORIGINAL_OBJECT_NAME" VARCHAR2(4000 BYTE), 
"PARTITION_NAME" VARCHAR2(30 BYTE), 
"SUBPARTITION_NAME" VARCHAR2(30 BYTE), 
"DATAOBJ_NUM" NUMBER, 
"FLAGS" NUMBER, 
"PROPERTY" NUMBER, 
"TRIGFLAG" NUMBER, 
"CREATION_LEVEL" NUMBER, 
"COMPLETION_TIME" DATE, 
"OBJECT_TABLESPACE" VARCHAR2(30 BYTE), 
"SIZE_ESTIMATE" NUMBER, 
"OBJECT_ROW" NUMBER, 
"PROCESSING_STATE" CHAR(1 BYTE), 
"PROCESSING_STATUS" CHAR(1 BYTE), 
"BASE_PROCESS_ORDER" NUMBER, 
"BASE_OBJECT_TYPE" VARCHAR2(30 BYTE), 
"BASE_OBJECT_NAME" VARCHAR2(30 BYTE), 
"BASE_OBJECT_SCHEMA" VARCHAR2(30 BYTE), 
"ANCESTOR_PROCESS_ORDER" NUMBER, 
"DOMAIN_PROCESS_ORDER" NUMBER, 
"PARALLELIZATION" NUMBER, 
"UNLOAD_METHOD" NUMBER, 
"LOAD_METHOD" NUMBER, 
"GRANULES" NUMBER, 
"SCN" NUMBER, 
"GRANTOR" VARCHAR2(30 BYTE), 
"XML_CLOB" CLOB, 
"PARENT_PROCESS_ORDER" NUMBER, 
"NAME" VARCHAR2(30 BYTE), 
"VALUE_T" VARCHAR2(4000 BYTE), 
"VALUE_N" NUMBER, 
"IS_DEFAULT" NUMBER, 
"FILE_TYPE" NUMBER, 
"USER_DIRECTORY" VARCHAR2(4000 BYTE), 
"USER_FILE_NAME" VARCHAR2(4000 BYTE), 
"FILE_NAME" VARCHAR2(4000 BYTE), 
"EXTEND_SIZE" NUMBER, 
"FILE_MAX_SIZE" NUMBER, 
"PROCESS_NAME" VARCHAR2(30 BYTE), 
"LAST_UPDATE" DATE, 
"WORK_ITEM" VARCHAR2(30 BYTE), 
"OBJECT_NUMBER" NUMBER, 
"COMPLETED_BYTES" NUMBER, 
"TOTAL_BYTES" NUMBER, 
"METADATA_IO" NUMBER, 
"DATA_IO" NUMBER, 
"CUMULATIVE_TIME" NUMBER, 
"PACKET_NUMBER" NUMBER, 
"INSTANCE_ID" NUMBER, 
"OLD_VALUE" VARCHAR2(4000 BYTE), 
"SEED" NUMBER, 
"LAST_FILE" NUMBER, 
"USER_NAME" VARCHAR2(30 BYTE), 
"OPERATION" VARCHAR2(30 BYTE), 
"JOB_MODE" VARCHAR2(30 BYTE), 
"QUEUE_TABNUM" NUMBER, 
"CONTROL_QUEUE" VARCHAR2(30 BYTE), 
"STATUS_QUEUE" VARCHAR2(30 BYTE), 
"REMOTE_LINK" VARCHAR2(4000 BYTE), 
"VERSION" NUMBER, 
"JOB_VERSION" VARCHAR2(30 BYTE), 
"DB_VERSION" VARCHAR2(30 BYTE), 
"TIMEZONE" VARCHAR2(64 BYTE), 
"STATE" VARCHAR2(30 BYTE), 
"PHASE" NUMBER, 
"GUID" RAW(16), 
"START_TIME" DATE, 
"BLOCK_SIZE" NUMBER, 
"METADATA_BUFFER_SIZE" NUMBER, 
"DATA_BUFFER_SIZE" NUMBER, 
"DEGREE" NUMBER, 
"PLATFORM" VARCHAR2(101 BYTE), 
"ABORT_STEP" NUMBER, 
"INSTANCE" VARCHAR2(60 BYTE), 
"CLUSTER_OK" NUMBER, 
"SERVICE_NAME" VARCHAR2(100 BYTE), 
"OBJECT_INT_OID" VARCHAR2(32 BYTE), 
 UNIQUE ("PROCESS_ORDER", "DUPLICATE")
 USING INDEX
 TABLESPACE "USERS"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" 
LOB ("XML_CLOB") STORE AS BASICFILE (
 TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE NOLOGGING ) ;

--
-- Type: INDEX; Owner: I2B2METADATA; Name: SYS_MTABLE_000012F46_IND_3
--
CREATE INDEX "I2B2METADATA"."SYS_MTABLE_000012F46_IND_3" ON "I2B2METADATA"."SYS_IMPORT_FULL_01" ("OBJECT_PATH_SEQNO")
TABLESPACE "USERS" ;

--
-- Type: INDEX; Owner: I2B2METADATA; Name: SYS_MTABLE_000012F46_IND_1
--
CREATE INDEX "I2B2METADATA"."SYS_MTABLE_000012F46_IND_1" ON "I2B2METADATA"."SYS_IMPORT_FULL_01" ("OBJECT_SCHEMA", "OBJECT_NAME", "OBJECT_TYPE")
TABLESPACE "USERS" ;

--
-- Type: INDEX; Owner: I2B2METADATA; Name: SYS_MTABLE_000012F46_IND_2
--
CREATE INDEX "I2B2METADATA"."SYS_MTABLE_000012F46_IND_2" ON "I2B2METADATA"."SYS_IMPORT_FULL_01" ("BASE_PROCESS_ORDER")
TABLESPACE "USERS" ;


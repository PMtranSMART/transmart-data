--
-- Type: TABLE; Owner: SEARCHAPP; Name: SEARCH_APP_ACCESS_LOG
--
 CREATE TABLE "SEARCHAPP"."SEARCH_APP_ACCESS_LOG" 
  (	"ID" NUMBER(19,0), 
"ACCESS_TIME" TIMESTAMP (6), 
"EVENT" VARCHAR2(255 CHAR), 
"REQUEST_URL" VARCHAR2(255 CHAR), 
"USER_NAME" VARCHAR2(255 CHAR), 
"EVENT_MESSAGE" CLOB
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" 
LOB ("EVENT_MESSAGE") STORE AS BASICFILE "SYS_LOB0000140259C00006$$"(
 TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE LOGGING ) ;


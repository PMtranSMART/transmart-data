--
-- Type: TABLE; Owner: TM_CZ; Name: CZ_JOB_MESSAGE
--
 CREATE TABLE "TM_CZ"."CZ_JOB_MESSAGE" 
  (	"JOB_ID" NUMBER(18,0) NOT NULL ENABLE, 
"MESSAGE_ID" NUMBER(18,0), 
"MESSAGE_LINE" NUMBER(18,0), 
"MESSAGE_PROCEDURE" NVARCHAR2(100), 
"INFO_MESSAGE" NVARCHAR2(2000), 
"SEQ_ID" NUMBER(18,0) NOT NULL ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;


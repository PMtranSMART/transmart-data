--
-- Type: TABLE; Owner: TM_CZ; Name: PROBESET_DEAPP_JEA
--
 CREATE TABLE "TM_CZ"."PROBESET_DEAPP_JEA" 
  (	"PROBESET_ID" NUMBER(38,0) NOT NULL ENABLE, 
"PROBESET" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
"PLATFORM" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
"ORGANISM" VARCHAR2(200 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;


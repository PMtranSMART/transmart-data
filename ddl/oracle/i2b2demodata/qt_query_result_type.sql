--
-- Type: TABLE; Owner: I2B2DEMODATA; Name: QT_QUERY_RESULT_TYPE
--
 CREATE TABLE "I2B2DEMODATA"."QT_QUERY_RESULT_TYPE" 
  (	"RESULT_TYPE_ID" NUMBER(3,0), 
"NAME" VARCHAR2(100 BYTE), 
"DESCRIPTION" VARCHAR2(200 BYTE), 
"DISPLAY_TYPE_ID" VARCHAR2(500 BYTE), 
"VISUAL_ATTRIBUTE_TYPE_ID" VARCHAR2(3 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;


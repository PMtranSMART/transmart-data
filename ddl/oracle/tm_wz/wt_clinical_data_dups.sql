--
-- Type: TABLE; Owner: TM_WZ; Name: WT_CLINICAL_DATA_DUPS
--
 CREATE TABLE "TM_WZ"."WT_CLINICAL_DATA_DUPS" 
  (	"SITE_ID" VARCHAR2(50 BYTE), 
"SUBJECT_ID" VARCHAR2(200 BYTE), 
"VISIT_NAME" VARCHAR2(100 BYTE), 
"DATA_LABEL" VARCHAR2(500 BYTE), 
"CATEGORY_CD" VARCHAR2(250 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;


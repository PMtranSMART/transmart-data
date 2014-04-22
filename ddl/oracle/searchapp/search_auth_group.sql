--
-- Type: TABLE; Owner: SEARCHAPP; Name: SEARCH_AUTH_GROUP
--
 CREATE TABLE "SEARCHAPP"."SEARCH_AUTH_GROUP" 
  (	"ID" NUMBER(19,0) NOT NULL ENABLE, 
"GROUP_CATEGORY" VARCHAR2(255 BYTE), 
 CONSTRAINT "PK_AUTH_USR_GROUP" PRIMARY KEY ("ID")
 USING INDEX
 TABLESPACE "USERS"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;

--
-- Type: REF_CONSTRAINT; Owner: SEARCHAPP; Name: SH_AUTH_GP_ID_FK
--
ALTER TABLE "SEARCHAPP"."SEARCH_AUTH_GROUP" ADD CONSTRAINT "SH_AUTH_GP_ID_FK" FOREIGN KEY ("ID")
 REFERENCES "SEARCHAPP"."SEARCH_AUTH_PRINCIPAL" ("ID") ENABLE;


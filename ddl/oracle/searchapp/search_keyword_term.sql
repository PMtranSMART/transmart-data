--
-- Type: TABLE; Owner: SEARCHAPP; Name: SEARCH_KEYWORD_TERM
--
 CREATE TABLE "SEARCHAPP"."SEARCH_KEYWORD_TERM" 
  (	"KEYWORD_TERM" VARCHAR2(200 BYTE), 
"SEARCH_KEYWORD_ID" NUMBER(18,0), 
"RANK" NUMBER(18,0), 
"SEARCH_KEYWORD_TERM_ID" NUMBER(18,0), 
"TERM_LENGTH" NUMBER(18,0), 
"OWNER_AUTH_USER_ID" NUMBER, 
 CONSTRAINT "SEARCH_KW_TERM_PK" PRIMARY KEY ("SEARCH_KEYWORD_TERM_ID")
 USING INDEX
 TABLESPACE "USERS"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;

--
-- Type: TRIGGER; Owner: SEARCHAPP; Name: TRG_SEARCH_KEYWORD_TERM_ID
--
  CREATE OR REPLACE TRIGGER "SEARCHAPP"."TRG_SEARCH_KEYWORD_TERM_ID" before insert on "SEARCH_KEYWORD_TERM"    for each row begin     if inserting then       if :NEW."SEARCH_KEYWORD_TERM_ID" is null then          select SEQ_SEARCH_DATA_ID.nextval into :NEW."SEARCH_KEYWORD_TERM_ID" from dual;       end if;    end if; end;









/
ALTER TRIGGER "SEARCHAPP"."TRG_SEARCH_KEYWORD_TERM_ID" ENABLE;
 
--
-- Type: INDEX; Owner: SEARCHAPP; Name: SEARCH_KW_TERM_SKID_IDX
--
CREATE INDEX "SEARCHAPP"."SEARCH_KW_TERM_SKID_IDX" ON "SEARCHAPP"."SEARCH_KEYWORD_TERM" ("SEARCH_KEYWORD_ID")
TABLESPACE "USERS" ;

--
-- Type: REF_CONSTRAINT; Owner: SEARCHAPP; Name: SEARCH_KW_FK
--
ALTER TABLE "SEARCHAPP"."SEARCH_KEYWORD_TERM" ADD CONSTRAINT "SEARCH_KW_FK" FOREIGN KEY ("SEARCH_KEYWORD_ID")
 REFERENCES "SEARCHAPP"."SEARCH_KEYWORD" ("SEARCH_KEYWORD_ID") ENABLE;


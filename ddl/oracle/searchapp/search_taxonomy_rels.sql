--
-- Type: TABLE; Owner: SEARCHAPP; Name: SEARCH_TAXONOMY_RELS
--
 CREATE TABLE "SEARCHAPP"."SEARCH_TAXONOMY_RELS" 
  (	"SEARCH_TAXONOMY_RELS_ID" NUMBER(22,0) NOT NULL ENABLE, 
"CHILD_ID" NUMBER(22,0) NOT NULL ENABLE, 
"PARENT_ID" NUMBER(22,0), 
 PRIMARY KEY ("SEARCH_TAXONOMY_RELS_ID")
 USING INDEX
 TABLESPACE "USERS"  ENABLE, 
 CONSTRAINT "U_CHILD_ID_PARENT_ID" UNIQUE ("CHILD_ID", "PARENT_ID")
 USING INDEX
 TABLESPACE "USERS"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;

--
-- Type: REF_CONSTRAINT; Owner: SEARCHAPP; Name: FK_SEARCH_TAX_RELS_PARENT
--
ALTER TABLE "SEARCHAPP"."SEARCH_TAXONOMY_RELS" ADD CONSTRAINT "FK_SEARCH_TAX_RELS_PARENT" FOREIGN KEY ("PARENT_ID")
 REFERENCES "SEARCHAPP"."SEARCH_TAXONOMY" ("TERM_ID") ENABLE;

--
-- Type: REF_CONSTRAINT; Owner: SEARCHAPP; Name: FK_SEARCH_TAX_RELS_CHILD
--
ALTER TABLE "SEARCHAPP"."SEARCH_TAXONOMY_RELS" ADD CONSTRAINT "FK_SEARCH_TAX_RELS_CHILD" FOREIGN KEY ("CHILD_ID")
 REFERENCES "SEARCHAPP"."SEARCH_TAXONOMY" ("TERM_ID") ENABLE;

--
-- Type: TRIGGER; Owner: SEARCHAPP; Name: TRG_SEARCH_TAXONOMY_RELS_ID
--
  CREATE OR REPLACE TRIGGER "SEARCHAPP"."TRG_SEARCH_TAXONOMY_RELS_ID" 
before insert on "SEARCH_TAXONOMY_RELS"    
for each row 
	begin     
	if inserting then       
		if :NEW."SEARCH_TAXONOMY_RELS_ID" is null then          
			select SEQ_SEARCH_DATA_ID.nextval into :NEW."SEARCH_TAXONOMY_RELS_ID" from dual;       
		end if;    
	end if; 
end;

/
ALTER TRIGGER "SEARCHAPP"."TRG_SEARCH_TAXONOMY_RELS_ID" ENABLE;
 

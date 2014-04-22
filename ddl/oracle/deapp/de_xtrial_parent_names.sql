--
-- Type: SEQUENCE; Owner: DEAPP; Name: DE_PARENT_CD_SEQ
--
CREATE SEQUENCE  "DEAPP"."DE_PARENT_CD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;

--
-- Type: TABLE; Owner: DEAPP; Name: DE_XTRIAL_PARENT_NAMES
--
 CREATE TABLE "DEAPP"."DE_XTRIAL_PARENT_NAMES" 
  (	"PARENT_CD" NUMBER NOT NULL ENABLE, 
"ACROSS_PATH" VARCHAR2(500 BYTE), 
"MANUALLY_CREATED" NUMBER, 
 PRIMARY KEY ("PARENT_CD")
 USING INDEX
 TABLESPACE "USERS"  ENABLE, 
 CONSTRAINT "DEXTPN_PARENT_NODE_U" UNIQUE ("ACROSS_PATH")
 USING INDEX
 TABLESPACE "USERS"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;

--
-- Type: TRIGGER; Owner: DEAPP; Name: DE_PARENT_CD_TRG
--
  CREATE OR REPLACE TRIGGER "DEAPP"."DE_PARENT_CD_TRG" 
BEFORE INSERT ON deapp.de_xtrial_parent_names
FOR EACH ROW
       WHEN (
new.parent_cd is null
      ) BEGIN
  SELECT de_parent_cd_seq.nextval
  INTO :new.parent_cd
  FROM DUAL;
END;




/
ALTER TRIGGER "DEAPP"."DE_PARENT_CD_TRG" ENABLE;
 

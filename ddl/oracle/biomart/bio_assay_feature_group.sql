--
-- Type: TABLE; Owner: BIOMART; Name: BIO_ASSAY_FEATURE_GROUP
--
 CREATE TABLE "BIOMART"."BIO_ASSAY_FEATURE_GROUP" 
  (	"BIO_ASSAY_FEATURE_GROUP_ID" NUMBER(18,0) NOT NULL ENABLE, 
"FEATURE_GROUP_NAME" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
"FEATURE_GROUP_TYPE" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
 CONSTRAINT "BIO_ASY_FEATURE_GRP_PK" PRIMARY KEY ("BIO_ASSAY_FEATURE_GROUP_ID")
 USING INDEX
 TABLESPACE "USERS"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;

--
-- Type: INDEX; Owner: BIOMART; Name: BIO_ASY_FEATURE_GRP_NAME_IDX
--
CREATE INDEX "BIOMART"."BIO_ASY_FEATURE_GRP_NAME_IDX" ON "BIOMART"."BIO_ASSAY_FEATURE_GROUP" ("FEATURE_GROUP_NAME", "BIO_ASSAY_FEATURE_GROUP_ID")
TABLESPACE "USERS" ;

--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_ASSAY_F_G_ID
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_BIO_ASSAY_F_G_ID" 
  BEFORE INSERT ON "BIOMART"."BIO_ASSAY_FEATURE_GROUP"
  REFERENCING FOR EACH ROW
  begin     if inserting then       if :NEW."BIO_ASSAY_FEATURE_GROUP_ID" is null then          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_ASSAY_FEATURE_GROUP_ID" from dual;       end if;    end if; end;
/
ALTER TRIGGER "BIOMART"."TRG_BIO_ASSAY_F_G_ID" ENABLE;
 

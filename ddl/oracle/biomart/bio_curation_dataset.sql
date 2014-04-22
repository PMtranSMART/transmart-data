--
-- Type: TABLE; Owner: BIOMART; Name: BIO_CURATION_DATASET
--
 CREATE TABLE "BIOMART"."BIO_CURATION_DATASET" 
  (	"BIO_CURATION_DATASET_ID" NUMBER(18,0) NOT NULL ENABLE, 
"BIO_ASY_ANALYSIS_PLTFM_ID" NUMBER(18,0), 
"BIO_SOURCE_IMPORT_ID" NUMBER(18,0), 
"BIO_CURATION_TYPE" NVARCHAR2(200) NOT NULL ENABLE, 
"CREATE_DATE" DATE, 
"CREATOR" NUMBER(18,0), 
"BIO_CURATION_NAME" VARCHAR2(500 BYTE), 
"DATA_TYPE" VARCHAR2(100 BYTE), 
 CONSTRAINT "BIO_EXTERNAL_ANALYSIS_PK" PRIMARY KEY ("BIO_CURATION_DATASET_ID")
 USING INDEX
 TABLESPACE "USERS"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;

--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_CURATION_DATASET_ID
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_BIO_CURATION_DATASET_ID" before insert on "BIO_CURATION_DATASET"    for each row begin     if inserting then       if :NEW."BIO_CURATION_DATASET_ID" is null then          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_CURATION_DATASET_ID" from dual;       end if;    end if; end;














/
ALTER TRIGGER "BIOMART"."TRG_BIO_CURATION_DATASET_ID" ENABLE;
 
--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_EXT_ANL_PLTFM_FK
--
ALTER TABLE "BIOMART"."BIO_CURATION_DATASET" ADD CONSTRAINT "BIO_EXT_ANL_PLTFM_FK" FOREIGN KEY ("BIO_ASY_ANALYSIS_PLTFM_ID")
 REFERENCES "BIOMART"."BIO_ASY_ANALYSIS_PLTFM" ("BIO_ASY_ANALYSIS_PLTFM_ID") ENABLE;


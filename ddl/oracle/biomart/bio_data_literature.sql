--
-- Type: TABLE; Owner: BIOMART; Name: BIO_DATA_LITERATURE
--
 CREATE TABLE "BIOMART"."BIO_DATA_LITERATURE" 
  (	"BIO_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"BIO_LIT_REF_DATA_ID" NUMBER(18,0), 
"BIO_CURATION_DATASET_ID" NUMBER(18,0) NOT NULL ENABLE, 
"STATEMENT" NCLOB, 
"STATEMENT_STATUS" NVARCHAR2(200), 
"DATA_TYPE" NVARCHAR2(200), 
 CONSTRAINT "BIO_DATA_LITERATURE_PK" PRIMARY KEY ("BIO_DATA_ID")
 USING INDEX
 TABLESPACE "USERS"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" 
LOB ("STATEMENT") STORE AS BASICFILE (
 TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
 NOCACHE NOLOGGING ) ;

--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_LIT_CURATION_DATASET_FK
--
ALTER TABLE "BIOMART"."BIO_DATA_LITERATURE" ADD CONSTRAINT "BIO_LIT_CURATION_DATASET_FK" FOREIGN KEY ("BIO_CURATION_DATASET_ID")
 REFERENCES "BIOMART"."BIO_CURATION_DATASET" ("BIO_CURATION_DATASET_ID") ENABLE;


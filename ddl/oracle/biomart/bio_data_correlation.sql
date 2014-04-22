--
-- Type: TABLE; Owner: BIOMART; Name: BIO_DATA_CORRELATION
--
 CREATE TABLE "BIOMART"."BIO_DATA_CORRELATION" 
  (	"BIO_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"ASSO_BIO_DATA_ID" NUMBER(18,0) NOT NULL ENABLE, 
"BIO_DATA_CORREL_DESCR_ID" NUMBER(18,0) NOT NULL ENABLE, 
"BIO_DATA_CORREL_ID" NUMBER(18,0) NOT NULL ENABLE, 
 CONSTRAINT "BIO_DATA_CORRELATION_PK" PRIMARY KEY ("BIO_DATA_CORREL_ID")
 USING INDEX
 TABLESPACE "USERS"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;

--
-- Type: REF_CONSTRAINT; Owner: BIOMART; Name: BIO_MARKER_LINK_BIO_MARKER_REL
--
ALTER TABLE "BIOMART"."BIO_DATA_CORRELATION" ADD CONSTRAINT "BIO_MARKER_LINK_BIO_MARKER_REL" FOREIGN KEY ("BIO_DATA_CORREL_DESCR_ID")
 REFERENCES "BIOMART"."BIO_DATA_CORREL_DESCR" ("BIO_DATA_CORREL_DESCR_ID") ENABLE;

--
-- Type: TRIGGER; Owner: BIOMART; Name: TRG_BIO_DATA_CORREL_ID
--
  CREATE OR REPLACE TRIGGER "BIOMART"."TRG_BIO_DATA_CORREL_ID" before insert on "BIO_DATA_CORRELATION"    for each row 
begin     if inserting then       if :NEW."BIO_DATA_CORREL_ID" is null then          select SEQ_BIO_DATA_ID.nextval into :NEW."BIO_DATA_CORREL_ID" from dual;       end if;    end if; end;













/
ALTER TRIGGER "BIOMART"."TRG_BIO_DATA_CORREL_ID" ENABLE;
 
--
-- Type: INDEX; Owner: BIOMART; Name: BDC_INDEX1
--
CREATE INDEX "BIOMART"."BDC_INDEX1" ON "BIOMART"."BIO_DATA_CORRELATION" ("ASSO_BIO_DATA_ID")
TABLESPACE "USERS" ;


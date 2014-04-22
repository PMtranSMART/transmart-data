--
-- Type: TABLE; Owner: DEAPP; Name: DE_MRNA_ANNOTATION_DUPS
--
 CREATE TABLE "DEAPP"."DE_MRNA_ANNOTATION_DUPS" 
  (	"GPL_ID" VARCHAR2(100 BYTE), 
"PROBE_ID" VARCHAR2(100 BYTE), 
"GENE_SYMBOL" VARCHAR2(100 BYTE), 
"PROBESET_ID" NUMBER(38,0), 
"GENE_ID" NUMBER(18,0), 
"ORGANISM" VARCHAR2(200 BYTE)
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;


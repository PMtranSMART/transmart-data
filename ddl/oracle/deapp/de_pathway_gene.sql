--
-- Type: TABLE; Owner: DEAPP; Name: DE_PATHWAY_GENE
--
 CREATE TABLE "DEAPP"."DE_PATHWAY_GENE" 
  (	"ID" NUMBER(18,0) NOT NULL ENABLE, 
"PATHWAY_ID" NUMBER(18,0), 
"GENE_SYMBOL" NVARCHAR2(200), 
"GENE_ID" NVARCHAR2(200), 
 CONSTRAINT "DE_PATHWAY_GENE_PK" PRIMARY KEY ("ID")
 USING INDEX
 TABLESPACE "USERS"  ENABLE
  ) SEGMENT CREATION IMMEDIATE
 TABLESPACE "USERS" ;

--
-- Type: INDEX; Owner: DEAPP; Name: DE_PATHWAY_GENE_INDEX1
--
CREATE INDEX "DEAPP"."DE_PATHWAY_GENE_INDEX1" ON "DEAPP"."DE_PATHWAY_GENE" ("PATHWAY_ID", "GENE_SYMBOL")
TABLESPACE "USERS" ;

--
-- Type: INDEX; Owner: DEAPP; Name: IDX_PATHWAY_GENE_PATHWAY
--
CREATE INDEX "DEAPP"."IDX_PATHWAY_GENE_PATHWAY" ON "DEAPP"."DE_PATHWAY_GENE" ("PATHWAY_ID")
TABLESPACE "USERS" ;

--
-- Type: INDEX; Owner: DEAPP; Name: DE_PATHWAY_GENE_IDX4
--
CREATE INDEX "DEAPP"."DE_PATHWAY_GENE_IDX4" ON "DEAPP"."DE_PATHWAY_GENE" ("GENE_SYMBOL")
TABLESPACE "USERS" ;


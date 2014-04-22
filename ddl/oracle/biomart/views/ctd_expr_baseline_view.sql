--
-- Type: VIEW; Owner: BIOMART; Name: CTD_EXPR_BASELINE_VIEW
--
  CREATE OR REPLACE FORCE VIEW "BIOMART"."CTD_EXPR_BASELINE_VIEW" ("ID", "REF_ARTICLE_PROTOCOL_ID", "BIOMOLECULE_NAME", "BASELINE_EXPR_PCT", "BASELINE_EXPR_NUMBER", "BASELINE_EXPR_VALUE_FOLD_MEAN", "BASELINE_EXPR_SD", "BASELINE_EXPR_SEM", "BASELINE_EXPR_UNIT") AS 
  select rownum as ID, v."REF_ARTICLE_PROTOCOL_ID",v."BIOMOLECULE_NAME",v."BASELINE_EXPR_PCT",v."BASELINE_EXPR_NUMBER",v."BASELINE_EXPR_VALUE_FOLD_MEAN",v."BASELINE_EXPR_SD",v."BASELINE_EXPR_SEM",v."BASELINE_EXPR_UNIT"
from 
(
select distinct REF_ARTICLE_PROTOCOL_ID,
			BIOMOLECULE_NAME,
			BASELINE_EXPR_PCT,
			BASELINE_EXPR_NUMBER,
			BASELINE_EXPR_VALUE_FOLD_MEAN,
			BASELINE_EXPR_SD,
			BASELINE_EXPR_SEM,
			BASELINE_EXPR_UNIT
from ctd_full
where BIOMOLECULE_NAME is not null or  BASELINE_EXPR_VALUE_FOLD_MEAN is not null
order by REF_ARTICLE_PROTOCOL_ID, BIOMOLECULE_NAME
) v
 
 
 
 
 
 
;
 

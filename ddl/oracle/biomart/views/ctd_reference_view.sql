--
-- Type: VIEW; Owner: BIOMART; Name: CTD_REFERENCE_VIEW
--
  CREATE OR REPLACE FORCE VIEW "BIOMART"."CTD_REFERENCE_VIEW" ("ID", "REF_ARTICLE_PROTOCOL_ID", "REF_ARTICLE_PMID", "REF_PROTOCOL_ID", "REF_TITLE", "REF_RECORD_ID", "REF_BACK_REFERENCE") AS 
  select rownum as ID, v."REF_ARTICLE_PROTOCOL_ID",v."REF_ARTICLE_PMID",v."REF_PROTOCOL_ID",v."REF_TITLE",v."REF_RECORD_ID",v."REF_BACK_REFERENCE"
from 
(
select distinct REF_ARTICLE_PROTOCOL_ID,
			REF_ARTICLE_PMID,
			REF_PROTOCOL_ID,
			REF_TITLE,			
     			REF_RECORD_ID,
			REF_BACK_REFERENCE
from ctd_full
order by REF_ARTICLE_PROTOCOL_ID, REF_RECORD_ID
) v
 
 
 
 
 
 
;
 

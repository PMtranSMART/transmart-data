--
-- Type: FUNCTION; Owner: BIOMART; Name: BIO_JUB_ONCOL_DATA_UID
--
  CREATE OR REPLACE FUNCTION "BIOMART"."BIO_JUB_ONCOL_DATA_UID" (
  RECORD_ID NUMBER,
  BIO_CURATION_NAME VARCHAR2
) RETURN VARCHAR2 AS
BEGIN
  -- $Id$
  -- Creates uid for bio_experiment.

  RETURN 'BJOD:' || nvl(TO_CHAR(RECORD_ID), 'ERROR') || ':' || nvl(BIO_CURATION_NAME, 'ERROR');
END BIO_JUB_ONCOL_DATA_UID;

 
 
 
 
 
 
 
 
 
 
 
/
 

--
-- Type: VIEW; Owner: TM_CZ; Name: V_LWG_I2B2
--
CREATE OR REPLACE FORCE VIEW "TM_CZ"."V_LWG_I2B2" ("C_HLEVEL", "C_FULLNAME", "C_NAME", "C_SYNONYM_CD", "C_VISUALATTRIBUTES", "C_TOTALNUM", "C_BASECODE", "C_METADATAXML", "C_FACTTABLECOLUMN", "C_TABLENAME", "C_COLUMNNAME", "C_COLUMNDATATYPE", "C_OPERATOR", "C_DIMCODE", "C_COMMENT", "C_TOOLTIP", "UPDATE_DATE", "DOWNLOAD_DATE", "IMPORT_DATE", "SOURCESYSTEM_CD", "VALUETYPE_CD", "I2B2_ID", "M_APPLIED_PATH", "M_EXCLUSION_CD", "C_PATH", "C_SYMBOL") AS 
select "C_HLEVEL","C_FULLNAME","C_NAME","C_SYNONYM_CD","C_VISUALATTRIBUTES","C_TOTALNUM","C_BASECODE","C_METADATAXML","C_FACTTABLECOLUMN","C_TABLENAME","C_COLUMNNAME","C_COLUMNDATATYPE","C_OPERATOR","C_DIMCODE","C_COMMENT","C_TOOLTIP","UPDATE_DATE","DOWNLOAD_DATE","IMPORT_DATE","SOURCESYSTEM_CD","VALUETYPE_CD","I2B2_ID","M_APPLIED_PATH","M_EXCLUSION_CD","C_PATH","C_SYMBOL" from i2b2 where c_fullname like '%LWG%';


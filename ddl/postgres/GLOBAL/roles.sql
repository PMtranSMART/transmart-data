CREATE ROLE biomart;
ALTER ROLE biomart WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION PASSWORD 'md50236af8d61d2adb5ab395322ff61ec59';
CREATE ROLE biomart_user;
ALTER ROLE biomart_user WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION PASSWORD 'md543d188f334e936d7c84284ba0e6e3985';
CREATE ROLE deapp;
ALTER ROLE deapp WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION PASSWORD 'md56893c3ebe2ca05c87052619d1e006894';
CREATE ROLE i2b2demodata;
ALTER ROLE i2b2demodata WITH SUPERUSER INHERIT NOCREATEROLE CREATEDB LOGIN NOREPLICATION PASSWORD 'md524f0005c591ded7fdea0f423277a208b';
CREATE ROLE i2b2metadata;
ALTER ROLE i2b2metadata WITH SUPERUSER INHERIT NOCREATEROLE CREATEDB LOGIN NOREPLICATION PASSWORD 'md5ba6e58d9502a3d6e4408e9d0538d1632';
CREATE ROLE searchapp;
ALTER ROLE searchapp WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION PASSWORD 'md544dcc093141b5e1cfcdc6232c560da01';
CREATE ROLE tm_cz;
ALTER ROLE tm_cz WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION PASSWORD 'md5b1cbce950ddc93c5ccec424c0c19a29d';
CREATE ROLE tm_lz;
ALTER ROLE tm_lz WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION PASSWORD 'md5f5fb4487b17dbf2f090d87b91670f53f';
CREATE ROLE tm_wz;
ALTER ROLE tm_wz WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION PASSWORD 'md5ecb88cc49310482090fe9243436fc73b';
ALTER ROLE biomart_user SET search_path TO searchapp, biomart, deapp, i2b2demodata, i2b2metadata, public;

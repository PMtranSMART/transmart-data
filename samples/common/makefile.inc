include ../../makefile.inc

# This file is to included from:
#   ../oracle/Makefile
#   ../postgres/Makefile
#
# It still has some PostgreSQL specific stuff; that should be moved into
# PostgreSQL's Makefile and only the common stuff should be here.
# To be done when more analsyes are ported to Oracle

showdblog: $(JDBC_DRIVER)
	groovy -cp '$(LIB_CLASSPATH)' ../common/dump_audit.groovy $(RDBMS) `tput cols`

.PHONY: showdblog

export KETTLE_JOBS
export JDBC_DRIVER
export LIB_CLASSPATH

ifndef KITCHEN
$(error KITCHEN is not set)
endif

DATASETS_FILE := $(wildcard ../studies/datasets)
ifndef DATASETS_FILE
$(info Fetching datasets...)
DUMMY := $(shell $(MAKE) -C ../studies datasets)
$(info Finished fetching datasets)
endif

LOAD_CLINICAL_TARGETS := $(shell php ../studies/enumerate.php load_targets clinical)
LOAD_ANNOTATION_TARGETS := $(shell php ../studies/enumerate.php load_targets annotation)
LOAD_REF_ANNOTATION_TARGETS := $(shell php ../studies/enumerate.php load_targets ref_annotation)
LOAD_EXPRESSION_PARAMS_TARGETS := $(shell php ../studies/enumerate.php load_targets expression)
LOAD_ANALYSIS_PARAMS_TARGETS := $(shell php ../studies/enumerate.php load_targets analysis)
LOAD_ACGH_PARAMS_TARGETS := $(shell php ../studies/enumerate.php load_targets acgh)
LOAD_PROTEOMICS_PARAMS_TARGETS := $(shell php ../studies/enumerate.php load_targets proteomics)
LOAD_MIRNA_PARAMS_TARGETS := $(shell php ../studies/enumerate.php load_targets mirna)

KETTLE_TARGETS := $(LOAD_CLINICAL_TARGETS) $(LOAD_EXPRESSION_PARAMS_TARGETS) $(LOAD_ANALYSIS_PARAMS_TARGETS) $(LOAD_ACGH_PARAMS_TARGETS) $(LOAD_PROTEOMICS_PARAMS_TARGETS) $(LOAD_MIRNA_PARAMS_TARGETS)

$(KETTLE_TARGETS): kettle-home/kettle.properties
#these ones are here just for autocompletion:
$(LOAD_ANNOTATION_TARGETS):
$(LOAD_REF_ANNOTATION_TARGETS):

kettle-home/kettle.properties: gen_kettle_properties.php ../../vars
	php -d variables_order=E $< > $@

../studies/%:
	$(MAKE) -C ../studies $*

load_clinical_%: ../studies/%/clinical.params ../studies/%/clinical
	STUDY_ID=$* DATA_LOCATION="$(realpath ../studies/$*/clinical)" \
			KETTLE_HOME="$(realpath kettle-home)" \
			./load_clinical.sh $<

load_annotation_%: ../studies/%/annotation.params ../studies/%/annotation
	DATA_LOCATION="$(realpath ../studies/$*/annotation)" \
		PSQL_COMMAND="$(PSQL_COMMAND)" \
		./load_annotation.sh $<

load_ref_annotation_%: ../studies/%/ref_annotation.params
	$(MAKE) load_annotation_`./load_ref_annotation.sh $<`

load_expression_%: ../studies/%/expression.params ../studies/%/expression
	STUDY_ID=$* DATA_LOCATION="$(realpath ../studies/$*/expression)" \
			KETTLE_HOME="$(realpath kettle-home)" \
			./load_expression.sh $<

load_analysis_%: ../studies/%/analysis.params ../studies/%/analysis
	STUDY_ID=$* DATA_LOCATION="$(realpath ../studies/$*/analysis)" \
			KETTLE_HOME="$(realpath kettle-home)" \
			./load_analysis.sh $<

load_acgh_%: ../studies/%/acgh.params ../studies/%/acgh
	STUDY_ID=$* DATA_LOCATION="$(realpath ../studies/$*/acgh)" \
			PSQL_COMMAND="$(PSQL_COMMAND)" \
			KETTLE_HOME="$(realpath kettle-home)" \
			./load_acgh.sh $<

PROTEOMICS_SSM_FILE     ?= proteomics_subject_sample_mapping.txt
PROTEOMICS_CM_FILE      ?= proteomics_columns_mapping.txt
PROTEOMICS_DATA_PREFIX  ?= proteomics_data
PROTEOMICS_DATA_FILE    ?= $(PROTEOMICS_DATA_PREFIX).txt
PROTEOMICS_ANNOT_PREFIX ?= proteomics
PROTEOMICS_ANNOT_FILE   ?= $(PROTEOMICS_ANNOT_PREFIX)_annotation.txt

load_proteomics_annotation_%: ../studies/%/proteomics_annotation/$(PROTEOMICS_ANNOT_FILE)
	GPL_ID=$* \
	DATA_LOCATION="$(realpath ../studies/$*/proteomics_annotation)" \
	KETTLE_HOME="$(realpath kettle-home)" \
	./load_proteomics_annotation.sh $< \

load_proteomics_%: ../studies/%/proteomics.params ../studies/%/proteomics/$(PROTEOMICS_SSM_FILE) ../studies/%/proteomics/$(PROTEOMICS_CM_FILE)
	MAP_FILENAME=$(PROTEOMICS_SSM_FILE) \
	COLUMN_MAPPING_FILE=$(PROTEOMICS_CM_FILE) \
	DATA_FILE_PREFIX=$(PROTEOMICS_DATA_PREFIX) \
	STUDY_ID=$* \
	DATA_LOCATION="$(realpath ../studies/$*/proteomics)" \
	KETTLE_HOME="$(realpath kettle-home)" \
	./load_proteomics.sh $<

../studies/%/proteomics/$(PROTEOMICS_DATA_FILE):
	$(error Copy proteomics data into $@)

../studies/%/proteomics/$(PROTEOMICS_ANNOT_FILE): ../studies/%/proteomics/$(PROTEOMICS_DATA_FILE) ../studies/generate_proteomics_annotation.groovy
	groovy ../studies/generate_proteomics_annotation.groovy -i $< -o $@ -p $*_proteomics

../studies/%/proteomics/$(PROTEOMICS_SSM_FILE): ../studies/%/proteomics/$(PROTEOMICS_DATA_FILE) ../studies/generate_proteomics_subject_sample_mapping.groovy
	groovy ../studies/generate_proteomics_subject_sample_mapping.groovy -i $< -o $@ -p $*_proteomics -t $*

../studies/%/proteomics/$(PROTEOMICS_CM_FILE): ../studies/%/proteomics/$(PROTEOMICS_DATA_FILE) ../studies/generate_proteomics_column_mapping.groovy
	groovy ../studies/generate_proteomics_column_mapping.groovy -i $< -o $@

.PHONY: load_proteomics_annotation_% load_proteomics_%
.PRECIOUS: ../studies/%/proteomics/$(PROTEOMICS_DATA_FILE) ../studies/%/proteomics/$(PROTEOMICS_ANNOT_FILE) ../studies/%/proteomics/$(PROTEOMICS_SSM_FILE) ../studies/%/proteomics/$(PROTEOMICS_CM_FILE)

MIRNA_SSM_FILE     ?= mirna_subject_sample_mapping.txt
MIRNA_DATA_PREFIX  ?= mirna_data
MIRNA_DATA_FILE    ?= $(MIRNA_DATA_PREFIX).txt
MIRNA_ANNOT_PREFIX ?= mirna
MIRNA_ANNOT_FILE   ?= $(MIRNA_ANNOT_PREFIX)_annotation.txt

load_mirna_annotation_%: ../studies/%/mirna.params ../studies/%/mirna ../studies/%/mirna/$(MIRNA_ANNOT_FILE)
	GPL_ID=$*_mirna \
	DATA_LOCATION="$(realpath ../studies/$*/mirna)" \
	KETTLE_HOME="$(realpath kettle-home)" \
	./load_mirna_annotation.sh $< \

load_mirna_%: ../studies/%/mirna.params ../studies/%/mirna load_mirna_annotation_% ../studies/%/mirna/$(MIRNA_SSM_FILE)
	MAP_FILENAME=$(MIRNA_SSM_FILE) \
	DATA_FILE_PREFIX=$(MIRNA_DATA_PREFIX) \
	DATA_FILE=$(MIRNA_DATA_FILE) \
	STUDY_ID=$* \
	DATA_LOCATION="$(realpath ../studies/$*/mirna)" \
	KETTLE_HOME="$(realpath kettle-home)" \
	./load_mirna.sh $<

../studies/%/mirna:
	$(info Copy mirna data files into $*)

../studies/%/mirna/$(MIRNA_ANNOT_FILE): ../studies/%/mirna ../studies/generate_mirna_data_annot_files.groovy
	groovy ../studies/generate_mirna_data_annot_files.groovy -i $< -a $@ -d $</$(MIRNA_DATA_FILE) -p $*_mirna

../studies/%/mirna/$(MIRNA_SSM_FILE): ../studies/%/mirna ../studies/generate_mirna_subject_sample_mapping.groovy
	groovy ../studies/generate_mirna_subject_sample_mapping.groovy -i $< -o $@ -p $*_mirna -t $*

.PHONY: load_mirna_annotation_% load_mirna_%
.PRECIOUS: ../studies/%/mirna/$(MIRNA_DATA_FILE) ../studies/%/mirna/$(MIRNA_ANNOT_FILE) ../studies/%/mirna/$(MIRNA_SSM_FILE)

clean:
	rm -f logs/*.log kettle-home/kettle.properties

.PHONY: clean

# vim: ft=make :

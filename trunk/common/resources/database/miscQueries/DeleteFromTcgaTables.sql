/*
*** ONLY FOR UNIT TEST DB's ***
**
*/
DELETE FROM FILE_TO_ARCHIVE;
DELETE FROM ALIQUOT_ARCHIVE;
DELETE FROM ALIQUOT_ELEMENT;
DELETE FROM ANALYTE_ARCHIVE;
DELETE FROM ANALYTE_ELEMENT;
DELETE FROM BCR_BIOSPECIMEN_TO_ARCHIVE;
DELETE FROM BIOSPECIMEN_TO_FILE;
DELETE FROM CENTER_TO_BCR_CENTER;
DELETE FROM BIOCARTA_GENE_PATHWAY;
DELETE FROM BIOCARTA_GENE;
DELETE FROM BIOSPECIMEN_BARCODE;
DELETE FROM MAF_INFO;
DELETE FROM DATA_SET_FILE;
DELETE FROM DATA_TYPE_TO_PLATFORM;
DELETE FROM DATA_VISIBILITY;
DELETE FROM DNA_ARCHIVE;
DELETE FROM DNA_ELEMENT;
DELETE FROM DRUG_CONCEPT_CODE;
DELETE FROM GENE_DRUG;
DELETE FROM DRUG_INTGEN_ARCHIVE;
DELETE FROM DRUG_INTGEN_ELEMENT;
DELETE FROM EXAMINATION_ARCHIVE;
DELETE FROM EXAMINATION_ELEMENT;
DELETE FROM CNA_VALUE;
DELETE FROM EXPGENE_VALUE;
DELETE FROM METHYLATION_VALUE;
DELETE FROM HYBRIDIZATION_VALUE;
DELETE FROM HYBRIDIZATION_DATA_GROUP;
DELETE FROM HYBRID_REF_DATA_SET;
DELETE FROM L4_ANOMALY_VALUE;
DELETE FROM L4_ANOMALY_DATA_SET_VERSION;
DELETE FROM L4_ANOMALY_DATA_SET;
DELETE FROM L4_ANOMALY_DATA_VERSION;
DELETE FROM L4_DATA_SET_GENETIC_ELEMENT;
DELETE FROM L4_DATA_SET_SAMPLE;
DELETE FROM L4_GENETIC_ELEMENT;
DELETE FROM L4_PATIENT;
DELETE FROM L4_SAMPLE;
DELETE FROM L4_TARGET;
DELETE FROM L4_ANOMALY_TYPE;
DELETE FROM L4_CORRELATION_TYPE;
DELETE FROM L4_GENETIC_ELEMENT_TYPE;
DELETE FROM SUMMARY_BY_GENE;
DELETE FROM PATIENT_ARCHIVE;
DELETE FROM PATIENT_ELEMENT;
DELETE FROM PORTAL_ACTION_TYPE;
DELETE FROM PORTAL_SESSION_ACTION;
DELETE FROM PORTAL_SESSION;
DELETE FROM PORTION_ARCHIVE;
DELETE FROM PORTION_ELEMENT;
DELETE FROM PROTOCOL_ARCHIVE;
DELETE FROM PROTOCOL_ELEMENT;
DELETE FROM RADIATION_ARCHIVE;
DELETE FROM RADIATION_ELEMENT;
DELETE FROM RNA_ARCHIVE;
DELETE FROM RNA_ELEMENT;
DELETE FROM SAMPLE_ARCHIVE;
DELETE FROM SAMPLE_ELEMENT;
DELETE FROM SLIDE_ARCHIVE;
DELETE FROM SLIDE_ELEMENT;
DELETE FROM SURGERY_ARCHIVE;
DELETE FROM SURGERY_ELEMENT;
DELETE FROM TUMORPATHOLOGY_ARCHIVE;
DELETE FROM TUMORPATHOLOGY_ELEMENT;
DELETE FROM TUMORPATHOLOGY;
DELETE FROM ALIQUOT;
DELETE FROM ANALYTE;
DELETE FROM SURGERY;
DELETE FROM SLIDE;
DELETE FROM PORTION;
DELETE FROM SAMPLE;
DELETE FROM RNA;
DELETE FROM PATIENT;
DELETE FROM ANOMALY_TYPE;
DELETE FROM PROTOCOL;
DELETE FROM PATHWAY;
DELETE FROM RADIATION;
DELETE FROM CLINICAL_XSD_ENUM_VALUE;
DELETE FROM CLINICAL_XSD_ELEMENT;
DELETE FROM CLINICAL_FILE_ELEMENT;
DELETE FROM CLINICAL_FILE_TO_TABLE;
DELETE FROM CLINICAL_FILE;
DELETE FROM CLINICAL_TABLE;
DELETE FROM DNA;
DELETE FROM DRUG;
DELETE FROM EXAMINATION;
DELETE FROM GENE;
DELETE FROM DRUG_INTGEN;
DELETE FROM FILE_INFO;
DELETE FROM ARCHIVE_INFO;
DELETE FROM HYBRIDIZATION_REF;
DELETE FROM DATA_SET;
DELETE FROM EXPERIMENT;
DELETE FROM VISIBILITY;
DELETE FROM PROBE;
DELETE FROM PLATFORM;
DELETE FROM CENTER;
DELETE FROM DISEASE;
DELETE FROM ARCHIVE_TYPE;
DELETE FROM DATA_LEVEL;
DELETE FROM DATA_TYPE;
DELETE FROM CENTER_TYPE;
COMMIT;
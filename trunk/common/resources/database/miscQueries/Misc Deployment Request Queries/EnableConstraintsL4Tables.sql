
ALTER TABLE L4_PATIENT ENABLE CONSTRAINT PK_L4_PATIENT;

ALTER TABLE L4_DATA_SET_GENETIC_ELEMENT ENABLE CONSTRAINT PK_L4_DATA_SET_GE_ID;

ALTER TABLE L4_CORRELATION_TYPE ENABLE CONSTRAINT PK_L4_CORRELATION_TYPE;

ALTER TABLE L4_SAMPLE ENABLE CONSTRAINT PK_L4_SAMPLE;

ALTER TABLE L4_GENETIC_ELEMENT_TYPE ENABLE CONSTRAINT PK_L4_GENETIC_ELEMENT_TYPE;

ALTER TABLE L4_GENETIC_ELEMENT ENABLE CONSTRAINT PK_GENETIC_ELEMENT_IDX;

ALTER TABLE L4_DATA_SET_SAMPLE ENABLE CONSTRAINT PK_L4_DATA_SET_SAMPLE_ID;

ALTER TABLE L4_TARGET ENABLE CONSTRAINT PK_L4_TARGET;

ALTER TABLE L4_ANOMALY_TYPE ENABLE CONSTRAINT PK_L4_ANOMALY_TYPE;

ALTER TABLE L4_ANOMALY_DATA_VERSION ENABLE CONSTRAINT PK_L4_ANOMALY_DATA_VERSION;

ALTER TABLE L4_ANOMALY_DATA_SET_VERSION ENABLE CONSTRAINT PK_L4_ANOMALY_DSV_ID;

ALTER TABLE L4_ANOMALY_DATA_SET ENABLE CONSTRAINT PK_L4_ANOMALY_DATA_SET;

ALTER TABLE L4_SAMPLE ENABLE CONSTRAINT FK_SAMPLE_DISEASE ;
ALTER TABLE L4_SAMPLE ENABLE CONSTRAINT FK_PATIENT_ID_SAMPLE ;
ALTER TABLE L4_ANOMALY_VALUE ENABLE CONSTRAINT FK_ANOMALYVALUE_ANOMDATASETID; 
ALTER TABLE L4_ANOMALY_VALUE ENABLE CONSTRAINT FK_ANOMALYVALUE_SAMPLEID ;
ALTER TABLE L4_ANOMALY_VALUE ENABLE CONSTRAINT FK_ANOMALYVALUE_GENETICELEMID ;

ALTER TABLE L4_DATA_SET_GENETIC_ELEMENT ENABLE CONSTRAINT FK_DATA_SET_GE_GE; 
ALTER TABLE L4_DATA_SET_GENETIC_ELEMENT ENABLE CONSTRAINT FK_DATA_SET_GE_DS; 

ALTER TABLE L4_CORRELATION_TYPE ENABLE CONSTRAINT FK_CORRELATION_ANOMALY_TYPE2 ;
ALTER TABLE L4_CORRELATION_TYPE ENABLE CONSTRAINT FK_CORRELATION_ANOMALY_TYPE1; 

ALTER TABLE L4_SAMPLE ENABLE CONSTRAINT FK_SAMPLE_DISEASE; 
ALTER TABLE L4_SAMPLE ENABLE CONSTRAINT FK_PATIENT_ID_SAMPLE; 

ALTER TABLE L4_GENETIC_ELEMENT ENABLE CONSTRAINT FK_GENETIC_ELEMENT_TYPE ;
ALTER TABLE L4_GENETIC_ELEMENT ENABLE CONSTRAINT FK_GENETIC_ELEMENT_GENE; 

ALTER TABLE L4_DATA_SET_SAMPLE ENABLE CONSTRAINT FK_L4_DATA_SET_SAMPL_L4_SAMPLE ;
ALTER TABLE L4_DATA_SET_SAMPLE ENABLE CONSTRAINT FK_DATA_SET_SAMPLE_ANOMALY_DS;

ALTER TABLE L4_TARGET ENABLE CONSTRAINT FK_TARGET_TARGET_FK ;
ALTER TABLE L4_TARGET ENABLE CONSTRAINT FK_TARGET_SOURCE_FK; 

ALTER TABLE L4_ANOMALY_TYPE ENABLE CONSTRAINT FK_ANOMALY_TYPE_GE_TYPE ;
ALTER TABLE L4_ANOMALY_TYPE ENABLE CONSTRAINT FK_ANOMALY_TYPE_PLATFORM_TYPE; 
ALTER TABLE L4_ANOMALY_TYPE ENABLE CONSTRAINT FK_ANOMALY_TYPE_DATA_TYPE; 
ALTER TABLE L4_ANOMALY_TYPE ENABLE CONSTRAINT FK_ANOMALY_TYPE_CENTER; 

ALTER TABLE L4_ANOMALY_DATA_VERSION ENABLE CONSTRAINT FK_ANOMALY_DATA_VERSIO_DISEASE; 

ALTER TABLE L4_ANOMALY_DATA_SET_VERSION ENABLE CONSTRAINT FK_ANOMALY_DATA_VERSION; 
ALTER TABLE L4_ANOMALY_DATA_SET_VERSION ENABLE CONSTRAINT FK_ANOMALY_DATA_SET; 

ALTER TABLE L4_ANOMALY_DATA_SET ENABLE CONSTRAINT FK_ANOMALY_DATA_S_ANOMALY_TYPE ;
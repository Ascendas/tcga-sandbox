insert into center (center_id, domain_name) values (1,'broad.mit.edu');
insert into center (center_id, domain_name) values (2,'jhu-usc.edu');
insert into center (center_id, domain_name) values (3,'hms.harvard.edu');
insert into center (center_id, domain_name) values (4,'lbl.gov');
insert into center (center_id, domain_name) values (5,'mskcc.org');
insert into center (center_id, domain_name) values (6,'hudsonalpha.org');
insert into center (center_id, domain_name) values (7,'unc.edu');
insert into center (center_id, domain_name) values (8,'hgsc.bcm.edu');
insert into center (center_id, domain_name) values (9,'genome.wustl.edu');
insert into center (center_id, domain_name) values (10,'combined GSCs');

insert into platform (platform_id, name) values (17,'ABI');
insert into platform (platform_id, name) values (18,'AgilentG4502A_07');
insert into platform (platform_id, name) values (8,'AgilentG4502A_07_1');
insert into platform (platform_id, name) values (10,'AgilentG4502A_07_2');
insert into platform (platform_id, name) values (14,'AgilentG4502A_07_3');
insert into platform (platform_id, name) values (15,'CGH-1x1M_G4447A');
insert into platform (platform_id, name) values (1,'Genome_Wide_SNP_6');
insert into platform (platform_id, name) values (12,'H-miRNA_8x15K');
insert into platform (platform_id, name) values (20,'H-miRNA_8x15Kv2');
insert into platform (platform_id, name) values (5,'HG-CGH-244A');
insert into platform (platform_id, name) values (21,'HG-CGH-415K_G4124A');
insert into platform (platform_id, name) values (4,'HT_HG-U133A');
insert into platform (platform_id, name) values (6,'HuEx-1_0-st-v2');
insert into platform (platform_id, name) values (16,'Human1MDuo');
insert into platform (platform_id, name) values (7,'HumanHap550');
insert into platform (platform_id, name) values (13,'HumanMethylation27');
insert into platform (platform_id, name) values (2,'IlluminaDNAMethylation_OMA002_CPI');
insert into platform (platform_id, name) values (3,'IlluminaDNAMethylation_OMA003_CPI');

insert into data_type (data_type_id, name) values (1,'SNP');
insert into data_type (data_type_id, name) values (2,'DNA Methylation');
insert into data_type (data_type_id, name) values (3,'Expression-Genes');
insert into data_type (data_type_id, name) values (4,'Copy Number Results');
insert into data_type (data_type_id, name) values (5,'Expression-Exon');
insert into data_type (data_type_id, name) values (6,'Expression-miRNA');
insert into data_type (data_type_id, name) values (7,'Somatic Mutations');

insert into platform_type (platform_id,data_type_id, platform_type_id) values (1,1,1);
insert into platform_type (platform_id,data_type_id, platform_type_id) values (2,2,2);
insert into platform_type (platform_id,data_type_id, platform_type_id) values (6,5,3);
insert into platform_type (platform_id,data_type_id, platform_type_id) values (5,4,4);
insert into platform_type (platform_id,data_type_id, platform_type_id) values (7,1,5);
insert into platform_type (platform_id,data_type_id, platform_type_id) values (3,2,6);
insert into platform_type (platform_id,data_type_id, platform_type_id) values (4,3,7);
insert into platform_type (platform_id,data_type_id, platform_type_id) values (8,3,8);
insert into platform_type (platform_id,data_type_id, platform_type_id) values (10,3,9);

insert into anomaly_type(anomaly_type_id,anomaly,anomaly_description,value_threshold,value_threshold_type,display_name,patient_threshold,comments) values (4,'AMPLIFIED','Amplification of all or part of the gene.  Based on data from Harvard, Broad, MSKCC, and Stanford.',2.5,'GTE','AMP',.1,'');
insert into anomaly_type(anomaly_type_id,anomaly,anomaly_description,value_threshold,value_threshold_type,display_name,patient_threshold,comments) values (5,'DELETED','Deletion of all or part of the gene.  Based on data from Harvard, Broad, MSKCC, and Stanford.',1.5,'LTE','DEL',.1,'');
insert into anomaly_type(anomaly_type_id,anomaly,anomaly_description,value_threshold,value_threshold_type,display_name,patient_threshold,comments) values (1,'MUTATION','A validated, functional mutation (i.e. silent change is not counted here) exists in the gene of interest.  Data from submitted by the three GSC Centers',1,'GTE','MUTATION',.05,'');
insert into anomaly_type(anomaly_type_id,anomaly,anomaly_description,value_threshold,value_threshold_type,display_name,patient_threshold,comments) values (2,'OVEREXPRESSION, AFFYMETRIX','Overexpression of the gene is seen in Affymetrix 133A Microarray analysis.',2,'GTE','EXP+_AF',.25,'');
insert into anomaly_type(anomaly_type_id,anomaly,anomaly_description,value_threshold,value_threshold_type,display_name,patient_threshold,comments) values (3,'UNDEREXPRESSION, AFFYMETRIX','Underexpression of the gene is seen in Affymetrix 133A Microarray analysis.',.1,'LTE','EXP-_AF',.15,'');


insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (3,'A260A280RATIO',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (4,'ADDITIONALCHEMOTHERAPY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (5,'ADDITIONALDRUGTHERAPY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (6,'ADDITIONALHORMONETHERAPY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (7,'ADDITIONALIMMUNOTHERAPY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (8,'ADDITIONALRADIATIONTHERAPY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (9,'AMOUNT',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (11,'ANALYTETYPE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (12,'ANATOMICORGANSUBDIVISION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (13,'ANATOMICTREATMENTSITE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (14,'BCRALIQUOTBARCODE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (15,'BCRANALYTEBARCODE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (16,'BCRPATIENTBARCODE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (17,'BCRPORTIONBARCODE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (18,'BCRSAMPLEBARCODE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (19,'BCRSITEID',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (20,'BCRSLIDEBARCODE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (21,'CELLULARITY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (22,'CHEMOTHERAPY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (23,'CONCENTRATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (25,'CURRENTWEIGHT',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (26,'DAYOFBIRTH',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (27,'DAYOFCOLLECTION',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (28,'DAYOFCREATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (29,'DAYOFDEATH',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (30,'DAYOFDRUGTREATMENTEND',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (31,'DAYOFDRUGTREATMENTSTART',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (32,'DAYOFEXAMINATION',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (33,'DAYOFINITIALPATHOLOGICDIAGNOSIS',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (34,'DAYOFLASTFOLLOWUP',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (35,'DAYOFPROCEDURE',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (36,'DAYOFRADIATIONTREATMENTEND',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (37,'DAYOFRADIATIONTREATMENTSTART',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (38,'DAYOFSHIPMENT',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (39,'DAYOFTUMORPROGRESSION',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (40,'DAYOFTUMORRECURRENCE',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (41,'DOSAGEUNITS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (42,'DRUGCATEGORY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (43,'DRUGDOSAGE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (44,'DRUGNAME',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (45,'EASTERNCANCERONCOLOGYGROUP',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (46,'ENDOTHELIALPROLIFERATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (47,'ETHNICITY',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (48,'EXPERIMENTALPROTOCOLTYPE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (49,'FREEZINGMETHOD',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (50,'GELIMAGEFILE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (51,'GEMISTOCYTESPRESENT',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (52,'GENDER',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (53,'GFAP_POSITIVE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (54,'HISTOLOGICALTYPE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (55,'HISTOLOGICNUCLEARGRADE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (58,'HISTOLOGICTYPE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (59,'HORMONALTHERAPY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (60,'IMMUNOTHERAPY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (61,'INFORMEDCONSENTVERIFIED',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (62,'INITIALCOURSE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (63,'INITIALPATHOLOGICDIAGNOSISMETHOD',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (64,'INITIALWEIGHT',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (65,'INTERMEDIATEDIMENSION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (66,'JEWISHORIGIN',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (67,'KARNOFSKYPERFORMANCESCORE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (68,'LEPTOMENINGEALINVOLEMENT',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (69,'LONGESTDIMENSION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (70,'LYMPHATICINVASION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (71,'MARGINSINVOLVED',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (72,'MIB1_POSITIVE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (73,'MONTHOFBIRTH',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (74,'MONTHOFCOLLECTION',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (75,'MONTHOFCREATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (76,'MONTHOFDEATH',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (77,'MONTHOFDRUGTREATMENTEND',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (78,'MONTHOFDRUGTREATMENTSTART',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (79,'MONTHOFEXAMINATION',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (80,'MONTHOFINITIALPATHOLOGICDIAGNOSIS',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (81,'MONTHOFLASTFOLLOWUP',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (82,'MONTHOFPROCEDURE',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (83,'MONTHOFRADIATIONTREATMENTEND',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (84,'MONTHOFRADIATIONTREATMENTSTART',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (85,'MONTHOFSHIPMENT',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (86,'MONTHOFTUMORPROGRESSION',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (87,'MONTHOFTUMORRECURRENCE',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (88,'NORMALTUMORGENOTYPEMATCH',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (89,'NUCLEARPLEOMORPHISM',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (90,'NUMBERCYCLES',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (91,'NUMBERPROLIFERATINGCELLS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (92,'NUMBERREGIONALLYMPHNODESEXAM',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (93,'NUMBERREGIONALLYMPHNODESPOS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (94,'NUMFRACTIONS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (95,'OCTEMBEDDED',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (96,'OLIGODENDROGLIALCOMPONENT',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (97,'PALISADINGNECROSIS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (98,'PCRAMPLIFICATIONSUCCESSFUL',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (99,'PERCENTEOSINOPHILINFILTRATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (100,'PERCENTGRANULOCYTEINFILTRATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (101,'PERCENTINFLAMINFILTRATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (102,'PERCENTLYMPHOCYTEINFILTRATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (103,'PERCENTMONOCYTEINFILTRATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (104,'PERCENTNECROSIS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (105,'PERCENTNEUTROPHILINFILTRATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (106,'PERCENTNORMALCELLS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (107,'PERCENTSTROMALCELLS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (108,'PERCENTTUMORCELLS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (109,'PERCENTTUMORNUCLEI',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (110,'PERFORMANCESTATUSSCALETIMING',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (111,'PERSONNEOPLASMCANCERSTATUS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (112,'PRETREATMENTHISTORY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (113,'PRIMARYORMETASTATICSTATUS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (114,'PRIMARYTHERAPYOUTCOMESUCCESS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (115,'PRIORGLIOMA',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (116,'PROCEDURETYPE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (117,'PROGRESSIONDETERMINEDBY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (118,'PROGRESSIONDETERMINEDBYNOTES',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (119,'PROGRESSIONSTATUS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (120,'PROTOCOLFILENAME',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (121,'PROTOCOLNAME',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (122,'RACE',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (123,'RADIATIONDOSAGE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (124,'RADIATIONTHERAPY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (125,'RADIATIONTREATMENTONGOING',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (126,'RADIATIONTYPE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (127,'RADIATIONTYPENOTES',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (128,'RATIO28S18S',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (129,'REGIMENINDICATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (130,'REGIMENINDICATIONNOTES',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (131,'RESIDUALTUMOR',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (132,'REVISION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (133,'RINVALUE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (134,'ROUTEOFADMINISTRATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (135,'ROUTEOFADMINISTRATIONNOTES',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (136,'SAMPLETYPE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (137,'SECTIONLOCATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (138,'SHORTESTDIMENSION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (139,'SITEOFTUMORFIRSTRECURRENCE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (140,'TARGETEDMOLECULARTHERAPY',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (141,'TIMEBETWEENCLAMPINGANDFREEZING',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (142,'TIMEBETWEENEXCISIONANDFREEZING',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (143,'TNMPATHOLOGYLYMPHNODESTATUS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (145,'TNMPATHOLOGYMETASTATICSTATUS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (147,'TNMPATHOLOGYSTAGEGROUPING',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (149,'TNMPATHOLOGYTUMORSTATUS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (151,'TUMORGRADE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (152,'TUMORRESIDUALDISEASE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (153,'TUMORSAMPLEANATOMICLOCATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (156,'TUMORSTAGE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (157,'TUMORTISSUESITE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (158,'UNITS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (159,'VENOUSINVASION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (160,'VERIFICATIONBYBCR',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (161,'VITALSTATUS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (162,'WEIGHT',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (163,'WELLNUMBER',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (164,'YEAROFBIRTH',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (165,'YEAROFCOLLECTION',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (166,'YEAROFCREATION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (167,'YEAROFDEATH',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (168,'YEAROFDRUGTREATMENTEND',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (169,'YEAROFDRUGTREATMENTSTART',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (170,'YEAROFEXAMINATION',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (171,'YEAROFINITIALPATHOLOGICDIAGNOSIS',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (172,'YEAROFLASTFOLLOWUP',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (173,'YEAROFPROCEDURE',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (174,'YEAROFRADIATIONTREATMENTEND',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (175,'YEAROFRADIATIONTREATMENTSTART',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (176,'YEAROFSHIPMENT',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (177,'YEAROFTUMORPROGRESSION',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (178,'YEAROFTUMORRECURRENCE',1);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (183,'DAYSTOBIRTH',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (184,'DAYSTODEATH',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (185,'DAYSTOLASTFOLLOWUP',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (186,'DAYSTOTUMORPROGRESSION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (187,'DAYSTOTUMORRECURRENCE',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (188,'AGEATINITIALPATHOLOGICDIAGNOSIS',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (189,'DAYSTOCOLLECTION',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (190,'DAYSTODRUGTREATMENTSTART',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (191,'DAYSTODRUGTREATMENTEND',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (192,'DAYSTORADIATIONTREATMENTSTART',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (193,'DAYSTORADIATIONTREATMENTEND',0);
insert into clinical_xsd_element(clinical_xsd_element_id,element_name,is_protected) values (194,'DAYSTOPROCEDURE',0);

insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (1,'PATIENT','PATIENT.PATIENT_ID=SAMPLE.PATIENT_ID',' ');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (2,'SAMPLE',' ','SAMPLE.PATIENT_ID=PATIENT.PATIENT_ID');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (3,'PORTION','PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID','PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID AND SAMPLE.PATIENT_ID=PATIENT.PATIENT_ID');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (4,'ANALYTE','ANALYTE.PORTION_ID=PORTION.PORTION_ID AND PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID','ANALYTE.PORTION_ID=PORTION.PORTION_ID AND PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID AND SAMPLE.PATIENT_ID=PATIENT.PATIENT_ID');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (5,'ALIQUOT','ALIQUOT.ANALYTE_ID=ANALYTE.ANALYTE_ID AND ANALYTE.PORTION_ID=PORTION.PORTION_ID AND PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID','ALIQUOT.ANALYTE_ID=ANALYTE.ANALYTE_ID AND ANALYTE.PORTION_ID=PORTION.PORTION_ID AND PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID AND SAMPLE.PATIENT_ID=PATIENT.PATIENT_ID');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (6,'PROTOCOL','PROTOCOL.ANALYTE_ID=ANALYTE.ANALYTE_ID AND ANALYTE.PORTION_ID=PORTION.PORTION_ID AND PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID','PROTOCOL.ANALYTE_ID=ANALYTE.ANALYTE_ID AND ANALYTE.PORTION_ID=PORTION.PORTION_ID AND PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID AND SAMPLE.PATIENT_ID=PATIENT.PATIENT_ID');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (7,'DNA','DNA.ANALYTE_ID(+)=ANALYTE.ANALYTE_ID AND ANALYTE.PORTION_ID=PORTION.PORTION_ID AND PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID','DNA.ANALYTE_ID(+)=ANALYTE.ANALYTE_ID AND ANALYTE.PORTION_ID=PORTION.PORTION_ID AND PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID AND SAMPLE.PATIENT_ID=PATIENT.PATIENT_ID');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (8,'RNA','RNA.ANALYTE_ID(+)=ANALYTE.ANALYTE_ID AND ANALYTE.PORTION_ID=PORTION.PORTION_ID AND PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID','RNA.ANALYTE_ID(+)=ANALYTE.ANALYTE_ID AND ANALYTE.PORTION_ID=PORTION.PORTION_ID AND PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID AND SAMPLE.PATIENT_ID=PATIENT.PATIENT_ID');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (10,'SLIDE','SLIDE.PORTION_ID(+)=PORTION.PORTION_ID AND PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID','SLIDE.PORTION_ID(+)=PORTION.PORTION_ID AND PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID AND SAMPLE.PATIENT_ID=PATIENT.PATIENT_ID');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (12,'EXAMINATION','EXAMINATION.PATIENT_ID(+)=PATIENT.PATIENT_ID AND PATIENT.PATIENT_ID=SAMPLE.PATIENT_ID','EXAMINATION.PATIENT_ID(+)=PATIENT.PATIENT_ID');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (13,'RADIATION','RADIATION.PATIENT_ID(+)=PATIENT.PATIENT_ID AND PATIENT.PATIENT_ID=SAMPLE.PATIENT_ID','RADIATION.PATIENT_ID(+)=PATIENT.PATIENT_ID');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (14,'SURGERY','SURGERY.PATIENT_ID(+)=PATIENT.PATIENT_ID AND PATIENT.PATIENT_ID=SAMPLE.PATIENT_ID','SURGERY.PATIENT_ID(+)=PATIENT.PATIENT_ID');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (15,'DRUG_INTGEN','DRUG_INTGEN.PATIENT_ID(+)=PATIENT.PATIENT_ID AND PATIENT.PATIENT_ID=SAMPLE.PATIENT_ID','DRUG_INTGEN.PATIENT_ID(+)=PATIENT.PATIENT_ID');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (16,'TUMORPATHOLOGY','TUMORPATHOLOGY.SAMPLE_ID(+)=SAMPLE.SAMPLE_ID','TUMORPATHOLOGY.SAMPLE_ID(+)=SAMPLE.SAMPLE_ID AND SAMPLE.PATIENT_ID=PATIENT.PATIENT_ID');
insert into clinical_table(clinical_table_id,table_name,join_for_sample,join_for_patient) values (17,'SHIPPED_PORTION','SHIPPED_PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID','SHIPPED_PORTION.SAMPLE_ID=SAMPLE.SAMPLE_ID AND SAMPLE.PATIENT_ID=PATIENT.PATIENT_ID');

insert into clinical_file(clinical_file_id,filename,by_patient,context) values (1,'clinical_patient',1,'dam');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (2,'clinical_sample',0,'dam');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (3,'clinical_portion',0,'dam');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (4,'clinical_analyte',0,'dam');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (5,'clinical_aliquot',0,'dam');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (6,'clinical_protocol',0,'dam');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (7,'clinical_slide',0,'dam');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (10,'clinical_drug',1,'dam');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (11,'clinical_examination',1,'dam');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (12,'clinical_radiation',1,'dam');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (13,'clinical_surgery',1,'dam');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (14,'dbgap_subjects',1,'dbgap');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (15,'dbgap_samples',0,'dbgap');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (16,'dbgap_slides',0,'dbgap');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (17,'dbgap_subjects_to_samples',1,'dbgap');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (18,'dbgap_subjects_drugs',1,'dbgap');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (19,'dbgap_subjects_examinations',1,'dbgap');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (20,'dbgap_subjects_radiations',1,'dbgap');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (21,'dbgap_subjects_surgeries',1,'dbgap');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (22,'dbgap_subjects_info',1,'dbgap');
insert into clinical_file(clinical_file_id,filename,by_patient,context) values (23,'clinical_shipment_portion',0,'dam');


insert into clinical_file_element(clinical_file_element_id,xsd_element_id,table_id,table_column_name,file_column_name,file_column_order,clinical_file_id,disease_id,unit_column_name) values (1,16,1,'PATIENT_BARCODE','bcr_patient_barcode',1,14,,'');
insert into clinical_file_element(clinical_file_element_id,xsd_element_id,table_id,table_column_name,file_column_name,file_column_order,clinical_file_id,disease_id,unit_column_name) values (2,14,5,'ALIQUOT_BARCODE','bcr_aliquot_barcode',1,17,,'');
insert into clinical_file_element(clinical_file_element_id,xsd_element_id,table_id,table_column_name,file_column_name,file_column_order,clinical_file_id,disease_id,unit_column_name) values (3,16,1,'PATIENT_BARCODE','bcr_patient_barcode',2,17,,'');
insert into clinical_file_element(clinical_file_element_id,xsd_element_id,table_id,table_column_name,file_column_name,file_column_order,clinical_file_id,disease_id,unit_column_name) values (4,15,4,'ANALYTE_BARCODE','bcr_analyte_barcode',2,6,,'');
insert into clinical_file_element(clinical_file_element_id,xsd_element_id,table_id,table_column_name,file_column_name,file_column_order,clinical_file_id,disease_id,unit_column_name) values (6,16,1,'PATIENT_BARCODE','bcr_patient_barcode',1,18,,'');
insert into clinical_file_element(clinical_file_element_id,xsd_element_id,table_id,table_column_name,file_column_name,file_column_order,clinical_file_id,disease_id,unit_column_name) values (7,16,1,'PATIENT_BARCODE','bcr_patient_barcode',1,19,,'');
insert into clinical_file_element(clinical_file_element_id,xsd_element_id,table_id,table_column_name,file_column_name,file_column_order,clinical_file_id,disease_id,unit_column_name) values (8,16,1,'PATIENT_BARCODE','bcr_patient_barcode',1,20,,'');
insert into clinical_file_element(clinical_file_element_id,xsd_element_id,table_id,table_column_name,file_column_name,file_column_order,clinical_file_id,disease_id,unit_column_name) values (9,16,1,'PATIENT_BARCODE','bcr_patient_barcode',1,21,,'');
insert into clinical_file_element(clinical_file_element_id,xsd_element_id,table_id,table_column_name,file_column_name,file_column_order,clinical_file_id,disease_id,unit_column_name) values (10,14,5,'ALIQUOT_BARCODE','bcr_aliquot_barcode',1,16,,'');


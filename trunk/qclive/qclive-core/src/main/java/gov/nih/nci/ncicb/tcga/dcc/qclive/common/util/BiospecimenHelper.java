package gov.nih.nci.ncicb.tcga.dcc.qclive.common.util;

import gov.nih.nci.ncicb.tcga.dcc.ConstantValues;
import gov.nih.nci.ncicb.tcga.dcc.common.bean.Tumor;
import gov.nih.nci.ncicb.tcga.dcc.common.exception.UUIDException;
import gov.nih.nci.ncicb.tcga.dcc.qclive.bean.BCRID;
import gov.nih.nci.ncicb.tcga.dcc.qclive.bean.BiospecimenToFile;
import gov.nih.nci.ncicb.tcga.dcc.qclive.dao.BCRDataService;

import java.util.ArrayList;
import java.util.List;

/**
 * Helper class to handle biospecimen data 
 *
 * @author Rohini Raman
 *         Last updated by: $Author$
 * @version $Rev$
 */
public class BiospecimenHelper {

    public static void insertBiospecimenFileRelationship(   final List<Integer> biospecimenIdList,
                                                            final Long fileInfoId,
                                                            final BCRDataService bcrDataService,
                                                            final Tumor disease){

         // add biospecimen and file id association into biospecimen_to_file table
        final List<BiospecimenToFile> biospecimenToFileList   =   new ArrayList();
        BiospecimenToFile   biospecimenToFile;
        int biospecimenIdCount=0;
        final int maxBiospecimenIds =   biospecimenIdList.size();

        while(biospecimenIdCount < maxBiospecimenIds){ // controls number of batches
            for(int maxDataCount =0;
                (biospecimenIdCount < maxBiospecimenIds && (maxDataCount< ConstantValues.BATCH_SIZE));
                biospecimenIdCount++,maxDataCount++){
                biospecimenToFile  =   new BiospecimenToFile();
                biospecimenToFile.setBiospecimenFileId(ConstantValues.NOT_ASSIGNED);
                biospecimenToFile.setFileId(fileInfoId);
                biospecimenToFile.setBiospecimenId(biospecimenIdList.get(biospecimenIdCount));
                biospecimenToFileList.add(biospecimenToFile);
            }
            bcrDataService.addBioSpecimenToFileAssociations(biospecimenToFileList, disease);
            biospecimenToFileList.clear();
        }
    }

    /**
     * Adds list of biospecimen data into common schema and disease specific schema and returns
     * added biospecimenids.
     * Data is first added in common schema. After that it is added in disesase schema with the same biospecimen ids
     * generated by common schema.
     * @param bcrIds
     * @param bcrDataService
     * @return  list of added barcodes biospecimen ids
     */
    public static List<Integer>  insertBiospecimenBarcode(final List<BCRID> bcrIds,
                                                final BCRDataService bcrDataService,
                                                final Tumor disease)  throws UUIDException {

        final List<String>   barcodes =   new ArrayList();
        for(BCRID bcrId:bcrIds){
            // Real value gets assigned when the data is added into the database
            bcrId.setId(ConstantValues.NOT_ASSIGNED);
            barcodes.add(bcrId.getFullID());
        }
        bcrDataService.addBioSpecimenBarcodes(bcrIds, disease);
        // oracle doesn't return updated row number for batch queries.
        // As batch statement is used to add biospecimen entries, we do not know the successful inserted biospecimen ids.
        // So do a select statement to get the added biospecimen ids
        return bcrDataService.getBiospecimenIds(barcodes);
    }

    public static List<Integer> getBiospecimenIds(final List<BCRID> bcrIds, final BCRDataService bcrDataService) {
        final List<String> barcodes = new ArrayList();
        for(BCRID bcrId:bcrIds){
            barcodes.add(bcrId.getFullID());
        }

        return bcrDataService.getBiospecimenIds(barcodes);

    }


}

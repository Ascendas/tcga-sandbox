/*
 * Software License, Version 1.0 Copyright 2010 SRA International, Inc. Copyright Notice.
 * The software subject to this notice and license includes both human readable source code form and machine readable,
 * binary, object code form (the "caBIG Software").
 *
 * Please refer to the complete License text for full details at the root of the project.
 */

package gov.nih.nci.ncicb.tcgaportal.level4.gwt.anomalysearch.client.filter;

import com.google.gwt.user.client.ui.Widget;
import gov.nih.nci.ncicb.tcgaportal.level4.gwt.anomalysearch.client.util.SeleniumTags;
import gov.nih.nci.ncicb.tcgaportal.level4.gwt.anomalysearch.client.util.WidgetHelper;
import gov.nih.nci.ncicb.tcgaportal.level4.gwtEnabled.domainobjects.columntypes.ColumnType;
import gov.nih.nci.ncicb.tcgaportal.level4.gwtEnabled.domainobjects.columntypes.MethylationType;

/**
 * @author David Nassau
 *         Last updated by: $Author$
 * @version $Rev$
 */
public class MethylationDisplay extends NonMutationAnomalyDisplay {
    MethylationDisplay(FilterPanel filterPanel) {
        super(filterPanel);
    }

    protected boolean shouldInclude(ColumnType ctype) {
        return ctype instanceof MethylationType;
    }

    protected void setDomId(Widget w) {
        WidgetHelper.setDomId(w, SeleniumTags.ADDMETHYLATION_BUTTON);
    }

    protected AnomalyWidget makeNewWidget(ColumnType selectedColumnType, boolean isListByGene) {
        return new MethylationWidget(selectedColumnType);
    }
}
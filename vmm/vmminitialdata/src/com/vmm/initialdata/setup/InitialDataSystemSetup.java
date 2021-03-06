package com.vmm.initialdata.setup;

import de.hybris.platform.commerceservices.dataimport.impl.CoreDataImportService;
import de.hybris.platform.commerceservices.dataimport.impl.SampleDataImportService;
import de.hybris.platform.commerceservices.setup.AbstractSystemSetup;
import de.hybris.platform.commerceservices.setup.data.ImportData;
import de.hybris.platform.commerceservices.setup.events.CoreDataImportedEvent;
import de.hybris.platform.commerceservices.setup.events.SampleDataImportedEvent;
import de.hybris.platform.core.initialization.SystemSetup;
import de.hybris.platform.core.initialization.SystemSetupContext;
import de.hybris.platform.core.initialization.SystemSetupParameter;
import de.hybris.platform.core.initialization.SystemSetupParameterMethod;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Required;

import com.vmm.initialdata.constants.VmmInitialDataConstants;


@SystemSetup(extension = VmmInitialDataConstants.EXTENSIONNAME)
public class InitialDataSystemSetup extends AbstractSystemSetup
{
	public static final String VMM_DELHI = "vmmDelhi";
	public static final String VMM_DELHI_STORE = "vmmDelhiSite";
	public static final String VMM_PUNJAB_STORE = "vmmPunjabSite";
	public static final String VMM_PUNJAB = "vmmPunjab";

	private static final String IMPORT_CORE_DATA = "importCoreData";
	private static final String IMPORT_SAMPLE_DATA = "importSampleData";
	private static final String ACTIVATE_SOLR_CRON_JOBS = "activateSolrCronJobs";

	private CoreDataImportService coreDataImportService;
	private SampleDataImportService sampleDataImportService;



	@Override
	@SystemSetupParameterMethod
	public List<SystemSetupParameter> getInitializationOptions()
	{
		System.out.println("#######################################################################");
		System.out.println("VMMInitialData getinitializationOptions");
		System.out.println("#######################################################################");
		final List<SystemSetupParameter> params = new ArrayList<SystemSetupParameter>();

		params.add(createBooleanSystemSetupParameter(IMPORT_CORE_DATA, "Import Core Data", true));
		params.add(createBooleanSystemSetupParameter(IMPORT_SAMPLE_DATA, "Import Sample Data", true));
		params.add(createBooleanSystemSetupParameter(ACTIVATE_SOLR_CRON_JOBS, "Activate Solr Cron Jobs", true));

		return params;
	}

	/**
	 * This method will be called during the system initialization.
	 *
	 * @param context
	 *           the context provides the selected parameters and values
	 */
	@SystemSetup(type = SystemSetup.Type.PROJECT, process = SystemSetup.Process.ALL)
	public void createProjectData(final SystemSetupContext context)
	{
		System.out.println("#######################################################################");
		System.out.println("VMMInitialData Project data");
		System.out.println("#######################################################################");

		final List<ImportData> importData = new ArrayList<ImportData>();

		final ImportData apparelImportData = new ImportData();
		apparelImportData.setProductCatalogName(VMM_DELHI);
		apparelImportData.setContentCatalogNames(Arrays.asList(VMM_DELHI, VMM_PUNJAB));
		apparelImportData.setStoreNames(Arrays.asList(VMM_DELHI_STORE, VMM_PUNJAB_STORE));
		importData.add(apparelImportData);

		getCoreDataImportService().execute(this, context, importData);
		getEventService().publishEvent(new CoreDataImportedEvent(context, importData));

		getSampleDataImportService().execute(this, context, importData);
		getEventService().publishEvent(new SampleDataImportedEvent(context, importData));

		getSetupImpexService().importImpexFile(
				String.format("/%s//import/coredata/contentCatalogs/vmmDelhiContentCatalog/catalog-content-orderhistorydetails.impex",
						VmmInitialDataConstants.EXTENSIONNAME),
				true);
		getSetupImpexService().importImpexFile(String.format(
				"/%s/import/sampledata/contentCatalogs/vmmDelhiContentCatalog/cms-content-orderhistorydetailspage.impex",
				VmmInitialDataConstants.EXTENSIONNAME), true);
		getSetupImpexService().importImpexFile(
				String.format("/%s//import/coredata/contentCatalogs/vmmDelhiContentCatalog/cms-content-accountAddChildrenPage.impex",
						VmmInitialDataConstants.EXTENSIONNAME),
				true);
		getSetupImpexService().importImpexFile(String.format(
				"/%s//import/sampledata/contentCatalogs/vmmDelhiContentCatalog/cms-content-accountAddChildrenPage.impex",
				VmmInitialDataConstants.EXTENSIONNAME), true);
		getSetupImpexService()
				.importImpexFile(String.format("/%s/import/sampledata/contentCatalogs/vmmDelhiContentCatalog/cms-content-logo.impex",
						VmmInitialDataConstants.EXTENSIONNAME), true);

	}

	public CoreDataImportService getCoreDataImportService()
	{
		return coreDataImportService;
	}

	@Required
	public void setCoreDataImportService(final CoreDataImportService coreDataImportService)
	{
		this.coreDataImportService = coreDataImportService;
	}

	public SampleDataImportService getSampleDataImportService()
	{
		return sampleDataImportService;
	}

	@Required
	public void setSampleDataImportService(final SampleDataImportService sampleDataImportService)
	{
		this.sampleDataImportService = sampleDataImportService;
	}
}

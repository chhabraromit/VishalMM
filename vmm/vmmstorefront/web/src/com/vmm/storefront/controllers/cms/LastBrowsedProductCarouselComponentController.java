/**
 *
 */
package com.vmm.storefront.controllers.cms;

import de.hybris.platform.acceleratorcms.services.CMSPageContextService;
import de.hybris.platform.acceleratorstorefrontcommons.controllers.AbstractController;
import de.hybris.platform.acceleratorstorefrontcommons.controllers.cms.AbstractCMSComponentController;
import de.hybris.platform.acceleratorstorefrontcommons.controllers.pages.AbstractPageController;
import de.hybris.platform.cms2.exceptions.CMSItemNotFoundException;
import de.hybris.platform.cms2.servicelayer.services.CMSComponentService;
import de.hybris.platform.commercefacades.product.ProductFacade;
import de.hybris.platform.commercefacades.product.ProductOption;
import de.hybris.platform.commercefacades.product.data.ProductData;
import de.hybris.platform.commercefacades.search.ProductSearchFacade;
import de.hybris.platform.core.model.product.ProductModel;
import de.hybris.platform.product.impl.DefaultProductService;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vmm.core.model.LastBrowsedProductCarouselComponentModel;
import com.vmm.storefront.controllers.ControllerConstants;


/**
 * @author reflex
 *
 */
@Controller("LastBrowsedProductCarouselComponentController")
@RequestMapping(value = ControllerConstants.Actions.Cms.LastBrowsedProductCarouselComponent)
public class LastBrowsedProductCarouselComponentController<T extends LastBrowsedProductCarouselComponentModel>
		extends AbstractController
{


	protected static final String COMPONENT_UID = "componentUid";
	protected static final String COMPONENT = "component";
	protected static final String SANITIZE_REGEX = "[^a-zA-Z0-9_]";

	protected static final List<ProductOption> PRODUCT_OPTIONS = Arrays.asList(ProductOption.BASIC, ProductOption.PRICE);

	@Resource(name = "accProductFacade")
	private ProductFacade productFacade;

	@Resource(name = "productSearchFacade")
	private ProductSearchFacade<ProductData> productSearchFacade;

	/**
	 * @deprecated Since 6.0. use
	 *             {@link de.hybris.platform.acceleratorstorefrontcommons.controllers.cms.AbstractCMSComponentController#LOGGER}
	 *             instead.
	 */
	@Deprecated
	protected static final Logger LOG = Logger.getLogger(AbstractCMSComponentController.class);
	private static final Logger LOGGER = Logger.getLogger(AbstractCMSComponentController.class);

	@Resource(name = "cmsComponentService")
	private CMSComponentService cmsComponentService;

	@Resource(name = "cmsPageContextService")
	private CMSPageContextService cmsPageContextService;

	@Resource(name = "defaultProductService")
	private DefaultProductService defaultProductService;

	// Setter required for UnitTests
	public void setCmsComponentService(final CMSComponentService cmsComponentService)
	{
		this.cmsComponentService = cmsComponentService;
	}

	@RequestMapping
	public String handleGet(final HttpServletRequest request, final HttpServletResponse response, final Model model,
			@CookieValue(value = "lastBrowsedProducts", defaultValue = "") final String lastBrowsedProducts)
	{

		T component = (T) request.getAttribute(COMPONENT);
		if (component != null)
		{
			// Add the component to the model
			model.addAttribute(COMPONENT, component);

			// Allow subclasses to handle the component
			return handleComponent(request, response, model, component, lastBrowsedProducts);
		}

		String componentUid = (String) request.getAttribute(COMPONENT_UID);
		if (StringUtils.isEmpty(componentUid))
		{
			componentUid = request.getParameter(COMPONENT_UID);
		}

		checkIfComponentNotEmpty(componentUid);

		try
		{
			component = (T) getCmsComponentService().getAbstractCMSComponent(componentUid);
			if (component == null)
			{
				LOGGER.error("Component with UID [" + componentUid.replaceAll(SANITIZE_REGEX, "") + "] is null");
				throw new AbstractPageController.HttpNotFoundException();
			}
			else
			{
				// Add the component to the model
				model.addAttribute(COMPONENT, component);

				// Allow subclasses to handle the component
				return handleComponent(request, response, model, component, lastBrowsedProducts);
			}
		}
		catch (final CMSItemNotFoundException e)
		{
			LOGGER.error("Could not find component with UID [" + componentUid.replaceAll(SANITIZE_REGEX, "") + "]");
			throw new AbstractPageController.HttpNotFoundException(e);
		}
	}

	protected void fillModel(final HttpServletRequest request, final Model model,
			final LastBrowsedProductCarouselComponentModel component, final String lastBrowsedProducts)
	{
		final List<ProductData> products = new ArrayList<>();

		final String[] result = lastBrowsedProducts.split(",");
		ProductModel productModel;

		System.out.println("Praveen result size-------" + result.length);

		for (final String str : result)
		{
			if (!str.trim().equals(""))
			{
				productModel = defaultProductService.getProductForCode(str);
				products.add(productFacade.getProductForOptions(productModel, PRODUCT_OPTIONS));
			}

		}

		Collections.reverse(products);
		model.addAttribute("title", component.getTitle());
		model.addAttribute("productData", products);
	}

	protected String handleComponent(final HttpServletRequest request, final HttpServletResponse response, final Model model,
			final T component, final String lastBrowsedProducts)
	{
		fillModel(request, model, component, lastBrowsedProducts);
		return getView(component);
	}

	protected void checkIfComponentNotEmpty(final String componentUid)
	{
		if (StringUtils.isEmpty(componentUid))
		{
			LOGGER.error("No component specified in [" + COMPONENT_UID + "]");
			throw new HttpNotFoundException();
		}
	}

	protected CMSComponentService getCmsComponentService()
	{
		return cmsComponentService;
	}

	protected CMSPageContextService getCmsPageContextService()
	{
		return cmsPageContextService;
	}

	protected String getView(final T component)
	{
		// build a jsp response based on the component type
		return ControllerConstants.Views.Cms.ComponentPrefix + StringUtils.lowerCase(getTypeCode(component));
	}

	protected String getTypeCode(final T component)
	{
		return component.getItemtype();
	}
}

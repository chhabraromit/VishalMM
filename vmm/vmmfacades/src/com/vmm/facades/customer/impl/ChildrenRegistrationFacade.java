/**
 *
 */
package com.vmm.facades.customer.impl;

import static de.hybris.platform.servicelayer.util.ServicesUtil.validateParameterNotNullStandardMessage;

import de.hybris.platform.commerceservices.customer.DuplicateUidException;
import de.hybris.platform.servicelayer.model.ModelService;
import de.hybris.platform.yacceleratorfacades.children.data.ChildrenData;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

import com.vmm.core.model.user.ChildrenModel;
import com.vmm.core.service.customer.impl.ChildrenRegistrationService;




/**
 * @author Sakshi
 *
 */
public class ChildrenRegistrationFacade implements com.vmm.facades.customer.ChildrenRegistrationFacade
{


	@Autowired
	private ModelService modelService;

	@Autowired
	private ChildrenRegistrationService childrenAccountService;


	@Override
	public boolean saveRegistration(final ChildrenData data) throws DuplicateUidException
	{
		validateParameterNotNullStandardMessage("ChildrenData", data);
		Assert.hasText(data.getFirstName(), "The field [FirstName cannot be empty");
		Assert.hasText(data.getLastName(), "The field [LastName] cannot be empty");
		Assert.hasText(data.getGender(), "The field [Gender] cannot be empty");
		final ChildrenModel newChildRegistration = modelService.create(ChildrenModel.class);

		newChildRegistration.setFirstname(data.getFirstName());

		newChildRegistration.setLastname(data.getLastName());

		newChildRegistration.setDateOfBirth(data.getDateOfBirth());

		newChildRegistration.setGender(data.getGender());

		return childrenAccountService.doSaveCustomerRegistration(newChildRegistration);
	}


}

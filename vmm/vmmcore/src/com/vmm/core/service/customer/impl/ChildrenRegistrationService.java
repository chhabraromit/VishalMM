/**
 *
 */
package com.vmm.core.service.customer.impl;

import de.hybris.platform.commerceservices.customer.DuplicateUidException;
import de.hybris.platform.core.model.user.CustomerModel;
import de.hybris.platform.servicelayer.exceptions.ModelSavingException;
import de.hybris.platform.servicelayer.model.ModelService;
import de.hybris.platform.servicelayer.user.UserService;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

import com.vmm.core.model.user.ChildrenModel;


/**
 * @author Sakshi
 *
 */
public class ChildrenRegistrationService implements com.vmm.core.service.customer.ChildrenRegistrationService
{


	@Autowired
	private ModelService modelService;
	@Autowired
	private UserService userService;

	private static final Logger LOG = Logger.getLogger(ChildrenRegistrationService.class);

	@Override
	public boolean doSaveCustomerRegistration(final ChildrenModel model) throws DuplicateUidException
	{
		final CustomerModel customerModel = (CustomerModel) userService.getCurrentUser();
		Assert.hasText(model.getFirstname(), "The field [FirstName] cannot be empty");
		Assert.hasText(model.getLastname(), "The field [LastName] cannot be empty");
		Assert.hasText(model.getGender(), "The field [Gender] cannot be empty");
		try
		{
			final List<ChildrenModel> customerChildren = new ArrayList<ChildrenModel>();
			customerChildren.addAll(customerModel.getManyChildren());
			if (customerModel.getAddresses().contains(model))
			{
				modelService.save(model);
			}
			else
			{
				model.setOwner(customerModel);
				modelService.save(model);
				modelService.refresh(model);
			}
			customerChildren.add(model);
			model.setOwner(customerModel);
			modelService.save(model);
			modelService.refresh(model);

			return true;

		}
		catch (final ModelSavingException modelSavingException)
		{
			LOG.debug("model saving exception", modelSavingException);
			throw modelSavingException;
		}
	}
}

/**
 *
 */
package com.vmm.core.service.customer;

import de.hybris.platform.commerceservices.customer.DuplicateUidException;

import com.vmm.core.model.user.ChildrenModel;


/**
 * @author Sakshi
 *
 */
public interface ChildrenRegistrationService
{
	/**
	 *
	 * @param model
	 * @return
	 * @throws DuplicateUidException
	 */
	boolean doSaveCustomerRegistration(ChildrenModel model) throws DuplicateUidException;
}

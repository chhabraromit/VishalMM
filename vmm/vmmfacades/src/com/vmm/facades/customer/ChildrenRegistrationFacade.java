/**
 *
 */
package com.vmm.facades.customer;

import de.hybris.platform.commerceservices.customer.DuplicateUidException;
import de.hybris.platform.yacceleratorfacades.children.data.ChildrenData;

/**
 * @author Sakshi
 *
 */
public interface ChildrenRegistrationFacade
{
	public boolean saveRegistration(final ChildrenData data) throws DuplicateUidException;
}

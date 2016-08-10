/*
 * [y] hybris Platform
 *
 * Copyright (c) 2000-2016 SAP SE or an SAP affiliate company.
 * All rights reserved.
 *
 * This software is the confidential and proprietary information of SAP
 * ("Confidential Information"). You shall not disclose such Confidential
 * Information and shall use it only in accordance with the terms of the
 * license agreement you entered into with SAP.
 */
package com.vmm.fulfilmentprocess.jalo;

import de.hybris.platform.jalo.JaloSession;
import de.hybris.platform.jalo.extension.ExtensionManager;
import com.vmm.fulfilmentprocess.constants.VmmFulfilmentProcessConstants;

@SuppressWarnings("PMD")
public class VmmFulfilmentProcessManager extends GeneratedVmmFulfilmentProcessManager
{
	public static final VmmFulfilmentProcessManager getInstance()
	{
		ExtensionManager em = JaloSession.getCurrentSession().getExtensionManager();
		return (VmmFulfilmentProcessManager) em.getExtension(VmmFulfilmentProcessConstants.EXTENSIONNAME);
	}
	
}

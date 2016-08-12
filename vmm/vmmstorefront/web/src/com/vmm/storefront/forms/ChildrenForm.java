/**
 *
 */
package com.vmm.storefront.forms;

import java.util.Date;


/**
 * @author Sakshi
 *
 */
public class ChildrenForm
{
	private String id;

	/**
	 * @return the id
	 */
	public String getId()
	{
		return id;
	}

	/**
	 * @param id
	 *           the id to set
	 */
	public void setId(final String id)
	{
		this.id = id;
	}

	private java.lang.String firstName;
	private java.lang.String lastName;
	private Date dob;
	private java.lang.String gender;

	/**
	 * @return the firstName
	 */
	public String getFirstName()
	{
		return firstName;
	}

	/**
	 * @param firstName
	 *           the firstName to set
	 */
	public void setFirstName(final java.lang.String firstName)
	{
		this.firstName = firstName;
	}

	/**
	 * @return the lastName
	 */
	public String getLastName()
	{
		return lastName;
	}

	/**
	 * @param lastName
	 *           the lastName to set
	 */
	public void setLastName(final java.lang.String lastName)
	{
		this.lastName = lastName;
	}

	/**
	 * @return the dob
	 */
	public Date getDob()
	{
		return dob;
	}

	/**
	 * @param dob
	 *           the dob to set
	 */
	public void setDob(final Date dob)
	{
		this.dob = dob;
	}

	/**
	 * @return the gender
	 */
	public String getGender()
	{
		return gender;
	}

	/**
	 * @param gender
	 *           the gender to set
	 */
	public void setGender(final java.lang.String gender)
	{
		this.gender = gender;
	}
}

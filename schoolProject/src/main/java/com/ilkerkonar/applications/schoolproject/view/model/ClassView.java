/**
 *
 */

package com.ilkerkonar.applications.schoolproject.view.model;

import com.ilkerkonar.applications.schoolproject.orm.model.SchoolClass;

/**
 * @author ilker KONAR, senior software developer
 *
 */
public class ClassView extends SchoolClass {

	/**
	 *
	 */
	private static final long	serialVersionUID	= -2305106890733093402L;

	private Integer				total;

	private Integer				femaleTotal;

	private Integer				maleTotal;

	/**
	 * @return The getter method of the 'total' instance variable
	 */
	public Integer getTotal() {
		return total;
	}

	/**
	 * @param The setter method of the 'total' instance variable
	 */
	public void setTotal( final Integer total ) {
		this.total = total;
	}

	/**
	 * @return The getter method of the 'femaleTotal' instance variable
	 */
	public Integer getFemaleTotal() {
		return femaleTotal;
	}

	/**
	 * @param The setter method of the 'femaleTotal' instance variable
	 */
	public void setFemaleTotal( final Integer femaleTotal ) {
		this.femaleTotal = femaleTotal;
	}

	/**
	 * @return The getter method of the 'maleTotal' instance variable
	 */
	public Integer getMaleTotal() {
		return maleTotal;
	}

	/**
	 * @param The setter method of the 'maleTotal' instance variable
	 */
	public void setMaleTotal( final Integer maleTotal ) {
		this.maleTotal = maleTotal;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ClassView [total=" + total + ", femaleTotal=" + femaleTotal + ", maleTotal=" + maleTotal + ", no="
			+ getNo() + ", name=" + getName() + "]";
	}
}

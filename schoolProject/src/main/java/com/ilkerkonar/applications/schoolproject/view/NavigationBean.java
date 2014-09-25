/**
 *
 */

package com.ilkerkonar.applications.schoolproject.view;

import java.io.Serializable;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@ManagedBean( name = "navigationBean" )
@ViewScoped
public class NavigationBean implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 812655092808891044L;

	private String				pageName			= "class.xhtml";

	public void doNav() {
		final String str = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap()
			.get( "pageId" );
		this.pageName = str + ".xhtml";
	}

	/**
	 * @return The getter method of the 'pageName' instance variable
	 */
	public String getPageName() {
		return pageName;
	}

	/**
	 * @param The setter method of the 'pageName' instance variable
	 */
	public void setPageName( final String pageName ) {
		this.pageName = pageName;
	}
}

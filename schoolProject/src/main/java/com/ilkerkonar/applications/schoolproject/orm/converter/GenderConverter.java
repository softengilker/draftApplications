/**
 *
 */

package com.ilkerkonar.applications.schoolproject.orm.converter;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@FacesConverter( "genderConverter" )
public class GenderConverter implements Converter {

	/* (non-Javadoc)
	 * @see javax.faces.convert.Converter#getAsObject(javax.faces.context.FacesContext, javax.faces.component.UIComponent, java.lang.String)
	 */
	@Override
	public Object getAsObject( final FacesContext facesContext, final UIComponent uiComponent, final String stringParam ) {

		if ( stringParam.equals( "Erkek" ) ) {
			return "male";
		} else if ( stringParam.equals( "Kız" ) ) {
			return "female";
		}

		return null;
	}

	/* (non-Javadoc)
	 * @see javax.faces.convert.Converter#getAsString(javax.faces.context.FacesContext, javax.faces.component.UIComponent, java.lang.Object)
	 */
	@Override
	public String getAsString( final FacesContext facesContext, final UIComponent uiComponent, final Object objectParam ) {

		if ( objectParam.toString().equals( "male" ) ) {
			return "Erkek";
		} else if ( objectParam.toString().equals( "female" ) ) {
			return "Kız";
		}

		return null;
	}
}

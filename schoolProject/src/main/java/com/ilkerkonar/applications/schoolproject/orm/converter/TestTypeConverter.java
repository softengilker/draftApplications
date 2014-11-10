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
@FacesConverter( "testTypeConverter" )
public class TestTypeConverter implements Converter {

	/* (non-Javadoc)
	 * @see javax.faces.convert.Converter#getAsObject(javax.faces.context.FacesContext, javax.faces.component.UIComponent, java.lang.String)
	 */
	@Override
	public Object getAsObject( final FacesContext facesContext, final UIComponent uiComponent, final String stringParam ) {

		if ( stringParam.equals( "Yazılı" ) ) {
			return "1";
		}

		return null;
	}

	/* (non-Javadoc)
	 * @see javax.faces.convert.Converter#getAsString(javax.faces.context.FacesContext, javax.faces.component.UIComponent, java.lang.Object)
	 */
	@Override
	public String getAsString( final FacesContext facesContext, final UIComponent uiComponent, final Object objectParam ) {

		if ( objectParam.toString().equals( "1" ) ) {
			return "Yazılı";
		}

		return null;
	}
}

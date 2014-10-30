/**
 *
 */

package com.ilkerkonar.applications.schoolproject.view;

import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import com.ilkerkonar.applications.schoolproject.orm.type.ProcessType;

/**
 * @author ilker KONAR, senior software developer
 *
 */
public abstract class AbstractBean {

	private ResourceBundle			bundle;

	private Map< String, String >	messageMap;

	private String					modelName;

	protected ResourceBundle getBundle() {

		if ( bundle == null ) {
			final FacesContext context = FacesContext.getCurrentInstance();
			bundle = context.getApplication().getResourceBundle( context, "msg" );
		}

		return bundle;
	}

	protected void giveInfoMessageAfterAProcess( final ProcessType processType ) {

		final String header = getBundle().getString( "success.process.message.header" );
		String content = "";

		if ( processType == ProcessType.ADD ) {
			content = messageMap.get( "info.add.message" );
		} else if ( processType == ProcessType.UPDATE ) {
			content = messageMap.get( "info.update.message" );
		} else if ( processType == ProcessType.DELETE ) {
			content = messageMap.get( "info.delete.message" );
		}

		FacesContext.getCurrentInstance().addMessage( null,
			new FacesMessage( FacesMessage.SEVERITY_INFO, header, content ) );
	}

	protected void setInitialMessages() {

		messageMap = new HashMap< String, String >();

		final Locale locale = FacesContext.getCurrentInstance().getViewRoot().getLocale();

		// Info Add Message
		String messageVal = getBundle().getString( "info.add.message" );
		MessageFormat messageFormat = new MessageFormat( messageVal, locale );
		messageMap.put( "info.add.message", messageFormat.format( new String[] { modelName } ) );

		// Info Update Message
		messageVal = getBundle().getString( "info.update.message" );
		messageFormat = new MessageFormat( messageVal, locale );
		messageMap.put( "info.update.message", messageFormat.format( new String[] { modelName } ) );

		// Info Delete Message
		messageVal = getBundle().getString( "info.delete.message" );
		messageFormat = new MessageFormat( messageVal, locale );
		messageMap.put( "info.delete.message", messageFormat.format( new String[] { modelName } ) );

		// Datatable Empty Message
		messageVal = getBundle().getString( "datatable.empty.message" );
		messageFormat = new MessageFormat( messageVal, locale );
		messageMap.put( "datatable.empty.message", messageFormat.format( new String[] { modelName } ) );

		// Add Button Value
		messageVal = getBundle().getString( "add.button.value" );
		messageFormat = new MessageFormat( messageVal, locale );
		messageMap.put( "add.button.value", messageFormat.format( new String[] { modelName } ) );

		// Add Header
		messageVal = getBundle().getString( "add.header" );
		messageFormat = new MessageFormat( messageVal, locale );
		messageMap.put( "add.header", messageFormat.format( new String[] { modelName } ) );

		// Update Header
		messageVal = getBundle().getString( "update.header" );
		messageFormat = new MessageFormat( messageVal, locale );
		messageMap.put( "update.header", messageFormat.format( new String[] { modelName } ) );

		// Update Button Value
		messageVal = getBundle().getString( "update.button.value" );
		messageFormat = new MessageFormat( messageVal, locale );
		messageMap.put( "update.button.value", messageFormat.format( new String[] { modelName } ) );
	}

	/**
	 * @param The setter method of the 'modelName' instance variable
	 */
	protected void setModelName( final String modelName ) {
		this.modelName = modelName;
	}

	/**
	 * @return The getter method of the 'messageMap' instance variable
	 */
	public Map< String, String > getMessageMap() {
		return messageMap;
	}
}

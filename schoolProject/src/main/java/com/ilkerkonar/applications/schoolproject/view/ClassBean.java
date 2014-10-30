/**
 *
 */

package com.ilkerkonar.applications.schoolproject.view;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;

import com.ilkerkonar.applications.schoolproject.orm.model.SchoolClass;
import com.ilkerkonar.applications.schoolproject.orm.service.ClassService;
import com.ilkerkonar.applications.schoolproject.orm.type.ProcessType;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@ManagedBean( name = "classBean" )
@ViewScoped
public class ClassBean extends AbstractBean implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= -5941571640869756279L;

	private List< SchoolClass >	classes;

	private String				className;

	private SchoolClass			paramClass;

	@ManagedProperty( "#{classService}" )
	private ClassService		service;

	@PostConstruct
	public void init() {
		classes = service.getAllClasses();
		paramClass = new SchoolClass();
		setModelName( getBundle().getString( "class" ) );
		setInitialMessages();
	}

	/**
	 * @param The setter method of the 'service' instance variable
	 */
	public void setService( final ClassService service ) {
		this.service = service;
	}

	/**
	 * Add a new class
	 */
	public void addNewClass() {

		final SchoolClass newClass = new SchoolClass();
		newClass.setName( getClassName() );

		service.addNewClass( newClass );
		reload();

		setClassName( "" );

		giveInfoMessageAfterAProcess( ProcessType.ADD );
	}

	public void removeClass() {
		service.removeClass( getParamClass() );
		reload();

		giveInfoMessageAfterAProcess( ProcessType.DELETE );
	}

	private void reload() {
		// Reload classes.
		classes = service.getAllClasses();
	}

	/**
	 * @return The getter method of the 'classes' instance variable
	 */
	public List< SchoolClass > getClasses() {
		return classes;
	}

	/**
	 * @return The getter method of the 'className' instance variable
	 */
	public String getClassName() {
		return className;
	}

	/**
	 * @param The setter method of the 'className' instance variable
	 */
	public void setClassName( final String className ) {
		this.className = className;
	}

	/**
	 * @return The getter method of the 'paramClass' instance variable
	 */
	public SchoolClass getParamClass() {
		return paramClass;
	}

	/**
	 * @param The setter method of the 'paramClass' instance variable
	 */
	public void setParamClass( final SchoolClass paramClass ) {
		this.paramClass = paramClass;
	}

}

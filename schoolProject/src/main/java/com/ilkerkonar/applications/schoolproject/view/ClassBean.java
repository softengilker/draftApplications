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
import javax.faces.event.ActionEvent;

import com.ilkerkonar.applications.schoolproject.orm.model.SchoolClass;
import com.ilkerkonar.applications.schoolproject.orm.service.ClassService;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@ManagedBean( name = "classBean" )
@ViewScoped
public class ClassBean implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= -5941571640869756279L;

	private List< SchoolClass >	classes;

	private String				className;

	@ManagedProperty( "#{classService}" )
	private ClassService		service;

	@PostConstruct
	public void init() {
		classes = service.getAllClasses();
	}

	/**
	 * @param The setter method of the 'service' instance variable
	 */
	public void setService( final ClassService service ) {
		this.service = service;
	}

	/**
	 * Add a new class
	 *
	 * @param event The primefaces action event
	 */
	public void addNewClass( final ActionEvent event ) {

		final SchoolClass newClass = new SchoolClass();
		newClass.setNo( service.getNewClassSequenceValue() );
		newClass.setName( getClassName() );

		service.addNewClass( newClass );

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
}

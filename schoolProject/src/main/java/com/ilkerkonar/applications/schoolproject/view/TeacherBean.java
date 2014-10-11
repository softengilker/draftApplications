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

import com.ilkerkonar.applications.schoolproject.orm.model.Teacher;
import com.ilkerkonar.applications.schoolproject.orm.service.TeacherService;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@ManagedBean( name = "teacherBean" )
@ViewScoped
public class TeacherBean implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= -5941571640869756279L;

	private List< Teacher >		teachers;

	private String				teacherName;

	private Teacher				paramTeacher;

	@ManagedProperty( "#{teacherService}" )
	private TeacherService		service;

	@PostConstruct
	public void init() {
		teachers = service.getAllTeachers();
	}

	/**
	 * @param The setter method of the 'service' instance variable
	 */
	public void setService( final TeacherService service ) {
		this.service = service;
	}

	/**
	 * Add a new class
	 *
	 * @param event The primefaces action event
	 */
	public void addNewTeacher( final ActionEvent event ) {

		final Teacher newTeacher = new Teacher();
		newTeacher.setName( getTeacherName() );

		service.addNewTeacher( newTeacher );
		reload();
	}

	public void removeTeacher( final ActionEvent event ) {
		service.removeTeacher( getParamTeacher() );
		reload();
	}

	private void reload() {
		// Reload classes.
		teachers = service.getAllTeachers();
	}

	/**
	 * @return The getter method of the 'teacherName' instance variable
	 */
	public String getTeacherName() {
		return teacherName;
	}

	/**
	 * @param The setter method of the 'teacherName' instance variable
	 */
	public void setTeacherName( final String teacherName ) {
		this.teacherName = teacherName;
	}

	/**
	 * @return The getter method of the 'paramTeacher' instance variable
	 */
	public Teacher getParamTeacher() {
		return paramTeacher;
	}

	/**
	 * @param The setter method of the 'paramTeacher' instance variable
	 */
	public void setParamTeacher( final Teacher paramTeacher ) {
		this.paramTeacher = paramTeacher;
	}

	/**
	 * @return The getter method of the 'teachers' instance variable
	 */
	public List< Teacher > getTeachers() {
		return teachers;
	}
}

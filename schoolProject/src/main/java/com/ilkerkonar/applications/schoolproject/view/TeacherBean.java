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
import com.ilkerkonar.applications.schoolproject.orm.type.ProcessType;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@ManagedBean( name = "teacherBean" )
@ViewScoped
public class TeacherBean extends AbstractBean implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= -5941571640869756279L;

	private List< Teacher >		teachers;

	private Teacher				paramTeacher;

	@ManagedProperty( "#{teacherService}" )
	private TeacherService		service;

	@PostConstruct
	public void init() {
		teachers = service.getAllTeachers();
		paramTeacher = new Teacher();
		setModelName( getBundle().getString( "teacher" ) );
		setInitialMessages();
	}

	/**
	 * @param The setter method of the 'service' instance variable
	 */
	public void setService( final TeacherService service ) {
		this.service = service;
	}

	/**
	 * Add a new teacher
	 */
	public void addNewTeacher( final ActionEvent event ) {

		final Teacher newTeacher = new Teacher();
		newTeacher.setName( getParamTeacher().getName() );

		service.addNewTeacher( newTeacher );
		reload();

		giveInfoMessageAfterAProcess( ProcessType.ADD );
	}

	/**
	 * Update teacher
	 */
	public void updateTeacher() {
		service.updateTeacher( getParamTeacher() );
		reload();

		giveInfoMessageAfterAProcess( ProcessType.UPDATE );
	}

	public void removeTeacher() {
		service.removeTeacher( getParamTeacher() );
		reload();

		giveInfoMessageAfterAProcess( ProcessType.DELETE );
	}

	private void reload() {
		// Reload classes.
		teachers = service.getAllTeachers();
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

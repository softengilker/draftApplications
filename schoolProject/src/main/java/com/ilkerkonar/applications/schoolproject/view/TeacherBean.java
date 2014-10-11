/**
 *
 */

package com.ilkerkonar.applications.schoolproject.view;

import java.io.Serializable;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

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

	private Teacher				paramTeacher;

	@ManagedProperty( "#{teacherService}" )
	private TeacherService		service;

	@PostConstruct
	public void init() {
		teachers = service.getAllTeachers();
		paramTeacher = new Teacher();
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
	public void addNewTeacher() {

		final Teacher newTeacher = new Teacher();
		newTeacher.setName( getParamTeacher().getName() );

		service.addNewTeacher( newTeacher );
		reload();

		FacesContext.getCurrentInstance().addMessage(
			null,
			new FacesMessage( FacesMessage.SEVERITY_INFO, "Başarılı İşlem",
				"Yeni öğretmen sisteme başarılı bir şekilde eklendi." ) );
	}

	/**
	 * Update teacher
	 */
	public void updateTeacher() {
		service.updateTeacher( getParamTeacher() );
		reload();

		FacesContext.getCurrentInstance().addMessage(
			null,
			new FacesMessage( FacesMessage.SEVERITY_INFO, "Başarılı İşlem",
				"Öğretmen sistemde başarılı bir şekilde güncellendi." ) );
	}

	public void removeTeacher() {
		service.removeTeacher( getParamTeacher() );
		reload();

		FacesContext.getCurrentInstance().addMessage(
			null,
			new FacesMessage( FacesMessage.SEVERITY_INFO, "Başarılı İşlem",
				"Öğretmen sistemden başarılı bir şekilde silindi." ) );
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

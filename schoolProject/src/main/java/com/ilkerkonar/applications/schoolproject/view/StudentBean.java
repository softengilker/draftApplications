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
import javax.faces.event.ActionEvent;

import com.ilkerkonar.applications.schoolproject.orm.model.SchoolClass;
import com.ilkerkonar.applications.schoolproject.orm.model.Student;
import com.ilkerkonar.applications.schoolproject.orm.service.ClassService;
import com.ilkerkonar.applications.schoolproject.orm.service.StudentService;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@ManagedBean( name = "studentBean" )
@ViewScoped
public class StudentBean implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 5828790185720885709L;

	private List< Student >		students;

	private Student				paramStudent;

	private Long				paramClassNo;

	@ManagedProperty( "#{studentService}" )
	private StudentService		service;

	@ManagedProperty( "#{classService}" )
	private ClassService		classService;

	private List< SchoolClass >	classes;

	@PostConstruct
	public void init() {
		students = service.getAllStudents();
		paramStudent = new Student();
		classes = classService.getAllClasses();
	}

	/**
	 * @param The setter method of the 'service' instance variable
	 */
	public void setService( final StudentService service ) {
		this.service = service;
	}

	/**
	 * @param The setter method of the 'classService' instance variable
	 */
	public void setClassService( final ClassService classService ) {
		this.classService = classService;
	}

	/**
	 * Add a new student
	 *
	 * @param event The primefaces action event
	 */
	public void addNewStudent( final ActionEvent event ) {

		final Student newStudent = new Student();
		newStudent.setName( paramStudent.getName() );
		newStudent.setGender( paramStudent.getGender() );
		newStudent.setSchoolNumber( paramStudent.getSchoolNumber() );

		final SchoolClass getClass = classService.getClass( getParamClassNo() );

		newStudent.setSchoolClass( getClass );

		service.addNewStudent( newStudent );
		reload();

		FacesContext.getCurrentInstance().addMessage(
			null,
			new FacesMessage( FacesMessage.SEVERITY_INFO, "Başarılı İşlem",
				"Yeni öğrenci sisteme başarılı bir şekilde eklendi." ) );
	}

	public void removeStudent() {
		service.removeStudent( getParamStudent() );
		reload();

		FacesContext.getCurrentInstance().addMessage(
			null,
			new FacesMessage( FacesMessage.SEVERITY_INFO, "Başarılı İşlem",
				"Öğrenci sistemden başarılı bir şekilde silindi." ) );
	}

	public void updateStudent() {
		service.updateStudent( getParamStudent() );
		reload();

		FacesContext.getCurrentInstance().addMessage(
			null,
			new FacesMessage( FacesMessage.SEVERITY_INFO, "Başarılı İşlem",
				"Öğrenci sistemde başarılı bir şekilde güncellendi." ) );
	}

	private void reload() {
		// Reload students.
		students = service.getAllStudents();
	}

	/**
	 * @return The getter method of the 'students' instance variable
	 */
	public List< Student > getStudents() {
		return students;
	}

	/**
	 * @return The getter method of the 'paramStudent' instance variable
	 */
	public Student getParamStudent() {
		return paramStudent;
	}

	/**
	 * @param The setter method of the 'paramStudent' instance variable
	 */
	public void setParamStudent( final Student paramStudent ) {
		this.paramStudent = paramStudent;
	}

	/**
	 * @return The getter method of the 'classes' instance variable
	 */
	public List< SchoolClass > getClasses() {
		return classes;
	}

	/**
	 * @return The getter method of the 'paramClassNo' instance variable
	 */
	public Long getParamClassNo() {
		return paramClassNo;
	}

	/**
	 * @param The setter method of the 'paramClassNo' instance variable
	 */
	public void setParamClassNo( final Long paramClassNo ) {
		this.paramClassNo = paramClassNo;
	}
}

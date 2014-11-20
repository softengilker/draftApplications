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
import com.ilkerkonar.applications.schoolproject.orm.model.Student;
import com.ilkerkonar.applications.schoolproject.orm.service.ClassService;
import com.ilkerkonar.applications.schoolproject.orm.service.StudentService;
import com.ilkerkonar.applications.schoolproject.orm.type.ProcessType;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@ManagedBean( name = "studentBean" )
@ViewScoped
public class StudentBean extends AbstractBean implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 5828790185720885709L;

	private List< Student >		students;

	private Student				paramStudent;

	private Student				newStudent;

	private Long				paramClassNo;

	private Long				paramClassNoUpdate;

	@ManagedProperty( "#{studentService}" )
	private StudentService		service;

	@ManagedProperty( "#{classService}" )
	private ClassService		classService;

	private List< SchoolClass >	classes;

	@PostConstruct
	public void init() {
		paramStudent = new Student();
		newStudent = new Student();
		reload();
		setModelName( getBundle().getString( "student" ) );
		setInitialMessages();
	}

	public void refreshPage( final ActionEvent event ) {
		reload();
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

		final SchoolClass getClass = classService.getClass( getParamClassNo() );
		newStudent.setSchoolClass( getClass );

		service.addNewStudent( newStudent );
		reload();

		giveInfoMessageAfterAProcess( ProcessType.ADD );
	}

	public void removeStudent() {
		service.removeStudent( getParamStudent() );
		reload();

		giveInfoMessageAfterAProcess( ProcessType.DELETE );
	}

	public void updateStudent() {

		final Student updateStudent = getParamStudent();
		final SchoolClass getClass = classService.getClass( getParamClassNoUpdate() );

		updateStudent.setSchoolClass( getClass );

		service.updateStudent( updateStudent );
		reload();

		giveInfoMessageAfterAProcess( ProcessType.UPDATE );
	}

	public void beforeAdd( final ActionEvent event ) {
		paramStudent = new Student();
	}

	private void reload() {
		classes = classService.getAllClasses();
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

	/**
	 * @return The getter method of the 'newStudent' instance variable
	 */
	public Student getNewStudent() {
		return newStudent;
	}

	/**
	 * @param The setter method of the 'newStudent' instance variable
	 */
	public void setNewStudent( final Student newStudent ) {
		this.newStudent = newStudent;
	}

	/**
	 * @return The getter method of the 'paramClassNoUpdate' instance variable
	 */
	public Long getParamClassNoUpdate() {
		return paramClassNoUpdate;
	}

	/**
	 * @param The setter method of the 'paramClassNoUpdate' instance variable
	 */
	public void setParamClassNoUpdate( final Long paramClassNoUpdate ) {
		this.paramClassNoUpdate = paramClassNoUpdate;
	}
}

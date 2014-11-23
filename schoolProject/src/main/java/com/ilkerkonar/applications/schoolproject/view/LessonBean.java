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

import org.primefaces.context.RequestContext;

import com.ilkerkonar.applications.schoolproject.orm.model.Lesson;
import com.ilkerkonar.applications.schoolproject.orm.model.SchoolClass;
import com.ilkerkonar.applications.schoolproject.orm.model.Teacher;
import com.ilkerkonar.applications.schoolproject.orm.service.ClassService;
import com.ilkerkonar.applications.schoolproject.orm.service.LessonService;
import com.ilkerkonar.applications.schoolproject.orm.service.TeacherService;
import com.ilkerkonar.applications.schoolproject.orm.type.ProcessType;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@ManagedBean( name = "lessonBean" )
@ViewScoped
public class LessonBean extends AbstractBean implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 5828790185720885709L;

	private List< Lesson >		lessons;

	private Lesson				paramLesson;

	private Lesson				newLesson;

	private Long				paramClassNo;

	private Long				paramTeacherNo;

	@ManagedProperty( "#{lessonService}" )
	private LessonService		service;

	@ManagedProperty( "#{classService}" )
	private ClassService		classService;

	@ManagedProperty( "#{teacherService}" )
	private TeacherService		teacherService;

	private List< SchoolClass >	classes;

	private List< Teacher >		teachers;

	@PostConstruct
	public void init() {
		paramLesson = new Lesson();
		newLesson = new Lesson();
		reload();

		setModelName( getBundle().getString( "lesson" ) );
		setInitialMessages();
	}

	public void refreshPage( final ActionEvent event ) {
		reload();

	}

	/**
	 * @param The setter method of the 'service' instance variable
	 */
	public void setService( final LessonService service ) {
		this.service = service;
	}

	/**
	 * @param The setter method of the 'classService' instance variable
	 */
	public void setClassService( final ClassService classService ) {
		this.classService = classService;
	}

	/**
	 * Add a new Lesson
	 *
	 * @param event The primefaces action event
	 */
	public void addNewLesson( final ActionEvent event ) {

		final SchoolClass getClass = classService.getClass( getParamClassNo() );
		final Teacher getTeacher = teacherService.getTeacher( getParamTeacherNo() );
		newLesson.setSchoolClass( getClass );
		newLesson.setTeacher( getTeacher );

		service.addNewLesson( newLesson );
		reload();

		giveInfoMessageAfterAProcess( ProcessType.ADD );
	}

	public void removeLesson() {
		service.removeLesson( getParamLesson() );
		reload();

		giveInfoMessageAfterAProcess( ProcessType.DELETE );
	}

	public void beforeAdd( final ActionEvent event ) {
		paramLesson = new Lesson();
	}

	private void reload() {
		classes = classService.getAllClasses();
		lessons = service.getAllLessons();
		teachers = teacherService.getAllTeachers();

		RequestContext.getCurrentInstance().update( "lessonDT" );

	}

	/**
	 * @return The getter method of the 'Lessons' instance variable
	 */
	public List< Lesson > getLessons() {
		return lessons;
	}

	/**
	 * @return The getter method of the 'paramLesson' instance variable
	 */
	public Lesson getParamLesson() {
		return paramLesson;
	}

	/**
	 * @param The setter method of the 'paramLesson' instance variable
	 */
	public void setParamLesson( final Lesson paramLesson ) {
		this.paramLesson = paramLesson;
	}

	/**
	 * @return The getter method of the 'newLesson' instance variable
	 */
	public Lesson getNewLesson() {
		return newLesson;
	}

	/**
	 * @param The setter method of the 'newLesson' instance variable
	 */
	public void setNewLesson( final Lesson newLesson ) {
		this.newLesson = newLesson;
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
	 * @return The getter method of the 'paramTeacherNo' instance variable
	 */
	public Long getParamTeacherNo() {
		return paramTeacherNo;
	}

	/**
	 * @param The setter method of the 'paramTeacherNo' instance variable
	 */
	public void setParamTeacherNo( final Long paramTeacherNo ) {
		this.paramTeacherNo = paramTeacherNo;
	}

	/**
	 * @return The getter method of the 'teacherService' instance variable
	 */
	public TeacherService getTeacherService() {
		return teacherService;
	}

	/**
	 * @param The setter method of the 'teacherService' instance variable
	 */
	public void setTeacherService( final TeacherService teacherService ) {
		this.teacherService = teacherService;
	}

	/**
	 * @return The getter method of the 'classes' instance variable
	 */
	public List< SchoolClass > getClasses() {
		return classes;
	}

	/**
	 * @param The setter method of the 'classes' instance variable
	 */
	public void setClasses( final List< SchoolClass > classes ) {
		this.classes = classes;
	}

	/**
	 * @return The getter method of the 'teachers' instance variable
	 */
	public List< Teacher > getTeachers() {
		return teachers;
	}

	/**
	 * @param The setter method of the 'teachers' instance variable
	 */
	public void setTeachers( final List< Teacher > teachers ) {
		this.teachers = teachers;
	}

	/**
	 * @return The getter method of the 'service' instance variable
	 */
	public LessonService getService() {
		return service;
	}

	/**
	 * @return The getter method of the 'classService' instance variable
	 */
	public ClassService getClassService() {
		return classService;
	}

	/**
	 * @param The setter method of the 'lessons' instance variable
	 */
	public void setLessons( final List< Lesson > lessons ) {
		this.lessons = lessons;
	}
}

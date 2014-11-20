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

import com.ilkerkonar.applications.schoolproject.orm.model.Lesson;
import com.ilkerkonar.applications.schoolproject.orm.model.Test;
import com.ilkerkonar.applications.schoolproject.orm.service.LessonService;
import com.ilkerkonar.applications.schoolproject.orm.service.TestService;
import com.ilkerkonar.applications.schoolproject.orm.type.ProcessType;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@ManagedBean( name = "testBean" )
@ViewScoped
public class TestBean extends AbstractBean implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= -1497483709501027213L;

	private List< Test >		tests;

	private Test				paramTest;

	private Test				newTest;

	private Long				paramLessonNo;

	private List< Lesson >		lessons;

	@ManagedProperty( "#{testService}" )
	private TestService			service;

	@ManagedProperty( "#{lessonService}" )
	private LessonService		lessonService;

	@PostConstruct
	public void init() {
		reload();
		paramTest = new Test();
		newTest = new Test();
		setModelName( getBundle().getString( "test" ) );
		setInitialMessages();
	}

	public void refreshPage( final ActionEvent event ) {
		reload();
	}

	/**
	 * @param The setter method of the 'service' instance variable
	 */
	public void setService( final TestService service ) {
		this.service = service;
	}

	/**
	 * Add a new teacher
	 */
	public void addNewTest( final ActionEvent event ) {

		final Lesson paramLesson = lessonService.getLesson( getParamLessonNo() );
		newTest.setLesson( paramLesson );

		service.addNewTest( newTest );
		reload();

		giveInfoMessageAfterAProcess( ProcessType.ADD );
	}

	/**
	 * Update teacher
	 */
	public void updateTest() {
		service.updateTest( getParamTest() );
		reload();

		giveInfoMessageAfterAProcess( ProcessType.UPDATE );
	}

	public void removeTest() {
		service.removeTest( getParamTest() );
		reload();

		giveInfoMessageAfterAProcess( ProcessType.DELETE );
	}

	private void reload() {
		// Reload tests
		tests = service.getAllTests();
		lessons = lessonService.getAllLessons();
	}

	/**
	 * @return The getter method of the 'paramTest' instance variable
	 */
	public Test getParamTest() {
		return paramTest;
	}

	/**
	 * @param The setter method of the 'paramTest' instance variable
	 */
	public void setParamTest( final Test paramTest ) {
		this.paramTest = paramTest;
	}

	/**
	 * @return The getter method of the 'tests' instance variable
	 */
	public List< Test > getTests() {
		return tests;
	}

	/**
	 * @return The getter method of the 'newTest' instance variable
	 */
	public Test getNewTest() {
		return newTest;
	}

	/**
	 * @param The setter method of the 'newTest' instance variable
	 */
	public void setNewTest( final Test newTest ) {
		this.newTest = newTest;
	}

	/**
	 * @return The getter method of the 'paramLessonNo' instance variable
	 */
	public Long getParamLessonNo() {
		return paramLessonNo;
	}

	/**
	 * @param The setter method of the 'paramLessonNo' instance variable
	 */
	public void setParamLessonNo( final Long paramLessonNo ) {
		this.paramLessonNo = paramLessonNo;
	}

	/**
	 * @param The setter method of the 'lessonService' instance variable
	 */
	public void setLessonService( final LessonService lessonService ) {
		this.lessonService = lessonService;
	}

	/**
	 * @return The getter method of the 'lessons' instance variable
	 */
	public List< Lesson > getLessons() {
		return lessons;
	}

}

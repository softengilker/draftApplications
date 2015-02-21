/**
 *
 */

package com.ilkerkonar.applications.schoolproject.view;

import java.io.Serializable;
import java.util.List;
import java.util.stream.Stream;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

import org.primefaces.component.datatable.DataTable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ilkerkonar.applications.schoolproject.orm.model.Lesson;
import com.ilkerkonar.applications.schoolproject.orm.model.Test;
import com.ilkerkonar.applications.schoolproject.orm.model.TestStudent;
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

	private static final Logger	LOGGER				= LoggerFactory.getLogger( TestBean.class );

	private List< Test >		tests;

	private Test				paramTest;

	private Test				newTest;

	private Long				paramLessonNo;

	private List< Lesson >		lessons;

	private Object[]			statisticList;

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

		statisticList = new Object[ 8 ];
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

	public void calculateStatistic( final ActionEvent event ) {
		final DataTable s = ( DataTable ) ( ( org.primefaces.component.commandbutton.CommandButton ) event.getSource() )
			.getParent().getParent();
		final Test rowData = ( Test ) s.getRowData();

		final Long testNo = rowData.getNo();

		final List< TestStudent > testStudents = service.getTestStudents( testNo );

		final Double average = getNewStream( testStudents ).mapToDouble( ts -> ts.getGrade() ).average().getAsDouble();

		// Average grade.
		statisticList[ 0 ] = String.format( "%.2f", average );

		// Students count whose grade is higher than the average.
		statisticList[ 1 ] = getNewStream( testStudents ).filter( ts -> ts.getGrade() >= average ).count();

		// Students count whose grade is lower than the average.
		statisticList[ 2 ] = getNewStream( testStudents ).filter( ts -> ts.getGrade() < average ).count();

		// Average grade of the male students
		statisticList[ 3 ] = getAverageByGender( testStudents, "male" );

		// Average grade of the female students
		statisticList[ 4 ] = getAverageByGender( testStudents, "female" );

		// What is the top grade and who got this grade.
		final TestStudent topGradeStudent = getNewStream( testStudents ).max(
			( ts1, ts2 ) -> Double.compare( ts1.getGrade(), ts2.getGrade() ) ).get();
		statisticList[ 5 ] = String.format( "%s, Not : %.2f", topGradeStudent.getStudent().getName(),
			topGradeStudent.getGrade() );

		// What is the lowest grade and who got this grade.
		final TestStudent lowestGradeStudent = getNewStream( testStudents ).min(
			( ts1, ts2 ) -> Double.compare( ts1.getGrade(), ts2.getGrade() ) ).get();
		statisticList[ 6 ] = String.format( "%s, Not : %.2f", lowestGradeStudent.getStudent().getName(),
			lowestGradeStudent.getGrade() );

		LOGGER
			.info(
				"Statistics of the test are calculated. Average grade : {}, Students count whose grade is higher than the average : {}, Students count whose grade is lower than the average : {}, Average grade of the male students : {}, Average grade of the female students : {}, Top grade : {}, who got this grade : {}, Lowest grade : {}, who got this grade : {}",
				new Object[] { statisticList[ 0 ], statisticList[ 1 ], statisticList[ 2 ], statisticList[ 3 ],
					statisticList[ 4 ], topGradeStudent.getGrade(), topGradeStudent.getStudent().getName(),
					lowestGradeStudent.getGrade(), lowestGradeStudent.getStudent().getName() } );
	}

	private Stream< TestStudent > getNewStream( final List< TestStudent > testStudents ) {
		return testStudents.stream().filter( ts -> ts.getGrade() != -1f );
	}

	private String getAverageByGender( final List< TestStudent > testStudents, final String gender ) {
		return String.format(
			"%.2f",
			getNewStream( testStudents ).filter( ts -> ts.getStudent().getGender().equals( gender ) )
				.mapToDouble( ts -> ts.getGrade() ).average().getAsDouble() );
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

	public Object[] getStatisticList() {
		return statisticList;
	}
}

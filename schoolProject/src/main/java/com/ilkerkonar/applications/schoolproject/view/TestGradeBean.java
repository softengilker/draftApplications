/**
 *
 */

package com.ilkerkonar.applications.schoolproject.view;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.event.ActionEvent;

import org.primefaces.component.datatable.DataTable;
import org.primefaces.event.CellEditEvent;

import com.ilkerkonar.applications.schoolproject.orm.model.Lesson;
import com.ilkerkonar.applications.schoolproject.orm.model.SchoolClass;
import com.ilkerkonar.applications.schoolproject.orm.model.Student;
import com.ilkerkonar.applications.schoolproject.orm.model.StudentGrade;
import com.ilkerkonar.applications.schoolproject.orm.model.Test;
import com.ilkerkonar.applications.schoolproject.orm.model.TestStudent;
import com.ilkerkonar.applications.schoolproject.orm.service.StudentService;
import com.ilkerkonar.applications.schoolproject.orm.service.TestService;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@ManagedBean( name = "testGradeBean" )
@ViewScoped
public class TestGradeBean extends AbstractBean implements Serializable {

	/**
	 *
	 */
	private static final long		serialVersionUID	= -5570059829180584601L;

	private List< Test >			tests;

	private Long					paramTestNo;

	private boolean					showGradeInput;

	private List< StudentGrade >	gradeStudents;

	@ManagedProperty( "#{testService}" )
	private TestService				service;

	@ManagedProperty( "#{studentService}" )
	private StudentService			studentService;

	@PostConstruct
	public void init() {
		reload();
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

	public void setStudentService( final StudentService studentService ) {
		this.studentService = studentService;
	}

	private void reload() {
		// Reload tests
		tests = service.getAllTests();
		showGradeInput = false;
	}

	public void getTheGradeInput( final ActionEvent event ) {
		showGradeInput = true;

		final Test test = service.getTest( paramTestNo );
		final Lesson lesson = test.getLesson();
		final SchoolClass schoolClass = lesson.getSchoolClass();

		gradeStudents = new ArrayList< StudentGrade >();

		final List< Student > students = schoolClass.getStudents();

		for ( final Student student : students ) {

			final StudentGrade studentGrade = new StudentGrade();
			studentGrade.setStudentName( student.getName() );
			studentGrade.setStudentNo( student.getNo() );
			studentGrade.setTestNo( paramTestNo );

			try {
				final TestStudent testStudent = service.getTestStudent( paramTestNo, student.getNo() );
				studentGrade.setGrade( testStudent.getGrade() );
			} catch ( final javax.persistence.NoResultException nre ) {
				studentGrade.setGrade( 0.0f );
			}

			gradeStudents.add( studentGrade );
		}
	}

	public void onCellEdit( final CellEditEvent event ) {
		final Float newValue = ( Float ) event.getNewValue();
		final Float oldValue = ( Float ) event.getOldValue();

		if ( newValue.floatValue() != oldValue.floatValue() ) {
			final DataTable s = ( DataTable ) event.getSource();
			final StudentGrade rowData = ( StudentGrade ) s.getRowData();

			TestStudent testStudent = null;

			try {
				testStudent = service.getTestStudent( rowData.getTestNo(), rowData.getStudentNo() );
				testStudent.setGrade( newValue );

				service.updateTestStudent( testStudent );

			} catch ( final javax.persistence.NoResultException nre ) {
				testStudent = new TestStudent();
				testStudent.setGrade( newValue );
				testStudent.setTest( service.getTest( rowData.getTestNo() ) );
				testStudent.setStudent( studentService.getStudent( rowData.getStudentNo() ) );

				service.addNewTestStudent( testStudent );
			}
		}
	}

	/**
	 * @return The getter method of the 'tests' instance variable
	 */
	public List< Test > getTests() {
		return tests;
	}

	public List< StudentGrade > getGradeStudents() {
		return gradeStudents;
	}

	public Long getParamTestNo() {
		return paramTestNo;
	}

	public void setParamTestNo( final Long paramTestNo ) {
		this.paramTestNo = paramTestNo;
	}

	public boolean isShowGradeInput() {
		return showGradeInput;
	}
}

/**
 *
 */

package com.ilkerkonar.applications.schoolproject.view;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import javax.faces.event.AjaxBehaviorEvent;

import org.primefaces.component.column.Column;
import org.primefaces.component.datatable.DataTable;
import org.primefaces.component.selectbooleancheckbox.SelectBooleanCheckbox;
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
		loadGrades();
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
		loadGrades();
	}

	private void loadGrades() {
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
			studentGrade.setAbsent( false );

			try {
				final TestStudent testStudent = service.getTestStudent( paramTestNo, student.getNo() );
				studentGrade.setGrade( testStudent.getGrade() );

				if ( testStudent.getGrade().floatValue() == -1f ) {
					studentGrade.setAbsent( true );
				}
			} catch ( final javax.persistence.NoResultException nre ) {
				studentGrade.setGrade( 0.0f );
			}

			gradeStudents.add( studentGrade );
		}
	}

	/**
	 * When test grade cell is edited, this method is invoked.
	 * If the new cell grade value is different, the new value is updated in the database.
	 *
	 * @param event {@link CellEditEvent}
	 */
	public void onCellEdit( final CellEditEvent event ) {
		final Float newValue = ( Float ) event.getNewValue();
		final Float oldValue = ( Float ) event.getOldValue();

		// Check whether the old and new value is different.
		if ( newValue.floatValue() != oldValue.floatValue() ) {

			if ( newValue.floatValue() < 0.0f || newValue.floatValue() > 100.0f ) {
				FacesContext.getCurrentInstance().addMessage(
					null,
					new FacesMessage( FacesMessage.SEVERITY_WARN, getBundle().getString(
						"testgrade.warning.message.wrong.grade.header" ), getBundle().getString(
						"testgrade.warning.message.wrong.grade.content" ) ) );
				return;
			}

			final DataTable s = ( DataTable ) event.getSource();
			final StudentGrade rowData = ( StudentGrade ) s.getRowData();

			TestStudent testStudent = null;

			try {
				// If the database record is already exist. Update it.
				testStudent = service.getTestStudent( rowData.getTestNo(), rowData.getStudentNo() );
				testStudent.setGrade( newValue );

				service.updateTestStudent( testStudent );

				// If the database record is not found. Then insert new record.
			} catch ( final javax.persistence.NoResultException nre ) {
				insertNewTestStudentRow( newValue, rowData );
			}
		}

		loadGrades();
	}

	public void absentCheckEvent( final AjaxBehaviorEvent event ) {
		final SelectBooleanCheckbox s = ( SelectBooleanCheckbox ) event.getSource();
		final Boolean checkBoxValue = ( Boolean ) s.getValue();
		final Column c = ( Column ) s.getParent();
		final DataTable d = ( DataTable ) c.getParent();
		final StudentGrade rowData = ( StudentGrade ) d.getRowData();

		TestStudent testStudent = null;

		try {
			testStudent = service.getTestStudent( rowData.getTestNo(), rowData.getStudentNo() );
			testStudent.setGrade( checkBoxValue ? -1f : 0f );

			service.updateTestStudent( testStudent );

		} catch ( final javax.persistence.NoResultException nre ) {
			insertNewTestStudentRow( checkBoxValue ? -1f : 0f, rowData );
		}

		loadGrades();
	}

	/**
	 * @param grade The grade value to insert.
	 * @param rowData The student grade row data.
	 */
	private void insertNewTestStudentRow( final Float grade, final StudentGrade rowData ) {

		final TestStudent testStudent = new TestStudent();

		testStudent.setGrade( grade );
		testStudent.setTest( service.getTest( rowData.getTestNo() ) );
		testStudent.setStudent( studentService.getStudent( rowData.getStudentNo() ) );

		service.addNewTestStudent( testStudent );
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

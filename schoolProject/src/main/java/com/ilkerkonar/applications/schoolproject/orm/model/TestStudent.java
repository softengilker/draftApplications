/**
 *
 */

package com.ilkerkonar.applications.schoolproject.orm.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@Entity
@NamedQueries( {
	@NamedQuery( name = "TestStudent.findByStudentAndTest", query = "SELECT ts FROM TestStudent ts WHERE ts.student.no = :studentnoparam AND ts.test.no = :testnoparam" )
} )
public class TestStudent implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= -118287547105754826L;

	@Id
	@GeneratedValue( strategy = GenerationType.IDENTITY )
	private Long				no;

	@ManyToOne( targetEntity = Student.class, fetch = FetchType.LAZY )
	@JoinColumn( name = "studentNo", insertable = true, updatable = true, nullable = false )
	private Student				student;

	@Column( name = "grade", nullable = false )
	private Float				grade;

	@ManyToOne( targetEntity = Test.class, fetch = FetchType.LAZY )
	@JoinColumn( name = "testNo", insertable = true, updatable = true, nullable = false )
	private Test				test;

	/**
	 * @return The getter method of the 'no' instance variable
	 */
	public Long getNo() {
		return no;
	}

	/**
	 * @param The setter method of the 'no' instance variable
	 */
	public void setNo( final Long no ) {
		this.no = no;
	}

	/**
	 * @return The getter method of the 'student' instance variable
	 */
	public Student getStudent() {
		return student;
	}

	/**
	 * @param The setter method of the 'student' instance variable
	 */
	public void setStudent( final Student student ) {
		this.student = student;
	}

	/**
	 * @return The getter method of the 'grade' instance variable
	 */
	public Float getGrade() {
		return grade;
	}

	/**
	 * @param The setter method of the 'grade' instance variable
	 */
	public void setGrade( final Float grade ) {
		this.grade = grade;
	}

	/**
	 * @return The getter method of the 'test' instance variable
	 */
	public Test getTest() {
		return test;
	}

	/**
	 * @param The setter method of the 'test' instance variable
	 */
	public void setTest( final Test test ) {
		this.test = test;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "TestStudent [no=" + no + ", student=" + student + ", grade=" + grade + ", test=" + test + "]";
	}
}


package com.ilkerkonar.applications.schoolproject.orm.model;

import java.io.Serializable;

public class StudentGrade implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= -1106806155018668717L;

	private Long				studentNo;

	private Long				testNo;

	private String				studentName;

	private Float				grade;

	public Long getStudentNo() {
		return studentNo;
	}

	public void setStudentNo( final Long studentNo ) {
		this.studentNo = studentNo;
	}

	public Long getTestNo() {
		return testNo;
	}

	public void setTestNo( final Long testNo ) {
		this.testNo = testNo;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName( final String studentName ) {
		this.studentName = studentName;
	}

	public Float getGrade() {
		return grade;
	}

	public void setGrade( final Float grade ) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "StudentGrade [studentNo=" + studentNo + ", testNo=" + testNo + ", studentName=" + studentName
			+ ", grade=" + grade + "]";
	}
}

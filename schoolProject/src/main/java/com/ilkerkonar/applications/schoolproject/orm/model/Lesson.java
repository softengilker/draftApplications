
package com.ilkerkonar.applications.schoolproject.orm.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@Entity
public class Lesson implements Serializable {

	/**
	 * Generated Serial Version ID
	 */
	private static final long	serialVersionUID	= -1590781987302298423L;

	@Id
	private Long				no;

	@Column( name = "name", nullable = false, length = 100 )
	private String				name;

	@ManyToOne( targetEntity = SchoolClass.class, fetch = FetchType.LAZY )
	@JoinColumn( name = "classNo", insertable = false, updatable = false, nullable = false, foreignKey = @ForeignKey( name = "class_fk1" ) )
	private SchoolClass			schoolClass;

	@ManyToOne( targetEntity = Teacher.class, fetch = FetchType.LAZY )
	@JoinColumn( name = "teacherNo", insertable = false, updatable = false, nullable = false, foreignKey = @ForeignKey( name = "teacher_fk1" ) )
	private Teacher				teacher;

	@OneToMany( fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "lesson" )
	private List< Test >		tests;

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
	 * @return The getter method of the 'name' instance variable
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param The setter method of the 'name' instance variable
	 */
	public void setName( final String name ) {
		this.name = name;
	}

	/**
	 * @return The getter method of the 'schoolClass' instance variable
	 */
	public SchoolClass getSchoolClass() {
		return schoolClass;
	}

	/**
	 * @param The setter method of the 'schoolClass' instance variable
	 */
	public void setSchoolClass( final SchoolClass schoolClass ) {
		this.schoolClass = schoolClass;
	}

	/**
	 * @return The getter method of the 'teacher' instance variable
	 */
	public Teacher getTeacher() {
		return teacher;
	}

	/**
	 * @param The setter method of the 'teacher' instance variable
	 */
	public void setTeacher( final Teacher teacher ) {
		this.teacher = teacher;
	}

	/**
	 * @return The getter method of the 'tests' instance variable
	 */
	public List< Test > getTests() {
		return tests;
	}

	/**
	 * @param The setter method of the 'tests' instance variable
	 */
	public void setTests( final List< Test > tests ) {
		this.tests = tests;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Lesson [no=" + no + ", name=" + name + ", schoolClass=" + schoolClass + ", teacher=" + teacher
			+ ", tests=" + tests + "]";
	}
}

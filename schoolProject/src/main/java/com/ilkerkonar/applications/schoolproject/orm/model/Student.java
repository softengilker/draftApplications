
package com.ilkerkonar.applications.schoolproject.orm.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@Entity
public class Student implements Serializable {

	/**
	 * Generated Serial Version ID
	 */
	private static final long	serialVersionUID	= 6641176040807382476L;

	@Id
	@GeneratedValue( strategy = GenerationType.IDENTITY )
	private Long				no;

	@Column( name = "name", nullable = false, length = 50 )
	private String				name;

	@Column( name = "schoolNumber", nullable = false )
	private Integer				schoolNumber;

	@Column( name = "gender", nullable = false )
	private String				gender;

	@ManyToOne( targetEntity = SchoolClass.class, fetch = FetchType.LAZY )
	@JoinColumn( name = "classNo", insertable = false, updatable = false, nullable = false )
	private SchoolClass			schoolClass;

	@OneToMany( fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "student" )
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
	 * @return The getter method of the 'schoolNumber' instance variable
	 */
	public Integer getSchoolNumber() {
		return schoolNumber;
	}

	/**
	 * @param The setter method of the 'schoolNumber' instance variable
	 */
	public void setSchoolNumber( final Integer schoolNumber ) {
		this.schoolNumber = schoolNumber;
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
	 * @return The getter method of the 'gender' instance variable
	 */
	public String getGender() {
		return gender;
	}

	/**
	 * @param The setter method of the 'gender' instance variable
	 */
	public void setGender( final String gender ) {
		this.gender = gender;
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
		return "Student [no=" + no + ", name=" + name + ", schoolNumber=" + schoolNumber + ", gender=" + gender
			+ ", schoolClass=" + schoolClass + ", tests=" + tests + "]";
	}
}

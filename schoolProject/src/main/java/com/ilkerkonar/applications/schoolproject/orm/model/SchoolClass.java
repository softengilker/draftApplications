
package com.ilkerkonar.applications.schoolproject.orm.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@Entity
@Table( name = "class" )
@NamedQueries( {
	@NamedQuery( name = "SchoolClass.findAll", query = "SELECT c FROM SchoolClass c" ),
	@NamedQuery( name = "SchoolClass.findById", query = "SELECT c FROM SchoolClass c WHERE c.no = :no" )
} )
public class SchoolClass implements Serializable {

	/**
	 * Generated Serial Version ID
	 */
	private static final long	serialVersionUID	= 6703663444336018288L;

	@Id
	private Long				no;

	@Column( name = "name", nullable = false, length = 100 )
	private String				name;

	@OneToMany( fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "schoolClass" )
	private List< Lesson >		lessons;

	@OneToMany( fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "schoolClass" )
	private List< Student >		students;

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
	 * @return The getter method of the 'lessons' instance variable
	 */
	public List< Lesson > getLessons() {
		return lessons;
	}

	/**
	 * @param The setter method of the 'lessons' instance variable
	 */
	public void setLessons( final List< Lesson > lessons ) {
		this.lessons = lessons;
	}

	/**
	 * @return The getter method of the 'students' instance variable
	 */
	public List< Student > getStudents() {
		return students;
	}

	/**
	 * @param The setter method of the 'students' instance variable
	 */
	public void setStudents( final List< Student > students ) {
		this.students = students;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "SchoolClass [no=" + no + ", name=" + name + ", lessons=" + lessons + ", students=" + students + "]";
	}
}

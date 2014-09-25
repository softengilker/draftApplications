
package com.ilkerkonar.applications.schoolproject.orm.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@Entity
public class Teacher implements Serializable {

	/**
	 * Generated Serial Version ID
	 */
	private static final long	serialVersionUID	= 910252295440402038L;

	@Id
	private Long				no;

	@Column( name = "name", nullable = false, length = 50 )
	private String				name;

	@OneToMany( fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "teacher" )
	private List< Lesson >		lessons;

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

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Teacher [no=" + no + ", name=" + name + ", lessons=" + lessons + "]";
	}
}

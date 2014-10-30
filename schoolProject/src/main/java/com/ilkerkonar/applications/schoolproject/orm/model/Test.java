
package com.ilkerkonar.applications.schoolproject.orm.model;

import java.io.Serializable;
import java.util.Date;

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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@Entity
@NamedQueries( {
	@NamedQuery( name = "Test.findAll", query = "SELECT c FROM Test c" ),
	@NamedQuery( name = "Test.findById", query = "SELECT c FROM Test c WHERE c.no = :no" )
} )
public class Test implements Serializable {

	/**
	 * Generated Serial Version ID
	 */
	private static final long	serialVersionUID	= 49208057261783330L;

	@Id
	@GeneratedValue( strategy = GenerationType.IDENTITY )
	private Long				no;

	@Column( name = "name", nullable = false, length = 100 )
	private String				name;

	@Column( name = "description", nullable = true, length = 1000 )
	private String				description;

	@Temporal( TemporalType.DATE )
	@Column( name = "date", nullable = true )
	private Date				date;

	@ManyToOne( targetEntity = Lesson.class, fetch = FetchType.LAZY )
	@JoinColumn( name = "lessonNo", insertable = true, updatable = true, nullable = false )
	private Lesson				lesson;

	@Column( name = "semester", nullable = false )
	private Integer				semester;

	// 1: Written test
	@Column( name = "testType", nullable = false )
	private Integer				testType;

	@Column( name = "testNumber", nullable = false )
	private Integer				testNumber;

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
	 * @return The getter method of the 'description' instance variable
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param The setter method of the 'description' instance variable
	 */
	public void setDescription( final String description ) {
		this.description = description;
	}

	/**
	 * @return The getter method of the 'date' instance variable
	 */
	public Date getDate() {
		return date;
	}

	/**
	 * @param The setter method of the 'date' instance variable
	 */
	public void setDate( final Date date ) {
		this.date = date;
	}

	/**
	 * @return The getter method of the 'lesson' instance variable
	 */
	public Lesson getLesson() {
		return lesson;
	}

	/**
	 * @param The setter method of the 'lesson' instance variable
	 */
	public void setLesson( final Lesson lesson ) {
		this.lesson = lesson;
	}

	/**
	 * @return The getter method of the 'semester' instance variable
	 */
	public Integer getSemester() {
		return semester;
	}

	/**
	 * @param The setter method of the 'semester' instance variable
	 */
	public void setSemester( final Integer semester ) {
		this.semester = semester;
	}

	/**
	 * @return The getter method of the 'testType' instance variable
	 */
	public Integer getTestType() {
		return testType;
	}

	/**
	 * @param The setter method of the 'testType' instance variable
	 */
	public void setTestType( final Integer testType ) {
		this.testType = testType;
	}

	/**
	 * @return The getter method of the 'testNumber' instance variable
	 */
	public Integer getTestNumber() {
		return testNumber;
	}

	/**
	 * @param The setter method of the 'testNumber' instance variable
	 */
	public void setTestNumber( final Integer testNumber ) {
		this.testNumber = testNumber;
	}
}

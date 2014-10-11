
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author ilker KONAR, senior software developer
 *
 */
@Entity
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

	@Column( name = "grade", nullable = false )
	private Float				grade;

	@Temporal( TemporalType.DATE )
	@Column( name = "date", nullable = true )
	private Date				date;

	@ManyToOne( targetEntity = Lesson.class, fetch = FetchType.LAZY )
	@JoinColumn( name = "lessonNo", insertable = true, updatable = true, nullable = false )
	private Lesson				lesson;

	@ManyToOne( targetEntity = Student.class, fetch = FetchType.LAZY )
	@JoinColumn( name = "studentNo", insertable = true, updatable = true, nullable = false )
	private Student				student;

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

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Test [no=" + no + ", name=" + name + ", description=" + description + ", grade=" + grade + ", date="
			+ date + ", lesson=" + lesson + ", student=" + student + "]";
	}
}

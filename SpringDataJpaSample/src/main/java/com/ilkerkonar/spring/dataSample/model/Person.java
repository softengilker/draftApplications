
package com.ilkerkonar.spring.dataSample.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Person {

	@Id
	private Long	id;

	@Column( length = 20, nullable = false )
	private String	name;

	@Column
	private Double	salary;

	@Column
	private Integer	grade;

	public Long getId() {
		return id;
	}

	public void setId( final Long id ) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName( final String name ) {
		this.name = name;
	}

	public Double getSalary() {
		return salary;
	}

	public void setSalary( final Double salary ) {
		this.salary = salary;
	}

	public Integer getGrade() {
		return grade;
	}

	public void setGrade( final Integer grade ) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", salary=" + salary + ", grade=" + grade + "]";
	}
}

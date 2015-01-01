
package com.ilkerkonar.spring.dataSample.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table( name = "\"member\"" )
public class Member implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= -380464720265965L;

	@Id
	@GeneratedValue( strategy = GenerationType.IDENTITY )
	private Integer				id;

	@Column( nullable = true, length = 30 )
	private String				name;

	@ManyToOne( fetch = FetchType.EAGER )
	@JoinColumn( name = "group_id", nullable = false )
	private Group				group;

	public Integer getId() {
		return id;
	}

	public void setId( final Integer id ) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName( final String name ) {
		this.name = name;
	}

	public Group getGroup() {
		return group;
	}

	public void setGroup( final Group group ) {
		this.group = group;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + ", group=" + group + "]";
	}
}

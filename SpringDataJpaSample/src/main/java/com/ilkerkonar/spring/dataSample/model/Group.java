
package com.ilkerkonar.spring.dataSample.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table( name = "\"group\"" )
public class Group implements Serializable {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 1L;

	@Id
	//	@SequenceGenerator( name = "groupid_seq", sequenceName = "groupid_seq", allocationSize = 1 )
	//	@GeneratedValue( strategy = GenerationType.SEQUENCE, generator = "groupid_seq" )
	@GeneratedValue( strategy = GenerationType.IDENTITY )
	private Integer				id;

	@Column( nullable = false, name = "offer_id" )
	private Integer				offerId;

	@Temporal( TemporalType.TIMESTAMP )
	@Column( nullable = false )
	private Date				createDate;

	@Column( nullable = true, length = 20 )
	private String				createUsername;

	@PrePersist
	public void onCreate() {
		createDate = new Date();
	}

	public Integer getId() {
		return id;
	}

	public void setId( final Integer id ) {
		this.id = id;
	}

	public Integer getOfferId() {
		return offerId;
	}

	public void setOfferId( final Integer offerId ) {
		this.offerId = offerId;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate( final Date createDate ) {
		this.createDate = createDate;
	}

	public String getCreateUsername() {
		return createUsername;
	}

	public void setCreateUsername( final String createUsername ) {
		this.createUsername = createUsername;
	}

	@Override
	public String toString() {
		return "Group [id=" + id + ", offerId=" + offerId + ", createDate=" + createDate + ", createUsername="
			+ createUsername + "]";
	}
}

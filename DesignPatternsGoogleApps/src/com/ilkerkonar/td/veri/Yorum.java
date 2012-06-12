/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 * 
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.veri;

import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

/**
 * Yorum.java
 */
@PersistenceCapable
public class Yorum {

	@PrimaryKey
	@Persistent( valueStrategy = IdGeneratorStrategy.IDENTITY )
	private Long	id;

	@Persistent
	private String	pageName;

	@Persistent
	private Date	yorumZamani;

	@Persistent
	private String	nick;

	@Persistent
	private String	email;

	@Persistent
	private String	yorumBaslik;

	@Persistent
	private String	yorumIcerik;

	@Persistent
	/* 0:yeni,1:aktif,2:pasif,3:kabul gormemis */
	private Integer	durum;

	public Long getId() {
		return id;
	}

	public void setId( final Long id ) {
		this.id = id;
	}

	public String getPageName() {
		return pageName;
	}

	public void setPageName( final String pageName ) {
		this.pageName = pageName;
	}

	public Date getYorumZamani() {
		return yorumZamani;
	}

	public void setYorumZamani( final Date yorumZamani ) {
		this.yorumZamani = yorumZamani;
	}

	public String getNick() {
		return nick;
	}

	public void setNick( final String nick ) {
		this.nick = nick;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail( final String email ) {
		this.email = email;
	}

	public String getYorumBaslik() {
		return yorumBaslik;
	}

	public void setYorumBaslik( final String yorumBaslik ) {
		this.yorumBaslik = yorumBaslik;
	}

	public String getYorumIcerik() {
		return yorumIcerik;
	}

	public void setYorumIcerik( final String yorumIcerik ) {
		this.yorumIcerik = yorumIcerik;
	}

	public Integer getDurum() {
		return durum;
	}

	public void setDurum( final Integer durum ) {
		this.durum = durum;
	}

	@Override
	public String toString() {
		return "Yorum [id=" + id + ", pageName=" + pageName + ", yorumZamani=" + yorumZamani + ", nick=" + nick
			+ ", email=" + email + ", yorumBaslik=" + yorumBaslik + ", yorumIcerik=" + yorumIcerik + ", durum=" + durum
			+ "]";
	}
}

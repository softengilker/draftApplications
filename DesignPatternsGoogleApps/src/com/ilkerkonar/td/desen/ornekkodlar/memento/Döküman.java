/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.memento;

/**
 * Döküman.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Döküman {

	private String	içerik;

	public String içerikAl() {
		return içerik;
	}

	public void içerikAta( final String içerik ) {
		this.içerik = içerik;
	}

	public DökümanHatırlayıcı hatırlayıcıYarat() {
		return new DökümanHatırlayıcı( this );
	}

	public void hatırlayıcıAta( final DökümanHatırlayıcı hatırlayıcı ) {
		this.içerik = hatırlayıcı.içerikAl();
	}
}

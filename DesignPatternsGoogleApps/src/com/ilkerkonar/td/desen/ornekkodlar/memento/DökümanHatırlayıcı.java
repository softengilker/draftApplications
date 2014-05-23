/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.memento;

/**
 * DökümanHatırlayıcı.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class DökümanHatırlayıcı {

	private final String	içerik;

	public DökümanHatırlayıcı( final Döküman döküman ) {
		this.içerik = döküman.içerikAl();
	}

	public String içerikAl() {
		return içerik;
	}
}

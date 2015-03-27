/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.bridge;

/**
 * Şekil.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Şekil {

	protected ÇizimKalıbı	kalıp;
	private final String	isim;

	public Şekil( final ÇizimKalıbı kalıp, final String isim ) {
		this.kalıp = kalıp;
		this.isim = isim;
	}

	public void çiz() {
		System.out.println( isim + " Çiziliyor..." );
	}
}

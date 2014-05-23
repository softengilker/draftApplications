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
public abstract class Şekil {

	protected ÇizimKalıbı	kalıp;

	public Şekil( final ÇizimKalıbı kalıp ) {
		this.kalıp = kalıp;
	}

	public abstract void çiz();
}

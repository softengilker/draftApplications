/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.mediator;

/**
 * ElektronikAygıt.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public abstract class ElektronikAygıt {

	protected Arabulucu	arabulucu;

	public ElektronikAygıt( final Arabulucu arabulucu ) {
		this.arabulucu = arabulucu;
	}

	public abstract void çalıştır();

	public abstract void durdur();
}

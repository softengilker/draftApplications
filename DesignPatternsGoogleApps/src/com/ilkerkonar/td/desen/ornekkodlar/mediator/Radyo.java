/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.mediator;

/**
 * Radyo.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Radyo extends ElektronikAygıt {

	public Radyo( final Arabulucu arabulucu ) {
		super( arabulucu );
		arabulucu.radyoEkle( this );
	}

	@Override
	public void çalıştır() {
		System.out.println( "Radyo çalıştı." );
		arabulucu.radyoÇalıştır();
	}

	@Override
	public void durdur() {
		System.out.println( "Radyo durdu." );
	}
}

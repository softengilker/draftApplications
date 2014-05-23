/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.mediator;

/**
 * Bilgisayar.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Bilgisayar extends ElektronikAygıt {

	public Bilgisayar( final Arabulucu arabulucu ) {
		super( arabulucu );
		arabulucu.bilgisayarEkle( this );
	}

	@Override
	public void çalıştır() {
		System.out.println( "Bilgisayar çalıştı." );
		arabulucu.bilgisayarÇalıştır();
	}

	@Override
	public void durdur() {
		System.out.println( "Bilgisayar durdu." );
	}
}

/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.mediator;

/**
 * Televizyon.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Televizyon extends ElektronikAygıt {

	public Televizyon( final Arabulucu arabulucu ) {
		super( arabulucu );
		arabulucu.televizyonEkle( this );
	}

	@Override
	public void çalıştır() {
		System.out.println( "Televizyon çalıştı." );
		arabulucu.televizyonÇalıştır();
	}

	@Override
	public void durdur() {
		System.out.println( "Televizyon durdu." );
	}
}

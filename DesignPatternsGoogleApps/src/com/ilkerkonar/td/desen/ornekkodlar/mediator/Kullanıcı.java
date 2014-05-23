/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.mediator;

/**
 * Kullanıcı.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Kullanıcı {

	public static void main( final String[] args ) {
		final Arabulucu arabulucu = new Arabulucu();

		final ElektronikAygıt[] aygıtlar = new ElektronikAygıt[ 3 ];
		aygıtlar[ 0 ] = new Bilgisayar( arabulucu );
		aygıtlar[ 1 ] = new Televizyon( arabulucu );
		aygıtlar[ 2 ] = new Radyo( arabulucu );

		// Her bir aygıtı çalıştır.
		for ( final ElektronikAygıt aygıt : aygıtlar ) {
			aygıt.çalıştır();
		}
	}
}

/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.bridge;

/**
 * ÇizimTahtası.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class ÇizimTahtası {

	public static void main( final String[] args ) {

		final Şekil[] şekiller = new Şekil[ 3 ];

		// Şekil nesnelerini oluştur.
		şekiller[ 0 ] = new Dikdörtgen( new Kalıp2() );
		şekiller[ 1 ] = new Çember( new Kalıp1() );
		şekiller[ 2 ] = new Üçgen( new Kalıp2() );

		// Tüm şekilleri çiz.
		for ( final Şekil şekil : şekiller ) {
			şekil.çiz();
		}
	}
}

/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.command;

/**
 * Kullanıcı.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Kullanıcı {

	public static void main( final String[] args ) {

		final Lamba lamba = new Lamba();
		final LambaAçmaKomutu açKomutu = new LambaAçmaKomutu( lamba );
		final LambaKapatmaKomutu kapatKomutu = new LambaKapatmaKomutu( lamba );
		final LambaDüğmesi düğme = new LambaDüğmesi( açKomutu, kapatKomutu );

		düğme.lambaAç();
		düğme.lambaKapat();
	}
}

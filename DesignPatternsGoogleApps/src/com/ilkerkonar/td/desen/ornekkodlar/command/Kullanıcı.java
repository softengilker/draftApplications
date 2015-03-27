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

		// Lamba nesnesi oluştur.
		final Lamba lamba = new Lamba();

		// Lamba komutlarını oluştur.
		final LambaAçmaKomutu açKomutu = new LambaAçmaKomutu( lamba );
		final LambaKapatmaKomutu kapatKomutu = new LambaKapatmaKomutu( lamba );

		// Lamba düğmesi nesnesini oluştur.
		final LambaDüğmesi düğme = new LambaDüğmesi( açKomutu, kapatKomutu );

		// Düğme komutlarını çalıştır.
		düğme.lambaAç();
		düğme.lambaKapat();
	}
}

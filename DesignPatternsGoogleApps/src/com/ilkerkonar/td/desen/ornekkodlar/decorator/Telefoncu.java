/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.decorator;

/**
 * Telefoncu.java
 *
 * Tarih bilgisi : May 23, 2014
 */
public class Telefoncu {

	public static void main( final String[] args ) {

		// Telefon nesnesi dekorasyonla oluştur.
		// BasitTelefon nesnesinden türetilen nesne,
		// dekarasyon sınıflarından geçirilerek, yeni özellikler
		// kazanması sağlanır.
		final Telefon telefon = new KameralıTelefonDekarasyoncusu(
			new MMSliTelefonDekarasyoncusu( new BasitTelefon() ) );

		// Ek özellikler gelerek telefon oluşur.
		telefon.telefonuOluştur();
	}
}

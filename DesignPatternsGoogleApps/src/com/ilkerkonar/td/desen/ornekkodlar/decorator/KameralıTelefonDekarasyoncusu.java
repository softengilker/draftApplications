/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.decorator;

/**
 * KameralıTelefonDekarasyoncusu.java
 *
 * Tarih bilgisi : May 23, 2014
 */
public class KameralıTelefonDekarasyoncusu
extends TelefonDekarasyoncusu {

	public KameralıTelefonDekarasyoncusu( final Telefon telefon ) {
		super( telefon );
	}

	@Override
	public void telefonuOluştur() {
		dekoreTelefon.telefonuOluştur();
		kameraEkle();
	}

	private void kameraEkle() {
		System.out.println( "Kamera eklendi." );
	}
}

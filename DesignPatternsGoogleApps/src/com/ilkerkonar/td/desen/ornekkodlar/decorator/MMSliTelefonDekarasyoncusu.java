/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.decorator;

/**
 * MMSliTelefonDekarasyoncusu.java
 *
 * Tarih bilgisi : May 23, 2014
 */
public class MMSliTelefonDekarasyoncusu
extends TelefonDekarasyoncusu {

	public MMSliTelefonDekarasyoncusu( final Telefon telefon ) {
		super( telefon );
	}

	@Override
	public void telefonuOluştur() {
		dekoreTelefon.telefonuOluştur();
		mmsÖzelliğiEkle();
	}

	private void mmsÖzelliğiEkle() {
		System.out.println( "MMS özelliği eklendi." );
	}
}

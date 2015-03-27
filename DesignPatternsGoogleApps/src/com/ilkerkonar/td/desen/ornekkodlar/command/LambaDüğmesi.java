/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.command;

/**
 * LambaDüğmesi.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class LambaDüğmesi {

	private final Komut	açmaKomutu;
	private final Komut	kapatmaKomutu;

	public LambaDüğmesi( final Komut açmaKomutu, final Komut kapatmaKomutu ) {
		this.açmaKomutu = açmaKomutu;
		this.kapatmaKomutu = kapatmaKomutu;
	}

	public void lambaAç() {
		açmaKomutu.çalıştır();
	}

	public void lambaKapat() {
		kapatmaKomutu.çalıştır();
	}
}

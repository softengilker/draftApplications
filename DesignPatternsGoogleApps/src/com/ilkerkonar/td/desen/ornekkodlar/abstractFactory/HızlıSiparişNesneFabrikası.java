/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 * 
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.abstractFactory;

/**
 * @author İlker KONAR, Kıdemli Yazılım Uzmanı
 *
 * Tarih Bilgisi: 29 Oca 2013
 *
 */
public class HızlıSiparişNesneFabrikası implements ISiparişNesneFabrikası {

	@Override
	public ÖdemeTipi ödemeTipiYarat() {
		return new Havale();
	}

	@Override
	public Bildirim bildirimYarat() {
		return new Sms();
	}
}

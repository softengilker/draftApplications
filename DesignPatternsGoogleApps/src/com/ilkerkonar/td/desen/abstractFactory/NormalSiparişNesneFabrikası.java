/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 * 
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.abstractFactory;

/**
 * @author İlker KONAR, Kıdemli Yazılım Uzmanı
 *
 * Tarih Bilgisi: 29 Oca 2013
 *
 */
public class NormalSiparişNesneFabrikası implements ISiparişNesneFabrikası {

	@Override
	public ÖdemeTipi ödemeTipiYarat() {
		return new PostaÇeki();
	}

	@Override
	public Bildirim bildirimYarat() {
		return new Eposta();
	}
}

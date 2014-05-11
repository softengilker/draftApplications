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
public class SiparişGönderici {

	/**
	 * @param args
	 */
	public static void main( final String[] args ) {

		ISiparişNesneFabrikası siparişNesneFabrikası = null;

		if ( args[ 0 ].equals( "hızlı" ) ) {
			siparişNesneFabrikası = new HızlıSiparişNesneFabrikası();
		} else {
			siparişNesneFabrikası = new NormalSiparişNesneFabrikası();
		}

		final ÖdemeTipi ödemeTipi = siparişNesneFabrikası.ödemeTipiYarat();
		final Bildirim bildirim = siparişNesneFabrikası.bildirimYarat();

		ödemeTipi.paraGönder( Integer.valueOf( args[ 1 ] ) );
		bildirim.mesajGönder( "Siparişiniz gönderilmiştir." );
	}
}

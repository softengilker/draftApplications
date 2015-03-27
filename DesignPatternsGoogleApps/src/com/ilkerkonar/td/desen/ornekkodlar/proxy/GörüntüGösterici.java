/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.proxy;

/**
 * GörüntüGösterici.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class GörüntüGösterici {

	public static void main( final String[] args ) {
		final GörüntüDosyası dosya1 = new ÖzdeşGörüntüDosyası( "resim1" );
		final GörüntüDosyası dosya2 = new ÖzdeşGörüntüDosyası( "resim2" );

		// Yükleme gerekli.
		dosya1.görüntüyüGöster();

		// Yükleme gerekli.
		dosya2.görüntüyüGöster();

		// Yükleme gereksiz. Çünkü daha önce "dosya2" yüklendi.
		// "dosya3" hiç bir zaman yüklenmedi.
		// Zaman ve kaynaktan kazanç sağlandı.
		dosya2.görüntüyüGöster();
	}
}

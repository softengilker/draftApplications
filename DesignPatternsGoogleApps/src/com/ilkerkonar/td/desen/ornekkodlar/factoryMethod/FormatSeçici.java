/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 * 
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.factoryMethod;

/**
 * @author İlker KONAR, Kıdemli Yazılım Uzmanı
 *
 * Tarih Bilgisi: 09 Oca 2013
 *
 */
public class FormatSeçici {

	/**
	 * Fabrika Yordamı.
	 * 
	 * Resim alanı 100 birimden büyük resimler için JPEG, 
	 * daha küçükler için GIF formatı tercih edilir.
	 * 
	 * @param uzunluk Resim uzunluğu
	 * @param genişlik Resim genişliği
	 * @return ResimFormatı nesnelerinden biri. 
	 */
	public IResimFormatı formatAl( final Integer uzunluk, final Integer genişlik ) {

		final Integer resimAlanı = uzunluk * genişlik;

		if ( resimAlanı > 100 ) {
			return new JpegResimFormatı();
		} else {
			return new GifResimFormatı();
		}
	}
}

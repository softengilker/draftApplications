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
public class GifResimFormatı implements IResimFormatı {

	/* (non-Javadoc)
	 * @see com.ilkerkonar.uygulamalar.web.designPatterns.sample.factoryMethod.IResimFormatı#resmiOluştur
	 * (java.lang.Integer, java.lang.Integer)
	 */
	@Override
	public void resmiOluştur( final Integer uzunluk, final Integer genişlik ) {
		System.out.println( uzunluk + " uzunluğunda, " + genişlik + " genişliğinde GIF formatında resim oluştu." );
	}
}

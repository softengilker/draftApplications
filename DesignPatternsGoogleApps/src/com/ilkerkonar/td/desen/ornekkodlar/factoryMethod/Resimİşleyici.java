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
public class Resimİşleyici {

	/**
	 * @param args
	 */
	public static void main( final String[] args ) {

		// Resim boyutları
		final Integer uzunluk = 20;
		final Integer genişlik = 8;

		// Fabrika yordamını içeren sınıf oluşturuldu.
		final FormatSeçici formatSeçici = new FormatSeçici();

		// Fabrika yordamından resim boyutlarına göre bir format nesnesi yaratılıp, döndü.
		final IResimFormatı resimFormatıNesnesi = formatSeçici.formatAl( uzunluk, genişlik );

		// Formata göre resim çizildi.
		resimFormatıNesnesi.resmiOluştur( uzunluk, genişlik );
	}
}

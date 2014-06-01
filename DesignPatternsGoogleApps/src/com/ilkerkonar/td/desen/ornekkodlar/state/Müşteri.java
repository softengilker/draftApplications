/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.state;

/**
 * Müşteri.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Müşteri {

	public static void main( final String[] args ) {
		// Yaratılan hesap varsayılan olarak 'normal' durumda.
		final Hesap hesap = new Hesap();
		hesap.faizÖde();
		hesap.paraÇek();

		// Çalışma zamanında hesap durum değiştiriliyor.
		// Müşteri altın hesaba geçiriliyor.
		hesap.durumDeğiştir( new AltınHesap() );

		System.out.println( "Müşteri altın hesaba geçiriliyor." );

		// Durum değiştiği için davranış da değişecek.
		hesap.faizÖde();
		hesap.paraÇek();
	}
}

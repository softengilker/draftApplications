/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.prototype;

/**
 * ResimÜretici.java
 *
 * Tarih bilgisi : May 11, 2014
 */
public class ResimÜretici {

	/**
	 * @param args
	 */
	public static void main( final String[] args ) {

		// Resim nesnesi üretiliyor.
		final Resim resim1 = new Resim( "mavi", 25, 15 );

		// Yeniden resim nesnesi üretmek yerine,
		// var olan resim nesnesinden kopyalama yapılıyor.
		final Resim resim2 = resim1.kopyaAl();

		// Kopyalanan resim nesnesinin özellikleri yazılıyor.
		System.out.println( "Kopyalanan resim nesnesi : " + resim2 );
	}
}

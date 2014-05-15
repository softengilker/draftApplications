/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.builder;

/**
 * PideSalonu.java
 *
 * Tarih bilgisi : May 15, 2014
 */
public class PideSalonu {

	public static void main( final String[] args ) {
		// Yönetici sınıfı yarat.
		final Aşçı aşçı = new Aşçı();

		// Kurulum nesnesini yarat.
		final LahmacunPideKurucu lahmacunPideKurucu = new LahmacunPideKurucu();

		// Yönetici sınıfa kurulum nesnesini ver.
		aşçı.pideKurucuAta( lahmacunPideKurucu );

		// Ürün nesnesini kur.
		aşçı.pideyiKur();

		// Pide kuruldu ve ürün hazır.
		final Pide pide = aşçı.pideAl();

		System.out.println( "Pide kuruldu : " + pide );
	}
}

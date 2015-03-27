/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.facade;

/**
 * BilgisayarKullanıcısı.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class BilgisayarKullanıcısı {

	public static void main( final String[] args ) {

		// Ön yüz sınıfını yarat.
		final Bilgisayar bilgisayar = new Bilgisayar();

		// Ön yüz sınıfından sisteme bir iş yaptır.
		bilgisayar.aç();
	}
}

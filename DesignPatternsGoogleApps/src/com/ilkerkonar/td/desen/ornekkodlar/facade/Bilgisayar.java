/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.facade;

/**
 * Bilgisayar.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Bilgisayar {

	public void aç() {

		// Ön yüz sınıfının kullandığı ve istemcinin
		// bilmediği detay sınıflar.
		final İşlemci işlemci = new İşlemci();
		final Bellek bellek = new Bellek();
		final SabitDisk disk = new SabitDisk();

		işlemci.açıl();

		final String açılış_bilgisi = disk.oku( "başlangıç sektörü:4545656", "sektör uzunluğu:1222" );

		bellek.yükle( "açılış adresi:1522262", açılış_bilgisi );

		işlemci.konumlan( "açılış adresi:1522262" );

		işlemci.çalış();
	}
}

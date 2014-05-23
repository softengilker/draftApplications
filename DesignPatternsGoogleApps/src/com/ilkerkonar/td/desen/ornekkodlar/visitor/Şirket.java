/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.visitor;

/**
 * Şirket.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Şirket {

	public static void main( final String[] args ) {

		// Personel nesnelerini oluştur.
		final İşçi işçi = new İşçi();
		final Yönetici yönetici = new Yönetici();

		// Ziyaretçi nesnelerini oluştur.
		final PersonelZiyaretçisi ziyaretçi1 = new MaaşHesaplamaZiyaretçisi();
		final PersonelZiyaretçisi ziyaretçi2 = new ÇalışmaPlanıZiyaretçisi();

		// Maaş Hesaplama işlemlerini yap.
		ziyaretçi1.ziyaretEt( işçi );
		ziyaretçi1.ziyaretEt( yönetici );

		// Çalışma Planı işlemlerini yap.
		ziyaretçi2.ziyaretEt( işçi );
		ziyaretçi2.ziyaretEt( yönetici );
	}
}

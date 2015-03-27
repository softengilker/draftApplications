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
		final PersonelZiyaretçisi maaşHesaplamaZiyaretçisi = new MaaşHesaplamaZiyaretçisi();
		final PersonelZiyaretçisi çalışmaPlanıZiyaretçisi = new ÇalışmaPlanıZiyaretçisi();

		// Maaş Hesaplama işlemlerini yap.
		işçi.kabulEt( maaşHesaplamaZiyaretçisi );
		yönetici.kabulEt( maaşHesaplamaZiyaretçisi );

		// Çalışma Planı işlemlerini yap.
		işçi.kabulEt( çalışmaPlanıZiyaretçisi );
		yönetici.kabulEt( çalışmaPlanıZiyaretçisi );
	}
}

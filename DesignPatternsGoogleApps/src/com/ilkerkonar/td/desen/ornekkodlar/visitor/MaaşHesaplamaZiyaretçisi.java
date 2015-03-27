/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.visitor;

/**
 * MaaşHesaplamaZiyaretçisi.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class MaaşHesaplamaZiyaretçisi implements PersonelZiyaretçisi {

	@Override
	public void ziyaretEt( final İşçi işçi ) {
		System.out.println( "İşçi maaşı hesaplandı." );
	}

	@Override
	public void ziyaretEt( final Yönetici yönetici ) {
		System.out.println( "Yönetici maaşı hesaplandı." );
	}
}

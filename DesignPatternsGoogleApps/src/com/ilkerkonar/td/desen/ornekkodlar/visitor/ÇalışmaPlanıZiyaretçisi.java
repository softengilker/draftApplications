/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.visitor;

/**
 * ÇalışmaPlanıZiyaretçisi.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class ÇalışmaPlanıZiyaretçisi implements PersonelZiyaretçisi {

	@Override
	public void ziyaretEt( final İşçi işçi ) {
		System.out.println( "İşçi çalışma saatleri hesaplandı." );
	}

	@Override
	public void ziyaretEt( final Yönetici yönetici ) {
		System.out.println( "Yönetici çalışma saatleri hesaplandı." );
	}
}

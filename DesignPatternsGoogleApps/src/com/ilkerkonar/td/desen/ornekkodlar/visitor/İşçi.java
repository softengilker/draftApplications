/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.visitor;

/**
 * İşçi.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class İşçi implements Personel {

	@Override
	public void kabulEt( final PersonelZiyaretçisi ziyaretçi ) {
		ziyaretçi.ziyaretEt( this );
	}
}

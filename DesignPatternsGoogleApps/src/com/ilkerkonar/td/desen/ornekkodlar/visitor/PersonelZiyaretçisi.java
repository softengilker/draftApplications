/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.visitor;

/**
 * PersonelZiyaretçisi.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public interface PersonelZiyaretçisi {

	void ziyaretEt( İşçi işçi );

	void ziyaretEt( Yönetici yönetici );
}

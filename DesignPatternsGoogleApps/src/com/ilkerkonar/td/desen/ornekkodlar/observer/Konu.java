/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.observer;

/**
 * Konu.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public interface Konu {

	void gözlemcilereHaberVer();

	void gözlemciEkle( FiyatGözlemcisi gözlemci );
}

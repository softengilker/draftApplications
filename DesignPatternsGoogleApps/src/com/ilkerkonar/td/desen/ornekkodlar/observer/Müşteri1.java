/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.observer;

/**
 * Müşteri1.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Müşteri1 implements FiyatGözlemcisi {

	@Override
	public void güncelle( final long yeniFiyat ) {
		System.out.println( "Müşteri 1, yeni fiyatı öğrendi: " + yeniFiyat );
	}
}

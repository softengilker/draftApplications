/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.strategy;

/**
 * Müşteri.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Müşteri {

	public static void main( final String[] args ) {

		// İki farklı yöntem ile borç veren kurum nesneleri yaratıldı.
		final BorçVerenKurum kurum1 = new BorçVerenKurum( new YöntemA() );
		final BorçVerenKurum kurum2 = new BorçVerenKurum( new YöntemB() );

		// Borç hesaplamaları çalıştırıldı.
		kurum1.borçHesapla();
		kurum2.borçHesapla();
	}
}

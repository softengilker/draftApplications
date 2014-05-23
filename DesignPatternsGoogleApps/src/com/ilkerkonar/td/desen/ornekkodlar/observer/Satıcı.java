/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.observer;

/**
 * Satıcı.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Satıcı {

	public static void main( final String[] args ) {

		final FiyatKonusu konu = new FiyatKonusu();
		konu.gözlemciEkle( new Müşteri1() );
		konu.gözlemciEkle( new Müşteri2() );
		konu.fiyatDeğiştir( 50L );
	}
}

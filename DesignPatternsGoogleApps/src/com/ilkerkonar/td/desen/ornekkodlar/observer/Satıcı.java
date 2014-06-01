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

		// Bir gözlem konusu yaratılıyor.
		final FiyatKonusu konu = new FiyatKonusu();

		// Gözlemci 1 yaratılıyor ve gözlem konusuna ekleniyor.
		konu.gözlemciEkle( new Müşteri1() );

		// Gözlemci 2 yaratılıyor ve gözlem konusuna ekleniyor.
		konu.gözlemciEkle( new Müşteri2() );

		// Gözlem konusundaki bir değişiklik, gözlemcilere haber veriliyor.
		konu.fiyatDeğiştir( 50L );
	}
}

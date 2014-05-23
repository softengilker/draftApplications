/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.flyweight;

/**
 * Karakter.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Karakter {

	private final char	karakter;

	public Karakter( final char karakter ) {
		this.karakter = karakter;
	}

	public void ekranaBas() {
		System.out.println( "Ekrana basıldı: " + karakter );
	}
}

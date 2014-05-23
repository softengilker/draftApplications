/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.decorator;

/**
 * BasitTelefon.java
 *
 * Tarih bilgisi : May 23, 2014
 */
public class BasitTelefon implements Telefon {

	@Override
	public void telefonuOluştur() {
		System.out.println( "Basit telefon oluştu." );
	}
}

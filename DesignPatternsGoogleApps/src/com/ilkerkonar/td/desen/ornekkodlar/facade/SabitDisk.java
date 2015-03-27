/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.facade;

/**
 * SabitDisk.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class SabitDisk {

	public String oku( final String başlangıç_adresi, final String uzunluk ) {

		System.out.println( "Sabit disk '" + başlangıç_adresi + "' " + "adresinden " + uzunluk
			+ " kadar bilgiyi okudu." );

		return "okunan_bilgi";
	}
}

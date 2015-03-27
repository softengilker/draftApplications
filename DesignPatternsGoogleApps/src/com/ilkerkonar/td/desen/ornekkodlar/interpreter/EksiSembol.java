/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.interpreter;

/**
 * ArtıSembol.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class EksiSembol implements Sembol {

	@Override
	public void yorumla() {
		System.out.println( "- sembolü yorumlandı." );
	}
}

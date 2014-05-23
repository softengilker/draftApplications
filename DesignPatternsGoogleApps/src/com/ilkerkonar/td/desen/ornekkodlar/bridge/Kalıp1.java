/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.bridge;

/**
 * Kalıp1.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Kalıp1 implements ÇizimKalıbı {

	@Override
	public void çemberÇiz() {
		System.out.println( "Kalıp 1 ile çember çizildi." );
	}

	@Override
	public void çizgiÇiz() {
		System.out.println( "Kalıp 1 ile çizgi çizildi." );
	}
}

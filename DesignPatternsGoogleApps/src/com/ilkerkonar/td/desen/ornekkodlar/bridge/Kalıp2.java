/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.bridge;

/**
 * Kalıp2.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Kalıp2 implements ÇizimKalıbı {

	@Override
	public void çemberÇiz() {
		System.out.println( "Kalıp 2 ile çember çizildi." );
	}

	@Override
	public void çizgiÇiz() {
		System.out.println( "Kalıp 2 ile çizgi çizildi." );
	}
}

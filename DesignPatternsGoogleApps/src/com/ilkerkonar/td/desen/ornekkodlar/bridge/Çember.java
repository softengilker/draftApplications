/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.bridge;

/**
 * Çember.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Çember extends Şekil {

	public Çember( final ÇizimKalıbı kalıp ) {
		super( kalıp, "Çember" );
	}

	@Override
	public void çiz() {

		super.çiz();

		kalıp.çemberÇiz();
	}
}

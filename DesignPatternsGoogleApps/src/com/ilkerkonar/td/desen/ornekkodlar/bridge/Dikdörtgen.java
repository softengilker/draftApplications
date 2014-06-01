/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.bridge;

/**
 * Dikdörtgen.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Dikdörtgen extends Şekil {

	public Dikdörtgen( final ÇizimKalıbı kalıp ) {
		super( kalıp, "Dikdörtgen" );
	}

	@Override
	public void çiz() {

		super.çiz();

		kalıp.çizgiÇiz();
		kalıp.çizgiÇiz();
		kalıp.çizgiÇiz();
		kalıp.çizgiÇiz();
	}
}

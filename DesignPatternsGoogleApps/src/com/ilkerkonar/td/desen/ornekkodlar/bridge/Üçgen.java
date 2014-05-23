/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.bridge;

/**
 * Üçgen.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Üçgen extends Şekil {

	public Üçgen( final ÇizimKalıbı kalıp ) {
		super( kalıp );
	}

	@Override
	public void çiz() {
		kalıp.çizgiÇiz();
		kalıp.çizgiÇiz();
		kalıp.çizgiÇiz();
	}
}

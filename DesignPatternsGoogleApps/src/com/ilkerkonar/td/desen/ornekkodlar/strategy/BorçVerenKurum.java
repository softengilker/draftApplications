/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.strategy;

/**
 * BorçVerenKurum.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class BorçVerenKurum {

	private final BorçHesaplamaYöntemi	yöntem;

	public BorçVerenKurum( final BorçHesaplamaYöntemi yöntem ) {
		this.yöntem = yöntem;
	}

	public void borçHesapla() {
		yöntem.borçHesapla();
	}
}

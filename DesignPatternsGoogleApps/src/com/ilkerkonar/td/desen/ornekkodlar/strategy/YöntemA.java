/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.strategy;

/**
 * YöntemA.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class YöntemA implements BorçHesaplamaYöntemi {

	@Override
	public void borçHesapla() {
		System.out.println( "A yöntemiyle borç hesaplandı." );
	}
}

/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.state;

/**
 * AltınHesap.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class AltınHesap implements HesapDurumu {

	@Override
	public void faizÖde() {
		System.out.println( "Altın hesaptan faiz ödendi." );
	}

	@Override
	public void paraÇek() {
		System.out.println( "Altın hesaptan para çekildi." );
	}
}

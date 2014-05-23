/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.state;

/**
 * NormalHesap.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class NormalHesap implements HesapDurumu {

	@Override
	public void faizÖde() {
		System.out.println( "Normal hesaptan faiz ödendi." );
	}

	@Override
	public void paraÇek() {
		System.out.println( "Normal hesaptan para çekildi." );
	}
}

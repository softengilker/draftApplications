/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.state;

/**
 * Hesap.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Hesap {

	private HesapDurumu	hesapDurumu;

	public Hesap() {
		hesapDurumu = new NormalHesap();
	}

	public void faizÖde() {
		hesapDurumu.faizÖde();
	}

	public void paraÇek() {
		hesapDurumu.paraÇek();
	}

	public void durumDeğiştir( final HesapDurumu hesapDurumu ) {
		this.hesapDurumu = hesapDurumu;
	}
}

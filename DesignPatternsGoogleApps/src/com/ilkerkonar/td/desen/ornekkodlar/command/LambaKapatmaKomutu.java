/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.command;

/**
 * LambaKapatmaKomutu.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class LambaKapatmaKomutu implements Komut {

	private final Lamba	lamba;

	public LambaKapatmaKomutu( final Lamba lamba ) {
		this.lamba = lamba;
	}

	@Override
	public void çalıştır() {
		lamba.kapat();
	}
}

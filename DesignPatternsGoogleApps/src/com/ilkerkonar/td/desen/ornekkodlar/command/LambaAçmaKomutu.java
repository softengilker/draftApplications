/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.command;

/**
 * LambaAçmaKomutu.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class LambaAçmaKomutu implements Komut {

	private final Lamba	lamba;

	public LambaAçmaKomutu( final Lamba lamba ) {
		this.lamba = lamba;
	}

	@Override
	public void çalıştır() {
		lamba.aç();
	}
}

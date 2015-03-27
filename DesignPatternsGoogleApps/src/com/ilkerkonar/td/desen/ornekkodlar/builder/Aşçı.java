/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.builder;

/**
 * Aşçı.java
 *
 * Tarih bilgisi : May 15, 2014
 */
public class Aşçı {

	private PideKurucu	pideKurucu;

	public void pideKurucuAta( final PideKurucu pideKurucu ) {
		this.pideKurucu = pideKurucu;
	}

	public Pide pideAl() {
		return pideKurucu.pideAl();
	}

	public void pideyiKur() {
		// Pideyi aşama aşama kur.
		pideKurucu.pideYarat();
		pideKurucu.hamurKur();
		pideKurucu.malzemeKur();
		pideKurucu.baharatKur();
	}
}

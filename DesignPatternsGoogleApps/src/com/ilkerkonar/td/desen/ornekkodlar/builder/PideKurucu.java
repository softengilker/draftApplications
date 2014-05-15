/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.builder;

/**
 * PideKurucu.java
 *
 * Tarih bilgisi : May 15, 2014
 */
public abstract class PideKurucu {

	protected Pide	pide;

	public void pideYarat() {
		pide = new Pide();
	}

	public Pide pideAl() {
		return pide;
	}

	public abstract void malzemeKur();

	public abstract void hamurKur();

	public abstract void baharatKur();
}

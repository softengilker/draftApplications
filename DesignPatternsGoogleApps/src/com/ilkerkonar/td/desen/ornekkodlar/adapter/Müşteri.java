/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.adapter;

/**
 * Müşteri.java
 *
 * Tarih bilgisi : May 23, 2014
 */
public class Müşteri {

	private final String	numara;
	private final String	açıklama;
	private final String	açıkAdres;
	private final String	semt;
	private final String	şehir;
	private final String	ülke;

	public Müşteri( final String numara, final String açıklama, final String açıkAdres, final String semt,
		final String şehir, final String ülke ) {

		this.numara = numara;
		this.açıklama = açıklama;
		this.açıkAdres = açıkAdres;
		this.semt = semt;
		this.şehir = şehir;
		this.ülke = ülke;
	}

	public String alNumara() {
		return numara;
	}

	public String alAçıklama() {
		return açıklama;
	}

	public String alAçıkAdres() {
		return açıkAdres;
	}

	public String alSemt() {
		return semt;
	}

	public String alŞehir() {
		return şehir;
	}

	public String alÜlke() {
		return ülke;
	}
}

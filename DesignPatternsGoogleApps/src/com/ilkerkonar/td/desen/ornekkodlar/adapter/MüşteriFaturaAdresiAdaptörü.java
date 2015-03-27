/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.adapter;

/**
 * MüşteriFaturaAdresiAdaptörü.java
 *
 * Tarih bilgisi : May 23, 2014
 */
public class MüşteriFaturaAdresiAdaptörü implements Adres {

	private final Müşteri	müşteri;

	public MüşteriFaturaAdresiAdaptörü( final Müşteri müşteri ) {
		this.müşteri = müşteri;
	}

	@Override
	public String alAçıkAdres() {
		return müşteri.alAçıkAdres();
	}

	@Override
	public String alSemt() {
		return müşteri.alSemt();
	}

	@Override
	public String alŞehir() {
		return müşteri.alŞehir();
	}

	@Override
	public String alÜlke() {
		return müşteri.alÜlke();
	}
}

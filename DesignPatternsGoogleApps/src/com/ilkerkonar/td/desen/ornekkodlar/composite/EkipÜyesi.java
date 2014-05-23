/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.composite;

/**
 * EkipÜyesi.java
 *
 * Tarih bilgisi : May 23, 2014
 */
public class EkipÜyesi implements İşçi {

	private final String	isim;
	private final String	maaş;

	public EkipÜyesi( final String isim, final String maaş ) {
		this.isim = isim;
		this.maaş = maaş;
	}

	@Override
	public void bilgiYazdır() {
		System.out.println( "İsim: " + isim + ", Maaş: " + maaş );
	}
}

/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.proxy;

/**
 * GörüntüDosyası.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public abstract class GörüntüDosyası {

	protected String	dosyaİsmi;

	public GörüntüDosyası( final String dosyaİsmi ) {
		this.dosyaİsmi = dosyaİsmi;
	}

	public abstract void görüntüyüGöster();
}

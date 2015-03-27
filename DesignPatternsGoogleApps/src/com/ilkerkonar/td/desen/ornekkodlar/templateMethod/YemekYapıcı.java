/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.templateMethod;

/**
 * YemekYapıcı.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public abstract class YemekYapıcı {

	public void yemekYap() {
		malzemeleriHazırla();
		pişir();
		servisYap();
	}

	protected abstract void malzemeleriHazırla();

	protected abstract void pişir();

	protected abstract void servisYap();
}

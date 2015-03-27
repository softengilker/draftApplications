/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.adapter;

/**
 * İşAdresi.java
 *
 * Tarih bilgisi : May 23, 2014
 */
public class İşAdresi implements Adres {

	@Override
	public String alAçıkAdres() {
		return "Gül Mah. Osman Sok. No:15";
	}

	@Override
	public String alSemt() {
		return "Beşiktaş";
	}

	@Override
	public String alŞehir() {
		return "İstanbul";
	}

	@Override
	public String alÜlke() {
		return "Türkiye";
	}
}

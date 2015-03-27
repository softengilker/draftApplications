/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.builder;

/**
 * KuşbaşılıPideKurucu.java
 *
 * Tarih bilgisi : May 15, 2014
 */
public class KuşbaşılıPideKurucu extends PideKurucu {

	@Override
	public void baharatKur() {
		pide.baharatKoy( "kimyon" );
	}

	@Override
	public void hamurKur() {
		pide.hamurKoy( "kalın hamur" );
	}

	@Override
	public void malzemeKur() {
		pide.malzemeKoy( "kuşbaşı et" );
	}
}

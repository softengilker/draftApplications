/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.builder;

/**
 * LahmacunPideKurucu.java
 *
 * Tarih bilgisi : May 15, 2014
 */
public class LahmacunPideKurucu extends PideKurucu {

	@Override
	public void baharatKur() {
		pide.baharatKoy( "acı biber" );
	}

	@Override
	public void hamurKur() {
		pide.hamurKoy( "ince hamur" );
	}

	@Override
	public void malzemeKur() {
		pide.malzemeKoy( "kıyma" );
	}
}

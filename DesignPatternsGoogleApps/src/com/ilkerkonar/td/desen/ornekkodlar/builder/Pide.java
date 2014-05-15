/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.builder;

/**
 * Pide.java
 *
 * Tarih bilgisi : May 15, 2014
 */
public class Pide {

	private String	malzeme	= "";
	private String	hamur	= "";
	private String	baharat	= "";

	public void malzemeKoy( final String malzeme ) {
		this.malzeme = malzeme;
	}

	public void hamurKoy( final String hamur ) {
		this.hamur = hamur;
	}

	public void baharatKoy( final String baharat ) {
		this.baharat = baharat;
	}

	@Override
	public String toString() {
		return "Pide [malzeme=" + malzeme + ", hamur=" + hamur + ", baharat=" + baharat + "]";
	}
}

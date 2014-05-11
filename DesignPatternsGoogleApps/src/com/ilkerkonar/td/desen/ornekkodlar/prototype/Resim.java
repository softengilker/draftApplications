/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.prototype;

/**
 * Resim.java
 *
 * Tarih bilgisi : May 11, 2014
 */
public class Resim implements Cloneable {

	private final String	renk;
	private final Integer	boy;
	private final Integer	en;

	public Resim( final String renk, final Integer boy, final Integer en ) {
		this.renk = renk;
		this.boy = boy;
		this.en = en;
	}

	protected Resim kopyaAl() {

		try {
			// Resim nesnesi kopyalanıyor.
			return ( Resim ) super.clone();
		} catch ( final CloneNotSupportedException e ) {

			e.printStackTrace();

			return null;
		}
	}

	public String renkAl() {
		return renk;
	}

	public Integer boyAl() {
		return boy;
	}

	public Integer enAl() {
		return en;
	}

	@Override
	public String toString() {
		return "Resim [renk=" + renk + ", boy=" + boy + ", en=" + en + "]";
	}
}

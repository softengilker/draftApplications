/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.flyweight;

import java.util.HashMap;
import java.util.Map;

/**
 * KarakterYaratıcı.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class KarakterYaratıcı {

	private final Map< Character, Karakter >	karakterHavuzu	= new HashMap< Character, Karakter >();

	public Karakter karakterAl( final char karakter ) {
		// Havuzda varsa onu dön.
		if ( karakterHavuzu.containsKey( karakter ) ) {
			return karakterHavuzu.get( karakter );
		}

		// Havuzda yoksa, yeni oluştur bunu dön,
		// havuza da ileriki kullanımlar için ekle.
		final Karakter yeniKarakter = new Karakter( karakter );
		karakterHavuzu.put( karakter, yeniKarakter );

		return yeniKarakter;
	}
}

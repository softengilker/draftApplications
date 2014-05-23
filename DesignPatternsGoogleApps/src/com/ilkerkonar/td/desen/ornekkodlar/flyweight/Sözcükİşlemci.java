/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.flyweight;

/**
 * Sözcükİşlemci.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Sözcükİşlemci {

	public static void main( final String[] args ) {

		final String satır = "Merhaba, nasılsın?";

		final KarakterYaratıcı karakterYaratıcı =
			new KarakterYaratıcı();

		// Satırdaki her bir bilgiyi ekrana bas.
		for ( final char c : satır.toCharArray() ) {
			final Karakter karakter = karakterYaratıcı.karakterAl( c );
			karakter.ekranaBas();
		}
	}
}

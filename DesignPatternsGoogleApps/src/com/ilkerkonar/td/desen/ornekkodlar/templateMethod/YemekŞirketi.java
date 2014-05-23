/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.templateMethod;

/**
 * YemekŞirketi.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class YemekŞirketi {

	public static void main( final String[] args ) {
		// Yemek yapıcılar oluşturuldu.
		final YemekYapıcı[] yemekYapıcılar = new YemekYapıcı[ 2 ];
		yemekYapıcılar[ 0 ] = new ÇorbaYapıcı();
		yemekYapıcılar[ 1 ] = new PilavYapıcı();

		// Yemekler yapıldı.
		for ( final YemekYapıcı yemekYapıcı : yemekYapıcılar ) {
			yemekYapıcı.yemekYap();
		}
	}
}

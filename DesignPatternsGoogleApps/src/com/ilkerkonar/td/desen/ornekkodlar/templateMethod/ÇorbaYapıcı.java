/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.templateMethod;

/**
 * ÇorbaYapıcı.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class ÇorbaYapıcı extends YemekYapıcı {

	@Override
	protected void malzemeleriHazırla() {
		System.out.println( "çorba malzemeleri hazırlandı." );
	}

	@Override
	protected void pişir() {
		System.out.println( "çorba pişirildi." );
	}

	@Override
	protected void servisYap() {
		System.out.println( "çorba servis yapıldı." );
	}
}

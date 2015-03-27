/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.templateMethod;

/**
 * PilavYapıcı.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class PilavYapıcı extends YemekYapıcı {

	@Override
	protected void malzemeleriHazırla() {
		System.out.println( "pilav malzemeleri hazırlandı." );
	}

	@Override
	protected void pişir() {
		System.out.println( "pilav pişirildi." );
	}

	@Override
	protected void servisYap() {
		System.out.println( "pilav servis yapıldı." );
	}
}

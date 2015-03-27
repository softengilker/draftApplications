/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.adapter;

/**
 * Satıcı.java
 *
 * Tarih bilgisi : May 23, 2014
 */
public class Satıcı {

	public static void main( final String[] args ) {

		// Örnek bir Müşteri nesnesi yarat.
		final Müşteri müşteri = new Müşteri( "105", "açıklama", "Atatürk Mah. Gazi Sok. No:15", "Sancaktepe",
			"İstanbul", "Türkiye" );

		// Müşteri sınıfının adaptörünü yarat.
		final MüşteriFaturaAdresiAdaptörü adaptör = new MüşteriFaturaAdresiAdaptörü( müşteri );

		// Artık "Müşteri" sınıfı da adaptör sayesinde bir
		// "Adres" sınıfıdır.
		final Adres adres = adaptör;

		// "Adres" sınıfının içeriğini yazdır.
		System.out.println( "Adres:" + adres.alAçıkAdres() );
		System.out.println( "Semt:" + adres.alSemt() );
		System.out.println( "Şehir:" + adres.alŞehir() );
		System.out.println( "Ülke:" + adres.alÜlke() );
	}
}

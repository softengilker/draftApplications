/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 * 
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.singleton;

/**
 * Deneme.java
 */
public class Deneme {

	/**
	 * @param args
	 */
	public static void main( final String[] args ) {

		// TekNesne sınıfından bir tane bulunabilir ve nesne üzerindeki 
		// "public" yordam ve değişkenlere, "TekNesne.nesneAl()" ile
		// ulaşılabilir. "nesneAl" yordamı, "TekNesne" sınıfının oluşturulan
		// tek nesnesine ulaşır.
		final String kullanıcıİsmi = TekNesne.nesneAl().getKullanıcıİsmi();

		System.out.println( "Kullanıcı ismi: " + kullanıcıİsmi );
		System.out.println( "Şifre: " + TekNesne.nesneAl().getŞifre() );
	}
}

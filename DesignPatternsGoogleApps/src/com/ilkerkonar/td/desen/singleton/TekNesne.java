/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 * 
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.singleton;

/**
 * TekNesne.java
 */
public class TekNesne {

	// private static tek bir nesne oluşturulur.
	private static TekNesne	tekNesne	= new TekNesne();

	/** 
	 * Yapıcı yordam ( constructor ) private olduğu için dışarıdan ulaşılamaz ve sınıfın nesnesi oluşturulamaz.	
	 */
	private TekNesne() {
		System.out.println( "'TekNesne' sınıfının nesnesi bellekte oluşturuluyor." );
	}

	/**
	 * @return Oluşturulan tek nesneye bu yordam üzerinden erişim sağlanır. 
	 */
	public static TekNesne nesneAl() {
		return tekNesne;
	}

	/**
	 * @return Tüm uygulama boyunca kullanılacak "kullanıcı ismi" bilgisini döner.
	 */
	public String getKullanıcıİsmi() {
		return "ilker";
	}

	/**
	 * @return Tüm uygulama boyunca kullanılacak "şifre" bilgisini döner.
	 */
	public String getŞifre() {
		return "12345";
	}
}

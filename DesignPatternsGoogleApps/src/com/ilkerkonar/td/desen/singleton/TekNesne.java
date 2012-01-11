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
	}

	/**
	 * @return Oluşturulan tek nesneye bu yordam üzerinden erişim sağlanır. 
	 */
	public static TekNesne nesneAl() {
		return tekNesne;
	}
}

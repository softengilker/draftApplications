/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.facade;

/**
 * İşlemci.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class İşlemci {

	public void açıl() {
		System.out.println( "İşlemci açıldı." );
	}

	public void konumlan( final String adres ) {
		System.out.println( "İşlemci " + adres + "'ine konumlandı." );
	}

	public void çalış() {
		System.out.println( "İşlemci çalıştı." );
	}
}

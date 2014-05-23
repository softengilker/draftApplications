/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.chainOfResponsibility;

/**
 * İşlev.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public abstract class İşlev {

	protected İşlev	sonrakiİşlev;

	protected İşlev sonrakiniAyarla( final İşlev sonraki ) {
		sonrakiİşlev = sonraki;
		return sonraki;
	}

	protected void çalıştır( final String işlemVerisi ) {

		// İşlevi yerine getir.
		işleviYerineGetir( işlemVerisi );

		// Sonraki işlev boş değilse, ona geç.
		if ( sonrakiİşlev != null ) {
			sonrakiİşlev.çalıştır( işlemVerisi );
		}
	}

	protected abstract void işleviYerineGetir( String işlemVerisi );
}

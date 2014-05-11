/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 * 
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.abstractFactory;

/**
 * @author İlker KONAR, Kıdemli Yazılım Uzmanı
 *
 * Tarih Bilgisi: 29 Oca 2013
 *
 */
public class Eposta implements Bildirim {

	@Override
	public void mesajGönder( final String metin ) {
		System.out.println( "E-posta ile '" + metin + "' içeriği gönderilmiştir." );
	}
}

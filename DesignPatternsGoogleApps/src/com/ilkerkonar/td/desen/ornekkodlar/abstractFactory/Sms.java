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
public class Sms implements Bildirim {

	@Override
	public void mesajGönder( final String metin ) {
		System.out.println( "Sms ile '" + metin + "' içeriği gönderilmiştir." );
	}
}

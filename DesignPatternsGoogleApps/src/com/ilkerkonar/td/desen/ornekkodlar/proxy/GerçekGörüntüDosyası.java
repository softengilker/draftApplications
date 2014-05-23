/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.proxy;

/**
 * GerçekGörüntüDosyası.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class GerçekGörüntüDosyası extends GörüntüDosyası {

	public GerçekGörüntüDosyası( final String dosyaİsmi ) {
		super( dosyaİsmi );
		görüntüDosyasınıSabitDisktenYükle();
	}

	private void görüntüDosyasınıSabitDisktenYükle() {
		// Pahalı ve zaman alıcı bir işlem.
		System.out.println( "Görüntü dosyası sabit diskten yüklendi." );
	}

	@Override
	public void görüntüyüGöster() {
		System.out.println( "Görüntü dosyası görüntülendi." );
	}
}

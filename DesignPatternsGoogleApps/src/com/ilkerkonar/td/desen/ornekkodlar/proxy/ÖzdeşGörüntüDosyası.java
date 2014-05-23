/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.proxy;

/**
 * ÖzdeşGörüntüDosyası.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class ÖzdeşGörüntüDosyası extends GörüntüDosyası {

	private GörüntüDosyası	dosya;

	public ÖzdeşGörüntüDosyası( final String dosyaİsmi ) {
		super( dosyaİsmi );
	}

	@Override
	public void görüntüyüGöster() {
		if ( dosya == null ) {
			// Yalnızca istendiğinde çalıştır.
			dosya = new GerçekGörüntüDosyası( dosyaİsmi );
		}

		dosya.görüntüyüGöster();
	}
}

/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.composite;

/**
 * Şirket.java
 *
 * Tarih bilgisi : May 23, 2014
 */
public class Şirket {

	public static void main( final String[] args ) {

		// Örnek bir hiyerarşi yaratılıyor.
		final EkipÜyesi ekipÜyesi1 = new EkipÜyesi( "Turan", "1000 lira" );
		final EkipÜyesi ekipÜyesi2 = new EkipÜyesi( "Ali", "700 lira" );
		final EkipÜyesi ekipÜyesi3 = new EkipÜyesi( "Kemal", "1750 lira" );
		final EkipÜyesi ekipÜyesi4 = new EkipÜyesi( "Veli", "1050 lira" );
		final EkipÜyesi ekipÜyesi5 = new EkipÜyesi( "Aslan", "1400 lira" );

		final EkipYöneticisi yönetici1 = new EkipYöneticisi();
		final EkipYöneticisi yönetici2 = new EkipYöneticisi();
		final EkipYöneticisi başYönetici = new EkipYöneticisi();

		yönetici1.ekipÜyesiEkle( ekipÜyesi1 );
		yönetici1.ekipÜyesiEkle( ekipÜyesi4 );
		yönetici1.ekipÜyesiEkle( ekipÜyesi5 );

		yönetici2.ekipÜyesiEkle( ekipÜyesi2 );
		yönetici2.ekipÜyesiEkle( ekipÜyesi3 );

		başYönetici.ekipÜyesiEkle( yönetici1 );
		başYönetici.ekipÜyesiEkle( yönetici2 );

		// Ağaç yapısı üzerinde dolaşarak,
		// tüm işçilerin bilgileri yazılır.
		başYönetici.bilgiYazdır();
	}
}

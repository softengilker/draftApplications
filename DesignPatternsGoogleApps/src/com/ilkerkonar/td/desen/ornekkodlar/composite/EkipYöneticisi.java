/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.composite;

import java.util.ArrayList;
import java.util.List;

/**
 * EkipYöneticisi.java
 *
 * Tarih bilgisi : May 23, 2014
 */
public class EkipYöneticisi implements İşçi {

	private final List< İşçi >	ekipÜyeleri	= new ArrayList< İşçi >();

	@Override
	public void bilgiYazdır() {
		for ( final İşçi ekipÜyesi : ekipÜyeleri ) {
			ekipÜyesi.bilgiYazdır();
		}
	}

	public void ekipÜyesiEkle( final İşçi işçi ) {
		ekipÜyeleri.add( işçi );
	}

	public void ekipÜyesiÇıkar( final İşçi işçi ) {
		ekipÜyeleri.remove( işçi );
	}
}

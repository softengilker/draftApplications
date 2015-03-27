/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * SolMenu.java
 */
public class SolMenu {

	public static final Map< String, List< SolMenuBirim >>	menuMap	= new HashMap< String, List< SolMenuBirim >>();

	static {
		final List< SolMenuBirim > anaListe = new ArrayList< SolMenuBirim >();
		anaListe.add( new SolMenuBirim( "Tasarım Desenleri Nedir?", "/jsp/tasdes/tasdesnedir.jsp" ) );
		anaListe.add( new SolMenuBirim( "Tasarım Desenleri Tarihçesi", "/jsp/tasdes/tasdestarihcesi.jsp" ) );
		anaListe.add( new SolMenuBirim( "Tasarım Desenleri Sınıflandırması", "/jsp/tasdes/tasdessiniflandirma.jsp" ) );

		final List< SolMenuBirim > yaraticiListe = new ArrayList< SolMenuBirim >();
		yaraticiListe.add( new SolMenuBirim( "Tek Nesne ( Singleton )", "/jsp/tasdesincele/singleton.jsp" ) );
		yaraticiListe
		.add( new SolMenuBirim( "Fabrika Yordam ( Factory Method )", "/jsp/tasdesincele/factoryMethod.jsp" ) );
		yaraticiListe.add( new SolMenuBirim( "Soyut Fabrika ( Abstract Factory )",
			"/jsp/tasdesincele/abstractFactory.jsp" ) );
		yaraticiListe.add( new SolMenuBirim( "Kopya Nesne ( Prototype )", "/jsp/tasdesincele/prototype.jsp" ) );
		yaraticiListe.add( new SolMenuBirim( "Kurucu ( Builder )", "/jsp/tasdesincele/builder.jsp" ) );

		final List< SolMenuBirim > yapisalListe = new ArrayList< SolMenuBirim >();
		yapisalListe.add( new SolMenuBirim( "Adaptör ( Adapter )", "/jsp/tasdesincele/adapter.jsp" ) );
		yapisalListe.add( new SolMenuBirim( "Ağaç Yapısı ( Composite )", "/jsp/tasdesincele/composite.jsp" ) );
		yapisalListe.add( new SolMenuBirim( "Dekorasyon ( Decorator )", "/jsp/tasdesincele/decorator.jsp" ) );
		yapisalListe.add( new SolMenuBirim( "Hafif Ağırlık ( Flyweight )", "/jsp/tasdesincele/flyweight.jsp" ) );
		yapisalListe.add( new SolMenuBirim( "Köprü ( Bridge )", "/jsp/tasdesincele/bridge.jsp" ) );
		yapisalListe.add( new SolMenuBirim( "Ön Yüz ( Facade )", "/jsp/tasdesincele/facade.jsp" ) );
		yapisalListe.add( new SolMenuBirim( "Özdeş Nesne ( Proxy )", "/jsp/tasdesincele/proxy.jsp" ) );

		final List< SolMenuBirim > davranissalListe = new ArrayList< SolMenuBirim >();
		davranissalListe.add( new SolMenuBirim( "Arabulucu ( Mediator )", "/jsp/tasdesincele/mediator.jsp" ) );
		davranissalListe.add( new SolMenuBirim( "Durum ( State )", "/jsp/tasdesincele/state.jsp" ) );
		davranissalListe.add( new SolMenuBirim( "Gözlemci ( Observer )", "/jsp/tasdesincele/observer.jsp" ) );
		davranissalListe.add( new SolMenuBirim( "Hatırlayıcı ( Memento )", "/jsp/tasdesincele/memento.jsp" ) );
		davranissalListe
		.add( new SolMenuBirim( "Kalıp Yordam ( Template Method )", "/jsp/tasdesincele/templateMethod.jsp" ) );
		davranissalListe.add( new SolMenuBirim( "Komut ( Command )", "/jsp/tasdesincele/command.jsp" ) );
		davranissalListe.add( new SolMenuBirim( "Sorumluluk Zinciri ( Chain of Res. )",
			"/jsp/tasdesincele/chainOfResponsibility.jsp" ) );
		davranissalListe.add( new SolMenuBirim( "Strateji ( Strategy )", "/jsp/tasdesincele/strategy.jsp" ) );
		davranissalListe.add( new SolMenuBirim( "Yorumlayıcı ( Interpreter )", "/jsp/tasdesincele/interpreter.jsp" ) );
		davranissalListe.add( new SolMenuBirim( "Ziyaretçi ( Visitor )", "/jsp/tasdesincele/visitor.jsp" ) );

		final List< SolMenuBirim > blogListe = new ArrayList< SolMenuBirim >();
		blogListe.add( new SolMenuBirim( "Bloglarım", "/jsp/tasdes/blog.jsp" ) );

		menuMap.put( "ana", anaListe );
		menuMap.put( "yarataticitd", yaraticiListe );
		menuMap.put( "yapisaltd", yapisalListe );
		menuMap.put( "davranissaltd", davranissalListe );
		menuMap.put( "blog", blogListe );
	}
}

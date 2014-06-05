<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="davranissaltd"/>
<meta name="currentPageName" content="observer"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Davranışsal Tasarım Desenleri</content>


<p class="contentHeader">Gözlemci ( Observer ) Tasarım Deseni</p>
<p><font class="icerikKodVurgu">Bir nesnenin durumlarında değişiklik olduğunda, bu değişikliklerden haberdar olmak isteyen diğer nesnelere haber verilmesi gerektiği durumlarda bu tasarım deseni kullanılır.</font> Bu haber verilme işlemi sırasında, haber verilecek nesnelerin birbirlerine bağımlı olması istenmez. Yani kısaca dinleyici konumunda bulunan bir çok nesne, bir nesnenin durumunu sürekli gözlemler. Bir değişiklik sırasında gözlemcilere haber verilir.</p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Bu örnekte, gözlemlenen konu herhangi bir ürünün fiyatıdır. Bu fiyatı gözlemleyenler ise, bu ürünü almak isteyen müşterilerdir. <font class="icerikKodVurgu">Müşteri1</font> ve <font class="icerikKodVurgu">Müşteri2</font> sınıfları <font class="icerikKodVurgu">FiyatGözlemcisi</font> arayüz sınıfından türemektedirler. Bu sınıflardaki güncelle yordamı çağrıldığında, müşteriler yeni fiyat bilgisini alıp ona göre bir hareket belirlemektedirler. Gözlemci tasarım deseninde bir tane konu nesnesi bulunmaktadır. Bu nesne gözlemlenen şeyi belirler. Bu örnekteki konu fiyat olduğu için, ilgili sınıfa <font class="icerikKodVurgu">FiyatKonusu</font> ismi verilmektedir. Bu sınıfta gözlemcileri içeren, bir tane liste tutulmaktadır. Bu listeye ekleme yapabilen, <font class="icerikKodVurgu">gözlemciEkle</font> yordamı bulunmaktadır. Ayrıca fiyatın güncellendiğini gözlemcilere haber vermek için <font class="icerikKodVurgu">gözlemcilereHaberVer</font> yordamı bulunmaktadır. Bu yordam listedeki tüm gözlemcilerin güncelle yordamını çağırarak, onların değişiklikten haberdar olup, ona göre bir hareket almalarını sağlar. <font class="icerikKodVurgu">Satıcı</font> sınıfı da istemci olup, bu tasarım desenini sınamamıza yarar.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">Konu.java</a></li>
		<li><a href="#tabs-3">FiyatKonusu.java</a></li>
		<li><a href="#tabs-4">FiyatGözlemcisi.java</a></li>
		<li><a href="#tabs-5">Müşteri1.java</a></li>
		<li><a href="#tabs-6">Müşteri2.java</a></li>
		<li><a href="#tabs-7">Satıcı.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-8">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/observer.png" />
	</div>
	<div id="tabs-2">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		 <br />
<script type="text/javascript"><!--
google_ad_client = "ca-pub-7707439910959753";
/* Yeni Tasarım Desenleri Kod İçi Uzun2 */
google_ad_slot = "3718320695";
google_ad_width = 468;
google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>		
		<br /> 		 		 
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.observer;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Konu.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">Konu </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">g&ouml;zlemcilereHaberVer</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">g&ouml;zlemciEkle</span><span class="java8">( </span><span class="java10">FiyatG&ouml;zlemcisi g&ouml;zlemci </span><span class="java8">)</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>	
	</div>
	<div id="tabs-3">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.observer;<br />
		<br />
		</span><span class="java4">import </span><span class="java10">java.util.ArrayList;<br />
		</span><span class="java4">import </span><span class="java10">java.util.List;<br />
		<br />
		</span><span class="java14">/**<br />
		 * FiyatKonusu.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">FiyatKonusu </span><span class="java4">implements </span><span class="java10">Konu </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">List&lt; FiyatG&ouml;zlemcisi &gt;&#xA0; g&ouml;zlemciListesi&#xA0; = </span><span class="java4">new </span><span class="java10">ArrayList&lt; FiyatG&ouml;zlemcisi &gt;</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java4">private </span><span class="java9">long&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">fiyat;<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">g&ouml;zlemcilereHaberVer</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">for </span><span class="java8">( </span><span class="java4">final </span><span class="java10">FiyatG&ouml;zlemcisi g&ouml;zlemci : g&ouml;zlemciListesi </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">g&ouml;zlemci.g&uuml;ncelle</span><span class="java8">( </span><span class="java10">fiyat </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		&#xA0; }<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">g&ouml;zlemciEkle</span><span class="java8">( </span><span class="java4">final </span><span class="java10">FiyatG&ouml;zlemcisi g&ouml;zlemci </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">g&ouml;zlemciListesi.add</span><span class="java8">( </span><span class="java10">g&ouml;zlemci </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">fiyatDeğiştir</span><span class="java8">( </span><span class="java4">final </span><span class="java9">long </span><span class="java10">fiyat </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.fiyat = fiyat;<br />
		&#xA0;&#xA0;&#xA0; g&ouml;zlemcilereHaberVer</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-4">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		 <br />
<script type="text/javascript"><!--
google_ad_client = "ca-pub-7707439910959753";
/* Yeni Tasarım Desenleri Kod İçi Uzun2 */
google_ad_slot = "3718320695";
google_ad_width = 468;
google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>		
		<br /> 		 		 
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.observer;<br />
		<br />
		</span><span class="java14">/**<br />
		 * FiyatG&ouml;zlemcisi.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">FiyatG&ouml;zlemcisi </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">g&uuml;ncelle</span><span class="java8">( </span><span class="java9">long </span><span class="java10">yeniFiyat </span><span class="java8">)</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>	
	</div>
	<div id="tabs-5">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.observer;<br />
		<br />
		</span><span class="java14">/**<br />
		 * M&uuml;şteri1.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">M&uuml;şteri1 </span><span class="java4">implements </span><span class="java10">FiyatG&ouml;zlemcisi </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">g&uuml;ncelle</span><span class="java8">( </span><span class="java4">final </span><span class="java9">long </span><span class="java10">yeniFiyat </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;M&uuml;şteri 1, yeni fiyatı &ouml;ğrendi: &#34; </span><span class="java10">+ yeniFiyat </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-6">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		 <br />
<script type="text/javascript"><!--
google_ad_client = "ca-pub-7707439910959753";
/* Yeni Tasarım Desenleri Kod İçi Uzun2 */
google_ad_slot = "3718320695";
google_ad_width = 468;
google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>		
		<br /> 		 		 
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.observer;<br />
		<br />
		</span><span class="java14">/**<br />
		 * M&uuml;şteri2.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">M&uuml;şteri2 </span><span class="java4">implements </span><span class="java10">FiyatG&ouml;zlemcisi </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">g&uuml;ncelle</span><span class="java8">( </span><span class="java4">final </span><span class="java9">long </span><span class="java10">yeniFiyat </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;M&uuml;şteri 2, yeni fiyatı &ouml;ğrendi: &#34; </span><span class="java10">+ yeniFiyat </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-7">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		 <br />
<script type="text/javascript"><!--
google_ad_client = "ca-pub-7707439910959753";
/* Yeni Tasarım Desenleri Kod İçi Uzun2 */
google_ad_slot = "3718320695";
google_ad_width = 468;
google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>		
		<br /> 		 		 
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.observer;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Satıcı.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Satıcı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Bir g&ouml;zlem konusu yaratılıyor.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">FiyatKonusu konu = </span><span class="java4">new </span><span class="java10">FiyatKonusu</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// G&ouml;zlemci 1 yaratılıyor ve g&ouml;zlem konusuna ekleniyor.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">konu.g&ouml;zlemciEkle</span><span class="java8">( </span><span class="java4">new </span><span class="java10">M&uuml;şteri1</span><span class="java8">() )</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// G&ouml;zlemci 2 yaratılıyor ve g&ouml;zlem konusuna ekleniyor.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">konu.g&ouml;zlemciEkle</span><span class="java8">( </span><span class="java4">new </span><span class="java10">M&uuml;şteri2</span><span class="java8">() )</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// G&ouml;zlem konusundaki bir değişiklik, g&ouml;zlemcilere haber veriliyor.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">konu.fiyatDeğiştir</span><span class="java8">( </span><span class="java7">50L </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-8">
		<span class="ekrancikti">		
			Müşteri 1, yeni fiyatı öğrendi: 50<br/>
			Müşteri 2, yeni fiyatı öğrendi: 50<br/>		
		</span>			
	</div>	
</div>

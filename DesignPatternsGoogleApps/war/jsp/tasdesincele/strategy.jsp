<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="davranissaltd"/>
<meta name="currentPageName" content="strategy"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Davranışsal Tasarım Desenleri</content>


<p class="contentHeader">Strateji ( Strategy ) Tasarım Deseni</p>
<p>Bir işlem için farklı yöntemlerin uygulanabilir olduğu durumlarda, bu yöntemi kullanacak olan nesne, hangi yöntemin uygulanacağını seçer. Çünkü bu içerik nesnesi, yöntemleri belirleyen üst sınıfı içerir. Farklı yöntem veya strateji alt sınıfları da, bu üst sınıftan türerler. Bu tasarım deseniyle, yöntemin nasıl uygulanması gerektiği ile ilgili detaylar, bu yöntemi kullanacak nesneden ayrılmış olur. Ayrıca bu tasarım deseninin kullanılmasıyla, kod uzun "if/else" veya "switch" ifadelerinden ayıklanır.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Örnekte <font class="icerikKodVurgu">BorçHesaplamaYöntemi</font> sınıfı strateji üst sınıfıdır. Bu sınıf bir borç hesabının nasıl yapılması gerektiği yöntemini belirleyen üst sınıftır. Bu yöntemin detayını içeren ve bu sınıftan türeyen <font class="icerikKodVurgu">YöntemA</font> ve <font class="icerikKodVurgu">YöntemB</font> strateji sınıfları bulunmaktadır. <font class="icerikKodVurgu">BorçVerenKurum</font> sınıfı içerik sınıfı olup, bir tane strateji sınıfını içerir. Bu sınıfın borç hesaplama yöntemini bu sınıf belirler. <font class="icerikKodVurgu">Müşteri</font> sınıfı da, sistemi sınayan istemci nesnesidir.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">BorçHesaplamaYöntemi.java</a></li>
		<li><a href="#tabs-3">YöntemA.java</a></li>
		<li><a href="#tabs-4">YöntemB.java</a></li>
		<li><a href="#tabs-5">BorçVerenKurum.java</a></li>
		<li><a href="#tabs-6">Müşteri.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-7">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/strateji.png" />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.strategy;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Bor&ccedil;HesaplamaY&ouml;ntemi.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">Bor&ccedil;HesaplamaY&ouml;ntemi </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">bor&ccedil;Hesapla</span><span class="java8">()</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>	
	</div>
	<div id="tabs-3">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.strategy;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Y&ouml;ntemA.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Y&ouml;ntemA </span><span class="java4">implements </span><span class="java10">Bor&ccedil;HesaplamaY&ouml;ntemi </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">bor&ccedil;Hesapla</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;A y&ouml;ntemiyle bor&ccedil; hesaplandı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.strategy;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Y&ouml;ntemA.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Y&ouml;ntemB </span><span class="java4">implements </span><span class="java10">Bor&ccedil;HesaplamaY&ouml;ntemi </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">bor&ccedil;Hesapla</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;B y&ouml;ntemiyle bor&ccedil; hesaplandı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-5">
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.strategy;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Bor&ccedil;VerenKurum.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Bor&ccedil;VerenKurum </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">Bor&ccedil;HesaplamaY&ouml;ntemi&#xA0; y&ouml;ntem;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Bor&ccedil;VerenKurum</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Bor&ccedil;HesaplamaY&ouml;ntemi y&ouml;ntem </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.y&ouml;ntem = y&ouml;ntem;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">bor&ccedil;Hesapla</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">y&ouml;ntem.bor&ccedil;Hesapla</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.strategy;<br />
		<br />
		</span><span class="java14">/**<br />
		 * M&uuml;şteri.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">M&uuml;şteri </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// İki farklı y&ouml;ntem ile bor&ccedil; veren kurum nesneleri yaratıldı.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Bor&ccedil;VerenKurum kurum1 = </span><span class="java4">new </span><span class="java10">Bor&ccedil;VerenKurum</span><span class="java8">( </span><span class="java4">new </span><span class="java10">Y&ouml;ntemA</span><span class="java8">() )</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Bor&ccedil;VerenKurum kurum2 = </span><span class="java4">new </span><span class="java10">Bor&ccedil;VerenKurum</span><span class="java8">( </span><span class="java4">new </span><span class="java10">Y&ouml;ntemB</span><span class="java8">() )</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Bor&ccedil; hesaplamaları &ccedil;alıştırıldı.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">kurum1.bor&ccedil;Hesapla</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; kurum2.bor&ccedil;Hesapla</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-7">
		<span class="ekrancikti">		
			A yöntemiyle borç hesaplandı.<br/>
			B yöntemiyle borç hesaplandı.<br/>
		</span>			
	</div>
</div>


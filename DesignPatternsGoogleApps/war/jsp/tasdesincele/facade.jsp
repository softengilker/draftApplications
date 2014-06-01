<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="yapisaltd"/>
<meta name="currentPageName" content="facade"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Yapısal Tasarım Desenleri</content>


<p class="contentHeader">Ön Yüz ( Facade ) Tasarım Deseni</p>
<p>Bu tasarım deseni, sistemin detaylarını saklayarak, istemcinin dışarıdan sisteme ulaşabilmesi için tek bir ön yüz sunar. Sistemdeki alt sınıflara, bu ön yüz sınıfı ile ulaşılır. İstemci yanlızca sistemdeki bu ön yüz sınıfını bilir. Yani kısaca ön yüz sınıfı, sistemin dışarıya açılmış bir kapısı gibidir.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Örnekte bir bilgisayar sistemi görmektesiniz. Bilgisayar sisteminin sabit disk, bellek ve işlemci isminde bileşenleri vardır. İstemci durumunda olan bilgisayar kullanıcısı, yalnızca bilgisayara <font class="icerikKodVurgu">Bilgisayar</font> sınıfından ulaşabilmektedir. Örnekteki ön yüz sınıfı bu sınıftır. Örnekte olduğu gibi, istemci bilgisayarı açmak istediğinde Bilgisayar sınıfının aç yordamını kullanarak, bu istediğini yerine getirebilir. Ön yüz sınıfı ise, bu istek için bilgisayarın diğer bileşenlerine kendisi ulaşarak sistemi yönlendirir. Yani Bilgisayar sınıfı bilgisayar sistemine ulaşmakta bir ön yüzdür. İstemci sistemin diğer bileşenlerini bilmez ve bunlara doğrudan ulaşamaz.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">Bellek.java</a></li>
		<li><a href="#tabs-3">İşlemci.java</a></li>
		<li><a href="#tabs-4">SabitDisk.java</a></li>
		<li><a href="#tabs-5">Bilgisayar.java</a></li>
		<li><a href="#tabs-6">BilgisayarKullanıcısı.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-7">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/facade.png"/>
	</div>
	<div id="tabs-2">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.facade;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Bellek.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Bellek </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">y&uuml;kle</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String adres, </span><span class="java4">final </span><span class="java10">String bilgi </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Bellek &#34; </span><span class="java10">+ adres + </span><span class="java5">&#34;'ine, '&#34; </span><span class="java10">+ bilgi + </span><span class="java5">&#34;' bilgisini y&uuml;kledi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-3">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />		
		 <script type="text/javascript"><!--
google_ad_client = "ca-pub-7707439910959753";
/* Yeni Tasarım Desenleri Kod İçi */
google_ad_slot = "5334654695";
google_ad_width = 234;
google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>		
		<br />		 		 
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.facade;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Bilgisayar.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Bilgisayar </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">a&ccedil;</span><span class="java8">() {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// &Ouml;n y&uuml;z sınıfının kullandığı ve istemcinin<br />
		&#xA0;&#xA0;&#xA0; // bilmediği detay sınıflar.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">İşlemci işlemci = </span><span class="java4">new </span><span class="java10">İşlemci</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Bellek bellek = </span><span class="java4">new </span><span class="java10">Bellek</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">SabitDisk disk = </span><span class="java4">new </span><span class="java10">SabitDisk</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; işlemci.a&ccedil;ıl</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">String a&ccedil;ılış_bilgisi = disk.oku</span><span class="java8">( </span><span class="java5">&#34;başlangı&ccedil; sekt&ouml;r&uuml;:4545656&#34;</span><span class="java10">, </span><span class="java5">&#34;sekt&ouml;r uzunluğu:1222&#34; </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; bellek.y&uuml;kle</span><span class="java8">( </span><span class="java5">&#34;a&ccedil;ılış adresi:1522262&#34;</span><span class="java10">, a&ccedil;ılış_bilgisi </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; işlemci.konumlan</span><span class="java8">( </span><span class="java5">&#34;a&ccedil;ılış adresi:1522262&#34; </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; işlemci.&ccedil;alış</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.facade;<br />
		<br />
		</span><span class="java14">/**<br />
		 * İşlemci.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">İşlemci </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">a&ccedil;ıl</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;İşlemci a&ccedil;ıldı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">konumlan</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String adres </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;İşlemci &#34; </span><span class="java10">+ adres + </span><span class="java5">&#34;'ine konumlandı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;alış</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;İşlemci &ccedil;alıştı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
/* Yeni Tasarım Desenleri Kod İçi */
google_ad_slot = "5334654695";
google_ad_width = 234;
google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>		
		<br />		 		 
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.facade;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Bilgisayar.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Bilgisayar </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">a&ccedil;</span><span class="java8">() {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// &Ouml;n y&uuml;z sınıfının kullandığı ve istemcinin<br />
		&#xA0;&#xA0;&#xA0; // bilmediği detay sınıflar.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">İşlemci işlemci = </span><span class="java4">new </span><span class="java10">İşlemci</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Bellek bellek = </span><span class="java4">new </span><span class="java10">Bellek</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">SabitDisk disk = </span><span class="java4">new </span><span class="java10">SabitDisk</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; işlemci.a&ccedil;ıl</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">String a&ccedil;ılış_bilgisi = disk.oku</span><span class="java8">( </span><span class="java5">&#34;başlangı&ccedil; sekt&ouml;r&uuml;:4545656&#34;</span><span class="java10">, </span><span class="java5">&#34;sekt&ouml;r uzunluğu:1222&#34; </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; bellek.y&uuml;kle</span><span class="java8">( </span><span class="java5">&#34;a&ccedil;ılış adresi:1522262&#34;</span><span class="java10">, a&ccedil;ılış_bilgisi </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; işlemci.konumlan</span><span class="java8">( </span><span class="java5">&#34;a&ccedil;ılış adresi:1522262&#34; </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; işlemci.&ccedil;alış</span><span class="java8">()</span><span class="java10">;<br />
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
/* Yeni Tasarım Desenleri Kod İçi */
google_ad_slot = "5334654695";
google_ad_width = 234;
google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>		
		<br />		 		 
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.facade;<br />
		<br />
		</span><span class="java14">/**<br />
		 * BilgisayarKullanıcısı.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">BilgisayarKullanıcısı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// &Ouml;n y&uuml;z sınıfını yarat.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Bilgisayar bilgisayar = </span><span class="java4">new </span><span class="java10">Bilgisayar</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// &Ouml;n y&uuml;z sınıfından sisteme bir iş yaptır.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">bilgisayar.a&ccedil;</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-7">
		<span class="ekrancikti">		
			İşlemci açıldı.<br/>
			Sabit disk 'başlangıç sektörü:4545656' adresinden sektör uzunluğu:1222 kadar bilgiyi okudu.<br/>
			Bellek açılış adresi:1522262'ine, 'okunan_bilgi' bilgisini yükledi.<br/>
			İşlemci açılış adresi:1522262'ine konumlandı.<br/>
			İşlemci çalıştı.<br/>
		</span>			
	</div>
</div>	
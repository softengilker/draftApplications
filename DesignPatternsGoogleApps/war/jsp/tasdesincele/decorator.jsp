<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="yapisaltd"/>
<meta name="currentPageName" content="decorator"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Yapısal Tasarım Desenleri</content>


<p class="contentHeader">Dekorasyon ( Decorator ) Tasarım Deseni</p>
<p>Bu desen, nesneye ek özellikler eklemek için kullanılır. Bu özellikler eklenirken, esas nesnenin bundan haberi yoktur, bu nesnede kod değişikliği gerekmez. Ayrıca nesnenin özeliklerini arttırmak için, temel nesneden türetilip de, yeni nesneler yaratılmasına gerek olmaz. <font class="icerikKodVurgu">Yani bu desen, bir nesneye alt sınıflar yaratılmaksızın, dinamik olarak yeni özellikler kazandırmak için kullanılır.</font><p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Örnekte, bir telefon nesnesine dekorasyon ile yeni özellikler kazandırılacaktır. Basit telefon nesnesine mms ve kamera özellikleri dekorasyon tasarım deseni ile nasıl eklendiği örneklenmiştir. Örnekte görüldüğü gibi ek özellikler Telefon nesnesinden yeni çeşitli nesneler türetilip alt sınıflar oluşturmak ile değil de, bunun yerine Telefon arayüzünden türemiş bir dekorasyon nesnesinden türeyen çeşitli özellikler kazandıran dekorasyon nesneleriyle yapılmaktadır. Her bir dekarasyon sınıfı, Telefon nesnesine yeni özellikler kazandırmaktadır. Dekarasyon sınıfları aynı nesneden ( Telefon ) dan türedikleri için örnekte olduğu gibi iç içe kullanılabilirler.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">Telefon.java</a></li>
		<li><a href="#tabs-3">BasitTelefon.java</a></li>
		<li><a href="#tabs-4">TelefonDekarasyoncusu.java</a></li>
		<li><a href="#tabs-5">MMSliTelefonDekarasyoncusu.java</a></li>
		<li><a href="#tabs-6">KameralıTelefonDekarasyoncusu.java</a></li>
		<li><a href="#tabs-7">Telefoncu.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-8">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/dekorasyon.png" />
	</div>
	<div id="tabs-2">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.decorator;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Telefon.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">Telefon </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">telefonuOluştur</span><span class="java8">()</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.decorator;<br />
		<br />
		</span><span class="java14">/**<br />
		 * BasitTelefon.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">BasitTelefon </span><span class="java4">implements </span><span class="java10">Telefon </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">telefonuOluştur</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Basit telefon oluştu.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.decorator;<br />
		<br />
		</span><span class="java14">/**<br />
		 * TelefonDekarasyoncusu.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public abstract class </span><span class="java10">TelefonDekarasyoncusu </span><span class="java4">implements </span><span class="java10">Telefon </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">protected </span><span class="java10">Telefon&#xA0; dekoreTelefon;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">TelefonDekarasyoncusu</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Telefon telefon </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">dekoreTelefon = telefon;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.decorator;<br />
		<br />
		</span><span class="java14">/**<br />
		 * MMSliTelefonDekarasyoncusu.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">MMSliTelefonDekarasyoncusu<br />
		</span><span class="java4">extends </span><span class="java10">TelefonDekarasyoncusu </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">MMSliTelefonDekarasyoncusu</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Telefon telefon </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">super</span><span class="java8">( </span><span class="java10">telefon </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">telefonuOluştur</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">dekoreTelefon.telefonuOluştur</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; mms&Ouml;zelliğiEkle</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">private </span><span class="java9">void </span><span class="java10">mms&Ouml;zelliğiEkle</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;MMS &ouml;zelliği eklendi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.decorator;<br />
		<br />
		</span><span class="java14">/**<br />
		 * KameralıTelefonDekarasyoncusu.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">KameralıTelefonDekarasyoncusu<br />
		</span><span class="java4">extends </span><span class="java10">TelefonDekarasyoncusu </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">KameralıTelefonDekarasyoncusu</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Telefon telefon </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">super</span><span class="java8">( </span><span class="java10">telefon </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">telefonuOluştur</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">dekoreTelefon.telefonuOluştur</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; kameraEkle</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">private </span><span class="java9">void </span><span class="java10">kameraEkle</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Kamera eklendi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.decorator;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Telefoncu.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Telefoncu </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Telefon nesnesi dekorasyonla oluştur.<br />
		&#xA0;&#xA0;&#xA0; // BasitTelefon nesnesinden t&uuml;retilen nesne,<br />
		&#xA0;&#xA0;&#xA0; // dekarasyon sınıflarından ge&ccedil;irilerek, yeni &ouml;zellikler<br />
		&#xA0;&#xA0;&#xA0; // kazanması sağlanır.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Telefon telefon = </span><span class="java4">new </span><span class="java10">KameralıTelefonDekarasyoncusu</span><span class="java8">(<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">new </span><span class="java10">MMSliTelefonDekarasyoncusu</span><span class="java8">( </span><span class="java4">new </span><span class="java10">BasitTelefon</span><span class="java8">() ) )</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Ek &ouml;zellikler gelerek telefon oluşur.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">telefon.telefonuOluştur</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-8">
		<span class="ekrancikti">		
			Basit telefon oluştu.<br/>
			MMS özelliği eklendi.<br/>
			Kamera eklendi.<br/>		
		</span>			
	</div>
</div>

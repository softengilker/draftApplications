<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="yarataticitd"/>
<meta name="currentPageName" content="singleton"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Yaratıcı Tasarım Desenleri</content>

<p class="contentHeader">Tek Nesne ( Singleton ) Tasarım Deseni</p>
<p>Bu tasarım deseninde, bir sınıfın sistem içinde yalnızca bir tane nesnesi oluşturulabilir. Tek bir arayüz sunularak, bu nesneye yalnızca buradan erişim sağlanabilir. Bu desen kullanılarak, sistem içinde değeri değişmeyen, genel değişkenler bu oluşturulan tek nesneye konulabilir. Sistemde tek nesne yaratılabilme, <b>statik</b> değişken ve yordamlar sayesinde olur. Statik değişken ve yordamlar, nesneye dayalı programlanın esnekliğini, dinamik nesne yaratılma özelliklerini engellediği için bazı yazılım mühendisleri tarafından eleştirilebilir.</p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Örnekte, sisteme giriş yapılabilmesi için kullanılan "kullanıcı ismi" ve "şifre" bilgilerini tutan tek nesne örneklenmiştir. Sınıf içinde kendi tipinde nesneyi tutan static bir değişken bulunur. Bu nesneye yine static olan <font class="icerikKodVurgu">nesneAl</font> yordamından ulaşılabilmektedir. Dikkat edilirse, sınıfın yapıcı (constructor) yordamı <u>private</u> şeklindedir. Yani "public" olmayarak dışarıdan erişim engellenmiş, nesne oluşumu sınıf içi ile sınırlandırılmıştır.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">TekNesne.java</a></li>
		<li><a href="#tabs-3">DenemeSingleton.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-4">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/singleton.jpg" />
	</div>
	<div id="tabs-2">		
<div class="java"><code class="java"><span class="java14">/**<br />
 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
 * <br />
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
</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.singleton;<br />
<br />
</span><span class="java14">/**<br />
 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
 *<br />
 * Tarih Bilgisi: 08 Oca 2013<br />
 *<br />
 */<br />
</span><span class="java4">public class </span><span class="java10">TekNesne </span><span class="java8">{<br />
<br />
&#xA0;&#xA0; </span><span class="java3">// private static tek bir nesne oluşturulur.<br />
&#xA0;&#xA0; </span><span class="java4">private static </span><span class="java10">TekNesne&#xA0;&#xA0; tekNesne&#xA0;&#xA0; = </span><span class="java4">new </span><span class="java10">TekNesne</span><span class="java8">()</span><span class="java10">;<br />
<br />
&#xA0;&#xA0; </span><span class="java14">/** <br />
&#xA0;&#xA0;&#xA0; * Yapıcı yordam ( constructor ) private olduğu i&ccedil;in dışarıdan ulaşılamaz ve sınıfın nesnesi oluşturulamaz.&#xA0;&#xA0; <br />
&#xA0;&#xA0;&#xA0; */<br />
&#xA0;&#xA0; </span><span class="java4">private </span><span class="java10">TekNesne</span><span class="java8">() {<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;'TekNesne' sınıfının nesnesi bellekte oluşturuluyor.&#34; </span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0; </span><span class="java8">}<br />
<br />
&#xA0;&#xA0; </span><span class="java14">/**<br />
&#xA0;&#xA0;&#xA0; * </span><span class="java11">@return </span><span class="java14">Oluşturulan tek nesneye bu yordam &uuml;zerinden erişim sağlanır. <br />
&#xA0;&#xA0;&#xA0; */<br />
&#xA0;&#xA0; </span><span class="java4">public static </span><span class="java10">TekNesne nesneAl</span><span class="java8">() {<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">tekNesne;<br />
&#xA0;&#xA0; </span><span class="java8">}<br />
<br />
&#xA0;&#xA0; </span><span class="java14">/**<br />
&#xA0;&#xA0;&#xA0; * </span><span class="java11">@return </span><span class="java14">T&uuml;m uygulama boyunca kullanılacak &#34;kullanıcı ismi&#34; bilgisini d&ouml;ner.<br />
&#xA0;&#xA0;&#xA0; */<br />
&#xA0;&#xA0; </span><span class="java4">public </span><span class="java10">String getKullanıcıİsmi</span><span class="java8">() {<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java5">&#34;ilker&#34;</span><span class="java10">;<br />
&#xA0;&#xA0; </span><span class="java8">}<br />
<br />
&#xA0;&#xA0; </span><span class="java14">/**<br />
&#xA0;&#xA0;&#xA0; * </span><span class="java11">@return </span><span class="java14">T&uuml;m uygulama boyunca kullanılacak &#34;şifre&#34; bilgisini d&ouml;ner.<br />
&#xA0;&#xA0;&#xA0; */<br />
&#xA0;&#xA0; </span><span class="java4">public </span><span class="java10">String getŞifre</span><span class="java8">() {<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java5">&#34;12345&#34;</span><span class="java10">;<br />
&#xA0;&#xA0; </span><span class="java8">}<br />
}</span></code></div>	
	</div>
	<div id="tabs-3">
<div class="java"><code class="java"><span class="java14">/**<br />
 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
 * <br />
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
 */<br />
<br />
</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.singleton;<br />
<br />
</span><span class="java14">/**<br />
 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
 *<br />
 * Tarih Bilgisi: 08 Oca 2013<br />
 *<br />
 */<br />
</span><span class="java4">public class </span><span class="java10">DenemeSingleton </span><span class="java8">{<br />
<br />
&#xA0;&#xA0; </span><span class="java14">/**<br />
&#xA0;&#xA0;&#xA0; * </span><span class="java11">@param </span><span class="java14">args<br />
&#xA0;&#xA0;&#xA0; */<br />
&#xA0;&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// TekNesne sınıfından bir tane bulunabilir ve nesne &uuml;zerindeki <br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; // &#34;public&#34; yordam ve değişkenlere, &#34;TekNesne.nesneAl()&#34; ile<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; // ulaşılabilir. &#34;nesneAl&#34; yordamı, &#34;TekNesne&#34; sınıfının oluşturulan<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; // tek nesnesine ulaşır.<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">String kullanıcıİsmi = TekNesne.nesneAl</span><span class="java8">()</span><span class="java10">.getKullanıcıİsmi</span><span class="java8">()</span><span class="java10">;<br />
<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; System.out.println</span><span class="java8">( </span><span class="java5">&#34;Kullanıcı ismi: &#34; </span><span class="java10">+ kullanıcıİsmi </span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; System.out.println</span><span class="java8">( </span><span class="java5">&#34;Şifre: &#34; </span><span class="java10">+ TekNesne.nesneAl</span><span class="java8">()</span><span class="java10">.getŞifre</span><span class="java8">() )</span><span class="java10">;<br />
&#xA0;&#xA0; </span><span class="java8">}<br />
}</span></code></div>	
	</div>
	<div id="tabs-4">
		<span class="ekrancikti">
		'TekNesne' sınıfının nesnesi bellekte oluşturuluyor.<br />
		Kullanıcı ismi: ilker<br /> 
		Şifre: 12345<br />
		</span>		
	</div>
</div>
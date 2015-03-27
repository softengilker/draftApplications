<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="yapisaltd"/>
<meta name="currentPageName" content="adapter"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Yapısal Tasarım Desenleri</content>

<p class="contentHeader">Adaptör ( Adapter ) Tasarım Deseni</p>
<p><font class="icerikKodVurgu">Mevcut bir sınıfı veya arayüz sınıfını, eldeki farklı bir arayüz sınıfına uygun hale getirerek tekrar kullanmak amacıyla uygulanır.</font> Çoğu zaman işe yarayacağını düşündüğümüz mevcut bir sınıfı kendi sistemimizde tekrar kullanmak isteriz. Fakat mevcut sınıf, tam beklediğimiz gibi olmayabilir. Bu durumda araya bir tane adaptör yazarak, mevcut sınıfı kendi sistemimize uygun hale getirebiliriz. Böylece adapte edilen nesnede kod değişikliği olmadan benzer bir arayüzü destekler hale getiririz. Ayrıca adaptasyon işlemi sırasında, adapte edilen nesnenin desteklemediği özellikler de adaptör tarafından gerçekleştirilebilir.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Müşterilere satış yapan bir sistemde, Adres arayüzünden türemiş adres sınıfları vardır. Bu sistemde müşterilerin fatura adreslerinin de tutulacağı bir sınıfa ihtiyaç vardır. Bu amaçla içinde adres bilgilerinin de yer aldığı Müşteri sınıfının kullanılabileceği düşünülmektedir. Bunun için Müşteri sınıfını, Adres arayüzüne uyduracak bir tane adaptör sınıfın yazılması yeterlidir. Aşağıdaki örnekte bu adaptör MüşteriFaturaAdresiAdaptörü isimli sınıftır.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">Adres.java</a></li>
		<li><a href="#tabs-3">İşAdresi.java</a></li>
		<li><a href="#tabs-4">Müşteri.java</a></li>
		<li><a href="#tabs-5">MüşteriFaturaAdresiAdaptörü.java</a></li>
		<li><a href="#tabs-6">Satıcı.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-7">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/adapter.png" />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.adapter;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Adres.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">Adres </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java10">String alA&ccedil;ıkAdres</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0; String alSemt</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0; String alŞehir</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0; String al&Uuml;lke</span><span class="java8">()</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>	
	</div>
	<div id="tabs-3">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.adapter;<br />
		<br />
		</span><span class="java14">/**<br />
		 * İşAdresi.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">İşAdresi </span><span class="java4">implements </span><span class="java10">Adres </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String alA&ccedil;ıkAdres</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java5">&#34;G&uuml;l Mah. Osman Sok. No:15&#34;</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String alSemt</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java5">&#34;Beşiktaş&#34;</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String alŞehir</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java5">&#34;İstanbul&#34;</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String al&Uuml;lke</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java5">&#34;T&uuml;rkiye&#34;</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.adapter;<br />
		<br />
		</span><span class="java14">/**<br />
		 * M&uuml;şteri.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">M&uuml;şteri </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">String&#xA0; numara;<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">String&#xA0; a&ccedil;ıklama;<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">String&#xA0; a&ccedil;ıkAdres;<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">String&#xA0; semt;<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">String&#xA0; şehir;<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">String&#xA0; &uuml;lke;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">M&uuml;şteri</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String numara, </span><span class="java4">final </span><span class="java10">String a&ccedil;ıklama, </span><span class="java4">final </span><span class="java10">String a&ccedil;ıkAdres, </span><span class="java4">final </span><span class="java10">String semt,<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">String şehir, </span><span class="java4">final </span><span class="java10">String &uuml;lke </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.numara = numara;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.a&ccedil;ıklama = a&ccedil;ıklama;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.a&ccedil;ıkAdres = a&ccedil;ıkAdres;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.semt = semt;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.şehir = şehir;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.&uuml;lke = &uuml;lke;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String alNumara</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">numara;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String alA&ccedil;ıklama</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">a&ccedil;ıklama;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String alA&ccedil;ıkAdres</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">a&ccedil;ıkAdres;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String alSemt</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">semt;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String alŞehir</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">şehir;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String al&Uuml;lke</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">&uuml;lke;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.adapter;<br />
		<br />
		</span><span class="java14">/**<br />
		 * M&uuml;şteriFaturaAdresiAdapt&ouml;r&uuml;.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">M&uuml;şteriFaturaAdresiAdapt&ouml;r&uuml; </span><span class="java4">implements </span><span class="java10">Adres </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">M&uuml;şteri&#xA0; m&uuml;şteri;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">M&uuml;şteriFaturaAdresiAdapt&ouml;r&uuml;</span><span class="java8">( </span><span class="java4">final </span><span class="java10">M&uuml;şteri m&uuml;şteri </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.m&uuml;şteri = m&uuml;şteri;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String alA&ccedil;ıkAdres</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">m&uuml;şteri.alA&ccedil;ıkAdres</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String alSemt</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">m&uuml;şteri.alSemt</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String alŞehir</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">m&uuml;şteri.alŞehir</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String al&Uuml;lke</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">m&uuml;şteri.al&Uuml;lke</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.adapter;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Satıcı.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Satıcı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// &Ouml;rnek bir M&uuml;şteri nesnesi yarat.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">M&uuml;şteri m&uuml;şteri = </span><span class="java4">new </span><span class="java10">M&uuml;şteri</span><span class="java8">( </span><span class="java5">&#34;105&#34;</span><span class="java10">, </span><span class="java5">&#34;a&ccedil;ıklama&#34;</span><span class="java10">, </span><span class="java5">&#34;Atat&uuml;rk Mah. Gazi Sok. No:15&#34;</span><span class="java10">, </span><span class="java5">&#34;Sancaktepe&#34;</span><span class="java10">,<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java5">&#34;İstanbul&#34;</span><span class="java10">, </span><span class="java5">&#34;T&uuml;rkiye&#34; </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// M&uuml;şteri sınıfının adapt&ouml;r&uuml;n&uuml; yarat.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">M&uuml;şteriFaturaAdresiAdapt&ouml;r&uuml; adapt&ouml;r = </span><span class="java4">new </span><span class="java10">M&uuml;şteriFaturaAdresiAdapt&ouml;r&uuml;</span><span class="java8">( </span><span class="java10">m&uuml;şteri </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Artık &#34;M&uuml;şteri&#34; sınıfı da adapt&ouml;r sayesinde bir<br />
		&#xA0;&#xA0;&#xA0; // &#34;Adres&#34; sınıfıdır.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Adres adres = adapt&ouml;r;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// &#34;Adres&#34; sınıfının i&ccedil;eriğini yazdır.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Adres:&#34; </span><span class="java10">+ adres.alA&ccedil;ıkAdres</span><span class="java8">() )</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; System.out.println</span><span class="java8">( </span><span class="java5">&#34;Semt:&#34; </span><span class="java10">+ adres.alSemt</span><span class="java8">() )</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; System.out.println</span><span class="java8">( </span><span class="java5">&#34;Şehir:&#34; </span><span class="java10">+ adres.alŞehir</span><span class="java8">() )</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; System.out.println</span><span class="java8">( </span><span class="java5">&#34;&Uuml;lke:&#34; </span><span class="java10">+ adres.al&Uuml;lke</span><span class="java8">() )</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-7">
		<span class="ekrancikti">		
			Adres:Atatürk Mah. Gazi Sok. No:15<br/>
			Semt:Sancaktepe<br/>
			Şehir:İstanbul<br/>
			Ülke:Türkiye<br/>		
		</span>			
	</div>
</div>

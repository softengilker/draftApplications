<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="davranissaltd"/>
<meta name="currentPageName" content="interpreter"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Davranışsal Tasarım Desenleri</content>


<p class="contentHeader">Yorumlayıcı ( Interpreter ) Tasarım Deseni</p>
<p>Bu tasarım desenindeki amaç, özelleşmiş bir bilgisayar dilinin yorumlanmasının gerçekleştirilmesidir. Ana fikir, bu özelleşmiş dilin her bir sembolü için ayrı bir sınıf yaratmaktır. Bu tasarım deseni, veritabanı yönetim sistemlerindeki SQL tarzı dillerin yorumlanmasında kullanılabilir. Bir başka örnek olarak, bilgisayar ağlarındaki iletişim protokollerindeki özel dillerin çözümlenmesinde kullanılabilir.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Örnekte, '+' ( artı ), '-' ( eksi ) ve '%' ( yüzde ) karakterlerinden oluşan bir bilgisayar dilinin yorumlanması gösterilmiştir. Her bir karakter için, <font class="icerikKodVurgu">ArtıSembol</font>, <font class="icerikKodVurgu">EksiSembol</font> ve <font class="icerikKodVurgu">YüzdeSembol</font> sınıfları oluşturulmuştur. Bu sınıflar da <font class="icerikKodVurgu">Sembol</font> üst arayüz sınıfından türetilmiştir. <font class="icerikKodVurgu">DilYorumlayıcısı</font> istemci sınıfı, verilen metnin her bir karakterini ayrıştırmıştır. Her bir karakter için ayrı bir sembol karakteri oluşturulup, bu sınıflar bir listeye eklenmiştir. Daha sonra, liste sırayla dolaşılarak, "Sembol" sınıfının "yorumla" yordamı çağırılarak verilen metin yorumlanmıştır.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">Sembol.java</a></li>
		<li><a href="#tabs-3">ArtıSembol.java</a></li>
		<li><a href="#tabs-4">EksiSembol.java</a></li>
		<li><a href="#tabs-5">YüzdeSembol.java</a></li>
		<li><a href="#tabs-6">DilYorumlayıcısı.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-7">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/interpreter.png" />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.interpreter;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Sembol.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">Sembol </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">yorumla</span><span class="java8">()</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>	
	</div>
	<div id="tabs-3">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.interpreter;<br />
		<br />
		</span><span class="java14">/**<br />
		 * ArtıSembol.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">ArtıSembol </span><span class="java4">implements </span><span class="java10">Sembol </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">yorumla</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;+ sembol&uuml; yorumlandı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.interpreter;<br />
		<br />
		</span><span class="java14">/**<br />
		 * ArtıSembol.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">EksiSembol </span><span class="java4">implements </span><span class="java10">Sembol </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">yorumla</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;- sembol&uuml; yorumlandı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.interpreter;<br />
		<br />
		</span><span class="java14">/**<br />
		 * ArtıSembol.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Y&uuml;zdeSembol </span><span class="java4">implements </span><span class="java10">Sembol </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">yorumla</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;% sembol&uuml; yorumlandı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.interpreter;<br />
		<br />
		</span><span class="java4">import </span><span class="java10">java.util.ArrayList;<br />
		</span><span class="java4">import </span><span class="java10">java.util.List;<br />
		<br />
		</span><span class="java14">/**<br />
		 * DilYorumlayıcısı.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">DilYorumlayıcısı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Yorumlanacak dil.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">String metin = </span><span class="java5">&#34;++-%%+-&#34;</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">List&lt; Sembol &gt; sembolListesi = </span><span class="java4">new </span><span class="java10">ArrayList&lt; Sembol &gt;</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Metni ayrıştır ve sembol sınıflarını<br />
		&#xA0;&#xA0;&#xA0; // listeye ekle.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">for </span><span class="java8">( </span><span class="java4">final </span><span class="java9">char </span><span class="java10">c : metin.toCharArray</span><span class="java8">() ) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">if </span><span class="java8">( </span><span class="java10">c == </span><span class="java6">'+' </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">sembolListesi.add</span><span class="java8">( </span><span class="java4">new </span><span class="java10">ArtıSembol</span><span class="java8">() )</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java8">} </span><span class="java4">else if </span><span class="java8">( </span><span class="java10">c == </span><span class="java6">'-' </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">sembolListesi.add</span><span class="java8">( </span><span class="java4">new </span><span class="java10">EksiSembol</span><span class="java8">() )</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java8">} </span><span class="java4">else if </span><span class="java8">( </span><span class="java10">c == </span><span class="java6">'%' </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">sembolListesi.add</span><span class="java8">( </span><span class="java4">new </span><span class="java10">Y&uuml;zdeSembol</span><span class="java8">() )</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		&#xA0;&#xA0;&#xA0; }<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Yorumla.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">for </span><span class="java8">( </span><span class="java4">final </span><span class="java10">Sembol s : sembolListesi </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">s.yorumla</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		&#xA0; }<br />
		}</span></code></div>	
	</div>
	<div id="tabs-7">
		<span class="ekrancikti">		
			+ sembolü yorumlandı.<br/>
			+ sembolü yorumlandı.<br/>
			- sembolü yorumlandı.<br/>
			% sembolü yorumlandı.<br/>
			% sembolü yorumlandı.<br/>
			+ sembolü yorumlandı.<br/>
			- sembolü yorumlandı.<br/>
		</span>			
	</div>	
</div>

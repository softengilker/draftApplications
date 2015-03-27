<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="davranissaltd"/>
<meta name="currentPageName" content="memento"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Davranışsal Tasarım Desenleri</content>


<p class="contentHeader">Hatırlayıcı ( Memento ) Tasarım Deseni</p>
<p><font class="icerikKodVurgu">Bir nesnenin durumunu saklayıp, daha sonra bu duruma tekrar geri dönebilmesini sağlayan tasarım desenidir.</font> Örneğin bir kelime işlemcide en son yapılan işlem gerçekleşmeden önceki duruma dönmeyi sağlayan "geri dön" özelliğinde bu tasarım deseni kullanılabilir. Kısaca nesnenin bazı durumlarını saklamak ve bu durumlara geri dönüş yapabilmeyi sağlar.</p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Hatırlayıcı tasarım deseni örneğinin konusu döküman yazan bir programın "geri al" işlevi ile ilgilidir. Bu program döküman içeriklerini <font class="icerikKodVurgu">Döküman</font> isimli bir sınıfta tutmaktadır. Döküman sınıfının içeriğini de, ileriki kullanımlar için saklayan <font class="icerikKodVurgu">DökümanHatırlayıcı</font> sınıfıdır. Bu sınıf tasarım desenindeki hatırlayıcı sınıfımızdır. Döküman ve her bir döküman yazma haretekini tutan DökümanHatırlayıcı nesnelerinin listesini tutan <font class="icerikKodVurgu">DökümanYazımProgramı</font> sınıfıdır. Bı sınıfa her bir yeni döküman içeriği geldiğinde, bu içeriğe bağlı bir tane hatırlayıcı nesne yaratılır ve bu nesne de, hatırlayıcı nesnelerin listesine eklenir. Bu sınıftaki geriAl yordamı ise, listedeki en son döküman içeriğini tutan hatırlayıcı nesneyi çeker ve döküman içeriğini bu hatırlayıcı nesnenin içindeki içerik olarak ayarlar. Sistemi kullanan <font class="icerikKodVurgu">Kullanıcı</font> sınıfını incelersek, sırayla "1", "2", "3", "4" içerikleri gelmiştir. Sonra da üç kere geri al işlevi çalıştırılmıştır. Bu işlemden sonra döküman içeriğinin üç işlem gerideki "1" olduğu görülmüştür.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">Döküman.java</a></li>
		<li><a href="#tabs-3">DökümanHatırlayıcı.java</a></li>
		<li><a href="#tabs-4">DökümanYazımProgramı.java</a></li>
		<li><a href="#tabs-5">Kullanıcı.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-6">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/memento.png" />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.memento;<br />
		<br />
		</span><span class="java14">/**<br />
		 * D&ouml;k&uuml;man.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">D&ouml;k&uuml;man </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private </span><span class="java10">String&#xA0; i&ccedil;erik;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String i&ccedil;erikAl</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">i&ccedil;erik;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">i&ccedil;erikAta</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String i&ccedil;erik </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.i&ccedil;erik = i&ccedil;erik;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">D&ouml;k&uuml;manHatırlayıcı hatırlayıcıYarat</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return new </span><span class="java10">D&ouml;k&uuml;manHatırlayıcı</span><span class="java8">( </span><span class="java4">this </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">hatırlayıcıAta</span><span class="java8">( </span><span class="java4">final </span><span class="java10">D&ouml;k&uuml;manHatırlayıcı hatırlayıcı </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.i&ccedil;erik = hatırlayıcı.i&ccedil;erikAl</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.memento;<br />
		<br />
		</span><span class="java14">/**<br />
		 * D&ouml;k&uuml;manHatırlayıcı.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">D&ouml;k&uuml;manHatırlayıcı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">String&#xA0; i&ccedil;erik;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">D&ouml;k&uuml;manHatırlayıcı</span><span class="java8">( </span><span class="java4">final </span><span class="java10">D&ouml;k&uuml;man d&ouml;k&uuml;man </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.i&ccedil;erik = d&ouml;k&uuml;man.i&ccedil;erikAl</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String i&ccedil;erikAl</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">i&ccedil;erik;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.memento;<br />
		<br />
		</span><span class="java4">import </span><span class="java10">java.util.ArrayList;<br />
		</span><span class="java4">import </span><span class="java10">java.util.List;<br />
		<br />
		</span><span class="java14">/**<br />
		 * D&ouml;k&uuml;manYazımProgramı.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">D&ouml;k&uuml;manYazımProgramı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">D&ouml;k&uuml;man&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; d&ouml;k&uuml;man;<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">List&lt; D&ouml;k&uuml;manHatırlayıcı &gt;&#xA0; ge&ccedil;mişListesi&#xA0; = </span><span class="java4">new </span><span class="java10">ArrayList&lt; D&ouml;k&uuml;manHatırlayıcı &gt;</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">D&ouml;k&uuml;manYazımProgramı</span><span class="java8">( </span><span class="java4">final </span><span class="java10">D&ouml;k&uuml;man d&ouml;k&uuml;man </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.d&ouml;k&uuml;man = d&ouml;k&uuml;man;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">d&ouml;k&uuml;manYaz</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String yeniİ&ccedil;erik </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">D&ouml;k&uuml;manHatırlayıcı hatırlayıcı = d&ouml;k&uuml;man.hatırlayıcıYarat</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; ge&ccedil;mişListesi.add</span><span class="java8">( </span><span class="java10">hatırlayıcı </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; d&ouml;k&uuml;man.i&ccedil;erikAta</span><span class="java8">( </span><span class="java10">yeniİ&ccedil;erik </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">geriAl</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">D&ouml;k&uuml;manHatırlayıcı hatırlayıcı = ge&ccedil;mişListesi.remove</span><span class="java8">( </span><span class="java10">ge&ccedil;mişListesi.size</span><span class="java8">() </span><span class="java10">- </span><span class="java7">1 </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; d&ouml;k&uuml;man.hatırlayıcıAta</span><span class="java8">( </span><span class="java10">hatırlayıcı </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.memento;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Kullanıcı.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Kullanıcı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">D&ouml;k&uuml;man d&ouml;k&uuml;man = </span><span class="java4">new </span><span class="java10">D&ouml;k&uuml;man</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; d&ouml;k&uuml;man.i&ccedil;erikAta</span><span class="java8">( </span><span class="java5">&#34;&#34; </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">D&ouml;k&uuml;manYazımProgramı program = </span><span class="java4">new </span><span class="java10">D&ouml;k&uuml;manYazımProgramı</span><span class="java8">( </span><span class="java10">d&ouml;k&uuml;man </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; program.d&ouml;k&uuml;manYaz</span><span class="java8">( </span><span class="java5">&#34;1&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; program.d&ouml;k&uuml;manYaz</span><span class="java8">( </span><span class="java5">&#34;2&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; program.d&ouml;k&uuml;manYaz</span><span class="java8">( </span><span class="java5">&#34;3&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; program.d&ouml;k&uuml;manYaz</span><span class="java8">( </span><span class="java5">&#34;4&#34; </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// En son i&ccedil;erik &#34;4&#34; yazılır.<br />
		&#xA0;&#xA0;&#xA0; // Fakat &ouml;nceki i&ccedil;erikler saklanır.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;En son i&ccedil;erik : &#34; </span><span class="java10">+ d&ouml;k&uuml;man.i&ccedil;erikAl</span><span class="java8">() )</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Son &uuml;&ccedil; işlem geri alınır.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">program.geriAl</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; program.geriAl</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; program.geriAl</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Son &uuml;&ccedil; işlem geri alındığı i&ccedil;in, &#34;1&#34; i&ccedil;eriği yazılır.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;&Uuml;&ccedil; işlem geri alındıktan sonra i&ccedil;erik : &#34; </span><span class="java10">+ d&ouml;k&uuml;man.i&ccedil;erikAl</span><span class="java8">() )</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-6">
		<span class="ekrancikti">		
			En son içerik :4<br/>
			Üç işlem geri alındıktan sonra içerik :1<br/>		
		</span>			
	</div>	
</div>
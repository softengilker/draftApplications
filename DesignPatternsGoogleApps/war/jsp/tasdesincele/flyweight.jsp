<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="yapisaltd"/>
<meta name="currentPageName" content="flyweight"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Yapısal Tasarım Desenleri</content>


<p class="contentHeader">Hafif Ağırlık ( Flyweight ) Tasarım Deseni</p>
<p><font class="icerikKodVurgu">Çok sayıda nesnenin sistemde olduğu durumlarda, nesne sayısının sistemde problemlere neden olmaması için kullanılan tasarım desenidir.</font> Çünkü çok sayıda nesne kullanmanın maliyeti yüksektir. Yeni nesneler oluşturmadan mevcut nesneleri kullanma mantığına göre çalışır. Hafif ağırlık nesnelerini bir koleksiyonda tutmak gerekir. Tutulan nesnelerin durumları az ise, ortak nesnelerin sayısı azalır. Böylece bu koleksiyonun büyüklüğü de azalmış olur.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Örnekte bir sözcük işlemcisi, kendisine verilen bir metindeki karakterleri ekrana yazdırmakla görevlidir. Her bir karakterin ekrana yazdırma işlemi farklı olduğu için, her bir karakter için ayrı bir <font class="icerikKodVurgu">Karakter</font> sınıfı yaratılacaktır. Gelen metindeki bir çok karakter ve bunların ekrana yazdırılma işlemleri aynı olduğundan, okunan her bir karakter için ayrı sınıf oluşturmak sisteme yük getirir. Bunun yerine <font class="icerikKodVurgu">KarakterYaratıcısı</font> ismindeki yaratıcı sınıf karakterleri bir havuzda tutmaktadır. İstemci sınıf olan <font class="icerikKodVurgu">Sözcükİşlemcisi</font> sınıfı da her okuduğu karakter için ilk önce havuza bakmaktadır. Havuzda bulursa, bu hazır nesneyi kullanmakta, bulamazsa da yeni bir nesne yaratıp bunu kullanmaktadır. Tabi yeni yarattığı nesneyi de, ileriki kullanımlar için tekrar havuza koymaktadır.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">Karakter.java</a></li>
		<li><a href="#tabs-3">KarakterYaratıcı.java</a></li>
		<li><a href="#tabs-4">Sözcükİşlemci.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-5">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/flyweight.png" />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.flyweight;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Karakter.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Karakter </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java9">char&#xA0; </span><span class="java10">karakter;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Karakter</span><span class="java8">( </span><span class="java4">final </span><span class="java9">char </span><span class="java10">karakter </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.karakter = karakter;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">ekranaBas</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Ekrana basıldı: &#34; </span><span class="java10">+ karakter </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.flyweight;<br />
		<br />
		</span><span class="java4">import </span><span class="java10">java.util.HashMap;<br />
		</span><span class="java4">import </span><span class="java10">java.util.Map;<br />
		<br />
		</span><span class="java14">/**<br />
		 * KarakterYaratıcı.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">KarakterYaratıcı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">Map&lt; Character, Karakter &gt;&#xA0; karakterHavuzu&#xA0; = </span><span class="java4">new </span><span class="java10">HashMap&lt; Character, Karakter &gt;</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Karakter karakterAl</span><span class="java8">( </span><span class="java4">final </span><span class="java9">char </span><span class="java10">karakter </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Havuzda varsa onu d&ouml;n. Yeni nesne oluşturma.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">if </span><span class="java8">( </span><span class="java10">karakterHavuzu.containsKey</span><span class="java8">( </span><span class="java10">karakter </span><span class="java8">) ) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">karakterHavuzu.get</span><span class="java8">( </span><span class="java10">karakter </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Havuzda yoksa, yeni oluştur bunu d&ouml;n,<br />
		&#xA0;&#xA0;&#xA0; // havuza da ileriki kullanımlar i&ccedil;in ekle.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Karakter yeniKarakter = </span><span class="java4">new </span><span class="java10">Karakter</span><span class="java8">( </span><span class="java10">karakter </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; karakterHavuzu.put</span><span class="java8">( </span><span class="java10">karakter, yeniKarakter </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">yeniKarakter;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.flyweight;<br />
		<br />
		</span><span class="java14">/**<br />
		 * S&ouml;zc&uuml;kİşlemci.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">S&ouml;zc&uuml;kİşlemci </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">String satır = </span><span class="java5">&#34;Merhaba, nasılsın?&#34;</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Hafif ağırlık sınıfı, karakterlerin listesini tutar.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">KarakterYaratıcı karakterYaratıcı = </span><span class="java4">new </span><span class="java10">KarakterYaratıcı</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Satırdaki her bir bilgiyi ekrana bas.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">for </span><span class="java8">( </span><span class="java4">final </span><span class="java9">char </span><span class="java10">c : satır.toCharArray</span><span class="java8">() ) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Karakter karakter = karakterYaratıcı.karakterAl</span><span class="java8">( </span><span class="java10">c </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; karakter.ekranaBas</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		&#xA0; }<br />
		}</span></code></div>	
	</div>
	<div id="tabs-5">
		<span class="ekrancikti">		
			Ekrana basıldı: M<br/>
			Ekrana basıldı: e<br/>
			Ekrana basıldı: r<br/>
			Ekrana basıldı: h<br/>
			Ekrana basıldı: a<br/>
			Ekrana basıldı: b<br/>
			Ekrana basıldı: a<br/>
			Ekrana basıldı: ,<br/>
			Ekrana basıldı:<br/>  
			Ekrana basıldı: n<br/>
			Ekrana basıldı: a<br/>
			Ekrana basıldı: s<br/>
			Ekrana basıldı: ı<br/>
			Ekrana basıldı: l<br/>
			Ekrana basıldı: s<br/>
			Ekrana basıldı: ı<br/>
			Ekrana basıldı: n<br/>
			Ekrana basıldı: ?<br/>
		</span>			
	</div>
</div>

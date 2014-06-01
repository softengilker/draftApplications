<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="davranissaltd"/>
<meta name="currentPageName" content="state"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Davranışsal Tasarım Desenleri</content>


<p class="contentHeader">Durum ( State ) Tasarım Deseni</p>
<p><font class="icerikKodVurgu">Nesnenin durumu değiştiğinde, davranışı da değişiyorsa, yani nesneler farklı durumlarda, farklı davranışlar gösteriyorsa, durum tasarım deseni kullanılabilir.</font> Bu tasarım deseninin kullanılması, nesnelerin durumlarına bağlı değişen davranışlarının karmaşık "if/else" veya "switch" ifadeleriyle kontrol edilmesini önler.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Örnekte durumu çalışma zamanında değişen banka hesabı vardır. Banka hesaplarının durumları <font class="icerikKodVurgu">HesapDurumu</font> arayüz sınıfından türemektedir. Bu arayüz sınıfından türeyen <font class="icerikKodVurgu">NormalHesap</font> ve <font class="icerikKodVurgu">AltınHesap</font> sınıfları bulunmaktadır. Bu alt sınıfların para çekme ve faiz ödeme davranışları farklıdır. İçerik sınıfı olan <font class="icerikKodVurgu">Hesap</font> sınıfı hesap durum nesnesini içermektedir. Hesap durumuna göre de bu sınıf hesap içeriğini kontrol etmektedir. İstemci sınıfı olan <font class="icerikKodVurgu">Müşteri</font> sınıfında bir tane hesap nesnesi bulunmaktadır. Çalışma zamanında hesabın durumu normal hesaptan altın hesaba çevrilmektedir. Durum değiştikten sonra da, nesnenin davranışı değişmektedir.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">HesapDurumu.java</a></li>
		<li><a href="#tabs-3">NormalHesap.java</a></li>
		<li><a href="#tabs-4">AltınHesap.java</a></li>
		<li><a href="#tabs-5">Hesap.java</a></li>
		<li><a href="#tabs-6">Müşteri.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-7">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/durum.png" />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.state;<br />
		<br />
		</span><span class="java14">/**<br />
		 * HesapDurumu.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">HesapDurumu </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">para&Ccedil;ek</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">faiz&Ouml;de</span><span class="java8">()</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>	
	</div>
	<div id="tabs-3">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.state;<br />
		<br />
		</span><span class="java14">/**<br />
		 * NormalHesap.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">NormalHesap </span><span class="java4">implements </span><span class="java10">HesapDurumu </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">faiz&Ouml;de</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Normal hesaptan faiz &ouml;dendi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">para&Ccedil;ek</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Normal hesaptan para &ccedil;ekildi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.state;<br />
		<br />
		</span><span class="java14">/**<br />
		 * AltınHesap.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">AltınHesap </span><span class="java4">implements </span><span class="java10">HesapDurumu </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">faiz&Ouml;de</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Altın hesaptan faiz &ouml;dendi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">para&Ccedil;ek</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Altın hesaptan para &ccedil;ekildi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.state;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Hesap.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Hesap </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private </span><span class="java10">HesapDurumu&#xA0; hesapDurumu;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Hesap</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">hesapDurumu = </span><span class="java4">new </span><span class="java10">NormalHesap</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">faiz&Ouml;de</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">hesapDurumu.faiz&Ouml;de</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">para&Ccedil;ek</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">hesapDurumu.para&Ccedil;ek</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">durumDeğiştir</span><span class="java8">( </span><span class="java4">final </span><span class="java10">HesapDurumu hesapDurumu </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.hesapDurumu = hesapDurumu;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.state;<br />
		<br />
		</span><span class="java14">/**<br />
		 * M&uuml;şteri.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">M&uuml;şteri </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Yaratılan hesap varsayılan olarak 'normal' durumda.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Hesap hesap = </span><span class="java4">new </span><span class="java10">Hesap</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; hesap.faiz&Ouml;de</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; hesap.para&Ccedil;ek</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// &Ccedil;alışma zamanında hesap durum değiştiriliyor.<br />
		&#xA0;&#xA0;&#xA0; // M&uuml;şteri altın hesaba ge&ccedil;iriliyor.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">hesap.durumDeğiştir</span><span class="java8">( </span><span class="java4">new </span><span class="java10">AltınHesap</span><span class="java8">() )</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; System.out.println</span><span class="java8">( </span><span class="java5">&#34;M&uuml;şteri altın hesaba ge&ccedil;iriliyor.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Durum değiştiği i&ccedil;in davranış da değişecek.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">hesap.faiz&Ouml;de</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; hesap.para&Ccedil;ek</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-7">
		<span class="ekrancikti">
			Normal hesaptan faiz ödendi.<br/>
			Normal hesaptan para çekildi.<br/>
			Müşteri altın hesaba geçiriliyor.<br/>
			Altın hesaptan faiz ödendi.<br/>
			Altın hesaptan para çekildi.<br/>
		</span>			
	</div>
</div>

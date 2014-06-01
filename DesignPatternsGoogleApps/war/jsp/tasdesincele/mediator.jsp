<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="davranissaltd"/>
<meta name="currentPageName" content="mediator"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Davranışsal Tasarım Desenleri</content>


<p class="contentHeader">Arabulucu ( Mediator ) Tasarım Deseni</p>
<p>Uygulama büyüdükçe, bir çok sınıfı ve sınıf hiyerarşilerini içerir. Uygulamanın mantık ve veri koldarı bu sınıflara dağıtılır. Uygulamanın çalışabilmesi için bu sınıflar arasında sürekli bir haberleşme vardır. Sınıfların sayısı arttıkça, aralarındaki bağımlılıklar artar, uygulamanın bakımı ve değiştirilmesi zorlaşır. <font class="icerikKodVurgu">İşte arabulucu tasarım deseni, bu sınıflar arasındaki bağımlılıkları azaltmak ve aralarındaki iletişimi kolaylaştırmak için kullanılır.</font> Bu sınıflar arasında arabuluculuk yapar.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Örnek uygulamada, istemci durumundaki <font class="icerikKodVurgu">Kullanıcı</font> nın bilgisayar, televizyon ve radyo olmak üzere 3 adet elektronik aygıtı vardır. Bu istemci, aynı anda yalnızca bir tane aygıtın çalışmasını istiyor. Bu durumda, herhangi bir aygıttan biri çalıştığında diğerlerinin durması gerekmektedir. Örnekte arabulucu sınıf olan <font class="icerikKodVurgu">Arabulucu</font> nesnesi, kullanıcı ile bu üç aygıt arasındaki haberleşmeyi sağlamaktadır. Böylece kullanıcı ile aygıtlar arasındaki bağımlılık azalmıştır. Ayrıca kullanıcının istediği bir zamanda yalnızca bir tane aygıt çalışması mantığını da bu arabulucu sınıf sağlamaktadır.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">ElektronikAygıt.java</a></li>
		<li><a href="#tabs-3">Bilgisayar.java</a></li>
		<li><a href="#tabs-4">Televizyon.java</a></li>
		<li><a href="#tabs-5">Radyo.java</a></li>
		<li><a href="#tabs-6">Arabulucu.java</a></li>
		<li><a href="#tabs-7">Kullanıcı.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-8">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/arabulucu.png"/>
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.mediator;<br />
		<br />
		</span><span class="java14">/**<br />
		 * ElektronikAygıt.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public abstract class </span><span class="java10">ElektronikAygıt </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">protected </span><span class="java10">Arabulucu&#xA0; arabulucu;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">ElektronikAygıt</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Arabulucu arabulucu </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.arabulucu = arabulucu;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public abstract </span><span class="java9">void </span><span class="java10">&ccedil;alıştır</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0; </span><span class="java4">public abstract </span><span class="java9">void </span><span class="java10">durdur</span><span class="java8">()</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>	
	</div>
	<div id="tabs-3">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.mediator;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Bilgisayar.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Bilgisayar </span><span class="java4">extends </span><span class="java10">ElektronikAygıt </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Bilgisayar</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Arabulucu arabulucu </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">super</span><span class="java8">( </span><span class="java10">arabulucu </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; arabulucu.bilgisayarEkle</span><span class="java8">( </span><span class="java4">this </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;alıştır</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Bilgisayar &ccedil;alıştı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; arabulucu.bilgisayar&Ccedil;alıştır</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">durdur</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Bilgisayar durdu.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.mediator;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Televizyon.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Televizyon </span><span class="java4">extends </span><span class="java10">ElektronikAygıt </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Televizyon</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Arabulucu arabulucu </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">super</span><span class="java8">( </span><span class="java10">arabulucu </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; arabulucu.televizyonEkle</span><span class="java8">( </span><span class="java4">this </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;alıştır</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Televizyon &ccedil;alıştı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; arabulucu.televizyon&Ccedil;alıştır</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">durdur</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Televizyon durdu.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.mediator;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Radyo.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Radyo </span><span class="java4">extends </span><span class="java10">ElektronikAygıt </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Radyo</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Arabulucu arabulucu </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">super</span><span class="java8">( </span><span class="java10">arabulucu </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; arabulucu.radyoEkle</span><span class="java8">( </span><span class="java4">this </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;alıştır</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Radyo &ccedil;alıştı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; arabulucu.radyo&Ccedil;alıştır</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">durdur</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Radyo durdu.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.mediator;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Arabulucu.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Arabulucu </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private </span><span class="java10">Bilgisayar&#xA0; bilgisayar;<br />
		&#xA0; </span><span class="java4">private </span><span class="java10">Televizyon&#xA0; televizyon;<br />
		&#xA0; </span><span class="java4">private </span><span class="java10">Radyo&#xA0;&#xA0;&#xA0; radyo;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">bilgisayarEkle</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Bilgisayar bilgisayar </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.bilgisayar = bilgisayar;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">radyoEkle</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Radyo radyo </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.radyo = radyo;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">televizyonEkle</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Televizyon televizyon </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.televizyon = televizyon;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">bilgisayar&Ccedil;alıştır</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Bilgisayar &ccedil;alıştığında, diğer aygıtların durması isteniyor.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">televizyon.durdur</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; radyo.durdur</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">radyo&Ccedil;alıştır</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Radyo &ccedil;alıştığında, diğer aygıtların durması isteniyor.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">bilgisayar.durdur</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; televizyon.durdur</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">televizyon&Ccedil;alıştır</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Televizyon &ccedil;alıştığında, diğer aygıtların durması isteniyor.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">bilgisayar.durdur</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; radyo.durdur</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.mediator;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Kullanıcı.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Kullanıcı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Arabulu sınıf yaratılır.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Arabulucu arabulucu = </span><span class="java4">new </span><span class="java10">Arabulucu</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Arabulucu sınıfı i&ccedil;eren nesneler yaratılıyor ve bir<br />
		&#xA0;&#xA0;&#xA0; // dizine ekleniyor. Bu nesneler arasındaki haberleşmeyi<br />
		&#xA0;&#xA0;&#xA0; // ortak Arabulucu sınıf sağlayacak.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">ElektronikAygıt</span><span class="java8">[] </span><span class="java10">aygıtlar = </span><span class="java4">new </span><span class="java10">ElektronikAygıt</span><span class="java8">[ </span><span class="java7">3 </span><span class="java8">]</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; aygıtlar</span><span class="java8">[ </span><span class="java7">0 </span><span class="java8">] </span><span class="java10">= </span><span class="java4">new </span><span class="java10">Bilgisayar</span><span class="java8">( </span><span class="java10">arabulucu </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; aygıtlar</span><span class="java8">[ </span><span class="java7">1 </span><span class="java8">] </span><span class="java10">= </span><span class="java4">new </span><span class="java10">Televizyon</span><span class="java8">( </span><span class="java10">arabulucu </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; aygıtlar</span><span class="java8">[ </span><span class="java7">2 </span><span class="java8">] </span><span class="java10">= </span><span class="java4">new </span><span class="java10">Radyo</span><span class="java8">( </span><span class="java10">arabulucu </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Her bir aygıtı &ccedil;alıştır.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">for </span><span class="java8">( </span><span class="java4">final </span><span class="java10">ElektronikAygıt aygıt : aygıtlar </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">aygıt.&ccedil;alıştır</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		&#xA0; }<br />
		}</span></code></div>	
	</div>
	<div id="tabs-8">
		<span class="ekrancikti">		
			Bilgisayar çalıştı.<br/>
			Televizyon durdu.<br/>
			Radyo durdu.<br/>
			Televizyon çalıştı.<br/>
			Bilgisayar durdu.<br/>
			Radyo durdu.<br/>
			Radyo çalıştı.<br/>
			Bilgisayar durdu.<br/>
			Televizyon durdu.<br/>
		</span>			
	</div>
</div>		


<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="davranissaltd"/>
<meta name="currentPageName" content="templateMethod"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Davranışsal Tasarım Desenleri</content>


<p class="contentHeader">Kalıp Yordam ( Template Method ) Tasarım Deseni</p>
<p>Kalıp yordam, sınıf hiyerarşisinde üst sınıfta yer alır. Bu yordam gerekli yöntemin adımlarını belirler. Bu yöntemin hangi adımlardan oluşması gerektiğini ortaya koyarken, alt sınıfların uyması gereken şablonu ortaya koyar. Alt sınıflar detayları kendileri belirler. Fakat uyulması gereken yapı üst sınıf tarafından, kalıp yordam ile belirlenir. Bu tasarım deseni sayesinde alt sınıflarda yapılacak kod tekrarlarından kaçınılır. Alt sınıfların ortak kodları üst sınıfta tek bir yerde toplanır. Bu ortak kısımda bir değişikliğe ihtiyaç duyulduğunda, bu tek noktada yapılır. <font class="icerikKodVurgu">Kısaca üst sınıfta yer alan kalıp yordam, tüm alt sınıfların ihtiyaç duyduğu ortak adımları barındırır, bunlar için bir kalıp oluşturur ve detayları alt sınıflara bırakır.</font><p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Örnek olarak bir yemek şirketinin sistemi kurulmaktadır. Görevi yemek yapmak olan bu sistemdeki tüm yemeklerin, ilk önce malzemeleri hazırlanır, sonra pişirilir ve en son da servisleri yapılmaktadır. Bu adımlar ortak olduğu ve yemekler bazında detaylandığı için <font class="icerikKodVurgu">YemekYapıcı</font> isminde bir üst sınıf oluşturulmuş ve bu ortak adımlar, "yemekYap" ismindeki bir kalıp yordamda toplanmıştır. Bu kalıp yordam diğer adım için gerekli yordamları çağırmıştır. Bu yordamlar soyut yapılmış ve bu sınıftan türeyen alt sınıflarda gerçekleştirilmeleri beklenmiştir. Sistemi kullanan <font class="icerikKodVurgu">YemekŞirketi</font> sınıfı ise yemekleri bir dizi de toplamıştır. Dizi elemanı olarak da <font class="icerikKodVurgu">PilavYapıcı</font> ve <font class="icerikKodVurgu">ÇorbaYapıcı</font> alt sınıflarını vermiştir. Daha sonra dizi elemanlarının yemekYap "kalıp yordam" yordamlarını çağırarak, sistemi çalıştırmıştır.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">YemekYapıcı.java</a></li>
		<li><a href="#tabs-3">ÇorbaYapıcı.java</a></li>
		<li><a href="#tabs-4">PilavYapıcı.java</a></li>
		<li><a href="#tabs-5">YemekŞirketi.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-6">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/templateMethod.png" />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.templateMethod;<br />
		<br />
		</span><span class="java14">/**<br />
		 * YemekYapıcı.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public abstract class </span><span class="java10">YemekYapıcı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">yemekYap</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">malzemeleriHazırla</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; pişir</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; servisYap</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">protected abstract </span><span class="java9">void </span><span class="java10">malzemeleriHazırla</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0; </span><span class="java4">protected abstract </span><span class="java9">void </span><span class="java10">pişir</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0; </span><span class="java4">protected abstract </span><span class="java9">void </span><span class="java10">servisYap</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.templateMethod;<br />
		<br />
		</span><span class="java14">/**<br />
		 * &Ccedil;orbaYapıcı.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">&Ccedil;orbaYapıcı </span><span class="java4">extends </span><span class="java10">YemekYapıcı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">protected </span><span class="java9">void </span><span class="java10">malzemeleriHazırla</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;&ccedil;orba malzemeleri hazırlandı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">protected </span><span class="java9">void </span><span class="java10">pişir</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;&ccedil;orba pişirildi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">protected </span><span class="java9">void </span><span class="java10">servisYap</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;&ccedil;orba servis yapıldı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.templateMethod;<br />
		<br />
		</span><span class="java14">/**<br />
		 * PilavYapıcı.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">PilavYapıcı </span><span class="java4">extends </span><span class="java10">YemekYapıcı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">protected </span><span class="java9">void </span><span class="java10">malzemeleriHazırla</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;pilav malzemeleri hazırlandı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">protected </span><span class="java9">void </span><span class="java10">pişir</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;pilav pişirildi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">protected </span><span class="java9">void </span><span class="java10">servisYap</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;pilav servis yapıldı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.templateMethod;<br />
		<br />
		</span><span class="java14">/**<br />
		 * YemekŞirketi.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">YemekŞirketi </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Yemek yapıcılar oluşturuldu.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">YemekYapıcı</span><span class="java8">[] </span><span class="java10">yemekYapıcılar = </span><span class="java4">new </span><span class="java10">YemekYapıcı</span><span class="java8">[ </span><span class="java7">2 </span><span class="java8">]</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; yemekYapıcılar</span><span class="java8">[ </span><span class="java7">0 </span><span class="java8">] </span><span class="java10">= </span><span class="java4">new </span><span class="java10">&Ccedil;orbaYapıcı</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; yemekYapıcılar</span><span class="java8">[ </span><span class="java7">1 </span><span class="java8">] </span><span class="java10">= </span><span class="java4">new </span><span class="java10">PilavYapıcı</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Yemekler yapıldı.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">for </span><span class="java8">( </span><span class="java4">final </span><span class="java10">YemekYapıcı yemekYapıcı : yemekYapıcılar </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">yemekYapıcı.yemekYap</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		&#xA0; }<br />
		}</span></code></div>	
	</div>
	<div id="tabs-6">
		<span class="ekrancikti">	
			çorba malzemeleri hazırlandı.<br/>
			çorba pişirildi.<br/>
			çorba servis yapıldı.<br/>
			pilav malzemeleri hazırlandı.<br/>
			pilav pişirildi.<br/>
			pilav servis yapıldı.<br/>
		</span>			
	</div>		
</div>
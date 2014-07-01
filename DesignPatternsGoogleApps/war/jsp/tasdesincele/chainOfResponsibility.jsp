<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="davranissaltd"/>
<meta name="currentPageName" content="chainOfResponsibility"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Davranışsal Tasarım Desenleri</content>


<p class="contentHeader">Sorumluluk Zinciri ( Chain of Responsibility ) Tasarım Deseni</p>
<p>Bu tasarım deseni, bir dizi işlev sınıflarıyla, bu sınıfların işlevlerini başlatmak için gereken komut sınıflarından oluşur. İşlev sınıfları, ne tür işler yapacağını kendi bünyesinde tutar, ayrıca dizideki diğer bir işlev sınıfının ne olacağını da belirler. Bir işlemin, belli miktarda işlevlerden sırayla geçmesi gerektiğinde bu tasarım deseni kullanılabilir.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p><font class="icerikKodVurgu">İşlev</font> soyut sınıfının alt sınıfları olan <font class="icerikKodVurgu">İşlevA, İşlevB</font> ve <font class="icerikKodVurgu">İşlevC</font> sınıflarını zincirdeki tek bir işi yerine getiren zincirin halkaları olarak yorumlayabiliriz. Bu sınflardaki, "işleviYerineGetir" yordamı çağırılarak ilgili işlev yapılır. Bu yordam yapılacak zincirin nerede kullanılacağına bağlı olarak n tane değiştirge alabilir. Bu örnekte işlemVerisi isminde tek bir tane almıştır. İşlev sınıfındaki "sonrakiniAyarla" yordamı, zincirin bir halkasından sonra hangisinin geleceğini belirler. "çalıştır" yordamı ise, zincirin halkalarının sırayla çağrılmasını sağlayan yordamdır. Örnekteki, <font class="icerikKodVurgu">ZincirSınaması</font> sınıfı, sistemi deneyen istemci sınıftır. Bu sınıfta örnek olarak iki tane zincir oluşturulup çalıştırılmıştır.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">İşlev.java</a></li>
		<li><a href="#tabs-3">İşlevA.java</a></li>
		<li><a href="#tabs-4">İşlevB.java</a></li>
		<li><a href="#tabs-5">İşlevC.java</a></li>
		<li><a href="#tabs-6">ZincirSınaması.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-7">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/sorumlulukZinciri.png" />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.chainOfResponsibility;<br />
		<br />
		</span><span class="java14">/**<br />
		 * İşlev.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public abstract class </span><span class="java10">İşlev </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">protected </span><span class="java10">İşlev&#xA0; sonrakiİşlev;<br />
		<br />
		&#xA0; </span><span class="java4">protected </span><span class="java10">İşlev sonrakiniAyarla</span><span class="java8">( </span><span class="java4">final </span><span class="java10">İşlev sonraki </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">sonrakiİşlev = sonraki;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">sonraki;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">protected </span><span class="java9">void </span><span class="java10">&ccedil;alıştır</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String işlemVerisi </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// İşlevi yerine getir.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">işleviYerineGetir</span><span class="java8">( </span><span class="java10">işlemVerisi </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Sonraki işlev boş değilse, ona ge&ccedil;.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">if </span><span class="java8">( </span><span class="java10">sonrakiİşlev != </span><span class="java4">null </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">sonrakiİşlev.&ccedil;alıştır</span><span class="java8">( </span><span class="java10">işlemVerisi </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		&#xA0; }<br />
		<br />
		&#xA0; </span><span class="java4">protected abstract </span><span class="java9">void </span><span class="java10">işleviYerineGetir</span><span class="java8">( </span><span class="java10">String işlemVerisi </span><span class="java8">)</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>
	</div>
	<div id="tabs-3">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.chainOfResponsibility;<br />
		<br />
		</span><span class="java14">/**<br />
		 * İşlevA.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">İşlevA </span><span class="java4">extends </span><span class="java10">İşlev </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">protected </span><span class="java9">void </span><span class="java10">işleviYerineGetir</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String işlemVerisi </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;İşlev A yapıldı. Veri: &#34; </span><span class="java10">+ işlemVerisi </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.chainOfResponsibility;<br />
		<br />
		</span><span class="java14">/**<br />
		 * İşlevA.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">İşlevB </span><span class="java4">extends </span><span class="java10">İşlev </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">protected </span><span class="java9">void </span><span class="java10">işleviYerineGetir</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String işlemVerisi </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;İşlev B yapıldı. Veri: &#34; </span><span class="java10">+ işlemVerisi </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.chainOfResponsibility;<br />
		<br />
		</span><span class="java14">/**<br />
		 * İşlevA.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">İşlevC </span><span class="java4">extends </span><span class="java10">İşlev </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">protected </span><span class="java9">void </span><span class="java10">işleviYerineGetir</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String işlemVerisi </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;İşlev C yapıldı. Veri: &#34; </span><span class="java10">+ işlemVerisi </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.chainOfResponsibility;<br />
		<br />
		</span><span class="java14">/**<br />
		 * ZincirSınaması.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">ZincirSınaması </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Zincir nesneleri.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">İşlev zincir1, zincir2, zincir;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Zincir 1 i oluştur. A -&gt; C -&gt; B<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">zincir1 = </span><span class="java4">new </span><span class="java10">İşlevA</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; zincir = zincir1.sonrakiniAyarla</span><span class="java8">( </span><span class="java4">new </span><span class="java10">İşlevC</span><span class="java8">() )</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; zincir = zincir.sonrakiniAyarla</span><span class="java8">( </span><span class="java4">new </span><span class="java10">İşlevB</span><span class="java8">() )</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Zincir 2 yi oluştur. C -&gt; A<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">zincir2 = </span><span class="java4">new </span><span class="java10">İşlevC</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; zincir2.sonrakiniAyarla</span><span class="java8">( </span><span class="java4">new </span><span class="java10">İşlevA</span><span class="java8">() )</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Zincir 1 i &ccedil;alıştır.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">zincir1.&ccedil;alıştır</span><span class="java8">( </span><span class="java5">&#34;veri1&#34; </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Zincir 2 yi &ccedil;alıştır.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">zincir2.&ccedil;alıştır</span><span class="java8">( </span><span class="java5">&#34;veri2&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-7">
		<span class="ekrancikti">		
			İşlev A yapıldı. Veri: veri1<br/>
			İşlev C yapıldı. Veri: veri1<br/>
			İşlev B yapıldı. Veri: veri1<br/>
			İşlev C yapıldı. Veri: veri2<br/>
			İşlev A yapıldı. Veri: veri2<br/>
		</span>			
	</div>
</div>

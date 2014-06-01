<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="yapisaltd"/>
<meta name="currentPageName" content="proxy"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Yapısal Tasarım Desenleri</content>


<p class="contentHeader">Özdeş Nesne ( Proxy ) Tasarım Deseni</p>
<p>Yaratılması pahalı bir çok işlem yapan bir nesneyi taklit eden bir başka nesnenin kullanılmasıdır. Örneğin bir nesne yarattığımızda veya bir nesnenin bir yordamını çağırdığımızda, bu çağırım bellekte çok yer tutan daha başka bir çok nesne yaratabilir veya ağa bağlanma, veritabanından büyük bir veri alma gibi pahalı işlemler yapabilir. Fakat uygulamanın akışına göre, bu işlemleri gerçekten yapmaya ihtiyaç olmayabilir. İşte bu durumlarda, bu pahalı işlemlerden doğan zaman ve kaynak kayıplarını önlemek için özdeş nesne kullanılır. Gerçekten bu pahalı işlem çağırılırsa, gerçek nesne oluşturulup, bu pahalı işlemler ihtiyaç olduğunda yapılır. Bu tasarım deseni kullanılarak, sisteme yük getiren gereksiz pahalı işlemler önlenir, böylece sistem daha hızlı ve sağlıklı hale gelir.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Özdeş nesne tasarım deseni örneğinde, bir görüntü dosyasının sabit diskten yüklenip de görüntülenmesi işlemi vardır. Fakat bu pahalı ve zaman alıcı bir işlemdir. GerçekGörüntüDosyası sınıfında görüldüğü gibi, dosya oluşurken, sabit diskten de yüklenmektedir. Dışarıdan görüntü dosyasını gösterme işlemi sırasında da, belleğe yüklenmiş bu dosya gösterilmektedir. İstemci sınıf konumunda olan GörüntüGösterici sınıfı incelendiğinde dosya1 ve dosya2 dosyaları görüntülenmekte, fakat dosya3 dosyası görüntülenmemektedir. Bu yüzden bu görüntü dosyası boşuna sabit diskten yüklenmiştir. Bunu önlemek için gerçek görüntü dosyasının özdeşi olan ÖzdeşGörüntüDosyası sınıfı kullanılmaktadır. Bu sınıfta görüldüğü gibi, görüntü gösterme çağırılmadan, görüntü dosyadan yüklenmemektedir. Böylece zaman ve kaynaktan kazanılmıştır.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">GörüntüDosyası.java</a></li>
		<li><a href="#tabs-3">GerçekGörüntüDosyası.java</a></li>
		<li><a href="#tabs-4">ÖzdeşGörüntüDosyası.java</a></li>
		<li><a href="#tabs-5">GörüntüGösterici.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-6">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/proxy.png"/>
	</div>
	<div id="tabs-2">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.proxy;<br />
		<br />
		</span><span class="java14">/**<br />
		 * G&ouml;r&uuml;nt&uuml;Dosyası.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public abstract class </span><span class="java10">G&ouml;r&uuml;nt&uuml;Dosyası </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">protected </span><span class="java10">String&#xA0; dosyaİsmi;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">G&ouml;r&uuml;nt&uuml;Dosyası</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String dosyaİsmi </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.dosyaİsmi = dosyaİsmi;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public abstract </span><span class="java9">void </span><span class="java10">g&ouml;r&uuml;nt&uuml;y&uuml;G&ouml;ster</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.proxy;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Ger&ccedil;ekG&ouml;r&uuml;nt&uuml;Dosyası.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Ger&ccedil;ekG&ouml;r&uuml;nt&uuml;Dosyası </span><span class="java4">extends </span><span class="java10">G&ouml;r&uuml;nt&uuml;Dosyası </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Ger&ccedil;ekG&ouml;r&uuml;nt&uuml;Dosyası</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String dosyaİsmi </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">super</span><span class="java8">( </span><span class="java10">dosyaİsmi </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; g&ouml;r&uuml;nt&uuml;DosyasınıSabitDisktenY&uuml;kle</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">private </span><span class="java9">void </span><span class="java10">g&ouml;r&uuml;nt&uuml;DosyasınıSabitDisktenY&uuml;kle</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Pahalı ve zaman alıcı bir işlem.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;G&ouml;r&uuml;nt&uuml; dosyası ( &#34; </span><span class="java10">+ dosyaİsmi + </span><span class="java5">&#34; ) sabit diskten y&uuml;klendi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">g&ouml;r&uuml;nt&uuml;y&uuml;G&ouml;ster</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;G&ouml;r&uuml;nt&uuml; dosyası ( &#34; </span><span class="java10">+ dosyaİsmi + </span><span class="java5">&#34; ) g&ouml;r&uuml;nt&uuml;lendi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.proxy;<br />
		<br />
		</span><span class="java14">/**<br />
		 * &Ouml;zdeşG&ouml;r&uuml;nt&uuml;Dosyası.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">&Ouml;zdeşG&ouml;r&uuml;nt&uuml;Dosyası </span><span class="java4">extends </span><span class="java10">G&ouml;r&uuml;nt&uuml;Dosyası </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private </span><span class="java10">G&ouml;r&uuml;nt&uuml;Dosyası&#xA0; dosya;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">&Ouml;zdeşG&ouml;r&uuml;nt&uuml;Dosyası</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String dosyaİsmi </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">super</span><span class="java8">( </span><span class="java10">dosyaİsmi </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">g&ouml;r&uuml;nt&uuml;y&uuml;G&ouml;ster</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">if </span><span class="java8">( </span><span class="java10">dosya == </span><span class="java4">null </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Yalnızca istendiğinde &ccedil;alıştır.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">dosya = </span><span class="java4">new </span><span class="java10">Ger&ccedil;ekG&ouml;r&uuml;nt&uuml;Dosyası</span><span class="java8">( </span><span class="java10">dosyaİsmi </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">dosya.g&ouml;r&uuml;nt&uuml;y&uuml;G&ouml;ster</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.proxy;<br />
		<br />
		</span><span class="java14">/**<br />
		 * G&ouml;r&uuml;nt&uuml;G&ouml;sterici.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">G&ouml;r&uuml;nt&uuml;G&ouml;sterici </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">G&ouml;r&uuml;nt&uuml;Dosyası dosya1 = </span><span class="java4">new </span><span class="java10">&Ouml;zdeşG&ouml;r&uuml;nt&uuml;Dosyası</span><span class="java8">( </span><span class="java5">&#34;resim1&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">G&ouml;r&uuml;nt&uuml;Dosyası dosya2 = </span><span class="java4">new </span><span class="java10">&Ouml;zdeşG&ouml;r&uuml;nt&uuml;Dosyası</span><span class="java8">( </span><span class="java5">&#34;resim2&#34; </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Y&uuml;kleme gerekli.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">dosya1.g&ouml;r&uuml;nt&uuml;y&uuml;G&ouml;ster</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Y&uuml;kleme gerekli.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">dosya2.g&ouml;r&uuml;nt&uuml;y&uuml;G&ouml;ster</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Y&uuml;kleme gereksiz. &Ccedil;&uuml;nk&uuml; daha &ouml;nce &#34;dosya2&#34; y&uuml;klendi.<br />
		&#xA0;&#xA0;&#xA0; // &#34;dosya3&#34; hi&ccedil; bir zaman y&uuml;klenmedi.<br />
		&#xA0;&#xA0;&#xA0; // Zaman ve kaynaktan kazan&ccedil; sağlandı.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">dosya2.g&ouml;r&uuml;nt&uuml;y&uuml;G&ouml;ster</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-6">
		<span class="ekrancikti">		
			Görüntü dosyası ( resim1 ) sabit diskten yüklendi.<br/>
			Görüntü dosyası ( resim1 ) görüntülendi.<br/>
			Görüntü dosyası ( resim2 ) sabit diskten yüklendi.<br/>
			Görüntü dosyası ( resim2 ) görüntülendi.<br/>
			Görüntü dosyası ( resim2 ) görüntülendi.<br/>
		</span>			
	</div>
</div>		

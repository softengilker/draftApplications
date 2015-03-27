<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="yapisaltd"/>
<meta name="currentPageName" content="bridge"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Yapısal Tasarım Desenleri</content>


<p class="contentHeader">Köprü ( Bridge ) Tasarım Deseni</p>
<p><font class="icerikKodVurgu">Bu tasarım deseni, soyutlama ile gerçekleştirmeyi ayrı sınıf hiyerarşisi içinde ayırmak için kullanılır.</font>  Sınıflara daha fazla bir soyutlama ve genişleme imkanı tanır. Desende hem soyutlama kısmı, hem de gerçekleştirme kısmında bir üst sınıfı bulunur. Bu üst sınıfların altındaysa belirli bir sınıf hiyerarşisi bulunur. Bu iki hiyerarşi de birbirlerine bağlıdır. İşte desen, iki kısım arasında köprü gibi bir yapı olarak duran bu bağdan ismini almıştır. Soyutlama kısmında, sistemin daha üst düzey işlemleri bulunur. Gerçekleştirme kısmında ise, bu soyutlama kısmındaki üst düzey işlemlere bağlı daha basit ve bu üst düzey işlemleri detaylandıran işlemler bulunur. Sistemin gerçekleştirme ve soyutlama kısmında kalıcı bir bağlılık istemiyorsak, bu iki kısmında birbirlerinden bağımsız olarak alt sınıflarla genişlemesine imkan vermek istiyorsak, gerçekleştirme kısmını istemciden tamamen saklamak istiyorsak bu deseni kullanabiliriz.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Aşağıdaki köprü tasarım deseni örneğinde, soyutlama kısmında bir şekil hiyerarşisi, gerçekleştirme kısmında ise bu şekilleri çizmeye yarayan kalıp hiyerarşisi bulunmaktadır. Bu iki hiyerarşi birbirlerine şekil kısmının, kalıp kısmını sahiplenmesi ile bağlanmaktadır. Şekil kısmındaki çizim detayları kalıp sınıflarında yer almaktadır. Örnekte de görüldüğü gibi soyutlama ve gerçekleştirme birbirlerinden ayrılmıştır. Gerçekleştirme kısmı olan kalıp kısmında detay daha fazladır.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">Şekil.java</a></li>
		<li><a href="#tabs-3">Üçgen.java</a></li>
		<li><a href="#tabs-4">Dikdörtgen.java</a></li>
		<li><a href="#tabs-5">Çember.java</a></li>
		<li><a href="#tabs-6">ÇizimKalıbı.java</a></li>
		<li><a href="#tabs-7">Kalıp1.java</a></li>
		<li><a href="#tabs-8">Kalıp2.java</a></li>
		<li><a href="#tabs-9">ÇizimTahtası.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-10">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/bridge.png" />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.bridge;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Şekil.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Şekil </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">protected </span><span class="java10">&Ccedil;izimKalıbı&#xA0; kalıp;<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">String&#xA0; isim;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Şekil</span><span class="java8">( </span><span class="java4">final </span><span class="java10">&Ccedil;izimKalıbı kalıp, </span><span class="java4">final </span><span class="java10">String isim </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.kalıp = kalıp;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.isim = isim;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;iz</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java10">isim + </span><span class="java5">&#34; &Ccedil;iziliyor...&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.bridge;<br />
		<br />
		</span><span class="java14">/**<br />
		 * &Uuml;&ccedil;gen.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">&Uuml;&ccedil;gen </span><span class="java4">extends </span><span class="java10">Şekil </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">&Uuml;&ccedil;gen</span><span class="java8">( </span><span class="java4">final </span><span class="java10">&Ccedil;izimKalıbı kalıp </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">super</span><span class="java8">( </span><span class="java10">kalıp, </span><span class="java5">&#34;&Uuml;&ccedil;gen&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;iz</span><span class="java8">() {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">super</span><span class="java10">.&ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; kalıp.&ccedil;izgi&Ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; kalıp.&ccedil;izgi&Ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; kalıp.&ccedil;izgi&Ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.bridge;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Dikd&ouml;rtgen.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Dikd&ouml;rtgen </span><span class="java4">extends </span><span class="java10">Şekil </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Dikd&ouml;rtgen</span><span class="java8">( </span><span class="java4">final </span><span class="java10">&Ccedil;izimKalıbı kalıp </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">super</span><span class="java8">( </span><span class="java10">kalıp, </span><span class="java5">&#34;Dikd&ouml;rtgen&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;iz</span><span class="java8">() {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">super</span><span class="java10">.&ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; kalıp.&ccedil;izgi&Ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; kalıp.&ccedil;izgi&Ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; kalıp.&ccedil;izgi&Ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; kalıp.&ccedil;izgi&Ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.bridge;<br />
		<br />
		</span><span class="java14">/**<br />
		 * &Ccedil;ember.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">&Ccedil;ember </span><span class="java4">extends </span><span class="java10">Şekil </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">&Ccedil;ember</span><span class="java8">( </span><span class="java4">final </span><span class="java10">&Ccedil;izimKalıbı kalıp </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">super</span><span class="java8">( </span><span class="java10">kalıp, </span><span class="java5">&#34;&Ccedil;ember&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;iz</span><span class="java8">() {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">super</span><span class="java10">.&ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; kalıp.&ccedil;ember&Ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.bridge;<br />
		<br />
		</span><span class="java14">/**<br />
		 * &Ccedil;izimKalıbı.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">&Ccedil;izimKalıbı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">&ccedil;izgi&Ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">&ccedil;ember&Ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.bridge;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Kalıp1.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Kalıp1 </span><span class="java4">implements </span><span class="java10">&Ccedil;izimKalıbı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;ember&Ccedil;iz</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Kalıp 1 ile &ccedil;ember &ccedil;izildi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;izgi&Ccedil;iz</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Kalıp 1 ile &ccedil;izgi &ccedil;izildi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>
	</div>
	<div id="tabs-8">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.bridge;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Kalıp2.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Kalıp2 </span><span class="java4">implements </span><span class="java10">&Ccedil;izimKalıbı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;ember&Ccedil;iz</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Kalıp 2 ile &ccedil;ember &ccedil;izildi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;izgi&Ccedil;iz</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Kalıp 2 ile &ccedil;izgi &ccedil;izildi.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>
	</div>
	<div id="tabs-9">
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.bridge;<br />
		<br />
		</span><span class="java14">/**<br />
		 * &Ccedil;izimTahtası.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">&Ccedil;izimTahtası </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Şekil dizisi.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Şekil</span><span class="java8">[] </span><span class="java10">şekiller = </span><span class="java4">new </span><span class="java10">Şekil</span><span class="java8">[ </span><span class="java7">3 </span><span class="java8">]</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Şekil nesnelerini oluştur.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">şekiller</span><span class="java8">[ </span><span class="java7">0 </span><span class="java8">] </span><span class="java10">= </span><span class="java4">new </span><span class="java10">Dikd&ouml;rtgen</span><span class="java8">( </span><span class="java4">new </span><span class="java10">Kalıp2</span><span class="java8">() )</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; şekiller</span><span class="java8">[ </span><span class="java7">1 </span><span class="java8">] </span><span class="java10">= </span><span class="java4">new </span><span class="java10">&Ccedil;ember</span><span class="java8">( </span><span class="java4">new </span><span class="java10">Kalıp1</span><span class="java8">() )</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; şekiller</span><span class="java8">[ </span><span class="java7">2 </span><span class="java8">] </span><span class="java10">= </span><span class="java4">new </span><span class="java10">&Uuml;&ccedil;gen</span><span class="java8">( </span><span class="java4">new </span><span class="java10">Kalıp2</span><span class="java8">() )</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// T&uuml;m şekilleri &ccedil;iz.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">for </span><span class="java8">( </span><span class="java4">final </span><span class="java10">Şekil şekil : şekiller </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">şekil.&ccedil;iz</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		&#xA0; }<br />
		}</span></code></div>
	</div>
	<div id="tabs-10">
		<span class="ekrancikti">		
			Dikdörtgen Çiziliyor...<br/>
			Kalıp 2 ile çizgi çizildi.<br/>
			Kalıp 2 ile çizgi çizildi.<br/>
			Kalıp 2 ile çizgi çizildi.<br/>
			Kalıp 2 ile çizgi çizildi.<br/>
			Çember Çiziliyor...<br/>
			Kalıp 1 ile çember çizildi.<br/>
			Üçgen Çiziliyor...<br/>
			Kalıp 2 ile çizgi çizildi.<br/>
			Kalıp 2 ile çizgi çizildi.<br/>
			Kalıp 2 ile çizgi çizildi.<br/>
		</span>			
	</div>	
</div>

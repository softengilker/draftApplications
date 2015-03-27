<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="davranissaltd"/>
<meta name="currentPageName" content="command"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Davranışsal Tasarım Desenleri</content>


<p class="contentHeader">Komut ( Command ) Tasarım Deseni</p>
<p>Bu tasarım deseninde, nesneler bir işlevi ve bu işlev için gerekli değiştirgeleri içerirler. Dışarıdan bu nesneler tetiklenerek bazı işlemler gerçekleştirilir. Bu tasarım deseniyle, işlemi tetikleyecek nesneler ile işlemi yapan nesneler birbirlerinden ayrılmış olur. İşlemi yapacak nesneler birden fazla olabilir ve bunlar koleksiyonlarda saklanabilir. Bu nesnelerin hepsi birden sırayla çalıştırılabilir, böylece istenen fonksiyon, birden fazla işlevin çalışmasıyla gerçekleştirilmiş olur. Yeni işlevler istendiğinde, yeni komut nesneleri de kolayca eklenebilir.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Lambaya açma/kapatma işlevi verecek düğme sistemi komut tasarım deseniyle örneklenmiştir. <font class="icerikKodVurgu">Komut</font>, tasarım desenindeki üst sınıftır. Bu arayüz sınıfı gerçekleştirecek, <font class="icerikKodVurgu">LambaAçmaKomutu</font> ve <font class="icerikKodVurgu">LambaKapatmaKomut</font> sınıfları bulunmaktadır. Bu komutlar lambaya gerekli komutu verecek komut sınıflarıdır. Bu sınıflar bir de Lamba nesnesini içermektedir. <font class="icerikKodVurgu">LambaDüğmesi</font> sınıfı ise, komutları çağıracak, çağırıcı sınıftır. Bu yüzden komut sınıflarını içerir. Örnekte bir de bu tasarım desenini sınayacak olan istemci durumundaki <font class="icerikKodVurgu">Kullanıcı</font> sınıfı vardır.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">Komut.java</a></li>
		<li><a href="#tabs-3">LambaAçmaKomutu.java</a></li>
		<li><a href="#tabs-4">LambaKapatmaKomutu.java</a></li>
		<li><a href="#tabs-5">Lamba.java</a></li>
		<li><a href="#tabs-6">LambaDüğmesi.java</a></li>
		<li><a href="#tabs-7">Kullanıcı.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-8">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/komut.png" />
	</div>
	<div id="tabs-2">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.command;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Komut.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">Komut </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">&ccedil;alıştır</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.command;<br />
		<br />
		</span><span class="java14">/**<br />
		 * LambaA&ccedil;maKomutu.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">LambaA&ccedil;maKomutu </span><span class="java4">implements </span><span class="java10">Komut </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">Lamba&#xA0; lamba;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">LambaA&ccedil;maKomutu</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Lamba lamba </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.lamba = lamba;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;alıştır</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">lamba.a&ccedil;</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.command;<br />
		<br />
		</span><span class="java14">/**<br />
		 * LambaKapatmaKomutu.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">LambaKapatmaKomutu </span><span class="java4">implements </span><span class="java10">Komut </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">Lamba&#xA0; lamba;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">LambaKapatmaKomutu</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Lamba lamba </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.lamba = lamba;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">&ccedil;alıştır</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">lamba.kapat</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.command;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Lamba.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Lamba </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">a&ccedil;</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Lamba a&ccedil;ıldı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">kapat</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Lamba kapatıldı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.command;<br />
		<br />
		</span><span class="java14">/**<br />
		 * LambaD&uuml;ğmesi.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">LambaD&uuml;ğmesi </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">Komut&#xA0; a&ccedil;maKomutu;<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">Komut&#xA0; kapatmaKomutu;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">LambaD&uuml;ğmesi</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Komut a&ccedil;maKomutu, </span><span class="java4">final </span><span class="java10">Komut kapatmaKomutu </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.a&ccedil;maKomutu = a&ccedil;maKomutu;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.kapatmaKomutu = kapatmaKomutu;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">lambaA&ccedil;</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">a&ccedil;maKomutu.&ccedil;alıştır</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">lambaKapat</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">kapatmaKomutu.&ccedil;alıştır</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.command;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Kullanıcı.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Kullanıcı </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Lamba nesnesi oluştur.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Lamba lamba = </span><span class="java4">new </span><span class="java10">Lamba</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Lamba komutlarını oluştur.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">LambaA&ccedil;maKomutu a&ccedil;Komutu = </span><span class="java4">new </span><span class="java10">LambaA&ccedil;maKomutu</span><span class="java8">( </span><span class="java10">lamba </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">LambaKapatmaKomutu kapatKomutu = </span><span class="java4">new </span><span class="java10">LambaKapatmaKomutu</span><span class="java8">( </span><span class="java10">lamba </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Lamba d&uuml;ğmesi nesnesini oluştur.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">LambaD&uuml;ğmesi d&uuml;ğme = </span><span class="java4">new </span><span class="java10">LambaD&uuml;ğmesi</span><span class="java8">( </span><span class="java10">a&ccedil;Komutu, kapatKomutu </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// D&uuml;ğme komutlarını &ccedil;alıştır.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">d&uuml;ğme.lambaA&ccedil;</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; d&uuml;ğme.lambaKapat</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-8">
		<span class="ekrancikti">
			Lamba açıldı.<br/>
			Lamba kapatıldı.<br/>
		</span>			
	</div>			
</div>

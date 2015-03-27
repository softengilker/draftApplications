<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="davranissaltd"/>
<meta name="currentPageName" content="visitor"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Davranışsal Tasarım Desenleri</content>


<p class="contentHeader">Ziyaretçi ( Visitor ) Tasarım Deseni</p>
<p><font class="icerikKodVurgu">Bu tasarım deseni, çok sayıda ve farklı tipteki nesneler üzerinde işlem yapabilmek amacıyla kullanılır.</font> İşlem yapılacak nesnelerde herhangi bir değişiklik yapılmaz. İşlemi ziyaretçi nesneleri yapar. Eğer sisteme yeni nesneler eklenmiyor, fakat sık sık yeni işlemlerin eklenmesi gerekiyorsa bu tasarım deseni kullanılabilir. Bu tasarım deseninin kullanılmasıyla, yapılacak işlemle ilgili kodların merkezi bir nesnede toplanır.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Bu örnekte, bir şirkette çalışan <font class="icerikKodVurgu">Personel</font> hiyerarşisi bulunmaktadır. Bu hiyerarşide, <font class="icerikKodVurgu">İşçi</font> ve <font class="icerikKodVurgu">Yönetici</font> alt sınıfları vardır. Bu sınıf hiyerarşisinde farklı işlemler yapabilmek için ziyaretçi tasarım deseni kullanılacaktır. Bu işlemler maaş hesaplama ve çalışma saatlerini düzenleme işlemleridir. Bunun için <font class="icerikKodVurgu">PersonelZiyaretçisi</font> üst sınıfı yaratılır. Farklı tipteki maaş hesaplama ve çalışma saati hesaplama işlemleri için de <font class="icerikKodVurgu">MaaşHesaplamaZiyaretçisi</font> ve <font class="icerikKodVurgu">ÇalışmaPlanıZiyaretçisi</font> alt sınıfları yani ziyaretçi sınıfları oluşturulur. Bu ziyaretçi sınıfları işçi ve yönetici sınıfları üzerinde çeşitli işlemler yapabilirler. Sistemi deneyen <font class="icerikKodVurgu">Şirket</font> istemci sınıfı da örnekte yer alır.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">Personel.java</a></li>
		<li><a href="#tabs-3">İşçi.java</a></li>
		<li><a href="#tabs-4">Yönetici.java</a></li>
		<li><a href="#tabs-5">PersonelZiyaretçisi.java</a></li>
		<li><a href="#tabs-6">MaaşHesaplamaZiyaretçisi.java</a></li>
		<li><a href="#tabs-7">ÇalışmaPlanıZiyaretçisi.java</a></li>
		<li><a href="#tabs-8">Şirket.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-9">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/visitor.png" />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.visitor;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Personel.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">Personel </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">kabulEt</span><span class="java8">( </span><span class="java10">PersonelZiyaret&ccedil;isi ziyaret&ccedil;i </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.visitor;<br />
		<br />
		</span><span class="java14">/**<br />
		 * İş&ccedil;i.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">İş&ccedil;i </span><span class="java4">implements </span><span class="java10">Personel </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">kabulEt</span><span class="java8">( </span><span class="java4">final </span><span class="java10">PersonelZiyaret&ccedil;isi ziyaret&ccedil;i </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">ziyaret&ccedil;i.ziyaretEt</span><span class="java8">( </span><span class="java4">this </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.visitor;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Y&ouml;netici.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Y&ouml;netici </span><span class="java4">implements </span><span class="java10">Personel </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">kabulEt</span><span class="java8">( </span><span class="java4">final </span><span class="java10">PersonelZiyaret&ccedil;isi ziyaret&ccedil;i </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">ziyaret&ccedil;i.ziyaretEt</span><span class="java8">( </span><span class="java4">this </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.visitor;<br />
		<br />
		</span><span class="java14">/**<br />
		 * PersonelZiyaret&ccedil;isi.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">PersonelZiyaret&ccedil;isi </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">ziyaretEt</span><span class="java8">( </span><span class="java10">İş&ccedil;i iş&ccedil;i </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">ziyaretEt</span><span class="java8">( </span><span class="java10">Y&ouml;netici y&ouml;netici </span><span class="java8">)</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>	
	</div>
	<div id="tabs-6">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.visitor;<br />
		<br />
		</span><span class="java14">/**<br />
		 * MaaşHesaplamaZiyaret&ccedil;isi.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">MaaşHesaplamaZiyaret&ccedil;isi </span><span class="java4">implements </span><span class="java10">PersonelZiyaret&ccedil;isi </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">ziyaretEt</span><span class="java8">( </span><span class="java4">final </span><span class="java10">İş&ccedil;i iş&ccedil;i </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;İş&ccedil;i maaşı hesaplandı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">ziyaretEt</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Y&ouml;netici y&ouml;netici </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Y&ouml;netici maaşı hesaplandı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.visitor;<br />
		<br />
		</span><span class="java14">/**<br />
		 * &Ccedil;alışmaPlanıZiyaret&ccedil;isi.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">&Ccedil;alışmaPlanıZiyaret&ccedil;isi </span><span class="java4">implements </span><span class="java10">PersonelZiyaret&ccedil;isi </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">ziyaretEt</span><span class="java8">( </span><span class="java4">final </span><span class="java10">İş&ccedil;i iş&ccedil;i </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;İş&ccedil;i &ccedil;alışma saatleri hesaplandı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">ziyaretEt</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Y&ouml;netici y&ouml;netici </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Y&ouml;netici &ccedil;alışma saatleri hesaplandı.&#34; </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.visitor;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Şirket.java<br />
		 *<br />
		 * Tarih bilgisi : May 24, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Şirket </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Personel nesnelerini oluştur.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">İş&ccedil;i iş&ccedil;i = </span><span class="java4">new </span><span class="java10">İş&ccedil;i</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Y&ouml;netici y&ouml;netici = </span><span class="java4">new </span><span class="java10">Y&ouml;netici</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Ziyaret&ccedil;i nesnelerini oluştur.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">PersonelZiyaret&ccedil;isi maaşHesaplamaZiyaret&ccedil;isi = </span><span class="java4">new </span><span class="java10">MaaşHesaplamaZiyaret&ccedil;isi</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">PersonelZiyaret&ccedil;isi &ccedil;alışmaPlanıZiyaret&ccedil;isi = </span><span class="java4">new </span><span class="java10">&Ccedil;alışmaPlanıZiyaret&ccedil;isi</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Maaş Hesaplama işlemlerini yap.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">iş&ccedil;i.kabulEt</span><span class="java8">( </span><span class="java10">maaşHesaplamaZiyaret&ccedil;isi </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; y&ouml;netici.kabulEt</span><span class="java8">( </span><span class="java10">maaşHesaplamaZiyaret&ccedil;isi </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// &Ccedil;alışma Planı işlemlerini yap.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">iş&ccedil;i.kabulEt</span><span class="java8">( </span><span class="java10">&ccedil;alışmaPlanıZiyaret&ccedil;isi </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; y&ouml;netici.kabulEt</span><span class="java8">( </span><span class="java10">&ccedil;alışmaPlanıZiyaret&ccedil;isi </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-9">
		<span class="ekrancikti">		
			İşçi maaşı hesaplandı.<br/>
			Yönetici maaşı hesaplandı.<br/>
			İşçi çalışma saatleri hesaplandı.<br/>
			Yönetici çalışma saatleri hesaplandı.<br/>
		</span>			
	</div>		
</div>	

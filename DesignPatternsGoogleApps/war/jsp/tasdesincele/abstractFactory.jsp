<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="yarataticitd"/>
<meta name="currentPageName" content="abstractFactory"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>

<content tag="solmenubaslikicerik">Yaratıcı Tasarım Desenleri</content>

<p class="contentHeader">Soyut Fabrika ( Abstract Factory ) Tasarım Deseni</p>
<p>Yaratılma sorumluluklarının çeşitli sınıf hiyerarşileri ile sağlandığı bir tasarım desenidir. İstemci sınıf, çeşitli kategorideki sınıflara ihtiyaç duyar. Bu sınıflar, sistemde alt/üst sınıf hiyerarşileri şeklinde bulunurlar. "Soyut Fabrika" tasarım deseni bu karmaşık ve farklı hiyerarşideki sınıfların yaratılma sorumluluğunu çeşitli fabrika sınıflarına verir. İstemci ilk önce verdiği kriterlere göre uygun bir fabrika sınıfını seçer. Ardından seçtiği fabrika nesnesi, istemcinin ihtiyaç duyduğu sınıfları yaratıp istemciye döner. İstemci sınıf, kullandığı sınıfların sadece üst sınıflarını, yani soyut sınıflarını bilir. Bu sınıfları ona yaratıp döndüren fabrika sınıfının da sadece soyut sınıfını içerir. Alttaki detaylar istemci sınıftan gizlenmiş, sorumluluk "Soyut Fabrika" tasarım deseni ile fabrika sınıflarına verilmiştir. Bu tasarım deseni <b>Fabrika Yordam</b> tasarım desenine benzer. Fakat bu tasarım deseninde yaratılacak birden fazla sınıf hiyerarşisi tipi bulunur. Fakat "fabrika yordam" tasarım deseninde tek tip nesne yaratılması ihtiyacı bulunur.</p>
<p>Kısaca bu tasarım deseni ile birden fazla sınıf hiyerarşisi nesneleri, kurulacak birden fazla fabrika nesneleri ile yaratılır. İstemci kendisine uygun fabrika nesnesini yarattırır. İhtiyacı olan nesnelerin yaratılma sorumluluğunu fabrika nesnelerine bırakır.</p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Örnek uygulamamızda "Sipariş Gönderici" bir sistem tasarlıyoruz. Sipariş sisteme verildikten sonra, bir ödeme yöntemi ve siparişin durumu hakkında bilgi vermek için bir de bildirim yöntemi seçilmek zorundadır. Sistemde siparişler hızlı ve normal olarak ikiye ayrılmıştır.</p>
<p>Bildirim yöntemleri ve ödeme yöntemlerinin oluşturulmaları soyut fabrika sınıflarına verilmiştir. Ayrıca sipariş yöntemini oluşturmak da yine bir soyut fabrika sınıfına verilmiştir. Sistemde çalışacak ve farklı kategorilerdeki sınıfları oluşturmak için burada soyut fabrika tasarım deseni kullanılabilir. Siparişin yöntemine göre ( hızlı veya normal ) bildirim ve ödeme yöntemi değişmektedir. Normal gönderimlerde bildirim yöntemi olarak "e-posta", ödeme yöntemi olarak da "posta çeki" kullanılmaktadır. Hızlı sipariş yönteminde ise bildirim yöntemi olarak "sms", ödeme yöntemi olarak da "havale" kullanılmaktadır. Soyut fabrika tasarım desenimiz bu şekilde tasarlanacaktır. <font class="icerikKodVurgu">Görüldüğü gibi sistemde farklı kategorilerde birden fazla sınıf hiyerarşisinden ihtiyaç duyulan sınıfların yaratılma gereksinimi bulunmaktadır.</font></p>
<p>Sistem şöyle çalışmaktadır: İlk önce istemci sınıf olan <font class="icerikKodVurgu">SiparişGönderici</font> sınıfına iki adet değiştirge geçilmektedir. Bu değiştirgelerden birincisi sipariş yöntemini ( "hızlı", "normal" ) seçmektedir. İkinci değiştirge ise sipariş tutarını belirlemektedir. Birinci değiştirge girildikten sonra, bu değiştirgenin değerine göre sipariş yöntemi sınıflarından biri yaratılarak dönülecektir. ( HızlıSiparişNesneFabrikası veya NormalSiparişNesneFabrikası ). Bu iki sınıf da ödeme tipi ve bildirim sınıf hiyerarşilerinden bir tane sınıf yaratarak dönmektedir. <font class="icerikKodVurgu">HızlıSiparişNesneFabrikası</font> sınıfı ÖdemeTipi sınıfı olarak <font class="icerikKodVurgu">Havale</font>'yi, Bildirim sınıfı olarak da <font class="icerikKodVurgu">Sms</font>'i dönmektedir. <font class="icerikKodVurgu">NormalSiparişNesneFabrikası</font> sınıfı ÖdemeTipi sınıfı olarak <font class="icerikKodVurgu">PostaÇeki</font>'ni, Bildirim sınıfı olarak da <font class="icerikKodVurgu">Eposta</font>'yı dönmektedir</p>
<p>Örnek uygulamamızda birinci parametre olarak "hızlı", ikinci parametre olarak da 105 girilmiştir.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">Bildirim.java</a></li>
		<li><a href="#tabs-3">Eposta.java</a></li>
		<li><a href="#tabs-4">Sms.java</a></li>
		<li><a href="#tabs-5">ÖdemeTipi.java</a></li>
		<li><a href="#tabs-6">PostaÇeki.java</a></li>
		<li><a href="#tabs-7">Havale.java</a></li>
		<li><a href="#tabs-8">ISiparişNesneFabrikası.java</a></li>
		<li><a href="#tabs-9">NormalSiparişNesneFabrikası.java</a></li>
		<li><a href="#tabs-10">HızlıSiparişNesneFabrikası.java</a></li>
		<li><a href="#tabs-11">SiparişGönderici.java</a></li>
		<li><a href="#tabs-12">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/abstractFactory.jpg" />
	</div>
	<div id="tabs-2">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.abstractFactory;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 29 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">Bildirim </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java9">void </span><span class="java10">mesajG&ouml;nder</span><span class="java8">( </span><span class="java10">String metin </span><span class="java8">)</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>
	</div>
	<div id="tabs-3">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.abstractFactory;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 29 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Eposta </span><span class="java4">implements </span><span class="java10">Bildirim </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">mesajG&ouml;nder</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String metin </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;E-posta ile '&#34; </span><span class="java10">+ metin + </span><span class="java5">&#34;' i&ccedil;eriği g&ouml;nderilmiştir.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>
	</div>
	<div id="tabs-4">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.abstractFactory;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 29 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Sms </span><span class="java4">implements </span><span class="java10">Bildirim </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">mesajG&ouml;nder</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String metin </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Sms ile '&#34; </span><span class="java10">+ metin + </span><span class="java5">&#34;' i&ccedil;eriği g&ouml;nderilmiştir.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>
	</div>
	<div id="tabs-5">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.abstractFactory;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 28 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">&Ouml;demeTipi </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java9">void </span><span class="java10">paraG&ouml;nder</span><span class="java8">( </span><span class="java10">Integer miktar </span><span class="java8">)</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>
	</div>
	<div id="tabs-6">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.abstractFactory;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 28 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Posta&Ccedil;eki </span><span class="java4">implements </span><span class="java10">&Ouml;demeTipi </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">paraG&ouml;nder</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Integer miktar </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Posta &ccedil;eki ile &#34; </span><span class="java10">+ miktar + </span><span class="java5">&#34; TL para g&ouml;nderilmiştir.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>
	</div>
	<div id="tabs-7">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.abstractFactory;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 28 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Havale </span><span class="java4">implements </span><span class="java10">&Ouml;demeTipi </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">paraG&ouml;nder</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Integer miktar </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Havele ile &#34; </span><span class="java10">+ miktar + </span><span class="java5">&#34; TL para g&ouml;nderilmiştir.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>
	</div>
	<div id="tabs-8">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.abstractFactory;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 29 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">ISiparişNesneFabrikası </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java10">&Ouml;demeTipi &ouml;demeTipiYarat</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0; Bildirim bildirimYarat</span><span class="java8">()</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>
	</div>
	<div id="tabs-9">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.abstractFactory;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 29 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">NormalSiparişNesneFabrikası </span><span class="java4">implements </span><span class="java10">ISiparişNesneFabrikası </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java10">&Ouml;demeTipi &ouml;demeTipiYarat</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return new </span><span class="java10">Posta&Ccedil;eki</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java10">Bildirim bildirimYarat</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return new </span><span class="java10">Eposta</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>
	</div>
	<div id="tabs-10">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.abstractFactory;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 29 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">HızlıSiparişNesneFabrikası </span><span class="java4">implements </span><span class="java10">ISiparişNesneFabrikası </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java10">&Ouml;demeTipi &ouml;demeTipiYarat</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return new </span><span class="java10">Havale</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java10">Bildirim bildirimYarat</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return new </span><span class="java10">Sms</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>
	</div>
	<div id="tabs-11">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.abstractFactory;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 29 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">SiparişG&ouml;nderici </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java14">/**<br />
		&#xA0;&#xA0;&#xA0; * </span><span class="java11">@param </span><span class="java14">args<br />
		&#xA0;&#xA0;&#xA0; */<br />
		&#xA0;&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">ISiparişNesneFabrikası siparişNesneFabrikası = </span><span class="java4">null</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">if </span><span class="java8">( </span><span class="java10">args</span><span class="java8">[ </span><span class="java7">0 </span><span class="java8">]</span><span class="java10">.equals</span><span class="java8">( </span><span class="java5">&#34;hızlı&#34; </span><span class="java8">) ) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">siparişNesneFabrikası = </span><span class="java4">new </span><span class="java10">HızlıSiparişNesneFabrikası</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java8">} </span><span class="java4">else </span><span class="java8">{<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">siparişNesneFabrikası = </span><span class="java4">new </span><span class="java10">NormalSiparişNesneFabrikası</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">&Ouml;demeTipi &ouml;demeTipi = siparişNesneFabrikası.&ouml;demeTipiYarat</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Bildirim bildirim = siparişNesneFabrikası.bildirimYarat</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; &ouml;demeTipi.paraG&ouml;nder</span><span class="java8">( </span><span class="java10">Integer.valueOf</span><span class="java8">( </span><span class="java10">args</span><span class="java8">[ </span><span class="java7">1 </span><span class="java8">] ) )</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; bildirim.mesajG&ouml;nder</span><span class="java8">( </span><span class="java5">&#34;Siparişiniz g&ouml;nderilmiştir.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>
	</div>
	<div id="tabs-12">
		<span class="ekrancikti">
			Havele ile 105 TL para gönderilmiştir.<br />
			Sms ile 'Siparişiniz gönderilmiştir.' içeriği gönderilmiştir.<br />
		</span>
	</div>
</div>


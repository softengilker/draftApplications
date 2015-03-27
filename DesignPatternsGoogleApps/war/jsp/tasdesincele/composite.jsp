<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="yapisaltd"/>
<meta name="currentPageName" content="composite"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Yapısal Tasarım Desenleri</content>


<p class="contentHeader">Ağaç Yapısı ( Composite ) Tasarım Deseni</p>
<p>Bu tasarım deseninin amacı, <font class="icerikKodVurgu">nesneleri ağaç yapısına göre düzenleyerek, ağaç yapısındaki alt üst ilişkisini kurmaktır.</font> Bu tasarım desenine göre, ağaç yapısındaki üst ve alt nesneler aynı arayüz sınıfından türeyerek, birbirlerine benzerler. Yani istemci, yaprak nesneye de üst nesneye de aynı şekilde davranır. Böylece hiyerarşiyi ifade etmek ve hiyerarşi üzerinde işlem yapmak kolaylaşır. Hiyerarşiye yeni nesneler eklemek de kolay hale gelir.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Bir şirketteki ekip üyesi ve ekip yöneticisi şeklinde iki tip çalışan vardır. Bir ekip yöneticisine birden fazla diğer ekip yöneticileri veya ekip üyeleri bağlı olabilir. Hem <font class="icerikKodVurgu">EkipÜyesi</font>, hem de <font class="icerikKodVurgu">EkipYöneticisi</font> sınıfları <font class="icerikKodVurgu">İşçi</font> sınıfından türemektedir. Ayrıca EkipYöneticisi sınıfına da listeyle n kadar İşçi sınıfı bağlanabilmektedir. İşçi sınıfı hem yönetici, hem de üye olduğu için ağaç yapısıyla istenen nesne bağlanabilektedir. Örnekte İşçi sınıfının bilgileri gösterilmektedir. Hiyerarşinin en üstünde baş yönetici isminde bir ekip yönetici sınıfı vardır. Bu nesnenin bilgi gösterme yordamı çağrıldığında, hiyerarşideki tüm sınıfların bilgi gösterme yordamları ağaç yapısı tasarım deseni sayesinde çalışmaktadır</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">İşçi.java</a></li>
		<li><a href="#tabs-3">EkipÜyesi.java</a></li>
		<li><a href="#tabs-4">EkipYöneticisi.java</a></li>
		<li><a href="#tabs-5">Şirket.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-6">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/composite.png" />
	</div>
	<div id="tabs-2">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.composite;<br />
		<br />
		</span><span class="java14">/**<br />
		 * İş&ccedil;i.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">İş&ccedil;i </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java9">void </span><span class="java10">bilgiYazdır</span><span class="java8">()</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.composite;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Ekip&Uuml;yesi.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Ekip&Uuml;yesi </span><span class="java4">implements </span><span class="java10">İş&ccedil;i </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">String&#xA0; isim;<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">String&#xA0; maaş;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Ekip&Uuml;yesi</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String isim, </span><span class="java4">final </span><span class="java10">String maaş </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.isim = isim;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.maaş = maaş;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">bilgiYazdır</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;İsim: &#34; </span><span class="java10">+ isim + </span><span class="java5">&#34;, Maaş: &#34; </span><span class="java10">+ maaş </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.composite;<br />
		<br />
		</span><span class="java4">import </span><span class="java10">java.util.ArrayList;<br />
		</span><span class="java4">import </span><span class="java10">java.util.List;<br />
		<br />
		</span><span class="java14">/**<br />
		 * EkipY&ouml;neticisi.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">EkipY&ouml;neticisi </span><span class="java4">implements </span><span class="java10">İş&ccedil;i </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">List&lt; İş&ccedil;i &gt;&#xA0; ekip&Uuml;yeleri&#xA0; = </span><span class="java4">new </span><span class="java10">ArrayList&lt; İş&ccedil;i &gt;</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">bilgiYazdır</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">for </span><span class="java8">( </span><span class="java4">final </span><span class="java10">İş&ccedil;i ekip&Uuml;yesi : ekip&Uuml;yeleri </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">ekip&Uuml;yesi.bilgiYazdır</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		&#xA0; }<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">ekip&Uuml;yesiEkle</span><span class="java8">( </span><span class="java4">final </span><span class="java10">İş&ccedil;i iş&ccedil;i </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">ekip&Uuml;yeleri.add</span><span class="java8">( </span><span class="java10">iş&ccedil;i </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">ekip&Uuml;yesi&Ccedil;ıkar</span><span class="java8">( </span><span class="java4">final </span><span class="java10">İş&ccedil;i iş&ccedil;i </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">ekip&Uuml;yeleri.remove</span><span class="java8">( </span><span class="java10">iş&ccedil;i </span><span class="java8">)</span><span class="java10">;<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.composite;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Şirket.java<br />
		 *<br />
		 * Tarih bilgisi : May 23, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Şirket </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// &Ouml;rnek bir hiyerarşi yaratılıyor.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Ekip&Uuml;yesi ekip&Uuml;yesi1 = </span><span class="java4">new </span><span class="java10">Ekip&Uuml;yesi</span><span class="java8">( </span><span class="java5">&#34;Turan&#34;</span><span class="java10">, </span><span class="java5">&#34;1000 lira&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Ekip&Uuml;yesi ekip&Uuml;yesi2 = </span><span class="java4">new </span><span class="java10">Ekip&Uuml;yesi</span><span class="java8">( </span><span class="java5">&#34;Ali&#34;</span><span class="java10">, </span><span class="java5">&#34;700 lira&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Ekip&Uuml;yesi ekip&Uuml;yesi3 = </span><span class="java4">new </span><span class="java10">Ekip&Uuml;yesi</span><span class="java8">( </span><span class="java5">&#34;Kemal&#34;</span><span class="java10">, </span><span class="java5">&#34;1750 lira&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Ekip&Uuml;yesi ekip&Uuml;yesi4 = </span><span class="java4">new </span><span class="java10">Ekip&Uuml;yesi</span><span class="java8">( </span><span class="java5">&#34;Veli&#34;</span><span class="java10">, </span><span class="java5">&#34;1050 lira&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Ekip&Uuml;yesi ekip&Uuml;yesi5 = </span><span class="java4">new </span><span class="java10">Ekip&Uuml;yesi</span><span class="java8">( </span><span class="java5">&#34;Aslan&#34;</span><span class="java10">, </span><span class="java5">&#34;1400 lira&#34; </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">EkipY&ouml;neticisi y&ouml;netici1 = </span><span class="java4">new </span><span class="java10">EkipY&ouml;neticisi</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">EkipY&ouml;neticisi y&ouml;netici2 = </span><span class="java4">new </span><span class="java10">EkipY&ouml;neticisi</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">EkipY&ouml;neticisi başY&ouml;netici = </span><span class="java4">new </span><span class="java10">EkipY&ouml;neticisi</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; y&ouml;netici1.ekip&Uuml;yesiEkle</span><span class="java8">( </span><span class="java10">ekip&Uuml;yesi1 </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; y&ouml;netici1.ekip&Uuml;yesiEkle</span><span class="java8">( </span><span class="java10">ekip&Uuml;yesi4 </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; y&ouml;netici1.ekip&Uuml;yesiEkle</span><span class="java8">( </span><span class="java10">ekip&Uuml;yesi5 </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; y&ouml;netici2.ekip&Uuml;yesiEkle</span><span class="java8">( </span><span class="java10">ekip&Uuml;yesi2 </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; y&ouml;netici2.ekip&Uuml;yesiEkle</span><span class="java8">( </span><span class="java10">ekip&Uuml;yesi3 </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; başY&ouml;netici.ekip&Uuml;yesiEkle</span><span class="java8">( </span><span class="java10">y&ouml;netici1 </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; başY&ouml;netici.ekip&Uuml;yesiEkle</span><span class="java8">( </span><span class="java10">y&ouml;netici2 </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Ağa&ccedil; yapısı &uuml;zerinde dolaşarak,<br />
		&#xA0;&#xA0;&#xA0; // t&uuml;m iş&ccedil;ilerin bilgileri yazılır.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">başY&ouml;netici.bilgiYazdır</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-6">
		<span class="ekrancikti">		
			İsim: Turan, Maaş: 1000 lira<br />
			İsim: Veli, Maaş: 1050 lira<br /> 
			İsim: Aslan, Maaş: 1400 lira<br /> 
			İsim: Ali, Maaş: 700 lira<br /> 
			İsim: Kemal, Maaş: 1750 lira<br /> 
		</span>			
	</div>
</div>
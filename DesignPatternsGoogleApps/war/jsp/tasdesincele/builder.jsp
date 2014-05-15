<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="yarataticitd"/>
<meta name="currentPageName" content="builder"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Yaratıcı Tasarım Desenleri</content>


<p class="contentHeader">Kurucu ( Builder ) Tasarım Deseni</p>
<p>Bu tasarım deseni ile bir nesneyi, bir sınıfı, aşama aşama farklı özellikleri ile oluşturabiliriz. Nesneyi farklı özellikler ile oluşturmaya yarayan bu sınıfa Kurucu nesne ismi verilir. Kurucu nesneden farklı özelliklerde alt sınıflar da türeyebilir. Kurucunun oluşturduğu nesneye ihtiyaç duyan istemci sınıf, istediği özelliklerde nesneyi oluşturabilecek kurucu oluşturur ve kurucuya istediği nesnenin oluşması için isteklerde bulunur. En sonunda da bu nesneyi alır ve kullanır. İstemci böylece nesne yaratma sorumluluğunu kurucu nesneye bırakmış olur. Tabi her basit nesnenin, bir de kurucusunu oluşturmaya gerek yoktur. Kurucu nesne genelde, içinde çok özellik barındıran, karmaşık nesnelerin oluşumunda görev alması daha yerindedir.</p>
<p class="contentHeader">Örnek Uygulama</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">Pide.java</a></li>
		<li><a href="#tabs-3">PideKurucu.java</a></li>
		<li><a href="#tabs-4">LahmacunPideKurucu.java</a></li>
		<li><a href="#tabs-5">KuşbaşılıPideKurucu.java</a></li>
		<li><a href="#tabs-6">Aşçı.java</a></li>
		<li><a href="#tabs-7">PideSalonu.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-8">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/kurulumNesnesi.png" />
	</div>
	<div id="tabs-2">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.builder;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Pide.java<br />
		 *<br />
		 * Tarih bilgisi : May 15, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Pide </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">private </span><span class="java10">String&#xA0;&#xA0; malzeme&#xA0;&#xA0; = </span><span class="java5">&#34;&#34;</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java4">private </span><span class="java10">String&#xA0;&#xA0; hamur&#xA0;&#xA0; = </span><span class="java5">&#34;&#34;</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java4">private </span><span class="java10">String&#xA0;&#xA0; baharat&#xA0;&#xA0; = </span><span class="java5">&#34;&#34;</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">malzemeKoy</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String malzeme </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.malzeme = malzeme;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">hamurKoy</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String hamur </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.hamur = hamur;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">baharatKoy</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String baharat </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.baharat = baharat;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java10">String toString</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java5">&#34;Pide [malzeme=&#34; </span><span class="java10">+ malzeme + </span><span class="java5">&#34;, hamur=&#34; </span><span class="java10">+ hamur + </span><span class="java5">&#34;, baharat=&#34; </span><span class="java10">+ baharat + </span><span class="java5">&#34;]&#34;</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.builder;<br />
		<br />
		</span><span class="java14">/**<br />
		 * PideKurucu.java<br />
		 *<br />
		 * Tarih bilgisi : May 15, 2014<br />
		 */<br />
		</span><span class="java4">public abstract class </span><span class="java10">PideKurucu </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">protected </span><span class="java10">Pide&#xA0;&#xA0; pide;<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">pideYarat</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">pide = </span><span class="java4">new </span><span class="java10">Pide</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java10">Pide pideAl</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">pide;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">public abstract </span><span class="java9">void </span><span class="java10">malzemeKur</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">public abstract </span><span class="java9">void </span><span class="java10">hamurKur</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">public abstract </span><span class="java9">void </span><span class="java10">baharatKur</span><span class="java8">()</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>	
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.builder;<br />
		<br />
		</span><span class="java14">/**<br />
		 * LahmacunPideKurucu.java<br />
		 *<br />
		 * Tarih bilgisi : May 15, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">LahmacunPideKurucu </span><span class="java4">extends </span><span class="java10">PideKurucu </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">baharatKur</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">pide.baharatKoy</span><span class="java8">( </span><span class="java5">&#34;acı biber&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">hamurKur</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">pide.hamurKoy</span><span class="java8">( </span><span class="java5">&#34;ince hamur&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">malzemeKur</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">pide.malzemeKoy</span><span class="java8">( </span><span class="java5">&#34;kıyma&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-5">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.builder;<br />
		<br />
		</span><span class="java14">/**<br />
		 * KuşbaşılıPideKurucu.java<br />
		 *<br />
		 * Tarih bilgisi : May 15, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">KuşbaşılıPideKurucu </span><span class="java4">extends </span><span class="java10">PideKurucu </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">baharatKur</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">pide.baharatKoy</span><span class="java8">( </span><span class="java5">&#34;kimyon&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">hamurKur</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">pide.hamurKoy</span><span class="java8">( </span><span class="java5">&#34;kalın hamur&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">malzemeKur</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">pide.malzemeKoy</span><span class="java8">( </span><span class="java5">&#34;kuşbaşı et&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.builder;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Aş&ccedil;ı.java<br />
		 *<br />
		 * Tarih bilgisi : May 15, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Aş&ccedil;ı </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">private </span><span class="java10">PideKurucu&#xA0;&#xA0; pideKurucu;<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">pideKurucuAta</span><span class="java8">( </span><span class="java4">final </span><span class="java10">PideKurucu pideKurucu </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.pideKurucu = pideKurucu;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java10">Pide pideAl</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">pideKurucu.pideAl</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">pideyiKur</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Pideyi aşama aşama kur.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">pideKurucu.pideYarat</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; pideKurucu.hamurKur</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; pideKurucu.malzemeKur</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; pideKurucu.baharatKur</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-7">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.builder;<br />
		<br />
		</span><span class="java14">/**<br />
		 * PideSalonu.java<br />
		 *<br />
		 * Tarih bilgisi : May 15, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">PideSalonu </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Y&ouml;netici sınıfı yarat.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Aş&ccedil;ı aş&ccedil;ı = </span><span class="java4">new </span><span class="java10">Aş&ccedil;ı</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Kurulum nesnesini yarat.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">LahmacunPideKurucu lahmacunPideKurucu = </span><span class="java4">new </span><span class="java10">LahmacunPideKurucu</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Y&ouml;netici sınıfa kurulum nesnesini ver.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">aş&ccedil;ı.pideKurucuAta</span><span class="java8">( </span><span class="java10">lahmacunPideKurucu </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// &Uuml;r&uuml;n nesnesini kur.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">aş&ccedil;ı.pideyiKur</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Pide kuruldu ve &uuml;r&uuml;n hazır.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Pide pide = aş&ccedil;ı.pideAl</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; System.out.println</span><span class="java8">( </span><span class="java5">&#34;Pide kuruldu : &#34; </span><span class="java10">+ pide </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-8">
		<span class="ekrancikti">	
			Pide kuruldu : Pide [malzeme=kıyma, hamur=ince hamur, baharat=acı biber]	
		</span>			
	</div>
</div>	
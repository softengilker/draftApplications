<%@ page contentType="text/html; charset=UTF-8"%>

<%
	getServletContext().setAttribute( "activePage", "home" );

	int langIndex = 0;
	String lang = request.getParameter( "lang" );
		
	if ( lang == null ) {
		lang = "eng";
	} else if ( lang.equals( "tr" ) ) {
		langIndex = 1;
	}
	
	int fieldCount = 8;
	String[][] langArray = new String[fieldCount][2];
	
	langArray[0][0] = "Hello!, Welcome. A bit of me :";
	langArray[0][1] = "Merhaba!, Biraz kendimden bahsedecek olursam :";
	langArray[1][0] = " I was born in İzmir, Turkey. I have accommodated in İstanbul, Turkey for a long time. I'm married and I've got very beautiful, cute daughter. She is my nearly everything in the life. I love her.";
	langArray[1][1] = " İzmirliyim. Uzun zamandır İstanbul'da yaşıyorum. Evliyim ve dünya tatlısı bir kızım var. Onu çok seviyorum.";
	langArray[2][0] = "I am passionate software developer. I have been coding for about fifteen years. I love to build helpful, wonderful software and products. I like continued learning new technologies, languages and frameworks.";
	langArray[2][1] = "Yazılım mühendisi olarak işime tutku ile bağlıyım. Yaklaşık on beş yıldır yazılım geliştiriyorum. Uygulamalarımın yararlı ve etkin olması için çabalıyorum. Yeni teknolojileri takip ederek sürekli kendimi yeniliyorum.";
	langArray[3][0] = "I like outdoor activities like trekking, hunting. From the first steps into the forest, my entire body feels changed. I feel peaceful and calm in the nature.";
	langArray[3][1] = "Trekking, avcılık gibi doğa sporları ile zaman buldukça ilgileniyorum. Doğaya çıktığımda, doğaya henüz ilk adımımı attığım anda, kendimi ve huzuru buluyorum.";
	langArray[4][0] = "For more about me, please contact.";
	langArray[4][1] = "Daha fazlası için lütfen iletişim kurunuz.";	
	langArray[5][0] = "Contact";
	langArray[5][1] = "İletişim";	
	langArray[6][0] = "Sites I Built:";
	langArray[6][1] = "Çalışmalarım:";	
	langArray[7][0] = "Developer Sites, I follow";
	langArray[7][1] = "Takip Ettiğim Siteler";	
%>

<div id="page">
	<div id="content">
		<div class="box1">
			<img src="/image/ben1.jpg" alt="" width="248" height="213" class="left" />
			<p><strong><%=langArray[0][langIndex]%></strong><%=langArray[1][langIndex]%></p>
			<p><%=langArray[2][langIndex]%></p>
			<p><%=langArray[3][langIndex]%></p>
			<p><%=langArray[4][langIndex]%></p>
		</div>
	</div>	
	<div id="sidebar">
		<ul>
			<li>
				<h2><%=langArray[5][langIndex]%></h2>
				<ul>
					<li>
						<a href="https://tr-tr.facebook.com/ilker.konar.7" target="_blank"><img src="/image/facebook_32.png" /></a>
						<a href="https://plus.google.com/101043058878661923860/about" target="_blank"><img src="/image/google_32.png" /></a>
						<a href="http://tr.linkedin.com/pub/i%CC%87lker-konar/5/237/998" target="_blank"><img src="/image/linkedin_32.gif" /></a>
						<a href="https://twitter.com/ilkerkonar" target="_blank"><img src="/image/twitter_32.gif" /></a>
						<a href="http://iyikodyazma.blogspot.com.tr/" target="_blank"><img src="/image/blogger_32.gif" /></a>
						<a href="https://github.com/softengilker" target="_blank"><img src="/image/github.png" /></a>						
					</li>
				</ul>
			</li>
		</ul>
		<ul>
			<li>
				<h2><%=langArray[6][langIndex]%></h2>
				<ul>
					<li class="listeIceri"><a href="http://www.tasarimdesenleri.com" target="_blank">Tasarım Desenleri</a></li>
				</ul>
			</li>
		</ul>
		<ul>
			<li>
				<h2><%=langArray[7][langIndex]%></h2>
				<ul>					
					<li class="listeIceri"><a href="http://www.javacodegeeks.com/" target="_blank">Java Code Geeks</a></li>
					<li class="listeIceri"><a href="http://www.infoq.com/" target="_blank">InfoQ</a></li>
					<li class="listeIceri"><a href="http://www.dzone.com/" target="_blank">Dzone</a></li>										
				</ul>
			</li>
		</ul>
	</div>	
</div>

<%@ page contentType="text/html; charset=UTF-8"%>

<%
	getServletContext().setAttribute( "activePage", "resume" );

	int langIndex = 0;
	String lang = request.getParameter( "lang" );
	
	if ( lang == null ) {
		lang = "eng";
	} else if ( lang.equals( "tr" ) ) {
		langIndex = 1;
	}
	
	int fieldCount = 23;
	String[][] langArray = new String[fieldCount][2];
	
	langArray[0][0] = "Senior Software Developer";
	langArray[0][1] = "Kıdemli Yazılım Mühendisi";
	langArray[1][0] = "SENIOR SOFTWARE DEVELOPER";
	langArray[1][1] = "KIDEMLİ YAZILIM MÜHENDİSİ";
	langArray[2][0] = "Profile";
	langArray[2][1] = "Profil";
	langArray[3][0] = "Skills";
	langArray[3][1] = "Bilgisayar Bilgisi";
	langArray[4][0] = "Experience";
	langArray[4][1] = "Deneyim";		
	langArray[5][0] = "Education";
	langArray[5][1] = "Eğitim";		
	langArray[6][0] = "Turkey";
	langArray[6][1] = "Türkiye";		
	langArray[7][0] = "More than ten years of senior software developer experience, with strong analytical skills and a broad range of computer expertise. An excellent, result-oriented problem-solver, skilled in high level of coding, debugging capabilities. Clean code, unit test, code refactoring talented.";
	langArray[7][1] = "On yıldan fazla bir zamandır yazılım mühendisi olarak çalışıyorum. Geniş bir bilgisayar bilgisine ve analitik düşünme yetisine sahibim. Yüksek düzeyde kodlama, hata ayıklama yeteneği ile birlikte, işime problem çözme ve sonuç odaklı yaklaşıyorum. Temiz ve sade kodlamayı, birim sınama ve kod iyileştirme tecrübelerimi sürekli işimde kullanıyorum.";
	langArray[8][0] = "Technology";
	langArray[8][1] = "Teknoloji";
	langArray[9][0] = "Software";
	langArray[9][1] = "Yazılım";	
	langArray[10][0] = "Software Developer";
	langArray[10][1] = "Yazılım Mühendisi";	
	langArray[11][0] = "Military Service";	
	langArray[11][1] = "Askerlik Hizmeti";	
	langArray[12][0] = "Turkish Soldier and Software Developer";	
	langArray[12][1] = "Bilgi İşlem, Asteğmen";		
	langArray[13][0] = "Done Communication and Information Systems";	
	langArray[13][1] = "Done İletişim";			
	langArray[14][0] = "Mobile Application Developer";	
	langArray[14][1] = "Mobil Uygulama Geliştirici";		
	langArray[15][0] = "University";	
	langArray[15][1] = "Üniversitesi";				
	langArray[16][0] = "Computer Engineering";	
	langArray[16][1] = "Bilgisayar Mühendisliği";
	langArray[17][0] = "Telecom Charging software application developments with J2EE technologies and Oracle PL/SQL. Designing, coding, unit testing, code reviewing, providing test team support. Troubleshoot for program bugs in existing systems. Make recommendations on the business requirements, technical documentation. Participate in continuous improvement initiatives.";
	langArray[17][1] = "J2EE ve Oracle PL/SQL teknolojileri ile telekom ücretlendirme uygulamaları geliştiriyorum. Tasarım, kodlama, birim sınama, kod gözden geçirme ve test ekiplerine destek faaliyetlerini yürütüyorum. İş istekleri konusunda analiz yapıp, önerilerde bulunuyorum.";
	langArray[18][0] = "Software coding and unit testing in order to create Telecom Messaging Applications. Recommend new approaches and tools. For example advised and provided spread of Maven and spring framework usage to other development teams.";
	langArray[18][1] = "Telekom alanında mesajlaşma uygulamaları ve servisleri geliştirdim. Maven, Spring Framework gibi teknolojileri diğer geliştirme ekiplerine önerip, kullanımının yaygınlaşmasına katkıda bulundum.";
	langArray[19][0] = "Developing, unit testing and documentation some financial J2EE applications.";
	langArray[19][1] = "J2EE teknolojilerini kullanıp geliştirme, birim sınama ve teknik belge hazırlama işlerini yürüttüm.";
	langArray[20][0] = "Developed some web applications with .NET C# and ASP for the Army.";
	langArray[20][1] = "Deniz Kuvvetleri için .NET C# ve ASP teknolojileri ile web uygulamaları geliştirdim.";
	langArray[21][0] = "Developed some J2ME mobile games for old 64KB memory Nokia phones. Memory optimization, complex math. calculations for the games.";
	langArray[21][1] = "J2ME ile yalnızca 64 kilobyte belleğe sahip olan Nokia telefonlar için oyun geliştirdim. Oyun programlama sırasında karmaşık matematik işlemleri, bellek optimizasyonları ile ilgilendim.";	
	langArray[22][0] = "GPA";	
	langArray[22][1] = "Mezuniyet Not Ortalaması";				
%>

<head>
	<link href="/css/resume.css" rel="stylesheet" type="text/css" media="all" />
	<link href="/css/reset-fonts-grids.css" rel="stylesheet" type="text/css" media="all" />
</head>

<div id="page">
<div id="doc2" class="yui-t7">
	<div id="inner">
	
		<div id="hd">
			<div class="yui-gc">
				<div class="yui-u first">
					<h1>İlker KONAR</h1>
					<h2><%=langArray[1][langIndex]%></h2>
				</div>

				<div class="yui-u">
					<div class="contact-info">
						<!--  
						<h3><a id="pdf" href="#">Download PDF</a></h3>
						-->
						<h3><a href="mailto:ilker@ilkerkonar.com">ilker@ilkerkonar.com</a></h3>
						<h3>İstanbul, <%=langArray[6][langIndex]%></h3>
					</div>
				</div>
			</div>
		</div>

		<div id="bd">
			<div id="yui-main">
				<div class="yui-b">

					<div class="yui-gf">
						<div class="yui-u first">
							<h2><%=langArray[2][langIndex]%></h2>
						</div>
						<div class="yui-u">
							<p class="enlarge">
								<%=langArray[7][langIndex]%>   
							</p>
						</div>
					</div>

					<div class="yui-gf">
						<div class="yui-u first">
							<h2><%=langArray[3][langIndex]%></h2>
						</div>
						<div class="yui-u">
								<div class="talent">
									<h2>Java, Java8, J2ME</h2>
								</div>
								<div class="talent">
									<h2>Spring Framework</h2>
								</div>
								<div class="talent">
									<h2>Design Patterns</h2>
								</div>
								<div class="talent">
									<h2>Groovy, Scala</h2>
								</div>
								<div class="talent">
									<h2>Ant, Maven, Gradle</h2>
								</div>
								<div class="talent">
									<h2>Subversion, Git, ClearCase</h2>
								</div>
								<div class="talent">
									<h2>Struts, Struts2</h2>
								</div>
								<div class="talent">
									<h2>JSF, Primefaces</h2>
								</div>
								<div class="talent">
									<h2>Html, Css, Java Script, Jquery, Angular JS</h2>
								</div>
								<div class="talent">
									<h2>Oracle, Mysql, PostgreSql</h2>
								</div>
								<div class="talent">
									<h2>Oracle PL/SQL</h2>
								</div>
								<div class="talent">
									<h2>MongoDB</h2>
								</div>
								<div class="talent">
									<h2>C/C++, Pascal</h2>
								</div>
								<div class="talent">
									<h2>Software Design, UML</h2>
								</div>
								<div class="talent">
									<h2>Technical Documentation</h2>
								</div>
								<div class="talent">
									<h2>Agile Methodologies, Scrum</h2>
								</div>
								<div class="talent">
									<h2>Object Oriented Design</h2>
								</div>
								<div class="talent">
									<h2>UNIX( Linux, Solaris ), Windows</h2>
								</div>
						</div>
					</div>

					<div class="yui-gf">
	
						<div class="yui-u first">
							<h2><%=langArray[4][langIndex]%></h2>
						</div>

						<div class="yui-u">

							<div class="job">
								<h2>Turkcell <%=langArray[8][langIndex]%></h2>
								<h3><%=langArray[0][langIndex]%></h3>
								<h4>09.2011 - ...</h4>
								<p><%=langArray[17][langIndex]%></p>
							</div>

							<div class="job">
								<h2>Vodafone <%=langArray[8][langIndex]%></h2>
								<h3><%=langArray[0][langIndex]%></h3>
								<h4>02.2007 - 09.2011</h4>
								<p><%=langArray[18][langIndex]%></p>
							</div>

							<div class="job">
								<h2>Infina <%=langArray[9][langIndex]%></h2>
								<h3><%=langArray[10][langIndex]%></h3>
								<h4>11.2006 - 02.2007</h4>
								<p><%=langArray[19][langIndex]%></p>
							</div>
							
							<div class="job">
								<h2><%=langArray[11][langIndex]%></h2>
								<h3><%=langArray[12][langIndex]%></h3>
								<h4>11.2005 - 11.2006</h4>
								<p><%=langArray[20][langIndex]%></p>
							</div>


							<div class="job last">
								<h2><%=langArray[13][langIndex]%></h2>
								<h3><%=langArray[14][langIndex]%></h3>
								<h4>07.2004 - 11.2005</h4>
								<p><%=langArray[21][langIndex]%></p>
							</div>

						</div>
					</div>

					<div class="yui-gf last">
						<div class="yui-u first">
							<h2><%=langArray[5][langIndex]%></h2>
						</div>
						<div class="yui-u">
							<h2>Ege <%=langArray[15][langIndex]%> - İzmir, <%=langArray[6][langIndex]%>&nbsp;&nbsp;2000-2004</h2>
							<h3><%=langArray[16][langIndex]%> &mdash; <strong>81/100 <%=langArray[22][langIndex]%></strong> </h3>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div id="ft">
			<p>İlker KONAR &mdash; <a href="mailto:ilker@ilkerkonar.com">ilker@ilkerkonar.com</a></p>
		</div>

	</div>
</div>
</div>
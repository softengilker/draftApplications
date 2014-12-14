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
	
	int fieldCount = 6;
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
						<h3>İstanbul, Turkey</h3>
					</div><!--// .contact-info -->
				</div>
			</div><!--// .yui-gc -->
		</div><!--// hd -->

		<div id="bd">
			<div id="yui-main">
				<div class="yui-b">

					<div class="yui-gf">
						<div class="yui-u first">
							<h2><%=langArray[2][langIndex]%></h2>
						</div>
						<div class="yui-u">
							<p class="enlarge">
								More than ten years of senior software developer experience, with strong analytical skills and a broad range of computer expertise. An excellent, result-oriented problem-solver, skilled in high level of coding, debugging capabilities. Clean code, unit test, code refactoring talented.   
							</p>
						</div>
					</div><!--// .yui-gf -->

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
					</div><!--// .yui-gf -->

					<div class="yui-gf">
	
						<div class="yui-u first">
							<h2><%=langArray[4][langIndex]%></h2>
						</div><!--// .yui-u -->

						<div class="yui-u">

							<div class="job">
								<h2>Turkcell Technology</h2>
								<h3><%=langArray[0][langIndex]%></h3>
								<h4>09.2011 - ...</h4>
								<p>Telecom Charging software application developments with J2EE technologies and Oracle PL/SQL. Designing, coding, unit testing, code reviewing, providing test team support. Troubleshoot for program bugs in existing systems. Make recommendations on the business requirements, technical documentation. Participate in continuous improvement initiatives.</p>
							</div>

							<div class="job">
								<h2>Vodafone Technology</h2>
								<h3><%=langArray[0][langIndex]%></h3>
								<h4>02.2007 - 09.2011</h4>
								<p>Software coding and unit testing in order to create Telecom Messaging Applications. Recommend new approaches and tools. For example advised and provided spread of Maven and spring framework usage to other development teams.</p>
							</div>

							<div class="job">
								<h2>Infina Software</h2>
								<h3>Software Developer</h3>
								<h4>11.2006 - 02.2007</h4>
								<p>Developing, unit testing and documentation some financial J2EE applications.</p>
							</div>
							
							<div class="job">
								<h2>Military Service</h2>
								<h3>Turkish Soldier and Software Developer</h3>
								<h4>11.2005 - 11.2006</h4>
								<p>Developed some useful web applications with .NET C# and ASP for the Army</p>
							</div>


							<div class="job last">
								<h2>Done Communication and Information Systems</h2>
								<h3>Mobile Application Developer</h3>
								<h4>07.2004 - 11.2005</h4>
								<p>Developed some J2ME mobile games for old 64KB memory Nokia phones. Memory optimization, complex math. calculations for the games.</p>
							</div>

						</div><!--// .yui-u -->
					</div><!--// .yui-gf -->


					<div class="yui-gf last">
						<div class="yui-u first">
							<h2><%=langArray[5][langIndex]%></h2>
						</div>
						<div class="yui-u">
							<h2>Ege University - Izmir, Turkey&nbsp;&nbsp;2000-2004</h2>
							<h3>Computer Engineering &mdash; <strong>4.0 GPA</strong> </h3>
						</div>
					</div><!--// .yui-gf -->


				</div><!--// .yui-b -->
			</div><!--// yui-main -->
		</div><!--// bd -->

		<div id="ft">
			<!--
			<p>Jonathan Doe &mdash; <a href="mailto:name@yourdomain.com">name@yourdomain.com</a> &mdash; (313) - 867-5309</p>
			-->
			<p>İlker KONAR &mdash; <a href="mailto:ilker@ilkerkonar.com">ilker@ilkerkonar.com</a></p>
		</div><!--// footer -->

	</div><!-- // inner -->


</div><!--// doc -->
</div>
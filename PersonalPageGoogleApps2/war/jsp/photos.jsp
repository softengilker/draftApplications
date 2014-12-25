<%@ page contentType="text/html; charset=UTF-8"%>

<%
	getServletContext().setAttribute( "activePage", "photos" );

	int langIndex = 0;
	String lang = request.getParameter( "lang" );
	
	if ( lang == null ) {
		lang = "eng";
	} else if ( lang.equals( "tr" ) ) {
		langIndex = 1;
	}
	
	int fieldCount = 8;
	String[][] langArray = new String[fieldCount][2];
		
	langArray[0][0] = "My wife and me";
	langArray[0][1] = "Eşim ve ben";	
	langArray[1][0] = "My family";
	langArray[1][1] = "Ailem";	
	langArray[2][0] = "My lovely daughter";
	langArray[2][1] = "Canım kızım";	
	langArray[3][0] = "When I was 'Go to Amsterdam 2014' International Software Conference";
	langArray[3][1] = "'Go to Amsterdam 2014' Uluslararası Yazılım konferansındayken";	
	langArray[4][0] = "Bolu Gölcük natural lake";
	langArray[4][1] = "Bolu Gölcük";	
	langArray[5][0] = "Yedigöller natural lake";
	langArray[5][1] = "Yedigöller";	
	langArray[6][0] = "Ankara Harikalar Diyarı";
	langArray[6][1] = "Ankara Harikalar Diyarı";	
	langArray[7][0] = "Antalya Tahtalı Mountain Apex. 2365 m.";
	langArray[7][1] = "Antalya Tahtalı Dağı doruk noktası. 2365 m.";	
%>

<div id="page">
	<table style="margin-left: 100px;">
		<tr>
			<td><img class="pics" src="/image/photos/1.jpg" data-glisse-big="/image/photos/1B.jpg" rel="group1" title="<%=langArray[0][langIndex]%>" style="cursor: hand;"/></td>
			<td><img class="pics" src="/image/photos/2.JPG" data-glisse-big="/image/photos/2B.JPG" rel="group1" title="<%=langArray[1][langIndex]%>" style="cursor: hand;"/></td>			
			<td><img class="pics" src="/image/photos/3.JPG" data-glisse-big="/image/photos/3B.JPG" rel="group1" title="<%=langArray[2][langIndex]%>" style="cursor: hand;"/></td>
			<td><img class="pics" src="/image/photos/4.jpg" data-glisse-big="/image/photos/4B.jpg" rel="group1" title="<%=langArray[3][langIndex]%>" style="cursor: hand;"/></td>			
		</tr>
		<tr>
			<td><img class="pics" src="/image/photos/5.jpg" data-glisse-big="/image/photos/5B.jpg" rel="group1" title="<%=langArray[4][langIndex]%>" style="cursor: hand;"/></td>
			<td><img class="pics" src="/image/photos/6.JPG" data-glisse-big="/image/photos/6B.JPG" rel="group1" title="<%=langArray[5][langIndex]%>" style="cursor: hand;"/></td>			
			<td><img class="pics" src="/image/photos/7.JPG" data-glisse-big="/image/photos/7B.JPG" rel="group1" title="<%=langArray[6][langIndex]%>" style="cursor: hand;"/></td>
			<td><img class="pics" src="/image/photos/8.jpg" data-glisse-big="/image/photos/8B.jpg" rel="group1" title="<%=langArray[7][langIndex]%>" style="cursor: hand;"/></td>			
		</tr>
	</table>
</div>

<script>
$(function () {
    $('.pics').glisse({
        changeSpeed: 550, 
        speed: 500,
        effect:'bounce',
        fullscreen: true
    }); 
});
</script>

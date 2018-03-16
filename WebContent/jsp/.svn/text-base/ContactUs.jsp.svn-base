<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>

<style>
      #map_canvas {
      top:200px;
        width: -850px;
        height: 300px;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script>
      function initialize() {
        var mapCanvas = document.getElementById('map_canvas');
        var mapOptions = {
          center: new google.maps.LatLng(23.195529400000000000,72.633596000000010000),
          zoom:16,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(mapCanvas, mapOptions)
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
  </head>
  <body background="<%request.getContextPath(); %>/images/back.jpg">
 <div id="header" class="header">
		<table>
			<tr>
				<td><img src="<%=request.getContextPath()%>/images/logo.jpg"></td>
				<td><h1>
						<font face="Ghostwriter" color="#F0FFF0">MultiBanking<sub>
								&nbsp; We Understand Your World</sub></font>
					</h1></td>
			</tr>
		</table>
	</div>
  <div id="content" class="content">
		<ul id="drop-nav">

			<li><a href="<%=request.getContextPath()%>/HomePage.jsp">HomePage </a>
				
			<li><a>Login</a>
				<ul>
					<li><a href="<%=request.getContextPath()%>/jsp/BankLogin.jsp">Corporate Bank Login</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/CustomerLogin.jsp">User Login</a></li>
					
				</ul></li>
			<li><a href="<%=request.getContextPath()%>/jsp/AboutUs.jsp">About Us</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
	</div>
    <div id="map_canvas"></div>
    <div id="contact">
    <h1>Contact Us:</h1>
<p>For Any Queries feel free to Contact Our Service Executives @ 9999555555</p>
</div>
    <div id="footer" class="footer">
		<center>
			<p>
				© 2012. VPAAS MultiBank .All Rights Reserved. <br> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Best viewed in Google Chrome.

			</p>
		</center>
	</div>
	
  </body>
</html>

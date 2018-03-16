<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>

<%if(session.getAttribute("customerId")==null){ %>
<body>
<%  RequestDispatcher rd = request.getRequestDispatcher("../jsp/CustomerLogin.jsp");
								rd.forward(request, response);%><%}else{ %>

	<div id="header" class="header">
		
		<table>
			<tr>
				<td><img src="<%=request.getContextPath()%>/images/logo.jpg"></td>
				<td><h1>
						<font face="Ghostwriter" color="#F0FFF0">Customer Portal<sub>
								&nbsp; We Understand Your World</sub></font>
					</h1></td>

			</tr>
		</table>
	</div>
	<div id="bankLogout">
			<a href="<%=request.getContextPath()%>/customerServlet?action=customerLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" title="logout"></a></div>
			<div id="update"><a href="<%=request.getContextPath() %>/jsp/CustomerPortal.jsp"><img
				src="<%=request.getContextPath()%>/images/home.jpg" title="customer home"></a></div>
	<center>
		<%
			if (request.getAttribute("error") == null) {
			} else {
		%>
		<span style="color: red"> <%=request.getAttribute("error")%></span>
		<%
			}
		%>
	</center>

	
	<%-- <form name="customerLogout"
		action="<%=request.getContextPath()%>/customerServlet" method="post"><input type="submit" value="logout"> 
		<input type="hidden" value="customerLogout" name="action">
	</form> --%>
	<br>
	<br>
	<br>
	<br>
	
<form method="post" action="<%=request.getContextPath()%>/CustomerRequestServlet">
		<fieldset>
			<legend>RD details</legend>
			<table class="first">
				<tr>
					<td>RD id</td>
					<td><input type="number" name="rdid"></td>
				</tr>
			</table>
		</fieldset>
		<input type="hidden" name="action" value="readPreRD">
		<input type="submit" value="search">
	</form>
	<br>
		<div id="footerhome" class="footerhome">
		<center>
			<p>
				© 2012. VPAAS MultiBank .All Rights Reserved. <br> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Best viewed in Google Chrome.

			</p>
		</center>
	</div>
</body>
<%} %>
</html>
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
						<font face="Ghostwriter" color="#F0FFF0">MultiBanking<sub>
								&nbsp; We Understand Your World</sub></font>
					</h1></td>
					
			</tr>
		</table>
	</div>
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

	
 <form method="post" action="<%=request.getContextPath() %>/Admin_controller" >
 Enter the customerId <input type="text" name="cid" >
 <input type="hidden" name="action" value="viewRequest"> <input
			type="submit" value="view">
			</form>
			<br></br><center>
	<a href="<%=request.getContextPath() %>/jsp/CustomerPortal.jsp"><img src="<%=request.getContextPath()%>/images/customerhome.png" /></a>
	</center>
<center><font face="verdana" color="blue">CustomerPortal</font>
</center>
	<div id="footer" class="footer">
		<center>
			<p>
				© 2012. VPAAS MultiBank .All Rights Reserved. <br> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Best viewed in Google Chrome.

			</p>
		</center>
	</div>
	<%} %>
</body>
</html>
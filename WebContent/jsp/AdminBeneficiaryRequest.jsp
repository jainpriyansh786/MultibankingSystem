<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Beneficiary Request</title>
</head>
<%if(session.getAttribute("adminId")==null){ %>
<body>
<%  RequestDispatcher rd = request.getRequestDispatcher("../jsp/AdminLogin.jsp");
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
	<div id="bankLogout">
			<a href="<%=request.getContextPath()%>/AdminServlet?action=adminLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" title="logout"></a></div>
	<div id="update"> 
	<a href="<%=request.getContextPath() %>/jsp/AdminPortal.jsp"><img src="<%=request.getContextPath()%>/images/home.jpg" title="adminhome" /></a>
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
<%}%>
</html>
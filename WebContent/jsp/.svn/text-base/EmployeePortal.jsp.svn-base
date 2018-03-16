<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Employee Portal</title>
</head>
<%if(session.getAttribute("employeeId")==null){ %>
<body>
<% response.sendRedirect("../jsp/EmployeeLogin.jsp");%><%}else{ %>
	

<%if(request.getAttribute("error")==null) 
{
}
else
{
	%>
<span style="color: red">	<%=request.getAttribute("error") %></span>
	<%
}
%>

<div id="header" class="header">
		<table>
			<tr>
				<td><img src="<%=request.getContextPath()%>/images/logo.jpg"></td>
				<td><h1>
						<font face="Ghostwriter" color="#F0FFF0">Employee Portal<sub>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; We Understand Your World</sub></font>
					</h1></td>
					
			</tr>
		</table>
	</div>
 <div id="bankLogout">
			<a href="<%=request.getContextPath()%>/CustomerRequestServlet?action=employeeLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" title="logout"></a></div>

<%-- <div id="panel" class="panel">
<td><img src="<%=request.getContextPath()%>/images/employeeicon.jpg"></td>
</div> --%>






<div id="admin" class="admin">
<table align="center">
<tr>
<td>
<a href="<%=request.getContextPath() %>/CustomerRequestServlet?action=viewRequestEmployee"><img src="<%=request.getContextPath()%>/images/empview.jpg" /><tr><td>View Allocated Service request</td></tr></a>
</td></tr>
</table>
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
<%} %>
</html>
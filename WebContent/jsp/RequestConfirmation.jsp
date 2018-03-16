<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RequestIdGeneration</title>
</head>
<%if(session.getAttribute("customerId")==null){ %>
<body>
<%  RequestDispatcher rd = request.getRequestDispatcher("../jsp/CustomerLogin.jsp");
								rd.forward(request, response);%><%}else{ %>


	<div id="header" class="header">
		<p align="right">
			<a href="<%=request.getContextPath()%>/customerServlet?action=customerLogout"><img
				src="../images/logout.png"></a>
		</p>
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


<h2 align="center">Thank you!!! Your Request is placed!!  </h2>
<br></br>
<center>
<% int req_Id= Integer.parseInt(request.getAttribute("RequestId").toString());
if(req_Id>0){
%><h2>Please note the Request ID:<%=req_Id%></h2>
<% 
}
else
{
	%> Request is not created..please try again later!!!
<%
}
%>
</center>
<br></br><br></br><center>
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
<%} %>
			</p>
		</center>
	</div>
</body>
</html>
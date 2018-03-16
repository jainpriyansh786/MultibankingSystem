<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bank Portal</title>
</head>
<%if(session.getAttribute("bankId")==null){ %>
<body>
<%  RequestDispatcher rd = request.getRequestDispatcher("../jsp/BankLogin.jsp");
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
	
		

<h3>
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

</h3>

		<div id="addBranch" class="addBranch">	

<a href="<%=request.getContextPath() %>/jsp/BranchRegistration.jsp"><img src="<%=request.getContextPath()%>/images/bankportal.jpg" /><center><font face="verdana" color="blue">AddBranch</font></center></a>

</div>
	
<div id="viewBranch" class="viewBranch"><a href="<%=request.getContextPath() %>/bankServlet?action=branchview123"><img src="<%=request.getContextPath()%>/images/bankportal.jpg" /><center><font face="verdana" color="blue">ViewBranches</font></center></a></div>

	  <div id="bankLogout">
			<a href="<%=request.getContextPath()%>/bankServlet?action=bankLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" alt="logout"></a></div>
	 
	<div id="footer" class="footer">
		<center>
			<p>
				© 2012. VPAAS MultiBank .All Rights Reserved. <br> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Best viewed in Google Chrome.

			</p>
		</center>
	</div>	 
	 <%}%>
</body>
</html>
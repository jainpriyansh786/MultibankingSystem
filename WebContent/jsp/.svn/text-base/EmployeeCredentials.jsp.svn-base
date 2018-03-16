


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%if(session.getAttribute("adminId")==null){ %>
<body>
<% response.sendRedirect("../jsp/AdminLogin.jsp");%><%}else{ %>
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
<div style="text-align: center;">
		<div
			style="box-sizing: border-box; display: inline-block; width: 630; max-width: 630px; background-color: #FFFFFF; border: 2px solid #0361A8; border-radius: 5px; box-shadow: 0px 0px 8px #00628B; margin: 200px auto auto;">
			<div
				style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;">
				<span
					style="font-family: verdana, arial; color: #D4D4D4; font-size: 1.00em; font-weight: bold;">Employee Credentials</span>
			</div>
			<div style="background:; padding: 15px">
				<style type="text/css" scoped>
td {
	text-align: left;
	font-family: verdana, arial;
	color: #064073;
	font-size: 1.00em;
}

input {
	border: 1px solid #CCCCCC;
	border-radius: 5px;
	color: #666666;
	display: inline-block;
	font-size: 1.00em;
	padding: 5px;
	width: 100%;
}

input[type="button"],input[type="reset"],input[type="submit"] {
	height: auto;
	width: auto;
	cursor: pointer;
	box-shadow: 0px 0px 5px #00628B;
	float: right;
	margin-top: 10px;
}

table.center {
	margin-left: auto;
	margin-right: auto;
}
</style>

<% int EmployeeId= Integer.parseInt(request.getAttribute("employee_id").toString());
String EmployeePwd= request.getAttribute("employee_passwrd").toString();
  

if(EmployeeId>0){
%>



	<table>
		<tr>
			<td>EmployeeID:</td><td><%=EmployeeId %></td>
			</tr>
			<tr><td>Password:</td><td><%=EmployeePwd %></td></tr>
	
	<%
}
else
{
	%> 
<%
}
%>
	</table>
		</div>
		</div>
	</div>
	
	
	<div id="bankLogout">
			<a href="<%=request.getContextPath()%>/AdminServlet?action=adminLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" title="logout"></a></div>
	<div id="update"> 
	<a href="<%=request.getContextPath() %>/jsp/AdminPortal.jsp"><img src="<%=request.getContextPath()%>/images/home.jpg" title="adminhome" /></a>
</div>


	
<%-- 	 <br></br><center>
	<a href="<%=request.getContextPath() %>/AdminPortal.jsp"><img src="<%=request.getContextPath()%>/images/customerhome.png" /></a>
	</center>
<center><font face="verdana" color="blue">AdminPortal</font>
</center>
 --%>	
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





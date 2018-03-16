<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<script src="<%=request.getContextPath() %>/javascript_Validations/javascript.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BankRegistrationForm</title>
</head>
<body>
<div id="header" class="header">
		<table>
			<tr>
				<td><img src="<%=request.getContextPath()%>/images/logo.jpg"></td>
				<td><h1>
						<font face="Ghostwriter" color="#F0FFF0">Bank Registration<sub>
								&nbsp;</sub></font>
					</h1></td>
					
			</tr>
		</table>
	</div>
<div id="menu" class="menu">
		<ul id="drop-nav">

			<li><a href="<%=request.getContextPath()%>/HomePage.jsp">Home Page </a>
				<%-- <ul>
					<li><a href="<%=request.getContextPath()%>/jsp/CustomerRegistration.jsp">User</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/BankRegistration.jsp">Bank</a></li>
				</ul></li> --%>
			<li><a href="<%=request.getContextPath()%>/jsp/BankLogin.jsp">Bank Login</a></li>
			<li><a href="<%=request.getContextPath()%>/jsp/AboutUs.jsp">About Us</a></li>
			<li><a href="<%=request.getContextPath()%>/jsp/ContactUs.jsp">Contact Us</a></li>
		</ul>
	</div>


	<div style="text-align: center;">
		<div
			style="box-sizing: border-box; display: inline-block; width: auto; max-width: 480px; background-color: #FFFFFF; border: 2px solid #00628B; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 100px auto auto;">
			<div
				style="background: #00628B; border-radius: 5px 5px 0px 0px; padding: 15px;">
				<span
					style="font-family: verdana, arial; color: #D4D4D4; font-size: 1.00em; font-weight: bold;">Bank Details</span>
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
	box-shadow: 0px 0px 5px #0361A8;
	float: right;
	margin-top: 10px;
}

table.center {
	margin-left: auto;
	margin-right: auto;
}

.error {
	font-family: verdana, arial;
	color: #D41313;
	font-size: 1.00em;
}
</style>
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
				<form method="post" action="<%=request.getContextPath() %>/bankServlet"
					name="bankRegistrationDetails" onsubmit="return validate4()">
					<table class='center'>

						<tr>
							<td>BankName<span style="color: red">*</span></td>
							<td><input type="text" name="name" id="name"placeholder="Letters"></td>
							<td></td>
							<td><span id="bankNameRegister1"></span></td>
						</tr>



					</table>
					<br></br> <input type="hidden" name="action" value="bankRegister">

					<input type="submit" value="register" name="action">
				</form>



			</div>
		</div>
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

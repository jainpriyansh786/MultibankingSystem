<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
    String error=request.getParameter("error");
    if(error==null || error=="null") 
    {
        error="";
    }
%>

<script>
	src="<%=request.getContextPath() %>/javascript_Validations/javascript.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<body>
 <div id="header" class="header">
		<table>
			<tr>
				<td><a href="<%=request.getContextPath()%>/HomePage.jsp"><img src="../images/logo.jpg"></a></td>
				<td><h1>
						<font face="Ghostwriter" color="#F0FFF0">MultiBanking<sub>
								&nbsp; We Understand Your World</sub></font>
					</h1></td>
			</tr>
		</table>
	</div>


			
			<div id="update"><a href="<%=request.getContextPath() %>/HomePage.jsp"><img
				src="<%=request.getContextPath()%>/images/home.jpg" title="customer home"></a></div>

<div id="customerlogin" class="customerlogin">

</div>

	<div style="text-align: center;">
		<div
			style="box-sizing: border-box; display: inline-block; width: 630; max-width: 630px; background-color: #FFFFFF; border: 2px solid #00628B; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 150px auto auto;">
			<div
				style="background: #00628B; border-radius: 5px 5px 0px 0px; padding: 15px;">
				<span
					style="font-family: verdana, arial; color: #D4D4D4; font-size: 1.00em; font-weight: bold;">Customer
					Login</span>
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


				<form method="post"
					action="<%=request.getContextPath() %>/customerServlet"
					name="CustomerLogin" target="_top" onsubmit=" return validate6()">

					<table class='center'>

						<tr>
							<td>CustomerId:</td>
							<td><input type="text" name="customerLogin" id="customer"placeholder="CustomerId"></td>
							<td></td>
							<td><span id="customerlogin1"></span></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input type="password" name="customerpassword"
								id="customerpassword"placeholder="Password"></td>
							<td><%= error %></td>
							<td><span id="customerpassword1"></span></td>
						</tr>
						<tr><td></td></tr>
						<tr>
							<td>&nbsp;</td>
							<td><input type="submit" value="login"><input
								type="hidden" name="action" value="customerLogin"></td>
						</tr>
						<tr>
							<td colspan=2>&nbsp;</td>
						</tr>

					</table>
				</form>
			</div>
		</div>
	</div>

	<div id="footer" class="footer">
		<center>
			<p>
				© 2012. VPAAS MultiBank .All Rights Reserved. <br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Best viewed
				in Google Chrome.

			</p>
		</center>
	</div>
</body>
</html>
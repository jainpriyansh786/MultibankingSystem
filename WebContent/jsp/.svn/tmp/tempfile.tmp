<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">


<script src="<%=request.getContextPath() %>/javascript_Validations/javascript.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration</title>
</head>

<body>
	<div id="header" class="header">
		<table>
			<tr>
				<td><img src="../images/logo.jpg"></td>
				<td><h1>
						<font face="verdana" color="Black">MultiBanking<sub>
								&nbsp; We Understand Your World</sub></font>
					</h1></td>
			</tr>
		</table>
	</div>
	
			<div id="update"><a href="<%=request.getContextPath() %>/HomePage.jsp"><img
				src="<%=request.getContextPath()%>/images/home.jpg" title="customer home"></a></div>
<div id="menu" class="menu">
		<ul id="drop-nav">

			<li><a href="<%=request.getContextPath()%>/HomePage.jsp">Homepage </a>
				<%-- <ul>
					<li><a >User</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/BankRegistration.jsp">Bank</a></li>
				</ul> --%></li>
			<%-- <li><a>Login</a>
				<ul>
					<li><a href="<%=request.getContextPath()%>/jsp/BankLogin.jsp">Corporate Bank Login</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/CustomerLogin.jsp">User Login</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/EmployeeLogin.jsp">Employee Login</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/Adminstrator.jsp">Administrator Login</a>
				</ul></li> --%>
			<li><a href="<%=request.getContextPath()%>/jsp/AboutUs.jsp">About Us</a></li>
			<li><a href="<%=request.getContextPath()%>/jsp/ContactUs.jsp">Contact</a></li>
		</ul>
	</div>

<center>
		

<div style="text-align: center;">
		<div
			style="box-sizing: border-box; display: inline-block; width: 630px; max-width: 630px; background-color: #FFFFFF; border: 2px solid #00628B; border-radius: 5px; box-shadow: 0px 0px 8px #00628B; margin: 100px auto auto;">

			
			<div
				style="background: #00628B; border-radius: 5px 5px 0px 0px; padding: 15px;">
				<span
					style="font-family: verdana, arial; color: #D4D4D4; font-size: 1.00em; font-weight: bold;">Customer Registration</span>
			</div>
			<div style="background:; padding: 15px">
				<style type="text/css" scoped>
td {
	text-align:right;
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
					action="<%=request.getContextPath()%>/customerServlet"
					name="customerRegistrationDetails" id="register-form"
					onSubmit="return validate()">


					<table class='center'>

						<tr>
							<td>CustomerName<span style="color: red">*</span>:
							</td>
							
							<td><input type="text" name="name" id="name" maxlength="20"placeholder="Abc Xyz"></td>
							<td></td>
							<td>
						<span id="name1" ></span>
						</td>
						</tr>
						<tr>
							<td>Age<span style="color: red">*</span>:
							</td>
							<td><input type="text" name="age" id="age" maxlength="2"placeholder="Numeric"></td>
							<td></td>
							<td>
						<span id="age1"></span>
						</td>
						</tr>
						<tr>
							<td>DateOfBirth<span style="color: red">*</span>
							</td>
							<td><input type="date" name="dob" id="dob" placeholder="yyyy/mm/dd"  min="1910-01-02" max="2001-01-01"></td>
							<td></td>
							<td>
						<span id="dob1"></span>
						</td>
						</tr>
						<tr>
							<td>Address<span style="color: red">*</span>:
							</td>
							<td><textArea cols="15" rows="3" name="address" id="address"placeholder="address" ></textArea></td>
							<td></td>
							<td>
						<span id="address1"></span>
						</td>
						</tr>
						<tr>
							<td>Occupation<span style="color: red">*</span>:
							</td>
							<td><input type="text" name="occupation" id="occupation" maxlength="20" placeholder="occupation"></td>
							<td></td>
							<td>
						<span id="occupation1" ></span>
						</td>
						</tr>
						<tr>
							<td>Annual Salary<span style="color: red">*</span>:
							</td>
							<td><input type="text" name="salary" id="salary" maxlength="20"placeholder="Salary"></td>
							<td></td>
							<td>
						<span id="salary1" ></span>
						</td>
						</tr>
						<tr>
							<td>PAN Number<span style="color: red">*</span></td>
							<td><input type="text" name="pan" id="pan" maxlength="10"placeholder="ABCDE1234A"></td>
							<td></td>
							<td>
						<span id="pan1" ></span>
						</td>
						</tr>
						<tr>
							<td>Email Id<span style="color: red">*</span></td>
							<td><input type="email" name="emailId" id="emailId" maxlength="40"placeholder="abc@xyz.com"></td>
							<td></td>
							<td>
						<span id="emailId1"></span>
						</td>
						</tr>
						<tr>
							<td>PhoneNo.<span style="color: red">*</span></td>
							<td><input type="tel" name="phone" id="phone" maxlength="10"placeholder="98266xxxxx"></td>
							<td></td>
							<td>
						<span id="phone1" ></span>
						</td>
						</tr>
						<tr>
						<td>
		
						</td>
						</tr>
						<tr><td><input type="hidden" name="action" value="customerRegister"></td>
					
			
			<td>
				<input type="submit" value="register" name="action" id="register-form">
			</td></tr>
			
					</table>
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
		


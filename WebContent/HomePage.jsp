<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/js-image-slider.css">
<script src="<%=request.getContextPath()%>/javascript_Validations/js-image-slider.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>

<body>



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
<div id="menu" class="menu">
		<ul id="drop-nav">

			<li><a>Registrations </a>
				<ul>
					<li><a href="<%=request.getContextPath()%>/jsp/CustomerRegistration.jsp">User</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/BankRegistration.jsp">Bank</a></li>
				</ul></li>
			<li><a>Login</a>
				<ul>
					<li><a href="<%=request.getContextPath()%>/jsp/BankLogin.jsp">Corporate Bank Login</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/CustomerLogin.jsp">User Login</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/EmployeeLogin.jsp">Employee Login</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/AdminLogin.jsp">Administrator Login</a>
				</ul></li>
			<li><a href="<%=request.getContextPath()%>/jsp/AboutUs.jsp">About Us</a></li>
			<li><a href="<%=request.getContextPath()%>/jsp/ContactUs.jsp">Contact</a></li>
		</ul>
	</div>

	<br></br>
	<br></br>
	<br></br>
	<br></br>
	<br></br>
	<div id="slider">
		<img src="./images/l1.jpg" /> <img src="./images/l2.jpg" /> <img
			src="./images/l3.jpg" /> <a><img src="./images/l4.jpg" /></a> <img
			src="./images/l5.jpg" /> <img src=".images/l6.jpg" /> <img
			src="./images/l7.jpg" /> <img src="./images/l8.jpg" /> <img
			src="./images/l9.jpg" /> <img src="./images/l10.jpg" /> <img
			src="./images/l11.jpg" />

	</div>
	
	
	
	
	
	
	
	
	
<table>
<tr>	
<td>	
<div id="warning" class="warning">

		<table style="width=20px;" border="1" cellspacing="2" cellpadding="2">
		<tr>
		<td colspan="10" width="150" height="15" bgcolor="skyblue">&nbsp;Phishing Alert</td>
			<tr><td colspan="10"  width="50" height="40" bgcolor="transparent"><marquee direction="up">Our Bank does not ask for the details of your account/PIN/password. Therefore anyone   pretending to be asking you for information from the bank/technical team may be fraudulent 
  entities, so please beware. You should know how to operate net transactions and if you are 
  not familiar you may refrain from doing so. You may seek bank's guidance in this regard. 
  Bank is not responsible for online transactions going wrong.  ...</marquee><a href="AboutUs.jsp"><font color="red">KNOW
							MORE</font></a></td></tr></table></div>
			
			
<td>
			
	<%--<div id="warning1" class="warning1">
<table style="width=20px;" border="1" cellspacing="2" cellpadding="2">
			<tr>				
			<td  colspan="10" width="150" height="12" bgcolor="#0066FF">&nbsp;<marquee>WARNING</marquee></td>
			
			<tr>
				<td colspan="10" width="50" height="12" bgcolor="#C4FCF5">It has come to
					the notice of Reserve Bank of India that mail has been sent in its
					name 'inviting bank customers to update their bank account
					details.<a href="AboutUs.jsp"><font color="red">KNOW
							MORE</font></a>
				</td></tr></table></div>--%>
				
				
				<td>
				<div id="foot" class="foot"><a href="<%=request.getContextPath()%>/jsp/CustomerLogin.jsp"><img src="./images/foot.png" /></a></div>
				<%-- <div id="link" class="link"><a href="CustomerLogin.jsp">Internet Banking</a></div>--%>
				</td>
				<tr><td>
				<div id="zoom1" class="zoom1"><img src="./images/visa1.jpg" /></div>
				
				</td>
				<td>
				<div id="zoom2" class="zoom2"><img src="./images/chrome.jpg" /></div>
				</td>
				</tr>
				

		</table>
		

	

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
</html>


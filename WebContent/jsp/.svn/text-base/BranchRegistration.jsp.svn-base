<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="<%=request.getContextPath() %>/javascript_Validations/javascript.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BranchDetailsForm</title>
</head>
<%if(session.getAttribute("bankId")==null){ %>
<body>
<%  RequestDispatcher rd = request.getRequestDispatcher("../jsp/bankLogin.jsp");
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
	<div style="text-align: center;">
		<div
			style="box-sizing: border-box; display: inline-block; width: 630px; max-width: 630px; background-color: #FFFFFF; border: 2px solid #0361A8; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 50px auto auto;">
			<div
				style="background: #00628B; border-radius: 5px 5px 0px 0px; padding: 15px;">
				<span
					style="font-family: verdana, arial; color: #D4D4D4; font-size: 1.00em; font-weight: bold;">BranchDetails</span>
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


				<form method="post"
					action="<%=request.getContextPath()%>/bankServlet"
					name="branchRegistrationDetails"  onsubmit="return validate5()">
					<table class='center' >
						
						<tr>
							<td>BranchName<span style="color: red">*</span>:
							</td>
							<td><input type="text" name="branch" id="branch"placeholder="Letters" maxlength="15"></td>
							<td></td>
							<td><span id="branch1"></span></td>
						</tr>
						<tr>
							<td>IfscCode<span style="color: red">*</span>:
							</td>
							<td><input type="number" name="ifsc" id="ifsc"placeholder="Numeric" maxlength="5"></td>
							<td></td>
							<td><span id="ifsc1"></span></td>
						</tr>
						<tr>
							<td>location<span style="color: red">*</span>:
							</td>
							<td><input type="text" name="location" id="location"placeholder="Letters" maxlength="20"></td>
							<td></td>
							<td><span id="location1"></span></td>
						</tr>
						<tr>
							<td>ContactPerson<span style="color: red">*</span>:
							</td>
							<td><input type="text" name="contactPerson"
								id="contactPerson"placeholder="Letters" maxlength="10"></td>
								<td></td>
							<td><span id="contactPerson1"></span></td>
						</tr>
						<tr>
							<td>ContactNo<span style="color: red">*</span>:
							</td>
							<td><input type="tel" name="contactNo" id="contactNo"placeholder="Numeric" maxlength="10"></td>
							<td></td>
							<td><span id="contactNo1"></span></td>
						</tr>



					</table>
					<input type="hidden" name="action" value="branchRegister">
					<br></br>
					<center>
						<input type="submit" value="register" name="action">
					</center>
				</form>
				
				
				
	
			</div>
		</div>
	</div>
	
	<div id="bankLogout">
			<a href="<%=request.getContextPath()%>/AdminServlet?action=adminLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" title="logout"></a></div>
	<div id="update"> 
	<a href="<%=request.getContextPath() %>/jsp/BankPortal.jsp"><img src="<%=request.getContextPath()%>/images/home.jpg" title="Bank home" /></a>
</div>
	
	
	
	
	
	
	
	
	
	
	
	<%--  <br></br><center>
	<a href="<%=request.getContextPath() %>/jsp/BankPortal.jsp"><img src="<%=request.getContextPath()%>/images/customerhome.png" /></a>
	</center>
<center><font face="verdana" color="blue">BankPortal</font>
</center> --%>
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.bank.model.Customer"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<script src="<%=request.getContextPath() %>/javascript_Validations/javascript.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Update Details</title>
</head>
<%if(session.getAttribute("customerId")==null){ %>
<body>
	<div style="text-align: center;">
		<div
			style="box-sizing: border-box; display: inline-block; width: 630; max-width: 630px; background-color: #FFFFFF; border: 2px solid #00628B; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 200px auto auto;">
			<div
				style="background: #00628B; border-radius: 5px 5px 0px 0px; padding: 15px;">
				<span
					style="font-family: verdana, arial; color: #D4D4D4; font-size: 1.00em; font-weight: bold;">Bank
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
<%  RequestDispatcher rd = request.getRequestDispatcher("../jsp/CustomerLogin.jsp");
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
			<a href="<%=request.getContextPath()%>/customerServlet?action=customerLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" title="logout"></a></div>
			<div id="update"><a href="<%=request.getContextPath() %>/jsp/CustomerPortal.jsp"><img
				src="<%=request.getContextPath()%>/images/home.jpg" title="customer home"></a></div>
<form action="<%=request.getContextPath() %>/customerServlet" onsubmit="return validate()">
	<% Customer c=(Customer)request.getAttribute("customer");%>
	<table align="center"class='center'>
		<tr>
		<td>Customer Id</td>
			<td><input type="text" name="name"

			

				value="<%=c.getCustomerId() %>" readonly='readonly' ></td>

		
		</tr>
		<tr>
			<td>Customer Name</td>
			<td><input type="text" name="name"
				value="<%=c.getCustomerName() %>" readonly='readonly'></td>
		<tr>
			<td>Customer Age</td>
			<td><input type="text" name="age" value="<%=c.getAge() %>" id="age" readonly='readonly'></td>
			<td>
						<span id="age1" ></span>
						</td>
		<tr>
			<td>Customer Address</td>
			<td><input type="text" name="address" value="<%=c.getAddress() %>" id="address"></td>
			<td>
						<span id="address1" ></span>
						</td>
		<tr>
			<td>Customer Occupation</td>
			<td><input type="text" name="occupation" value="<%=c.getOccupation() %>" id="occupation"></td>
			<td>
						<span id="occupation1" ></span>
						</td>
		<tr>
			<td>Customer Salary</td>
			<td><input type="text" name="salary" value="<%=c.getSalary() %>" id="salary"></td>
			<td>
						<span id="salary1" ></span>
						</td>
		<tr>
			<td>Customer Pan</td>
			<td><input type="text" name="pan" value="<%=c.getPan() %>" readonly='readonly'></td>
		<tr>
			<td>Customer EmailId</td>
			<td><input type="text" name="emailid" value="<%=c.getEmailId() %>" id="emailId" ></td>
			<td>
						<span id="emailId1"></span>
						</td>
		<tr>
			<td>Customer PhoneNumber</td>
			<td><input type="text" name="phoneno" value="<%=c.getPhoneNo() %>" id="phone"></td>
			<td>
						<span id="phone1"></span>
						</td>
		<tr>
			<td>Customer DOB</td>
			<td><input type="text" name="dob" value="<%=c.getDob() %>" readonly='readonly'></td>
	</tr>
	</table>
	<input type="hidden" name="action" value="updateDetails"> <br></br>
		<center>
			<input type="submit" value="update" name="submit">
		</center>
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
<%} %>
			</p>
		</center>
	</div>
</body>
</html>
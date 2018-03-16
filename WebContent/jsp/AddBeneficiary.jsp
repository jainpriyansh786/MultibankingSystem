<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<script src="<%=request.getContextPath() %>/javascript_Validations/javascript.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Beneficiary</title>
</head>
<%if(session.getAttribute("customerId")==null){ %>
<body>
<%  RequestDispatcher rd = request.getRequestDispatcher("../jsp/CustomerLogin.jsp");
								rd.forward(request, response);%><%}else{ %>
<div id="header" class="header">
		<table>
			<tr>
				<td><img src="<%=request.getContextPath()%>/images/logo.jpg"></td>
				<td><h1>
						<font face="Ghostwriter" color="#F0FFF0">Customer Portal<sub>
								&nbsp;</sub></font>
					</h1></td>
			</tr>
		</table>
	</div>
	<div id="bankLogout">
			<a href="<%=request.getContextPath()%>/customerServlet?action=customerLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" alt="logout"></a></div>
			<div id="update"><a href="<%=request.getContextPath() %>/jsp/CustomerPortal.jsp"><img
				src="<%=request.getContextPath()%>/images/home.jpg" alt="customer home"></a></div>	
	<%-- <div id="menu" class="menu">
		<ul id="drop-nav">

		<!-- <li><a href="#">Home</a> -->
		<li><a href="#">Account</a>
			<ul>
				
				<li><a
					href="<%=request.getContextPath()%>/customerServlet?action=viewdetails">Update
						Account</a></li>

				<li><a href="<%=request.getContextPath()%>/customerServlet?action=">View Account Details</a></li>
			</ul></li>
		<li><a href="#">Deposit</a>
			<ul>
				<li><a
					href="<%=request.getContextPath()%>/customerServlet?action=fixedDepositRequest">Fixed
						Deposit</a></li>
				<li><a
					href="<%=request.getContextPath()%>/customerServlet?action=recurringDepositRequest">Recurring
						Deposit</a></li>
				<li><a
					href="<%=request.getContextPath()%>/customerServlet?action=viewFixedDeposit">View
						FixedDeposit</a></li>


			</ul></li>
		<li><a href="#">Fund Transfer</a>
			<ul>
				
				<li><a href="<%=request.getContextPath() %>/customerServlet?action=deleteBeneficiary">DELETE BENEFICIARY</a></li>
				<li><a
					href="<%=request.getContextPath()%>/customerServlet?action=viewbeneficiarylist">Amount
						Transfer</a></li>
			</ul></li>

		<li><a href="#">Service Request</a>
			<ul>
				<li><a href="#">New Request</a></li>
				<li><a href="#">View Request Status</a></li>

			</ul></li>
	</ul>
	</div> --%>
	
<div style="text-align: center;">
		<div
			style="box-sizing: border-box; display: inline-block; width: 630; max-width: 630px; background-color: #FFFFFF; border: 2px solid #00628B; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 80px auto auto;">
			<div
				style="background: #00628B; border-radius: 5px 5px 0px 0px; padding: 15px;">
				<span
					style="font-family: verdana, arial; color: #D4D4D4; font-size: 1.00em; font-weight: bold;">BeneficiaryDetails</span>
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

	
		<form method="post" action="<%=request.getContextPath()%>/customerServlet"
			name="customerRegistrationDetails" onsubmit="return validate2()">
			<table class="center">
				
				<tr>
					<td>Beneficiary Name<span style="color: red">*</span>:
					</td>
					<td><input type="text" name="name" id="name"placeholder="Letters"></td>
					<td></td>
							<td><span id="beneficiaryname1"></span></td>
				</tr>
				<tr>
					<td>Account Number<span style="color: red">*</span>:
					</td>
					<td><input type="number" name="accountNo" id="accountNo"placeholder="Numeric" maxlength="10"></td>
					<td></td>
							<td><span id="beneficiaryaccountNo1"></span></td>
				</tr>
				<tr>
					<td>Bank Name<span style="color: red">*</span>:
					</td>
					<td><input type="text" name="bankname" id="bankname"placeholder="Letters"></td>
					<td></td>
							<td><span id="beneficiarybankname1"></span></td>
				</tr>
				
				<tr>
					<td>Branch <span style="color: red">*</span>:
					</td>
					<td><input type="text" name="branch" id="branch"placeholder="Letters"></td>
					<td></td>
							<td><span id="beneficiarybranchname1"></span></td>
				</tr>
				<tr>
					<td>IFSC Code<span style="color: red">*</span>:
					</td>
					<td><input type="number" name="ifsccode" id="ifsccode"placeholder="Numeric" maxlength="5"></td>
					<td></td>
							<td><span id="beneficiaryifsc1"></span></td>
				</tr>
				
				<tr>
					<td>Email Id</td>
					<td><input type="email" name="emailId" id="emailId" placeholder="Email"></td>
					<td></td>
							<td><span id="beneficiaryEmailId1"></span></td>
				</tr>
				<tr><td>
				<input type="hidden" name="action" value="addbeneficiary">
			
		
				<input type="submit" value="ADD" name="action">
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
	<%}%>
</body>
</html>
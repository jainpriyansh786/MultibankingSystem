<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ServiceRequestForm</title>
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

	<%-- <ul id="drop-nav">

		<!-- <li><a href="#">Home</a> -->
		<li><a href="#">Account</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/jsp/AddAccount.jsp">Add
						Account</a></li>
				<li><a
					href="<%=request.getContextPath()%>/customerServlet?action=viewdetails">Update
						Account</a></li>

				<li><a href="<%=request.getContextPath()%>/customerServlet?action=">View Account Details</a></li>
			</ul></li>
		<li><a href="#">Deposit</a>
			<ul>
				<li><a
					href="<%=request.getContextPath()%>/customerServlet?action=fixedDepositRequest">FIXED
						DEPOSIT</a></li>
				<li><a
					href="<%=request.getContextPath()%>/customerServlet?action=recurringDepositRequest">RECURRING
						DEPOSIT</a></li>
				<li><a
					href="<%=request.getContextPath()%>/customerServlet?action=viewFixedDeposit">VIEW
						FIXED DEPOSIT</a></li>


			</ul></li>
		<li><a href="#">Fund Transfer</a>
			<ul>
				<li><a
					href="<%=request.getContextPath()%>/jsp/AddBeneficiary.jsp">ADD
						BENEFICIARY</a></li>
				<li><a href="<%=request.getContextPath() %>/customerServlet?action=deleteBeneficiary">DELETE BENEFICIARY</a></li>
				<li><a
					href="<%=request.getContextPath()%>/customerServlet?action=viewbeneficiarylist">AMOUNT
						TRANSFER</a></li>
			</ul></li>

		<li><a href="#">Service Request</a>
			<ul>
				<li><a href="#">New Request</a></li>
				<li><a href="<%=request.getContextPath()%>/jsp/PreFdForm.jsp">>>FD Pre Closure</a></li>
				<li><a href="<%=request.getContextPath()%>/jsp/PreRDForm.jsp">>>RD Pre Closure</a></li>
				
				<li><a href="<%=request.getContextPath()%>/jsp/ViewRequestStatusAmt2.jsp">View Request Status</a></li>

			</ul></li>
	</ul> --%>
	<%-- <form name="customerLogout"
		action="<%=request.getContextPath()%>/customerServlet" method="post"><input type="submit" value="logout"> 
		<input type="hidden" value="customerLogout" name="action">
	</form> --%>
	<h2 align="center"> Place your request over here!!!!</h2>
	
	<form method="post" action="<%=request.getContextPath() %>/CustomerRequestServlet" >
		<fieldset>
			<legend>Request Details</legend>
			<table class="first">
				
				<tr>
					<td>Request type</td>
					<td>
					
						
	<input type="radio"  name="type_selection" value="DebitTwice"> Amount Debited Twice<br>
	<input type="radio" name="type_selection"  value="difference in maturity amount">Difference in Maturity Amount

						
						
					</td>
				</tr>
				<tr>
				<td> Request Description </td>
				<td><textarea name="description" ></textarea></td></tr>
				
				
			</table>
		</fieldset>
		<input type="hidden" name="action" value="requestDetails"> <input
			type="submit" value="submit">
	</form>
<%} %>
	
</body>
</html>
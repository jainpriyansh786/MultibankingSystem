

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Portal</title>
</head>
<%if(session.getAttribute("customerId")==null){ %>
<body>
<%  RequestDispatcher rd = request.getRequestDispatcher("../jsp/CustomerLogin.jsp");
								rd.forward(request, response);%><%}else{ %>
	
	<div id="header" class="header">
		<p align="left">
		<%if(request.getAttribute("welcome")==null) 
{
}
else
{
	%>
<span style="color: red">Welcome<%=request.getAttribute("welcome") %></span>
	<%
}
%>          <div id="bankLogout">
			<a href="<%=request.getContextPath()%>/customerServlet?action=customerLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" alt="logout"></a></div>
			<div id="update"><a href="<%=request.getContextPath()%>/customerServlet?action=viewdetails"><img
				src="<%=request.getContextPath()%>/images/edit.png" alt="update profile"></a></div>	
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
				
			} 
			else {
		%>
	<div id="customerportalerror">	<span style="color: red"><h4> <%=request.getAttribute("error")%></h4></span> </div>
		<%
			}
		%>
	</center>

	<ul id="drop-nav">

		<!-- <li><a href="#">Home</a> -->
		<li><a href="#">Account</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/jsp/AddAccount.jsp">Add
						Account</a></li>
				<li><a href="<%=request.getContextPath()%>/customerServlet?action=viewaccountdetails">Update/Delete Account</a></li> 

				<li><a  href="<%= request.getContextPath()%>/customerServlet?action=accountview">View Account Details</a></li>
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
						Fixed Deposit</a></li>

					

			</ul></li>
		<li><a href="#">Fund Transfer</a>
			<ul>
				<li><a
					href="<%=request.getContextPath()%>/jsp/AddBeneficiary.jsp">Add
						Beneficiary</a></li>
				 <li><a  href="<%=request.getContextPath() %>/customerServlet?action=deleteBeneficiary">Delete Beneficiary</a></li> 
				<li><a
					href="<%=request.getContextPath()%>/customerServlet?action=viewbeneficiarylist">Amount
						Transfer</a></li>
			</ul></li>

		<li><a href="#">Service Request</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/jsp/PreFdForm.jsp">Pre-FixedDeposit Closure</a></li>
				<li><a href="<%=request.getContextPath()%>/jsp/PreRDForm.jsp">Pre-RecurringDeposit Closure</a></li>
				<li><a href="<%=request.getContextPath()%>/jsp/requestForm.jsp">Other Service Request</a></li>
				<li><a href="<%=request.getContextPath()%>/CustomerRequestServlet?action=viewRequestSr">View Request Status</a></li>

			</ul></li>
			
			
	
	</ul>
	<%-- <br></br><br></br><br></br><br></br><br></br><br></br><br></br><br></br>
	<a href="<%=request.getContextPath()%>/customerServlet?action=viewdetails">Update Profile</a>
 --%>
	<%-- <form name="customerLogout"
		action="<%=request.getContextPath()%>/customerServlet" method="post"><input type="submit" value="logout"> 
		<input type="hidden" value="customerLogout" name="action">
	</form> --%>

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

<%} %>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.bank.model.PreRD"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>../CSS/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>

<body>
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
	<div id="bankLogout">
			<a href="<%=request.getContextPath()%>/customerServlet?action=customerLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" title="logout"></a></div>
			<div id="update"><a href="<%=request.getContextPath() %>/jsp/CustomerPortal.jsp"><img
				src="<%=request.getContextPath()%>/images/home.jpg" title="customer home"></a></div>
<form  method="post" action="<%=request.getContextPath()%>/CustomerRequestServlet">

	<%
		PreRD preRD=(PreRD)request.getSession().getAttribute("PreRD");
	%>
	  
			<h4>RD details</h4>
			<table class="priyansh" id="priyansh" bgcolor="#FFFFFF">
				<tr>
					<th>RD id</th>
					<td><label for=""><%=request.getParameter("rdid")%></label>
				</tr>
				<tr>
					<td>Deposit Amount</td>
					<td><label for=""><input type="text" value="<%=preRD.getInitialAmount()%>" name="amount" readonly></label></td>
				</tr>
				<tr>
				     <td>Pre Mature Amount:</td>
				     <td><label for=""><input type="text" value="<%=request.getSession().getAttribute("prematureAmount") %>" name="prematureAmount" readonly></label>
				     </td></tr>
				<tr>
				<td>Deposit Date:</td>
				<td> <label for=""><%=preRD.getDepositeDate() %></label></td>
				</tr>
				<tr>
				<td>Closing Date & Time:</td>
				<td> <label for=""><%=preRD.getCurrentDate() %></label>
			</table>
		
		 
		<input  type="hidden" name="action" value="placeRDRequest">
		<input  type="submit" value="Place Request">
	</form>
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
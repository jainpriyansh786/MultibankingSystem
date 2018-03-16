<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.bank.model.RecurringDeposit, java.sql.Date;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recurring Deposit</title>
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
<% RecurringDeposit rd = (RecurringDeposit)session.getAttribute("deposit");
  float interestRate = Float.parseFloat(session.getAttribute("interest").toString());
  Date maturityDate = (Date)session.getAttribute("maturityDate");
  Boolean qualified = (Boolean)session.getAttribute("qualifiedAmount");
 
  if(qualified==true){%>
 
  <table class="priyansh" id="priyansh" bgcolor="#FFFFFF">
 
  <tr><td>Account Number:<%=rd.getAccountNo()%></td></tr>
  <tr><td>Tenure:<%=rd.getTenure() %></td></tr>
  <tr><td>Amount:<%=rd.getAmount() %></td></tr>
  <tr><td>Deposit Date:<%= rd.getDepositDate() %></td></tr>
  <tr><td>Maturity Date:<%=maturityDate%></td></tr>
  <tr><td>Interest Rate:<%=interestRate %></td></tr>
  <tr><td>Auto_Debit:<%=rd.getAutoDebit() %></td></tr>
  <tr><td>Day:<%=rd.getDay() %></td></tr></table>

<table>
<tr>
<td>
  <table>
  <tr>
      <td>  <form action="<%= request.getContextPath() %>/customerServlet">
      <input type="hidden" value="rdsubmission" name="action"></input>
       <input type="submit" value="YES"></input></form></td></tr></table></td>
       <td>
      <table><tr><td>
       <form action="<%= request.getContextPath() %>/customerServlet">
        <input type="hidden" value="rdcancellation" name="action"></input>
       <input type="submit" value="NO"></input></form> </td></tr></table></td></tr></table>
       
       <%}else{ %>
       No sufficient balance
       <%} %>
       
     
	<div id="footer" class="footer">
		<center>
			<p>
				© 2012. VPAAS MultiBank .All Rights Reserved. <br> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Best viewed in Google Chrome.

			</p>
		</center>
	</div>
	<%} %>
</body>
</html>
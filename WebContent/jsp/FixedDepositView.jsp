<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.util.ArrayList , com.bank.model.FixedDeposit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<% ArrayList<FixedDeposit> fd = (ArrayList<FixedDeposit>) request.getAttribute("fixedDeposit"); 
if(fd.size()>0 ){%>
<table class="priyansh" id="priyansh" bgcolor="#FFFFFF">
  <tr>
  
  <th>Fixed Deposit ID</th>
  <th>Customer ID</th>
  <th>Account No</th>
  <th>Tenure</th>
  <th>Amount</th>
  <th>Deposited Date</th>
  <th>Maturity Date</th>
   <th>Auto Renewal</th></tr>
  <% for(FixedDeposit f:fd){ %>
  
  <tr>
  <td><%=f.getFixedDepositId() %></td>
  <td><%=f.getCustomerId() %></td>
  <td><%=f.getAccountNo() %></td>
  <td><%=f.getTenure() %></td>
  <td><%=f.getAmount() %></td>
  <td><%=f.getDepositDate() %></td>
  <td><%=f.getMaturityDate() %></td>
  <td><%=f.getAutoRenewal() %></td>
  </tr><% } %>
  </table>
  <% } else { %>
  You dont have any fixed deposit!!<%} %>
  
   
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
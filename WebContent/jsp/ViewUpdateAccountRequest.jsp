<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.util.ArrayList , com.bank.model.Customer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%if(session.getAttribute("adminId")==null){ %>
<body>
<%  RequestDispatcher rd = request.getRequestDispatcher("../jsp/AdminLogin.jsp");
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
			<a href="<%=request.getContextPath() %>/AdminServlet?action=adminLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" title="logout"></a></div>
			<div id="update"><a href="<%=request.getContextPath() %>/jsp/AdminPortal.jsp"><img
				src="<%=request.getContextPath()%>/images/home.jpg" title="admin home"></a></div>
	
	
	
	
<%  ArrayList<Customer> beneficiaries =  (ArrayList<Customer>)request.getAttribute("requestList1"); 
if(beneficiaries.size()>0){
 %> <form action="<%=request.getContextPath()%>/AdminServlet">
 <table class="priyansh" id="priyansh" bgcolor="#FFFFFF">
  <tr>
  <th></th>
  <th>Customer ID</th>
  <th>CustomerName</th>
  <th>Age</th>
  <th>Address</th>
  <th>Occupation</th>
  <th>Salary</th>
  <th>Pan</th>
   <th>EmailId</th>
   <th>PhoneNo</th>
   <th>DateOfBirth</th>
  </tr>
  <% for(Customer b:beneficiaries){ %>
  
  <tr>
  <td><input type="radio" name= "radioselected2" value=<%=b.getCustomerId()%>></td>
  <td><%=b.getCustomerId() %></td>
  <td><%=b.getCustomerName() %></td>
  <td><%=b.getAge() %></td>
  <td><%=b.getAddress() %></td>
  <td><%=b.getOccupation()%></td>
  <td><%=b.getSalary() %></td>
  <td><%=b.getPan() %></td>
   <td><%=b.getEmailId()%></td>
  <td><%=b.getPhoneNo() %></td>
  <td><%=b.getDob()%></td>
  </tr><% } %>
  </table>
  
  <input type="hidden" name="action" value="addUpdate">
			<br></br>
			<center>
				<input type="submit" value="ACCEPT" name="action">
			</center></form>
  <%} else{ %>
  <table>
  <tr>
  <td>No Requests</td></tr></table>
  <%} %>
 <%--  <br></br><center>
	<a href="<%=request.getContextPath() %>/jsp/AdminPortal.jsp"><img src="<%=request.getContextPath()%>/images/customerhome.png" /></a>
	</center>
<center><font face="verdana" color="blue">AdminPortal</font>
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
</body><%} %>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.util.ArrayList , com.bank.model.Account" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Update Request</title>
</head>
<body>
<% ArrayList<Account> acc = (ArrayList<Account>)request.getAttribute("acc"); 
if(acc.size()>0){%>
<form action="<%=request.getContextPath()%>/AdminServlet" onsubmit="return validate8()">
 <h4 align="center">REQUEST DETAILS</h4>
 <table class="priyansh" id="priyansh" bgcolor="#FFFFFF">
  <tr>
  <th></th>
  <th>Customer ID</th>
  <th>Account No</th>
  <th>Bank Name</th>
  <th>Branch</th>
  <th>IFSC Code</th>
  <th>Balance</th>
  <th>Type</th></tr>
  <% for(Account a:acc){ %>

  <tr>
  <td><input type="radio" name= "radioselected" id="radioselected" value=<%=a.getRequest() %>></td>
  <td><%=a.getCustomerID() %></td>
  <td><%=a.getAccountNo() %></td>
  <td><%=a.getBankName() %></td>
  <td><%=a.getBranch() %></td>
  <td><%=a.getIfscCode() %></td>
  <td><%=a.getCurrentBalance() %></td>
  <td><%=a.getType()%></td>
  </tr><% } %>
  </table>
  
  <table align="center">		
<tr>
<td>
   <table>
  <tr>
      <td> 
       <input type="submit" name="updated" value="ACCEPT"></input></td></tr></table></td>
       <td>
      <table><tr><td>
    <input type="submit" name="notUpdated" value="REJECT"></input></td></tr></table></td></tr></table>
  
				<table><tr><td><span id="radio1"></span></td></tr></table>
			</form>
			
  <%} else{ %>
  <table>
  <tr>
  <td>No Requests</td></tr></table>
  <%} %>
  
  
  
  
  
  
  
  
  
  
   <%-- <br></br><center>
	<a href="<%=request.getContextPath() %>/jsp/AdminPortal.jsp"><img src="<%=request.getContextPath()%>/images/customerhome.png" /></a>
	</center>
<center><font face="verdana" color="blue">CustomerPortal</font>
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
</html>
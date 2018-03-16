<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.util.ArrayList, com.bank.model.Account;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
				src="<%=request.getContextPath()%>/images/logout-icon.png" title="logout"></a></div>
			<div id="update"><a href="<%=request.getContextPath() %>/jsp/CustomerPortal.jsp"><img
				src="<%=request.getContextPath()%>/images/home.jpg" title="customer home"></a></div>

<%ArrayList<Account> acc = (ArrayList<Account>)request.getAttribute("accountList");
if(acc.size()>0){ %>
<center><h4>Account Details:</h4></center>
<table class="priyansh" id="priyansh" bgcolor="#FFFFFF">
	  <tr>
	      <th>Customer ID</th>
	      <th>Account Number</th>
	      <th>Bank Name</th>
	      <th>Branch</th>
	      <th>Current Balance</th>
	      <th>IFSC Code</th>
	      
	      </tr>
	      <%
	      for(Account account:acc)
	      {
	    	  %>
	    	  <tr>
	    	  <td><%= account.getCustomerID() %></td>
	    	  <td><%= account.getAccountNo() %></td>
	    	   <td><%= account.getBankName() %></td>
	    	    <td><%= account.getBranch() %></td>
	    	     <td><%= account.getCurrentBalance() %></td>
	    	      <td><%= account.getIfscCode() %></td>
	    	  
	    	 
	    	    </tr>
	    	    
	    	    <%
	    	    
	      }
	      
	      %>
	      </table>
	      <% }else{%>
	      No Accounts found !!<%} %>
	    
	      
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.util.ArrayList, com.bank.model.Account;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<script src="<%=request.getContextPath() %>/javascript_Validations/javascript.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update/Delete Accounts</title>
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
if(acc.size()>0){
%> 
<%if(request.getAttribute("error")==null) 
{
}
else
{
	%>
<span style="color: red">	<%=request.getAttribute("error") %></span>
	<%
}
%>



<div style="text-align: center;">
		<div
			style="box-sizing: border-box; display: inline-block; width: 630; max-width: 630px; background-color: #FFFFFF; border: 2px solid #00628B; border-radius: 5px; box-shadow: 0px 0px 8px #00628B; margin: 200px auto auto;">
			<div
				style="background: #00628B; border-radius: 5px 5px 0px 0px; padding: 15px;">
				<span
					style="font-family: verdana, arial; color: #D4D4D4; font-size: 1.00em; font-weight: bold;">Update/Delete Accounts
					</span>
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













<form action="<%=request.getContextPath()%>/customerServlet">


<table class='center'>
	  <tr>
	  <td></td>
	   
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
	    	  <td><input type="radio" name= "radioselected" id="radioselected" value=<%= account.getAccountNo() %>></td>
	    	 
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
	      <table align="center">
	      <tr>
	      <td><input type="submit" name="update" value="UpdateAccount" onClick="return validate20()"></td>
	      <td><input type="submit" name="delete" value="DeleteAccount" onClick="return validate20()"></td></table>
	      <table align="center"><tr><td><span id="radio1"></span></td></tr></table>

	      <% }else{%>
	      No Accounts found !!<%} %>
	      
	      </form>
	      </div></div></div>
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
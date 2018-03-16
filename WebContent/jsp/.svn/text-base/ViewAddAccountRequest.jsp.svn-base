<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList , com.bank.model.Account" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Add Account Request</title>
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
<%ArrayList<Account> accountList2=(ArrayList<Account>)request.getAttribute("requestList");
if(accountList2.size()>0){
	 %> <form action="<%=request.getContextPath()%>/AdminServlet">
	 <table class="priyansh" id="priyansh" bgcolor="#FFFFFF">
	  <tr>
	  <th></th>
	  <th>Customer ID</th>
	  <th>Account No</th>
	  <th>Bank Name</th>
	  <th>Branch</th>
	  <th>CurrentBalance<th>
	  <th>IFSC Code</th>
	  </tr>
	  <% for(Account b:accountList2){ %>
	  
	  <tr>
	  <td><input type="radio" name= "radioselected1" value=<%= b.getAccountNo()%>></td>
	  <td><%=b.getCustomerID()%></td>
	  <td><%=b.getAccountNo() %></td>
	  <td><%=b.getBankName() %></td>
	  <td><%=b.getBranch()%></td>
	  <td><%=b.getCurrentBalance() %></td>
	  <td><%=b.getIfscCode() %></td>
	  
	  </tr><% }%>
	  </table>
	   <input type="hidden" name="action" value="addAccount">
			<br></br>
			<center>
				<input type="submit" value="ACCEPT" name="Accept">
			</center></form>
  <%}else{ %>
  <table>
  <tr>
  <td>No Requests</td></tr></table>
  <%} %>

<%-- <br></br><center>
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
<%} %>
</body>
</html>
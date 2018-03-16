<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<script src="<%=request.getContextPath() %>/javascript_Validations/javascript.js"></script>
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
	<div style="text-align: center;">
		<div
			style="box-sizing: border-box; display: inline-block; width: 630; max-width: 630px; background-color: #FFFFFF; border: 2px solid #0361A8; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 200px auto auto;">
			<div
				style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;">
				<span
					style="font-family: verdana, arial; color: #D4D4D4; font-size: 1.00em; font-weight: bold;">Transfer
					Details</span>
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
	box-shadow: 0px 0px 5px #0361A8;
	float: right;
	margin-top: 10px;
}

table.center {
	margin-left: auto;
	margin-right: auto;
}
</style>
<%
HttpSession sessions= request.getSession();
ArrayList<Long> accountNo = (ArrayList<Long>)(sessions.getAttribute("accounts"));


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

 <form action="<%=request.getContextPath()%>/customerServlet"  >
<table>
<tr>
<td>Amount</td>
<td><input type="number" name="amount" id="amount" max="15000"></td>
<td></td>
							<td><span id="amount1"></span></td>
<td></td><td>Account No</td>
<td></td>
							
<td><Select name="account" id="account">
<% for(Long l:accountNo){ %>
<option value="<%=l%>" ><%=l%></option><%} %></Select></td></tr>

</table>

<% if(request.getAttribute("balance")!=null)
{  %>
<script>alert("Your balance is: "+<%=request.getAttribute("balance")%>);</script>
<%request.setAttribute("balance", null) ;%>
<%
}
else
{
	} %>
 <table align="center">		
<tr>
<td>

  <table>
  <tr>
      <td> 
       <input type="submit" name="fetchBalance" value="VIEW_BALANCE"></input></td></tr></table></td>
       <td>
      <table><tr><td>
    <input type="submit" name="transfer" value="TRANSFER" onClick="return validate35()"></input></td></tr></table></td></tr></table></form>

	</div>
		</div>
	</div>

 

	<div id="footer" class="footer">
		<center>
			<p>
				� 2012. VPAAS MultiBank .All Rights Reserved. <br> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Best viewed in Google Chrome.

			</p>
		</center>
	</div>
</body>
<%} %>
</html>
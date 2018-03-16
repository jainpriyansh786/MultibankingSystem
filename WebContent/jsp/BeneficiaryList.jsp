<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.ArrayList , com.bank.model.Beneficiary" %>
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
<%  
HttpSession sessions= request.getSession();

ArrayList<Beneficiary> beneficiaries =  (ArrayList<Beneficiary>)request.getAttribute("beneficiary");


if(beneficiaries.size()>0){
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
 <form action="<%=request.getContextPath()%>/customerServlet" onsubmit="return validate8()">
 <h4 align="center">BENEFICIARY DETAILS</h4>
 <table class="priyansh" id="priyansh" bgcolor="#FFFFFF">
  <tr>
  <th></th>
  <th>Beneficiary Name</th>
  <th>Account No</th>
  <th>Bank Name</th>
  <th>Branch</th>
  <th>IFSC Code</th>
  <th>Email</th></tr>
  <% for(Beneficiary beneficiary:beneficiaries){ %>

  <tr>
  <td><input type="radio" name= "radioselected" id="radioselected" value=<%= beneficiary.getAccountNo() %> ></td>
  <td><%=beneficiary.getBeneficiaryName() %></td>
  <td><%=beneficiary.getAccountNo() %></td>
  <td><%=beneficiary.getBankName() %></td>
  <td><%=beneficiary.getBranch() %></td>
  <td><%=beneficiary.getIfscCode() %></td>
  <td><%=beneficiary.getEmail() %></td>
  </tr><% } %>
  </table>
  
   <input type="hidden" name="action" value="moneyfund">
			<br></br>
			<br></br>
			<center>
				<input type="submit" name="action" value="ACCEPT" >
				<table><tr><td><span id="radio1"></span></td></tr></table>
			</center></form>
			
  <%} else{ %>
  <table>
  <tr>
  <td>No Beneficiaries</td></tr></table>
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
</body>
<%}%>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.ArrayList , com.bank.model.Beneficiary" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<<<<<<< .mine
<script src="<%=request.getContextPath() %>/javascript_Validations/javascript.js"></script>
=======
<script type="text/javascript" src="<%=request.getContextPath()%>/javascript_Validations/javascript.js"></script>
>>>>>>> .r12733
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Beneficiary</title>
</head>
<%if(session.getAttribute("adminId")==null){ %><body>
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
				
				
<%  ArrayList<Beneficiary> beneficiaries =  (ArrayList<Beneficiary>)request.getAttribute("beneficiary"); 
if(beneficiaries.size()>0){



 %> <form action="<%=request.getContextPath()%>/AdminServlet" onsubmit="return validate8()">
 <table class="priyansh" id="priyansh" bgcolor="#FFFFFF">

  <tr>
  <th></th>
  <th>Customer ID</th>
  <th>Beneficiary Name</th>
  <th>Account No</th>
  <th>Bank Name</th>
  <th>Branch</th>
  <th>IFSC Code</th>
  <th>Email</th></tr>
  <% for(Beneficiary beneficiary:beneficiaries){ %>
  
  <tr>
  
  <td><input type="radio" name= "radioselected" value=<%= beneficiary.getRequestNo() %> ></td>
  <td><%=beneficiary.getCustomerId() %></td>
  <td><%=beneficiary.getBeneficiaryName() %></td>
  <td><%=beneficiary.getAccountNo() %></td>
  <td><%=beneficiary.getBankName() %></td>
  <td><%=beneficiary.getBranch() %></td>
  <td><%=beneficiary.getIfscCode() %></td>
  <td><%=beneficiary.getEmail() %></td>
  </tr><% } %>
  </table>
<table>		
<tr>
<td>

  <table>
  <tr>
      <td> 
       <input type="submit" name="addBeneficiary" value="ACCEPT_BENEFICIARY"></input></td></tr></table></td>
       <td>
      <table><tr><td>
    <input type="submit" name="rejectBeneficiary" value="REJECT_BENEFICIARY" ></input></td></tr></table></td></tr></table></form>
    
   <%} else{ %>
  <table>
  <tr>
  <td><h1>No Requests Available At This Moment</h1></td></tr></table>
  <%} %>
 
<%--  <br></br><center>
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
<%}%>
</html>
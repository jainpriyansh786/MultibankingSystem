<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList,com.bank.model.Branch" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bank Details</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
</head>
<%if(session.getAttribute("bankId")==null){ %>
<body>
<%  RequestDispatcher rd = request.getRequestDispatcher("../jsp/BankLogin.jsp");
								rd.forward(request, response);%><%}else{ %>
<div id="header" class="header">
		<table>
			<tr>
				<td><img src="<%=request.getContextPath()%>/images/logo.jpg"></td>
				<td><h1>
						<font face="Ghostwriter" color="#F0FFF0">View All Branches<sub>
								&nbsp; </sub></font>
					</h1></td>
					
			</tr>
		</table>
	</div>
<% 
ArrayList<Branch> branchList = (ArrayList<Branch>)request.getAttribute("branchList");
if (branchList.size()>0)
{
	%>
	  <table class="priyansh" id="priyansh" bgcolor="#FFFFFF">
	  <tr>
	      <td>Bank ID</td>
	      <td>Branch</td>
	      <td>IFSC Code</td>
	      <td>Location</td>
	      <td>Contact Person</td>
	      <td>Contact Number</td>
	      
	      </tr>
	      <%
	      for(Branch branch:branchList)
	      {
	    	  %>
	    	  <tr>
	    	  <td><%= branch.getBankId()%></td>
	    	  <td><%= branch.getBranch() %></td>
	    	   <td><%= branch.getIfscCode() %></td>
	    	    <td><%= branch.getLocation() %></td>
	    	     <td><%= branch.getContactPerson() %></td>
	    	      <td><%= branch.getContactNo() %></td>
	    	  
	    	  <td><a href="<%=request.getContextPath()%>/BranchController?action=viewbranch"></a></td>
	    	  
	    	    </tr>
	    	    
	    	    <%
	    	    
	      }
	      
	      %>
	      
	  </table>
	  
	   <%
}
else
{
	 %>
	 <table align="center">
	 <tr>
	 <td>No Branch Found in the List</td>
	 </tr>
	 
	 
	 </table>
	 
	 <%
}
%>

<div id="bankLogout">
			<a href="<%=request.getContextPath()%>/AdminServlet?action=adminLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" title="logout"></a></div>
	<div id="update"> 
	<a href="<%=request.getContextPath() %>/jsp/BankPortal.jsp"><img src="<%=request.getContextPath()%>/images/home.jpg" title="Bank home" /></a>
</div>








<%-- <br></br><center>
	<a href="<%=request.getContextPath() %>/jsp/BankPortal.jsp"><img src="<%=request.getContextPath()%>/images/customerhome.png" /></a>
	</center>
<center><font face="verdana" color="blue">BankPortal</font>
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
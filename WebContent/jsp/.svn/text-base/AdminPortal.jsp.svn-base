<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin Portal</title>
</head>
<%if(session.getAttribute("adminId")==null){ %>
<body>
<%  RequestDispatcher rd = request.getRequestDispatcher("../jsp/AdminLogin.jsp");
								rd.forward(request, response);%><%}else{ %>

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

<div id="header" class="header">
		<table>
			<tr>
				<td><img src="<%=request.getContextPath()%>/images/logo.jpg"></td>
				<td><h1>
						<font face="Ghostwriter" color="#F0FFF0">Admin Portal<sub>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; We Understand Your World</sub></font>
					</h1></td>
					
			</tr>
		</table>
	</div>
 <div id="bankLogout">
			<a href="<%=request.getContextPath()%>/customerServlet?action=customerLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" title="logout"></a></div>
			
<%if(request.getAttribute("ackow")==null){}else{ %>
<center><h3><%=request.getAttribute("ackow") %></h3></center>

<%} %>
<%-- <div id="bankLogout">
<a href="<%=request.getContextPath() %>/AdminServlet?action=adminLogout"><img src="<%=request.getContextPath()%>/images/logout.png" /></a>
</div> --%><%-- <div id="1" class="1">

<a href="<%= request.getContextPath()%>/AdminServlet?action=viewrequest"><img src="<%=request.getContextPath()%>
/images/addbene.png" alt="View Beneficiary Request" />View Beneficiary Requests</a>
<a href="<%= request.getContextPath()%>/AdminServlet?action=autoDebit">
<img src="<%=request.getContextPath()%>/images/viewbeneficiary.jpg" />AUTO DEBIT</a>

</div> --%>
<%-- <a href="<%=request.getContextPath() %>/AdminServlet?action=viewAddAccountRequest">
<img src="<%=request.getContextPath()%>/images/add.jpg" />view add account request</a>


<a href="<%=request.getContextPath() %>/AdminServlet?action=viewUpdateAccountRequest">
<img src="<%=request.getContextPath()%>/images/update.jpg" />
view update account request</a> --%>

<div>
<br></br>
<table align="center">
<tr><td>
<a href="<%= request.getContextPath()%>/AdminServlet?action=viewrequest"><img src="<%=request.getContextPath()%>
/images/Request.jpg" title="View Beneficiary Request" /></a></td>
<td>
<a href="<%= request.getContextPath()%>/AdminServlet?action=autoDebit"><img src="<%=request.getContextPath()%>/images/viewbeneficiary.jpg" title="Auto Debit"/></a>
</td>
<td>
<a href="<%=request.getContextPath() %>/AdminServlet?action=viewAddAccountRequest"><img src="<%=request.getContextPath()%>/images/add.jpg" title="Add Account Request"/></a>
</td>
</tr>
<tr><td align="center">
View Beneficiary Request
</td>
<td align="center">
Auto Debit</td>
<td align="center">View Add Account Request</td></tr>








<tr><td>

<a href="<%=request.getContextPath() %>/CustomerRequestServlet?action=adminRequestView"><img src="<%=request.getContextPath()%>/images/servicer.jpg" title="View Service Requests" /></a>
</td>
<td>
<a href="<%=request.getContextPath() %>/AdminServlet?action=viewUpdateAccountRequest"><img src="<%=request.getContextPath()%>/images/update.jpg" title="Update Profile Request"   /></a>
</td>
<td>
<a href="<%=request.getContextPath() %>/jsp/EmployeeRegistration.jsp"><img src="<%=request.getContextPath()%>/images/addemp.png" title="Add Employee" /></a>
</td>
</tr>
<tr>
<td align="center">View Service Request</td>
<td align="center">View Update Profile Request</td>
<td align="center">Add Employee</td>
</tr>
<tr>
<td></td>
<td>
<a href="<%=request.getContextPath() %>/AdminServlet?action=viewUpdateDelete"><img src="<%=request.getContextPath()%>/images/delete.jpg" title="Add Employee" /></a>
</td>
<td></td>
<tr>
<td></td>
<td>Update/Delete Requests</td>
</tr>
</table>
</div>

<%-- <h3><a href="<%=request.getContextPath() %>/AdminServlet?action=viewUpdateDelete">Update/Delete Requests</a></h3>
 --%>
<div id="footerhome" class="footerhome">
		<center>
			<p>
				© 2012. VPAAS MultiBank .All Rights Reserved. <br> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Best viewed in Google Chrome.

			</p>
		</center>
	</div>
<%}%>
</body>
</html>
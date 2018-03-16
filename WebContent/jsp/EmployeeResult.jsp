<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.bank.model.Request, java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Service View</title>
</head>

<%if(session.getAttribute("employeeId")==null){ %>

<% response.sendRedirect("../jsp/EmployeeLogin.jsp");%><%}else{ %>
	
<body>

<div id="header" class="header">
		<table >
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
			<a href="<%=request.getContextPath()%>/CustomerRequestServlet?action=employeeLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" alt="logout"></a></div>
				<div id="update"><a href="<%=request.getContextPath() %>/jsp/EmployeePortal.jsp"><img
				src="<%=request.getContextPath()%>/images/home.jpg" title="Employee home"></a></div>
<%ArrayList<Request> list=new ArrayList<Request>();
 list=(ArrayList)(request.getAttribute("EmployeeView"));
 %>

<form action="<%=request.getContextPath()%>/CustomerRequestServlet">
<table class="priyansh" id="priyansh" bgcolor="#FFFFFF">

  <tr>
  <td></td>
      <td>REQUEST NO</td>
  <td>Description</td>
      <td>STATUS</td>
      
     
    
  </tr>
 <% if(list.size()>0){%>
  <% for(Request r:list){ %>
       <tr>
        <td><input type="radio" name= "radioselected4" value=<%= r.getReq_no() %> ></td>
       <td><%= r.getReq_no()%></td>
     <td><%=r.getReq_des() %></td>
             <td><%=r.getStatus()%></td>
           
              
               
                 </tr> <% } %><%} else{%><%="No Requests Allocated"%><% }%>
 </table>
  <input type="hidden" name="action" value="closeRequestByEmployee">
			<br></br>
			<center>
				<input type="submit" value="Close" name="closeRequest">
				</center></form>
		
	
 <div id="footer" class="footer">
		<center>
			<p>
				© 2012. VPAAS MultiBank .All Rights Reserved. <br> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				Best viewed in Google Chrome.
<%}%>
			</p>
		</center>
	</div>
</body>
</body>
</html>
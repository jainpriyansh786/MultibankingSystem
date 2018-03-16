<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.bank.model.Request, java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/HomePage.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Request details</title>
</head>
<%if(session.getAttribute("adminId")==null){ %>
<body>

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
			<a href="<%=request.getContextPath()%>/adminServlet?action=adminLogout"><img
				src="<%=request.getContextPath()%>/images/logout-icon.png" title="logout"></a></div>
			<div id="update"><a href="<%=request.getContextPath() %>/jsp/AdminPortal.jsp"><img
				src="<%=request.getContextPath()%>/images/home.jpg" title=" home"></a></div>
<%  RequestDispatcher rd = request.getRequestDispatcher("../jsp/AdminLogin.jsp");
								rd.forward(request, response);%><%}else{ %>

	<%-- <div id="header" class="header">
		<table>
			<tr>
				<td><img src="<%=request.getContextPath()%>/images/logo.jpg"></td>
				<td><h1>
						<font face="Ghostwriter" color="#F0FFF0">MultiBanking<sub>
								&nbsp; We Understand Your World</sub></font>
					</h1></td>
					
			</tr>
		</table>
	</div>  --%>

	<center><i>List of Request details</i></center>
<%ArrayList<Request> list=new ArrayList<Request>();
 list=(ArrayList)(request.getAttribute("RLIST"));
 System.out.println(list);
if(list.size()>0){
	 %> <form action="<%=request.getContextPath()%>/CustomerRequestServlet">
	 <table class="priyansh" id="priyansh" bgcolor="#FFFFFF">
  
  <tr><th></th>
      <th><i>Request no</i></th>
      <th><i>Request type</i></th>
      <th><i>Request description</i></th>
      <th><i>Status</i></th>
      <th><i>Customer id</i></th>
      
  </tr>
 
  <% for(Request r:list){ %>
       <tr>
       <td><input type="radio" name= "radioselected3" value=<%=r.getReq_no()%>></td>
       <td><%= r.getReq_no()%></td>
         <td><%=r.getReq_type()%></td>
           <td><%=r.getReq_des()%></td>
             <td><%=r.getStatus()%></td>
             <td><%=r.getCust_id() %></td>
              
               
                 </tr> <% } }%>
                 
                
 </table>
   <input type="hidden" name="action" value="allocateEmployee">
			<br></br>
			<center>
				<input type="submit" value="AllocateEmployee" name="Allocate">
			</center></form>
     <div id="footer" class="footer"> 
 		<center> 			<p> 
				© 2012. VPAAS MultiBank .All Rights Reserved. <br> 
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
				Best viewed in Google Chrome. 

			</p> 
		</center> 
	</div>  
</body>
<%}%>
</html>
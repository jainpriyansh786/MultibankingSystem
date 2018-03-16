package com.bank.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bank.model.Request;
import com.bank.service.Admin_service;




/**
 * Servlet implementation class Admin_controller
 */
public class Admin_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in do post");
		PrintWriter out = response.getWriter();
		//	out.print(action);
			String action=request.getParameter("action");
			//out.print(action);
			System.out.println(action);
		
			if("requestDetails".equalsIgnoreCase(action)){
		
				
				String select=request.getParameter("type_selection");
				System.out.println(select);
				String des=request.getParameter("description");
				System.out.println(des);
			
				int empid=1001;
				
				Request r= new Request();
			r.setReq_type(select);
			r.setReq_des(des);
	        r.setEmp_id(empid);
			Admin_service as = new Admin_service();
				int reqId=as.insertRequest(r);
				System.out.println("ID:"+reqId);
				request.setAttribute("RequestId",reqId);
				RequestDispatcher rd=request.getRequestDispatcher("/JSP/NewFile.jsp");
				rd.forward(request, response);
				}
		
	
	else if("adminView".equalsIgnoreCase(action)){
		ArrayList<Request> Rlist=new ArrayList<Request>();
		
		Admin_service as = new Admin_service();
		try {
			Rlist= as.viewRequest();
			System.out.println(Rlist);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("RLIST", Rlist);
		RequestDispatcher rd=request.getRequestDispatcher("/JSP/adminView.jsp");
		rd.forward(request, response);
		
	}
	else if("allocateEmployee".equals(action)){
		System.out.println(action);
		ArrayList<Request> Rlist=new ArrayList<Request>();
		String parameters=request.getParameter("parameter");
		int par = Integer.parseInt(parameters);
		String replace=request.getParameter("replace");
		int rep = Integer.parseInt(replace);
		Admin_service as = new Admin_service();
		System.out.println(rep);
		System.out.println(par);
		Rlist=as.updateRequest(par,rep);
	    request.setAttribute("updateList", Rlist);
		RequestDispatcher rd=request.getRequestDispatcher("/JSP/allocateResult.jsp");
		rd.forward(request, response);
		
	}
	else if("viewRequest".equalsIgnoreCase(action)){
		System.out.println("haidfasd");
		
		ArrayList<Request> Rlist1=new ArrayList<Request>();
		System.out.println(action);
		Admin_service as = new Admin_service();
		String id =request.getParameter("cid");
		int id1=Integer.parseInt(id);
		System.out.println("bhyuuyiou");
		
		try {
			System.out.println("dfsdfksdjflskd");
			Rlist1= as.viewRequestsByCustomer(id1);
			System.out.println("hyugyuuihiuh");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		request.setAttribute("CustomerView", Rlist1);

		RequestDispatcher rd=request.getRequestDispatcher("./jsp/customerView.jsp");
		rd.forward(request, response);
		
	}
	else if("viewRequestEmployeee".equalsIgnoreCase(action)){
		System.out.println("dfsdfsdfetrertsdf");
	
		
		ArrayList<Request> Rlist1=new ArrayList<Request>();
		System.out.println("gvguvkuyg");
		Admin_service as = new Admin_service();
		String id =request.getParameter("id");
		int id1=Integer.parseInt(id);
		System.out.println("hvguyvgouy");
	
		
		try {
		
			Rlist1= as.viewRequestsByEmployee(id1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		request.setAttribute("EmployeeView", Rlist1);

		RequestDispatcher rd=request.getRequestDispatcher("./jsp/EmployeeResult.jsp");
		rd.forward(request, response);
		
	}
}
}
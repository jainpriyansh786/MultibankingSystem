package com.bank.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bank.model.PreFd;
import com.bank.model.PreRD;
import com.bank.model.Request;
import com.bank.service.CustomerRequestService;
import com.bank.util.InterestUtil;
import com.bank.util.RDInterestUtil;

/**
 * Servlet implementation class CustomerRequest
 */
public class CustomerRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("in servlet in do post customer request view");
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		//	out.print(action);
			String action=request.getParameter("action");
			//out.print(action);
			System.out.println(action);
		CustomerRequestService service=new CustomerRequestService();
		HttpSession session=request.getSession();
		//int adminId=Integer.parseInt(session.getAttribute("adminId").toString());
		
		
		if ("employeeLogin".equals(action)) {
			System.out.println("in employee login if servler in admin login");

			int employeeId1 = Integer.parseInt(request.getParameter("employeeId"));
			String password1 = request
					.getParameter("employeepassword");

			String password2;
			try {
				password2 = service.getEmployeePassword(employeeId1);
			
			if (password1.equals(password2)) {
				
				out.print("Welcome, " +employeeId1);
				
				session.setAttribute("employeeId", employeeId1);
				RequestDispatcher rd = request
						.getRequestDispatcher("./jsp/EmployeePortal.jsp");
				rd.forward(request, response);
			} else if(!(password1.equals(password2))) {
				String error="Sorry, username or password  error!";
				request.setAttribute("error",error);
				request.getRequestDispatcher("./jsp/EmployeeLogin.jsp").forward(
						request, response);
			}}
			 catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

		}
		
		
		
		
		
		if("viewRequestSr".equals(action)){
			 session=request.getSession();
			int customerId=Integer.parseInt(session.getAttribute("customerId").toString());
			System.out.println("haidfasd");
			
			ArrayList<Request> Rlist1=new ArrayList<Request>();
			System.out.println(action);
		
			
			
			try {
				System.out.println("dfsdfksdjflskd");
				Rlist1= service.viewRequestsByCustomer(customerId);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			
			request.setAttribute("CustomerView", Rlist1);

			RequestDispatcher rd=request.getRequestDispatcher("/jsp/RequestViewDebited.jsp");
			rd.forward(request, response);
			
		}
		
		
		
		
		
		
			if("requestDetails".equalsIgnoreCase(action)){
		
				 session=request.getSession();
				int customerId=Integer.parseInt(session.getAttribute("customerId").toString());
				String select=request.getParameter("type_selection");
				System.out.println(select);
				String des=request.getParameter("description");
				System.out.println(des);
			System.out.println(customerId);
			//	int empid=1001;
				
				Request r= new Request();
			r.setReq_type(select);
			r.setReq_des(des);
	        r.setCust_id(customerId);
			
				int reqId=service.insertRequest(r);
				System.out.println("ID:"+reqId);
				request.setAttribute("RequestId",reqId);
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/RequestConfirmation.jsp");
				rd.forward(request, response);
				}
		
	
	 if("adminRequestView".equalsIgnoreCase(action)){
		ArrayList<Request> Rlist=new ArrayList<Request>();
		
		
		try {
			Rlist= service.viewRequest();
			System.out.println(Rlist);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("RLIST", Rlist);
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/adminRequestView.jsp");
		rd.forward(request, response);
		
	}
	 if("allocateEmployee".equals(action)){
		System.out.println(action);
		ArrayList<Request> Rlist=new ArrayList<Request>();
		String parameters=request.getParameter("radioselected3");
		int requestId = Integer.parseInt(parameters);
		/*String replace=request.getParameter("replace");
		int rep = Integer.parseInt(replace);
		*/
	//	System.out.println(rep);
		System.out.println(requestId);
		service.updateRequest(requestId);
		/*try {
			Rlist= service.viewRequest();
			//for(Request r:Rlist){System.out.println(r.getReq_des());}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	    request.setAttribute("ackow","Employee Allocated !!!");
		RequestDispatcher rd=request.getRequestDispatcher("./jsp/AdminPortal.jsp");
		rd.forward(request, response);
		
	}
		
		
		
		
		if("viewRequestEmployee".equalsIgnoreCase(action)){
			System.out.println("dfsdfsdfetrertsdf");
		
			
			ArrayList<Request> Rlist1=new ArrayList<Request>();
		
			 session=request.getSession();
				int employeeId=Integer.parseInt(session.getAttribute("employeeId").toString());
			
		
			
			try {
			
				Rlist1= service.viewRequestsByEmployee(employeeId);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			
			request.setAttribute("EmployeeView", Rlist1);

			RequestDispatcher rd=request.getRequestDispatcher("/jsp/EmployeeResult.jsp");
			rd.forward(request, response);
			
		}
		
		if("closeRequestByEmployee".equalsIgnoreCase(action)){
			 session=request.getSession();
				int empId=Integer.parseInt(session.getAttribute("employeeId").toString());
			System.out.println(action);
			ArrayList<Request> Rlist=new ArrayList<Request>();
			String parameters=request.getParameter("radioselected4");
			int requestId = Integer.parseInt(parameters);
			/*String replace=request.getParameter("replace");
			int rep = Integer.parseInt(replace);
			*/
			//System.out.println(rep);
			System.out.println(requestId);
			System.out.println(empId);
			try {
				service.closeRequest(requestId,empId);
			Rlist=service.viewRequestsByEmployee(empId);
		    request.setAttribute("EmployeeView", Rlist);
			RequestDispatcher rd=request.getRequestDispatcher("/jsp/EmployeeResult.jsp");
			rd.forward(request, response);

			
			}catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
			
			
		}
		if ("readPreFD".equals(action))
		{
			try{
				PreFd prefd = new PreFd();
				System.out.println("entered");
				 session=request.getSession();
				int customerId= Integer.parseInt(session.getAttribute("customerId").toString());
				System.out.println(session.getId());
				prefd=service.readPreFd(Integer.parseInt(request.getParameter("fdid")),customerId);
				
				if(prefd.getAge()>0){
					System.out.println("asdgsadg");
					prefd.setFixedId(Integer.parseInt(request.getParameter("fdid")));
					Date date=new Date();
					int month=((date.getYear()-prefd.getDepositeDate().getYear())*12)+(date.getMonth()-prefd.getDepositeDate().getMonth())-1;
					System.out.println(month);
					double interest=InterestUtil.getInterest(prefd.getInitialAmount(), prefd.getAge(), month);
					System.out.println(interest);
					System.out.println(prefd.getInitialAmount());
					double prematureAmount=prefd.getInitialAmount()+(prefd.getInitialAmount()*month/12*((interest-1)/100));
					request.getSession().setAttribute("prematureAmount",prematureAmount);
					request.getSession().setAttribute("PreFD", prefd);
				
					prefd.setPreMatureAmount(prematureAmount);
					RequestDispatcher rd=request.getRequestDispatcher("/jsp/PrematureFD.jsp");
					rd.include(request, response);

				}else
				{
					response.setContentType("text/html");
					 request.setAttribute("error5","You can't apply for this request!!!");
					RequestDispatcher rd=request.getRequestDispatcher("/jsp/PreFdForm.jsp");
					rd.include(request, response);
					
					
				}
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		
		if ("readPreRD".equals(action))
		{
			try{
				int customerId= Integer.parseInt(session.getAttribute("customerId").toString());
				PreRD prerd = new PreRD();
				System.out.println("entered");
			 session=request.getSession();
				System.out.println(session.getId());
				prerd=service.readPreRD(Integer.parseInt(request.getParameter("rdid")),customerId);
				
				if(prerd.getAge()>0){
					System.out.println("asdgsadg");
					prerd.setId(Integer.parseInt(request.getParameter("rdid")));
					Date date=new Date();
					int month=((date.getYear()-prerd.getDepositeDate().getYear())*12)+(date.getMonth()-prerd.getDepositeDate().getMonth());
					System.out.println(month);
					if(month>12){
					double interest=RDInterestUtil.getInterest(prerd.getInitialAmount(), prerd.getAge(), month);
					System.out.println(interest);
					System.out.println(prerd.getInitialAmount());
					 double prematureAmount=prerd.getInitialAmount();
				    	
					    double amount= prerd.getInitialAmount();
					   
					     for(int i=1; i<month+1;i++){
					    	
					    	 prematureAmount = prematureAmount+prematureAmount*(interest-1)/1200;
					    	 prematureAmount=prematureAmount+amount;
					    	 System.out.println(prematureAmount);
					     }
					     
					request.getSession().setAttribute("prematureAmount",prematureAmount);
					request.getSession().setAttribute("PreRD", prerd);
				
					prerd.setPreMatureAmount(prematureAmount);
					RequestDispatcher rd=request.getRequestDispatcher("/jsp/PrematureRD.jsp");
					rd.include(request, response);
					}
					else{
						response.setContentType("text/html");
						 out=response.getWriter();
						 request.setAttribute("error5","You can't apply for this request!!!");
						
						RequestDispatcher rd=request.getRequestDispatcher("/jsp/PreRDForm.jsp");
						rd.include(request, response);
					}
				}else
				{
					response.setContentType("text/html");
					 request.setAttribute("error5","NO such FD exists");
					
					RequestDispatcher rd=request.getRequestDispatcher("/jsp/PreRDForm.jsp");
					rd.include(request, response);
					
					
				}
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if("placeRDRequest".equalsIgnoreCase(action)){
			
			
			PreRD prerd = new PreRD();
			prerd=(PreRD)request.getSession().getAttribute("PreRD");
			
			
			try {
				int i=service.createSRrec(prerd);
				response.setContentType("text/html");
				 out=response.getWriter();
				System.out.println(i);
				if(i>0){
				out.println("your request is placed");
				RequestDispatcher rd=request.getRequestDispatcher("/jsp/PreRDForm.jsp");
				rd.include(request, response);
				
				}
				else{
					out.println("Your request is not placed as it was already there. Thank you!");
					RequestDispatcher rd=request.getRequestDispatcher("/jsp/PreRDForm.jsp");
					rd.include(request, response);
					
				}
				
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	
	
if ("employeeLogout".equals(action)){
			
			
			System.out.println("in employee servlet logout");
			
			              
			          request.getRequestDispatcher("./HomePage.jsp").forward(request, response);   
			             
			           session=request.getSession();   
			           session.invalidate();   
			              
			             //out.print("You are successfully logged out!");   
			              
			          //  out.close();   

		}
	
	
	
if("placeRequestFD".equalsIgnoreCase(action)){
	
	
	PreFd prefd = new PreFd();
	prefd=(PreFd)request.getSession().getAttribute("PreFD");
	
	
	try {
		int i=service.createPreFd(prefd);
		response.setContentType("text/html");
		 out=response.getWriter();
		System.out.println(i);
		if(i>0){
			request.setAttribute("requestId",i);
		
		RequestDispatcher rd=request.getRequestDispatcher("/jsp/PreFdForm.jsp");
		rd.include(request, response);
		
		}
		else{
			request.setAttribute("requestId","You have Already Placed Request for this Fixed Deposit Thank you!");
			RequestDispatcher rd=request.getRequestDispatcher("/jsp/PreFdForm.jsp");
			rd.include(request, response);
			
		}
		
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	
	
	}


	
		
		
	}	
		
		
	}



package com.bank.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bank.model.Account;
import com.bank.model.Beneficiary;
import com.bank.model.Customer;
import com.bank.model.Employee;
import com.bank.service.AdminService;

/**
 * Servlet implementation class AdminServlet
 */
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
		System.out.println(action);
		String x = request.getParameter("addBeneficiary");
		System.out.println("Me:"+x);
		String y = request.getParameter("rejectBeneficiary");
		System.out.println("Me:"+y);
		String update = request.getParameter("updated");
		String noupdate = request.getParameter("notUpdated");
		AdminService service = new AdminService();
		ArrayList<Beneficiary> beneficiaries = new ArrayList<Beneficiary>();
		if ("adminLogin".equals(action)) {
			System.out.println("in admin servler in admin login");
int adminId2=848377;
			int adminId1 = Integer.parseInt(request.getParameter("adminLogin"));
			String password1 = request
					.getParameter("adminpassword");

			String password2 ="admin123";
			if (password1.equals(password2)) {
				
				out.print("Welcome, " + adminId1);
				
				session.setAttribute("adminId", adminId1);
				RequestDispatcher rd = request
						.getRequestDispatcher("./jsp/AdminPortal.jsp");
				rd.forward(request, response);
			} else if(adminId1!=adminId2||!(password1.equals(password2))) {
				String error="Sorry, username or password  error!";
				request.setAttribute("error",error);
				request.getRequestDispatcher("./jsp/AdminLogin.jsp").forward(
						request, response);
			}

		}
		
		
		
		
		
		
		
		
		
		
		else{	if ("viewrequest".equals(action)) {

			try {
				beneficiaries = service.viewRequests();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			request.setAttribute("beneficiary", beneficiaries);
			RequestDispatcher rd = request
					.getRequestDispatcher("./jsp/AdminBeneficiariesView.jsp");
			rd.forward(request, response);

		}
		if ("ACCEPT_BENEFICIARY".equals(x)) {
			boolean added = false;
			 out = response.getWriter();
			int requestid = Integer.parseInt(request
					.getParameter("radioselected"));
			System.out.println(requestid);
			try {
				added = service.addBeneficiary(requestid);
				beneficiaries = service.viewRequests();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (added == true) {
				request.setAttribute("beneficiary", beneficiaries);
				RequestDispatcher rd = request
						.getRequestDispatcher("./jsp/AdminBeneficiariesView.jsp");
				out.println("<font color=red>Successfully added</font>");
				rd.include(request, response);
			} else {
				request.setAttribute("beneficiary", beneficiaries);
				RequestDispatcher rd = request
						.getRequestDispatcher("./jsp/AdminBeneficiariesView.jsp");
				out.println("<font color=red>Not added</font>");
				rd.include(request, response);
			}
		}if("REJECT_BENEFICIARY".equals(y)){
			boolean added = false;
			System.out.println("Entered in reject beneficiary");
			 out = response.getWriter();
			//HttpSession session = request.getSession();
			
			int requestid = Integer.parseInt(request.getParameter("radioselected"));
			System.out.println("MyrequestId:"+requestid);
			try {
				added = service.rejectBeneficiary(requestid);
				System.out.println("ADDEd:"+added);
				beneficiaries = service.viewRequests();
				System.out.println(beneficiaries.size());
				if (added) {
					System.out.println("Entered");
					try
					{
					request.setAttribute("beneficiary", beneficiaries);
					}
					catch(Exception e)
					{
						System.out.println("hjuihzxi");
					}
					RequestDispatcher rd = request
							.getRequestDispatcher("./jsp/AdminBeneficiariesView.jsp");
					out.println("<font color=red>Successfully deleted</font>");
					rd.include(request, response);
				} else {
					System.out.println("Entered12");
					request.setAttribute("beneficiary", beneficiaries);
					RequestDispatcher rd = request
							.getRequestDispatcher("./jsp/AdminBeneficiariesView.jsp");
					out.println("<font color=red>Not deleted</font>");
					rd.include(request, response);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}if("viewUpdateDelete".equals(action)){
			ArrayList<Account> acc = new ArrayList<Account>();
			try {
				acc=service.viewUpdateDelete();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("acc", acc);
			RequestDispatcher rd = request
					.getRequestDispatcher("./jsp/ViewUpdateRequest.jsp");
			rd.forward(request, response);
		}
       if("ACCEPT".equals(update)){
    	   ArrayList<Account> acc = new ArrayList<Account>();
    	   boolean yes = false;
    	   int req = Integer.parseInt(request.getParameter("radioselected"));
    	   try {
			yes = service.updateDelete(req);
			acc=service.viewUpdateDelete();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	   if(yes){
    		   request.setAttribute("acc", acc);
    		   out.println("Successfully done");
   			RequestDispatcher rd = request
   					.getRequestDispatcher("./jsp/ViewUpdateRequest.jsp");
   			rd.include(request, response);
    	   }
    	   else{
    		   request.setAttribute("acc", acc);
    		   out.println("Try Again");
   			RequestDispatcher rd = request
   					.getRequestDispatcher("./jsp/ViewUpdateRequest.jsp");
   			rd.include(request, response);
    	   }
       }
       if("REJECT".equals(noupdate)){
    	   ArrayList<Account> acc = new ArrayList<Account>();
    	   boolean yes = false;
    	   int req = Integer.parseInt(request.getParameter("radioselected"));
    	   try {
			yes = service.rejectUpdateDelete(req);
			acc=service.viewUpdateDelete();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	   if(yes){
    		   request.setAttribute("acc", acc);
    		   out.println("Successfully done");
   			RequestDispatcher rd = request
   					.getRequestDispatcher("./jsp/ViewUpdateRequest.jsp");
   			rd.include(request, response);
    	   }
    	   else{
    		   request.setAttribute("acc", acc);
    		   out.println("Try Again");
   			RequestDispatcher rd = request
   					.getRequestDispatcher("./jsp/ViewUpdateRequest.jsp");
   			rd.include(request, response);
    	   }
    	   
       }
		if ("viewAddAccountRequest".equals(action)) {
			System.out.println("in servlet view acccc");
			ArrayList<Account> requestList;
			try {
				requestList = service.viewAddRequest();
				System.out.println(requestList.size());
				request.setAttribute("requestList", requestList);
				RequestDispatcher rd = request
						.getRequestDispatcher("./jsp/ViewAddAccountRequest.jsp");
				rd.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println("before if of add account");
		if ("addAccount".equals(action)) {
			ArrayList<Account> requestList = null;
			System.out.println("in add account request confirmation");
			boolean added = false;
			 out = response.getWriter();
			int accNo = Integer
					.parseInt(request.getParameter("radioselected1"));
			System.out.println(accNo);
			try {
				added = service.addAccount2(accNo);
				requestList = service.viewAddRequest();

				// accounts=service.viewRequests();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (added == true) {

				request.setAttribute("requestList", requestList);
				RequestDispatcher rd = request
						.getRequestDispatcher("./jsp/ViewAddAccountRequest.jsp");
				rd.forward(request, response);
			} else {
				request.setAttribute("requestList", requestList);
				RequestDispatcher rd = request
						.getRequestDispatcher("./jsp/ViewAddAccountRequest.jsp");
				out.println("<font color=red>Not added</font>");
				rd.include(request, response);
			}
		}

		if ("viewUpdateAccountRequest".equals(action)) {
            System.out.println("in servlet og admin view update");
			System.out.println("in servlet view update request");
			ArrayList<Customer> requestList1;
			try {
				requestList1 = service.viewUpdateRequest();
				System.out.println(requestList1.size());
				
				request.setAttribute("requestList1", requestList1);
				RequestDispatcher rd = request
						.getRequestDispatcher("./jsp/ViewUpdateAccountRequest.jsp");
				rd.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		if ("addUpdate".equals(action)) {
			ArrayList<Customer> requestList3 = null;
			System.out.println("in update account request confirmation");
			boolean added = false;
			 out = response.getWriter();
			int customerId = Integer
					.parseInt(request.getParameter("radioselected2").toString());
			System.out.println(customerId);
			try {
				added = service.updateRequest(customerId);
				requestList3 = service.viewUpdateRequest();

				// accounts=service.viewRequests();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (added == true) {

				request.setAttribute("requestList", requestList3);
				RequestDispatcher rd = request
						.getRequestDispatcher("./jsp/ViewAddAccountRequest.jsp");
				rd.forward(request, response);
			} else {
				request.setAttribute("requestList", requestList3);
				RequestDispatcher rd = request
						.getRequestDispatcher("./jsp/ViewAddAccountRequest.jsp");
				out.println("<font color=red>Not added</font>");
				rd.include(request, response);
			}
		}if("autoDebit".equals(action)){
			boolean done=false;
			try {
				done = service.autoDebit();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(done){
				 out = response.getWriter();
				RequestDispatcher rd = request
						.getRequestDispatcher("./jsp/AdminPortal.jsp");
				out.println("<font color=red>Done</font>");
				rd.include(request, response);
			}else{
				out = response.getWriter();
				RequestDispatcher rd = request
						.getRequestDispatcher("./jsp/AdminPortal.jsp");
				out.println("<font color=red>Error!!!</font>");
				rd.include(request, response);
			}
		}
		

	
		
		if(("addEmployee").equals(action)){
			
			 action=request.getParameter("action");
			
			System.out.println(action);
			
	
				
				String name=request.getParameter("ename");
			
				String email=request.getParameter("mail");
				String contact=request.getParameter("contactno");
				long contactNo=Long.parseLong(contact);
				Employee e= new Employee();
				e.setEmployeeName(name);
				e.setEmail(email);
				e.setContactNo(contactNo);
			
				
				int id=service.createEmployee(e);
				System.out.println(id);
				String pwd=e.getPassword();
				System.out.println(pwd);
				request.setAttribute("employee_id",id);
				request.setAttribute("employee_passwrd",pwd);
				RequestDispatcher rd=request.getRequestDispatcher("./jsp/EmployeeCredentials.jsp");
				rd.forward(request, response);
				}
			
		}
		
		if(("adminLogout").equals(action)){
			
			System.out.println("in admin servlet logout");

		

			
			//out.print("You are successfully logged out!");

			
			session = request.getSession();
			String error = "Your are successfully LoggedOut";
			request.setAttribute("error", error);
			request.getRequestDispatcher("./HomePage.jsp").forward(request,
					response);
			
			session = request.getSession();
				session.invalidate();

			

		}

			
			
			
			
		}

}

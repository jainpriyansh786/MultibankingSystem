package com.bank.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bank.model.Bank;
import com.bank.model.Branch;
import com.bank.model.Customer;

import com.bank.service.bankService;

/**
 * Servlet implementation class bankServlet
 */
public class bankServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public bankServlet() {
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
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		System.out.println("in servlet");
		bankService service = new bankService();

		Bank bank = new Bank();
		String action = request.getParameter("action");
		System.out.println(action);
		System.out.println("in do post");
		
		if(action.equals("bankRegister")) {

			int bankId = 0;
			long password = 0;
			System.out.println("in servlet if");
			String bankName = request.getParameter("name");

			bank.setBankName(bankName);

			try {
				Bank bank1 = service.registerBank(bank);
				if (bank1.getBankId() != 0) {

					bankId = bank1.getBankId();
					password = bank1.getPassword();

					request.setAttribute("bankId", bankId);
					request.setAttribute("Password", password);
					RequestDispatcher rd = request
							.getRequestDispatcher("./jsp/BankConfirmation.jsp");
					rd.forward(request, response);
				} else {
					request.setAttribute("error","bank already exists");
				
					RequestDispatcher rd = request
							.getRequestDispatcher("./jsp/BankRegistration.jsp");
					
					rd.forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}	
		
		
		
		System.out.println("after branch register");
		
		
		
		if ("bankLogin".equals(action)) {
			System.out.println("in bank servler in bank login");

			int bankId1 = Integer.parseInt(request.getParameter("bankLogin"));
			int password1 = Integer.parseInt(request
					.getParameter("bankpassword"));

			try {
				int password2 = service.getBankPassword(bankId1);
				if (password1 == password2) {
					out.print("Welcome, " + bankId1);
					
					session.setAttribute("bankId", bankId1);
					RequestDispatcher rd = request
							.getRequestDispatcher("./jsp/BankPortal.jsp");
					rd.forward(request, response);
				} else {
					String error="Sorry, username or password error!";
					request.setAttribute("error",error);
					request.getRequestDispatcher("./jsp/BankLogin.jsp").forward(
							request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
System.out.println("before if");
		if("branchview123".equals(action))
		{ System.out.println("in branch view");
			try{
				
				session = request.getSession(true);
				String  bankIdString=session.getAttribute("bankId").toString();
			System.out.println(bankIdString);
			int bankId=Integer.parseInt(bankIdString);
			
			//call service layer to search customer search
			
				
			ArrayList<Branch> branchList = service.viewBranch(bankId);
			
			//Share the matched customers details with view
			System.out.println(branchList.size());
			
			request.setAttribute("branchList", branchList);
			RequestDispatcher reqDispatcher = request.getRequestDispatcher("./jsp/viewAllBranches.jsp");
			reqDispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		}
	
		
		if (action.equals("branchRegister")) {
			
			session = request.getSession(true);
			String  bankIdString=session.getAttribute("bankId").toString();
		System.out.println(bankIdString);
		int bankId=Integer.parseInt(bankIdString);
		//	String bankIdString = request.getParameter("bankId");
			//int bankId = Integer.parseInt(bankIdString);
			
			System.out.println("in if of add branch");
			Branch branch = new Branch();
			String branchName = request.getParameter("branch");
			System.out.println(branchName);
			String ifscCodeString = request.getParameter("ifsc");
			System.out.println(ifscCodeString);
			int ifscCode = Integer.parseInt(ifscCodeString);
			String location = request.getParameter("location");
			String contactPerson = request.getParameter("contactPerson");
			String contactNoString = request.getParameter("contactNo");
			long contactNo = Long.parseLong(contactNoString);
System.out.println("beforesettoing");
			branch.setBranch(branchName);
			branch.setIfscCode(ifscCode);
			branch.setLocation(location);
			branch.setContactPerson(contactPerson);
			branch.setContactNo(contactNo);

			bankService service1 = new bankService();
			try {System.out.println("caliiiii");
				boolean flag2 = service1.registerBranch(branch, bankId);
				System.out.println(flag2);
				if (flag2 == true) {
			
					String error = "Branch Registered Successfully";
					request.setAttribute("error", error);
					request.getRequestDispatcher("./jsp/BankPortal.jsp").forward(request,
							response);
					
				}
				else{
					String error ="Branch already exist";
					request.setAttribute("error", error);
					request.getRequestDispatcher("./jsp/BranchRegistration.jsp").forward(request,
							response);
					
					
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		/*if (action.equals("UpdateBranch")) {
			
			Branch b = new Customer();
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println(customerIdString);
			int customerId=Integer.parseInt(customerIdString);
			//int customerId=10044;
			//int customerId = Integer.parseInt(request.getParameter("Id"));
			System.out.println(customerId);
			c.setCustomerName(request.getParameter("name"));
			c.setAge(Integer.parseInt(request.getParameter("age")));
			c.setAddress(request.getParameter("address"));
			c.setOccupation(request.getParameter("occupation"));
			c.setSalary(Double.parseDouble(request.getParameter("salary")));
			c.setPan(request.getParameter("pan"));
			c.setEmailId(request.getParameter("emailid"));
			c.setPhoneNo(Integer.parseInt(request.getParameter("phoneno")));
			c.setDob(Date.valueOf(request.getParameter("dob")));
			try {
				String updateMessage = service.updateCustomer(c,customerId);
				request.setAttribute("error",updateMessage);
			
				RequestDispatcher reqDispatcher = getServletContext()
						.getRequestDispatcher("/jsp/CustomerPortal.jsp");
				reqDispatcher.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
		}
			
			
		}*/
		
		if ("bankLogout".equals(action)) {

			System.out.println("in bank servlet logout");

			
			
			//out.print("You are successfully logged out!");

			session = request.getSession();
			session.invalidate();

			
			
			request.getRequestDispatcher("./HomePage.jsp").forward(request,
					response);
			
			
			

		}

	}

}

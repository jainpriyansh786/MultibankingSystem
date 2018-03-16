package com.bank.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import oracle.sql.DATE;

import com.bank.model.Account;
import com.bank.model.Beneficiary;
import com.bank.model.Customer;
import com.bank.model.FixedDeposit;
import com.bank.model.RecurringDeposit;
import com.bank.model.Request;


import com.bank.service.customerService;

/**
 * Servlet implementation class registrationServlet
 */
public class customerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Object Refresh = null;

	public customerServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		System.out.println("in servlet");
	
		int custId = 0;
		String password = null;
		PrintWriter out = response.getWriter();
		Customer customer = new Customer();
		String action = request.getParameter("action");
		System.out.println(action);
	    String update = request.getParameter("update");
	    System.out.println("ajsjas:"+update);
	    String delete = request.getParameter("delete");
	    String transfer = request.getParameter("transfer");
		Beneficiary beneficiary=new Beneficiary();
		customerService service = new customerService();
		RecurringDeposit rdeposit = new RecurringDeposit();
		String bal = request.getParameter("fetchBalance");
		
		System.out.println("before login");

		if ("customerLogin".equals(action)) {
			System.out.println("in customer servler in customer login");

			int customerId1 = Integer.parseInt(request
					.getParameter("customerLogin"));
			String password1 = (request
					.getParameter("customerpassword"));

			try {
				String password2 = service.getCustomerPassword(customerId1);
				if (password1.equals(password2)) {
				
					request.setAttribute("welcome",customerId1);
					  
					          session=request.getSession();   
					         session.setAttribute("customerId",customerId1);   
					         RequestDispatcher rd = request.getRequestDispatcher("./jsp/CustomerPortal.jsp");
								rd.forward(request, response);
				}
				else{request.setAttribute("error","Sorry username or password error");
					//out.print("Sorry, username or password error!");   
				           request.getRequestDispatcher("./jsp/CustomerLogin.jsp").forward(request, response);   
}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

	
		
		
		
		
	
		if (("customerRegister").equals(action)) {
			
			String customerName = request.getParameter("name");
		
			String ageString = request.getParameter("age");
			
			String address = request.getParameter("address");
			String occupation = request.getParameter("occupation");
			String salaryString = request.getParameter("salary");
			
			String pan = request.getParameter("pan");
			String emailId = request.getParameter("emailId");
			String phoneString = request.getParameter("phone");
			
			String dobString=request.getParameter("dob");
if(ageString.length()==0||salaryString.length()==0||phoneString.length()==0||dobString.length()==0||pan.length()==0
||address.length()==0||occupation.length()==0||emailId.length()==0){
				System.out.println("in if of customer validation");
				request.setAttribute("error","Please do not leave any field empty");
			//out.println("Please do not leave any field empty");
				RequestDispatcher rd = request
						.getRequestDispatcher("./jsp/CustomerRegistration.jsp");
				rd.include(request, response);
			}
			
			else{int age = Integer.parseInt(ageString);
			double salary = Double.parseDouble(salaryString);
			long phoneNo = Long.parseLong(phoneString);
			Date dob = Date.valueOf(dobString);
System.out.println("before if");
			
			customer.setCustomerName(customerName);
			customer.setAge(age);
			customer.setDob(dob);
			customer.setAddress(address);
			customer.setOccupation(occupation);
			customer.setSalary(salary);
			customer.setPan(pan);
			customer.setEmailId(emailId);
			customer.setPhoneNo(phoneNo);}
			
			try {
				Customer customer1 = service.registerCustomer(customer);
				if (customer1.getCustomerId() != 0) {

					custId = customer1.getCustomerId();
					password = customer1.getPassword();

					System.out.println(custId);
					System.out.println(password);
					request.setAttribute("CustomerId", custId);
					request.setAttribute("Password", password);

					RequestDispatcher rd = request
							.getRequestDispatcher("./jsp/CustomerConfirmation.jsp");
					rd.forward(request, response);
				} else {
					request.setAttribute("error","customer already exist");
					RequestDispatcher rd = request
							.getRequestDispatcher("./jsp/CustomerRegistration.jsp");
					rd.forward(request, response);
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}


		if (("addAccount").equals(action)) {
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println(customerIdString);
			int customerId=Integer.parseInt(customerIdString);
			//int customerId = 10044;
			Account account = new Account();
			System.out.println("in add account servlet");

			String accountNoString = request.getParameter("accountNo").toString();
			long accountNo = Integer.parseInt(accountNoString);
			String bankName = request.getParameter("bankNameAccount");

			String branchName = request.getParameter("branchNameAccount");
			String ifscCodeString = request.getParameter("ifscCodeAccount").toString();
			System.out.println(ifscCodeString);
			int ifscCode = Integer.parseInt(ifscCodeString);
			account.setCustomerID(customerId);
			account.setAccountNo(accountNo);
			account.setBankName(bankName);
			account.setBranch(branchName);
			account.setIfscCode(ifscCode);

			try {
				String flag = service.addaccount1(account, customerId);
				System.out.println(flag);
				if (flag.equals("successful")) {
					request.setAttribute("error",flag);
				
					RequestDispatcher rd = request
							.getRequestDispatcher("./jsp/CustomerPortal.jsp");
					rd.forward(request, response);
				} else {
					request.setAttribute("error",flag);
					
					System.out.println(flag);
					RequestDispatcher rd = request
							.getRequestDispatcher("./jsp/AddAccount.jsp");
					rd.forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
			
			
		
		if("fixedDepositRequest".equals(action)){
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println(customerIdString);
			int customerId=Integer.parseInt(customerIdString);
			//int customerId = 10044;
			ArrayList<Long> accountNo = new ArrayList<Long>();
			try {
				accountNo = service.getAccounts(customerId);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			HttpSession sessions= request.getSession();
			sessions.setAttribute("accounts",accountNo); 
			RequestDispatcher rd = request.getRequestDispatcher("./jsp/fixedDeposit.jsp");
			rd.forward(request, response);
		}
		FixedDeposit fdeposit = new FixedDeposit();

		 Calendar calendar = Calendar.getInstance();
		    java.sql.Date ourJavaDateObject = new java.sql.Date(calendar.getTime().getTime());

	

		if ("fixedDeposit".equals(action)) {
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println(customerIdString);
			int customerId=Integer.parseInt(customerIdString);
			//int customerId = 10044;
			float interest = 0;

			Date maturityDate = null;
			boolean qualifiedAmount=false;
			
			long accountNo = Long.parseLong(request.getParameter("account"));
			System.out.println("ACCOUNTNO:"+accountNo);
			int tenure = Integer.parseInt(request.getParameter("tenure"));
			double amount = Double.parseDouble(request.getParameter("amount"));
			String autoRenewal = request.getParameter("renewal");
			fdeposit.setCustomerId(customerId);
			fdeposit.setAccountNo(accountNo);
			fdeposit.setTenure(tenure);
			fdeposit.setAmount(amount);
			fdeposit.setAutoRenewal(autoRenewal);
			fdeposit.setDepositDate(ourJavaDateObject);
            
			try {
				qualifiedAmount = service .getAmount(amount,customerId,accountNo);
				maturityDate = service.getMaturityDate(tenure);
				interest = service.getInterest(customerId, tenure,amount);
				System.out.println(maturityDate);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			session.setAttribute("deposit", fdeposit);
			session.setAttribute("qualifiedAmount", qualifiedAmount);
			
			session.setAttribute("maturityDate", maturityDate);
			session.setAttribute("interest", interest);
			
			RequestDispatcher rd = request.getRequestDispatcher("./jsp/viewFixedDeposit.jsp");
			rd.forward(request, response);
		}
		if ("submission".equals(action)) {
			int fixedDepositId=0;
			try {
				System.out.println("In yes option");
				FixedDeposit fd = (FixedDeposit)session.getAttribute("deposit");
				Date matDate = (Date)session.getAttribute("maturityDate");
				System.out.println("DepoDate"+fd.getDepositDate());
				System.out.println("AutoRenewal:"+fd.getAutoRenewal());
				float interest=Float.parseFloat(session.getAttribute("interest").toString());
				fixedDepositId=service.createFixedDeposit(fd,matDate,interest);
				fd.setFixedDepositId(fixedDepositId);
				service.ITextWritePdfFile(fd,matDate,interest);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("DepositId", fixedDepositId);
			RequestDispatcher rd = request.getRequestDispatcher("./jsp/ConfirmationFixedDeposit.jsp");
			rd.forward(request, response);
		}
		if("cancellation".equals(action)){
		//	PrintWriter out = response.getWriter();
			request.setAttribute("error","fixed deposit is cancelled");
			
			RequestDispatcher rd = request.getRequestDispatcher("./jsp/fixedDeposit.jsp");
			rd.forward(request, response);
		}

		
if("viewbeneficiarylist".equals(action)){
	System.out.println("inside view benennnnnnn");
	session = request.getSession(true);
	 String
	 customerIdString=session.getAttribute("customerId").toString();
	 System.out.println(customerIdString);
	int customerId=Integer.parseInt(customerIdString);
	//int customerId=10044;
			System.out.println(customerId);
			ArrayList<Beneficiary> beneficiaries = new ArrayList<Beneficiary>();
			ArrayList<Long> accountNo = new ArrayList<Long>();
			try {
				beneficiaries=service.fundTransfer(customerId);
				accountNo = service.getAccounts(customerId);
				for(Long i: accountNo)
					System.out.println("i"+i);
				System.out.println("fgdhg");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			HttpSession sessions= request.getSession();
			sessions.setAttribute("accounts",accountNo); 
			request.setAttribute("beneficiary", beneficiaries);
			RequestDispatcher rd = request.getRequestDispatcher("./jsp/BeneficiaryList.jsp");
			rd.forward(request, response);
		}
	
	
		if("addbeneficiary".equals(action)){
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println(customerIdString);
			int customerId=Integer.parseInt(customerIdString);
			//int customerId=10044;
			String done="";
			
			String beneficiaryName = request.getParameter("name");
			long accountNo = Long.parseLong(request.getParameter("accountNo"));
			String bankName = request.getParameter("bankname");
			System.out.println(bankName);
			String branch = request.getParameter("branch");
			int ifscCode = Integer.parseInt(request.getParameter("ifsccode"));
			String email = request.getParameter("emailId");
			beneficiary.setBeneficiaryName(beneficiaryName);
			beneficiary.setAccountNo(accountNo);
			beneficiary.setBankName(bankName);
			beneficiary.setBranch(branch);
			beneficiary.setIfscCode(ifscCode);
			beneficiary.setEmail(email);
			try {
				done = service.addBeneficiary(customerId,beneficiary);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(done.equals("SUCCESSFULL!!!")){
				request.setAttribute("success", done);
				RequestDispatcher rd = request.getRequestDispatcher("./jsp/RequestBeneficiaryConfirmation.jsp");
				rd.forward(request, response);
			}else{
				request.setAttribute("success", done);
				RequestDispatcher rd = request.getRequestDispatcher("./jsp/RequestBeneficiaryConfirmation.jsp");
				rd.forward(request, response);
			}
		}if("moneyfund".equals(action)){
			long benAccountNo = Long.parseLong(request.getParameter("radioselected"));
			System.out.println("IDmoney:"+benAccountNo);
			 session = request.getSession();
			session.setAttribute("beneAccount", benAccountNo);
			RequestDispatcher rd = request.getRequestDispatcher("./jsp/CustomerFunds.jsp");
			rd.forward(request, response);
		}
		if("viewdetails".equals(action)){
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println("jkujh"+customerIdString);
			int customerId=Integer.parseInt(customerIdString);
			//int customerId=10044;
			Customer c=new Customer();
			boolean done=false;
			try {
				c=service.viewUpdateDetails(customerId);
				System.out.println(c.getCustomerId());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("customer", c);
			RequestDispatcher rd = request.getRequestDispatcher("./jsp/viewDetails.jsp");
			rd.forward(request, response);
			
		}
		if("updateDetails".equals(action)){
			Customer c = new Customer();
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

		if("TRANSFER".equals(transfer)){
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println(customerIdString);
			int customerId=Integer.parseInt(customerIdString);
			//int customerId=10044;
			boolean added = false;
			boolean qualifiedAmount=false;
			double amount = Double.parseDouble(request.getParameter("amount"));
			System.out.println();
			 session = request.getSession();
			long beneAccountNo = Long.parseLong(session.getAttribute("beneAccount").toString());
		    long custaccountNo  = Long.parseLong(request.getParameter("account"));
		   // session.setAttribute(arg0, arg1)
		    System.out.println("ID12:"+beneAccountNo);
			System.out.println(custaccountNo);
			try {
				qualifiedAmount = service .getAmount(amount,customerId,custaccountNo);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(custaccountNo!=beneAccountNo){
			if(qualifiedAmount==true){
				try {
					System.out.println("Entered qualified Amount");
					added = service.transferringFunds(customerId,custaccountNo,beneAccountNo,amount);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else{
				request.setAttribute("error","No sufficient balance");
				
				RequestDispatcher rd = request.getRequestDispatcher("./jsp/CustomerFunds.jsp");
				rd.forward(request, response);
			}
			}else{
          request.setAttribute("error","Sorry your account number is same as beneficiary account so select another account");
				
				RequestDispatcher rd = request.getRequestDispatcher("./jsp/CustomerFunds.jsp");
				rd.forward(request, response);
			}
			if(added){
				ArrayList<Beneficiary> beneficiaries = new ArrayList<Beneficiary>();
				try {
					beneficiaries=service.fundTransfer(customerId);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				request.setAttribute("beneficiary", beneficiaries);
				request.setAttribute("error", "Successfully transferred");
				//out.println("Succefully transferred");
				RequestDispatcher rd = request.getRequestDispatcher("./jsp/BeneficiaryList.jsp");
				rd.forward(request, response);
				
			}
		}
		if("recurringDepositRequest".equals(action)){
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println(customerIdString);
			int customerId=Integer.parseInt(customerIdString);
			//int customerId = 10044;
			ArrayList<Long> accountNo = new ArrayList<Long>();
			try {
				accountNo = service.getAccounts(customerId);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			HttpSession sessions= request.getSession();
			sessions.setAttribute("accounts",accountNo); 
			RequestDispatcher rd = request.getRequestDispatcher("./jsp/RecurringDeposit.jsp");
			rd.forward(request, response);
		}
		if("recurringDeposit".equals(action)){
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println(customerIdString);
			int customerId=Integer.parseInt(customerIdString);
			//int customerId = 10044;
			float interest = 0;

			Date maturityDate = null;
			boolean qualifiedAmount=false;
			
			long accountNo = Long.parseLong(request.getParameter("account"));
			System.out.println("ACCOUNTNO:"+accountNo);
			int tenure = Integer.parseInt(request.getParameter("tenure"));
			double amount = Double.parseDouble(request.getParameter("amount"));
			String autoDebit = request.getParameter("debit");
			int day =Integer.parseInt(request.getParameter("day"));
			rdeposit.setCustomerId(customerId);
			rdeposit.setAccountNo(accountNo);
			rdeposit.setTenure(tenure);
			rdeposit.setAmount(amount);
			rdeposit.setAutoDebit(autoDebit);
			rdeposit.setDay(day);
			rdeposit.setDepositDate(ourJavaDateObject);
			  
			try {
				qualifiedAmount = service .getAmount(amount,customerId,accountNo);
				maturityDate = service.getMaturityDate(tenure);
				interest = service.getInterestRD(customerId, tenure,amount);
				System.out.println("INTEREST:"+interest);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			session.setAttribute("deposit", rdeposit);
			session.setAttribute("qualifiedAmount", qualifiedAmount);
			
			session.setAttribute("maturityDate", maturityDate);
			session.setAttribute("interest", interest);
			
			RequestDispatcher rd = request.getRequestDispatcher("./jsp/viewRecurringDeposit.jsp");
			rd.forward(request, response);
			
		}if("DeleteAccount".equals(delete)){
			Long accountNo = Long.parseLong(request.getParameter("radioselected"));
			boolean done=false;
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println(customerIdString);
				ArrayList<Account> accountList = new 	ArrayList<Account>();
			int customerId=Integer.parseInt(customerIdString);
			try {
				done = service.getAccountDelete(accountNo);
			  accountList = service.viewAccount(customerId);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(done){
				request.setAttribute("error", "SUCCESSFULLY REQUEST SENT");
				request.setAttribute("accountList", accountList);
				RequestDispatcher reqDispatcher = request.getRequestDispatcher("./jsp/UpdateAccounts.jsp");
				reqDispatcher.forward(request, response);
			}else{
				request.setAttribute("error", "TRY AGAIN");
				request.setAttribute("accountList", accountList);
				RequestDispatcher reqDispatcher = request.getRequestDispatcher("./jsp/UpdateAccounts.jsp");
				reqDispatcher.forward(request, response);;
			}
			
		}
		if("deleteSelected".equals(action)){
			boolean deleted = false;
			Long accountNo = Long.parseLong(request.getParameter("radioselected4"));
			System.out.println(accountNo);
			int customerId = Integer.parseInt(session.getAttribute("cust_id").toString());
			try {
				deleted=service.deleteBeneficiary(accountNo, customerId);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			ArrayList<Beneficiary> beneficiaries = new ArrayList<Beneficiary>();
			try {
				beneficiaries=service.fundTransfer(customerId);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if(deleted){
				
				
				request.setAttribute("error", "SUCCESSFULLY DELETED!!!!");
				request.setAttribute("beneficiary", beneficiaries);
				RequestDispatcher reqDispatcher = request.getRequestDispatcher("./jsp/DeleteBeneficiaryList.jsp");
				reqDispatcher.forward(request, response);
			}else{
			
				request.setAttribute("error", "SORRY NOT DELETED!!");
				request.setAttribute("beneficiary", beneficiaries);
				RequestDispatcher reqDispatcher = request.getRequestDispatcher("./jsp/DeleteBeneficiaryList.jsp");
				reqDispatcher.forward(request, response);
			}
		}
		if ("rdsubmission".equals(action)) {
			int recurringDepositId=0;
			try {
				System.out.println("In rdyes option");
				RecurringDeposit rd = (RecurringDeposit)session.getAttribute("deposit");
				Date matDate = (Date)session.getAttribute("maturityDate");
				System.out.println("DepoDate"+rd.getDepositDate());
			
				float interest=Float.parseFloat(session.getAttribute("interest").toString());
				recurringDepositId=service.createRecurringDeposit(rd,matDate,interest);
			
				service.ITextWritePdfFile1(rd,matDate,interest,recurringDepositId);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("DepositId", recurringDepositId);
			RequestDispatcher rd = request.getRequestDispatcher("./jsp/ConfirmationFixedDeposit.jsp");
			rd.forward(request, response);
		}if("rdcancellation".equals(action)){
		//	PrintWriter out = response.getWriter();
			System.out.println("In no option");
			request.setAttribute("error1","recurring deposit cancelled");
			//out.println("Recurring Deposit is cancelled");
			RequestDispatcher rd = request.getRequestDispatcher("./jsp/RecurringDeposit.jsp");
			rd.forward(request, response);
		}if("viewFixedDeposit".equals(action)){
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println(customerIdString);
			int customerId=Integer.parseInt(customerIdString);
			//int customerId=10044;
			ArrayList<FixedDeposit> fd = new ArrayList<FixedDeposit>();
			try {
				fd=service.viewFixedDeposit(customerId);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("fixedDeposit", fd);
			RequestDispatcher rd = request.getRequestDispatcher("./jsp/FixedDepositView.jsp");
			rd.forward(request, response);
			
		}
		if("UpdateAccount".equals(update)){
			Long accountNo = Long.parseLong(request.getParameter("radioselected"));
			Account a = new Account();
			try {
				a = service.getAccountDetails(accountNo);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("acc", a);
			RequestDispatcher reqDispatcher = request.getRequestDispatcher("./jsp/UpdateAccountDetails.jsp");
			reqDispatcher.forward(request, response);
		}
		if("updateAcc".equals(action)){
			boolean update1=false;
			System.out.println("Inside Update");
			Account acc = new Account();
			acc.setCustomerID(Integer.parseInt(request.getParameter("id")));
			System.out.println(request.getParameter("accountNo"));
			acc.setAccountNo(Long.parseLong(request.getParameter("accountNo")));
		    long accNo = Long.parseLong(request.getParameter("accountNo"));
			acc.setBankName(request.getParameter("bankNameAccount"));
			acc.setBranch(request.getParameter("branchNameAccount"));
			acc.setIfscCode(Integer.parseInt(request.getParameter("ifscCodeAccount")));
			acc.setCurrentBalance(Double.parseDouble(request.getParameter("balance")));
			try {
				update1=service.sendAccountRequest(acc);
				System.out.println("Up:"+update1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(update1){
				request.setAttribute("error", "SUCCESSFULLY UPDATED");
			RequestDispatcher reqDispatcher = request.getRequestDispatcher("./jsp/CustomerPortal.jsp");
			
			reqDispatcher.forward(request, response);
			}else{
				
				request.setAttribute("error", "PLEASE ENTER CORRECT BRANCH AND IFSC CODE");
				Account a = new Account();
				try {
					a = service.getAccountDetails(accNo);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				request.setAttribute("acc", a);
				RequestDispatcher reqDispatcher = request.getRequestDispatcher("./jsp/UpdateAccountDetails.jsp");
				reqDispatcher.forward(request, response);
			}
		}
		if("deleteBeneficiary".equals(action)){
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println(customerIdString);
			
			int customerId=Integer.parseInt(customerIdString);
			 session.setAttribute("cust_id", customerId);
			ArrayList<Beneficiary> beneficiaries = new ArrayList<Beneficiary>();
			try {
				beneficiaries=service.fundTransfer(customerId);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("beneficiary", beneficiaries);
			RequestDispatcher reqDispatcher = request.getRequestDispatcher("./jsp/DeleteBeneficiaryList.jsp");
			reqDispatcher.forward(request, response);
		}
	
		if("accountview".equals(action))
		{
			try{
				
				session = request.getSession(true);
				 String
				 customerIdString=session.getAttribute("customerId").toString();
				 System.out.println(customerIdString);
				int customerId=Integer.parseInt(customerIdString);
			
			//call service layer to search customer search
			
				
			ArrayList<Account> accountList = service.viewAccount(customerId);
			
			//Share the matched customers details with view
			System.out.println(accountList.size());
			
			request.setAttribute("accountList", accountList);
			RequestDispatcher reqDispatcher = request.getRequestDispatcher("./jsp/ViewAllAccounts.jsp");
			reqDispatcher.forward(request, response);
		} catch (Exception e) {
			System.out.println(e);
		}
		}
		System.out.println("before view");
		if("viewaccountdetails".equals(action)){
			System.out.println("In view account details");
			
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println(customerIdString);
			int customerId=Integer.parseInt(customerIdString);
			try{
			ArrayList<Account> accountList = service.viewAccount(customerId);
			
			//Share the matched customers details with view
			System.out.println(accountList.size());
			
			request.setAttribute("accountList", accountList);
			RequestDispatcher reqDispatcher = request.getRequestDispatcher("./jsp/UpdateAccounts.jsp");
			reqDispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		}
		
		if("VIEW_BALANCE".equals(bal)){
			
			System.out.println("Entered to fetch balance");
			session = request.getSession(true);
			 String
			 customerIdString=session.getAttribute("customerId").toString();
			 System.out.println(customerIdString);
			int customerId=Integer.parseInt(customerIdString);
			long accountNo=Long.parseLong(request.getParameter("account"));
			
			Double balance;
			try {
				balance = service.fetchBalance(customerId,accountNo);
				System.out.println(balance+"jkhkjhkh");
				request.setAttribute("balance", balance);
			//	JOptionPane.showMessageDialog(null, "Your current balance is:"+balance);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}
			
			RequestDispatcher rd = request.getRequestDispatcher("./jsp/CustomerFunds.jsp");
			rd.forward(request, response);
			
			
		}
		
		
if ("customerLogout".equals(action)){
			
			
			System.out.println("in customer servlet logout");
			 
	           session.invalidate();
	          // session=request.getSession();       
			          request.getRequestDispatcher("./HomePage.jsp").forward(request, response);   
			             
			              
			              
			             //out.print("You are successfully logged out!");   
			              
			          //  out.close();   

		}
}
}

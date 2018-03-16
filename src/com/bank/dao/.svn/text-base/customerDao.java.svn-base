package com.bank.dao;
import java.security.SecureRandom;
import java.awt.Color;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;

import com.bank.model.Account;
import com.bank.model.Beneficiary;
import com.bank.model.Customer;
import com.bank.model.FixedDeposit;
import com.bank.model.RecurringDeposit;
import com.bank.model.Request;
import com.bank.util.DBUtil;
import com.lowagie.text.Chunk;
import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.Image;
import com.lowagie.text.List;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfWriter;

public class customerDao {

	public Customer createCustomer(Customer customer) throws SQLException {
customerDao p=new customerDao();
		Connection conn = DBUtil.getConnection();
		PreparedStatement createCustomerPS = null;
		PreparedStatement seqPS = null;
		ResultSet rs = null;
		int custId = 0;
		
		PreparedStatement ps = null;

		try {
			ps = conn
					.prepareStatement("select * from TBL_CustomerDetails where pan=?");
			ps.setString(1, customer.getPan());
			rs = ps.executeQuery();
			if (!rs.next()) {
				String key=p.password();
				String createCustomerQuery = "insert into TBL_CustomerDetails VALUES(CustomerId_Sequence.nextval,?,?,?,?,?,?,?,?,?,?)";

				createCustomerPS = conn.prepareStatement(createCustomerQuery);
				createCustomerPS.setString(1,key);
				createCustomerPS.setString(2, customer.getCustomerName());

				createCustomerPS.setInt(3, customer.getAge());

				createCustomerPS.setString(4, customer.getAddress());

				createCustomerPS.setString(5, customer.getOccupation());

				createCustomerPS.setDouble(6, customer.getSalary());

				createCustomerPS.setString(7, customer.getPan());

				createCustomerPS.setString(8, customer.getEmailId());

				createCustomerPS.setLong(9, customer.getPhoneNo());
				createCustomerPS.setDate(10, customer.getDob());

				createCustomerPS.executeQuery();

				conn.commit();

				seqPS = conn
						.prepareStatement("Select CustomerId_Sequence.currval from dual");

				rs = seqPS.executeQuery();

				if (rs != null && rs.next()) {
					custId = rs.getInt(1);
					
					customer.setCustomerId(custId);
					customer.setPassword(key);
				} else {
					custId = 0;
					String password=null;
					customer.setCustomerId(custId);
					customer.setPassword(password);

				}
			}
		} catch (SQLException e) {
			System.out
					.println("Exception occured while create customer operation");
			e.printStackTrace();
		} finally {
			DBUtil.closeResultSet(rs);
			DBUtil.closeStatement(createCustomerPS);
			DBUtil.closeStatement(seqPS);
			DBUtil.closeConnection(conn);
		}

		return customer;
	}

	public String addAccount(Account account, int customerId)
			throws SQLException {
		System.out.println("in dao add account");
		String flag1 ="successful";
		Connection conn = DBUtil.getConnection();
		PreparedStatement createBankPS = null;
		PreparedStatement seqPS = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
		double balanceintial = 0;
		try {
			System.out.println("before first query");
			ps = conn
					.prepareStatement("select accountNo from TBL_AccountDetails where customerID=? and accountNo=?");
		ps.setLong(2,account.getAccountNo());
			ps.setLong(1,customerId);
			rs = ps.executeQuery();
			if (!rs.next()) {
				System.out.println("before second query");
				ps = conn
						.prepareStatement("select bankId from TBL_BankDetails where bankName=?");
			ps.setString(1,account.getBankName());
			rs = ps.executeQuery();
			if(rs.next()){
				System.out.println("before third query");
				ps = conn
						.prepareStatement("select branch from TBL_BranchDetails where branch=? and bankId=? and ifscCode=?");
			ps.setString(1,account.getBranch());
			ps.setInt(2,rs.getInt(1));
			ps.setInt(3,account.getIfscCode());
			rs = ps.executeQuery();
				if(rs.next())
				{System.out.println("before 4 query");
				String createCustomerQuery = "insert into TBL_AccountDummy VALUES(?,?,?,?,CurrentBalance_Sequence.nextval,?)";
				createBankPS = conn.prepareStatement(createCustomerQuery);
				createBankPS.setInt(1, account.getCustomerID());
				createBankPS.setLong(2, account.getAccountNo());
				createBankPS.setString(3, account.getBankName());
				createBankPS.setString(4, account.getBranch());
	
				createBankPS.setInt(5, account.getIfscCode());
				createBankPS.executeUpdate();
				conn.commit();
				}
				else{
					flag1="enter branchName and Ifsc code Correctly";
				}
			}else{flag1="enter bank nmae correctly";}
			}
		} catch (SQLException e) {
			System.out
					.println("Exception occured while create branch operation");
			e.printStackTrace();
		} finally {
			DBUtil.closeResultSet(rs);
			DBUtil.closeStatement(createBankPS);
			DBUtil.closeStatement(seqPS);
			DBUtil.closeConnection(conn);
		}
		return flag1;
	}

	public float getInterest(int customerId, int tenure,double amount) throws SQLException {
		Connection conn = DBUtil.getConnection();
		PreparedStatement ps = null;
		PreparedStatement ps1 = null;
        System.out.println("amount"+amount);
		ResultSet rs = null;
		int age = 0;
		float interest = 0;
		ps = conn
				.prepareStatement("SELECT AGE FROM TBL_CUSTOMERDETAILS WHERE CUSTOMERID=?");
		ps.setInt(1, customerId);
		rs = ps.executeQuery();
		if (rs.next()) {
			age = rs.getInt(1);
			System.out.println("age"+age);
		}
		if(amount>=1000000){
		
		if (age < 60) {
			System.out.println("entered age");
			System.out.println("tenure"+tenure);
			ps1 = conn.prepareStatement("SELECT INDIVIDUAL_RATE FROM TBL_INTERESTGRT10 WHERE ?>=TENURE_START AND ?<=TENURE_END");
			ps1.setInt(1, tenure);
			ps1.setInt(2, tenure);
			rs = ps1.executeQuery();
			boolean f=rs.next();
			System.out.println("queryexecuted");
			    if(f)
			    {
			    	System.out.println("Enters into next");
				interest = rs.getFloat(1);
				System.out.println("interest1"+interest);
			    }
		} else {
			ps1 = conn
					.prepareStatement("SELECT SENIOR_RATE FROM TBL_INTERESTGRT10 WHERE ?>=TENURE_START AND ?<=TENURE_END");
			ps1.setInt(1, tenure);
			ps1.setInt(2, tenure);
			rs = ps1.executeQuery();
			boolean f=rs.next();
			if (f) {
				interest =  rs.getFloat(1);
				System.out.println("interest2"+interest);
			}

		}
		}else{
			if (age < 60) {
				ps1 = conn
						.prepareStatement("SELECT INDIVIDUAL_RATE FROM TBL_INTERESTLES10 WHERE ?>=TENURE_START AND ?<=TENURE_END");
				ps1.setInt(1, tenure);
				ps1.setInt(2, tenure);
				rs = ps1.executeQuery();
				boolean f=rs.next();
				if (f) {
					interest =  rs.getFloat(1);
					System.out.println("interest3"+interest);
				}
			} else {
				ps1 = conn
						.prepareStatement("SELECT SENIOR_RATE  FROM TBL_INTERESTLES10 WHERE ?>=TENURE_START AND ?<=TENURE_END");
				ps1.setInt(1, tenure);
				ps1.setInt(2, tenure);
				rs = ps1.executeQuery();
				boolean f=rs.next();
				if (f) {
					interest =  rs.getFloat(1);
					System.out.println("interest4"+interest);
				}

			}
			
		}
		return interest;
	}
    public Date getMaturityDate(int tenure) throws SQLException{
    	Connection conn = DBUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Date maturityDate=null;
		ps=conn.prepareStatement("SELECT ADD_MONTHS( CURRENT_DATE, ?) FROM DUAL");
		ps.setInt(1, tenure);
		rs=ps.executeQuery();
		if(rs.next()){
			maturityDate=rs.getDate(1);
			
		}
		return maturityDate;
    }
    public boolean getAmount(double amount,int customerId,long accountNo) throws SQLException{
    	Connection conn = DBUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null; 
		boolean amountPresent = false;
		ps=conn.prepareStatement("SELECT CURRENTBALANCE FROM TBL_ACCOUNTDETAILS WHERE CUSTOMERID=? AND ACCOUNTNO=?");
		ps.setInt(1, customerId);
		ps.setLong(2, accountNo);
		rs=ps.executeQuery();
		boolean b = rs.next();
		if(b==true){
			if(amount<=rs.getDouble(1)){
				amountPresent=true;
				System.out.println("amountPresent:"+amountPresent);
			}
		}
		return amountPresent;
    }
	public int createFixedDeposit(FixedDeposit fdeposit,Date matDate,float interest) throws SQLException {
		Connection conn = DBUtil.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		int fixedId=0;
		PreparedStatement ps1=null;
		PreparedStatement ps2 = null;
		
		System.out.println("auto:"+fdeposit.getAutoRenewal());
		ps = conn
				.prepareStatement("INSERT INTO TBL_FIXEDDEPOSIT VALUES(FIXEDDEPOSIT.NEXTVAL,?,?,?,?,?,?,?)");
		ps.setInt(1, fdeposit.getCustomerId());
		ps.setLong(2, fdeposit.getAccountNo());
		ps.setInt(3, fdeposit.getTenure());
		ps.setDouble(4, fdeposit.getAmount());
		ps.setDate(5, fdeposit.getDepositDate());
		ps.setDate(6, matDate);
		ps.setString(7, fdeposit.getAutoRenewal());
		rs=ps.executeQuery();
		ps2 = conn.prepareStatement("SELECT FIXEDDEPOSIT.CURRVAL FROM DUAL");
		rs=ps2.executeQuery();
		while(rs.next()){
			fixedId = rs.getInt(1);
		}
		if(!rs.next()){
			ps1=conn.prepareStatement("UPDATE TBL_ACCOUNTDETAILS SET CURRENTBALANCE=CURRENTBALANCE-? WHERE CUSTOMERID=? AND ACCOUNTNO=?");
			ps1.setDouble(1, fdeposit.getAmount());
			ps1.setInt(2, fdeposit.getCustomerId());
			ps1.setLong(3, fdeposit.getAccountNo());
			ps1.execute();
		}
		
		return fixedId;

	}

	public void deleteFixedDeposit(FixedDeposit fdeposit) throws SQLException {
		Connection conn = DBUtil.getConnection();

		PreparedStatement ps = null;

		try {
			ps = conn
					.prepareStatement("DELETE FROM TBL_FIXED_DEPOSIT ORDER BY DEPOSIT_DATE DESC LIMIT 1");
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public String getPassword(int customerId) throws SQLException {

		String password1 = null;
		Connection conn = DBUtil.getConnection();
		ResultSet rs = null;

		PreparedStatement ps = null;
		try {
			ps = conn
					.prepareStatement("select password from TBL_CustomerDetails where customerId=?");
			ps.setInt(1, customerId);
			rs = ps.executeQuery();
			if (rs.next()) {

				password1 = rs.getString(1);
			}

			else {
				password1 = null;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return password1;

	}

	public String addBeneficiary(int customerId, Beneficiary beneficiary)
			throws SQLException {
		String done = "SUCCESSFULL!!!";
		Connection conn = DBUtil.getConnection();
		PreparedStatement ps = null;
		PreparedStatement ps1 = null;
		PreparedStatement ps2 = null;
		ResultSet rs = null;
		long accountNo = beneficiary.getAccountNo();
		ps = conn
				.prepareStatement("SELECT * FROM TBL_ADMIN_BENEFICIARY WHERE ACCOUNTNO=? AND CUSTOMERID=?");
		ps.setLong(1, accountNo);
		ps.setInt(2, customerId);
		rs = ps.executeQuery();
		
		if (!rs.next()) {
			ps=conn.prepareStatement("SELECT * FROM TBL_CUSTOMER_BENEFICIARY WHERE ACCOUNTNO=?");
			ps.setLong(1, accountNo);
			rs = ps.executeQuery();
			if(!rs.next()){
			ps2=conn.prepareStatement("SELECT * FROM TBL_ACCOUNTDETAILS WHERE ACCOUNTNO=? AND BANKNAME=? AND BRANCH=? AND IFSCCODE=?");
			ps2.setLong(1, beneficiary.getAccountNo());
			ps2.setString(2, beneficiary.getBankName());
			ps2.setString(3, beneficiary.getBranch());
			ps2.setInt(4, beneficiary.getIfscCode());
			rs=ps2.executeQuery();
			if(rs.next()){
			ps1 = conn
					.prepareStatement("INSERT INTO TBL_ADMIN_BENEFICIARY VALUES(BENEFICIARY_REQ.NEXTVAL,?,?,?,?,?,?,?)");
			ps1.setInt(1, customerId);
			ps1.setString(2, beneficiary.getBeneficiaryName());
			ps1.setLong(3, beneficiary.getAccountNo());
			ps1.setString(4, beneficiary.getBankName());
			ps1.setString(5, beneficiary.getBranch());
			ps1.setInt(6, beneficiary.getIfscCode());
			ps1.setString(7, beneficiary.getEmail());
			ps1.executeUpdate();
			conn.commit();
			
			}else{
				done="Sorry no such account number present";
		}
		}else{done="Sorry the requested beneficiary is already in your list";
		}
		}else{
		
			done="Already request of that account from your id is done";
		}

		return done;
	}

	public void addAccountDao(Account account) throws SQLException {

		Connection conn = DBUtil.getConnection();
		ResultSet rs = null;

		PreparedStatement ps = null;
		try {
			ps = conn
					.prepareStatement("select password from TBL_CustomerDetails where customerId=?");
			// ps.setInt(1,customerId);
			rs = ps.executeQuery();
			if (rs.next()) {

				// password1=rs.getInt(1);
			}

			else {
				// password1=0;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// return password1;

	}
public ArrayList<Beneficiary> fundTransfer(int customerId) throws SQLException{
	 ArrayList<Beneficiary> beneficiaries = new ArrayList<Beneficiary>();
	  Connection conn = DBUtil.getConnection();
		PreparedStatement ps= null;
		//PreparedStatement ps1= null;
		int i=0;
		ResultSet rs=null;
		
	    ps=conn.prepareStatement("SELECT * FROM TBL_CUSTOMER_BENEFICIARY WHERE CUSTOMERID=?");
	    ps.setInt(1, customerId);
	    rs = ps.executeQuery();
	  
	    System.out.println("Hello"+i);
	    
	    while(rs.next()){
	    	
	    	Beneficiary beneficiary = new Beneficiary();
	    	beneficiary.setBeneficiaryName(rs.getString(2));
	        beneficiary.setAccountNo(rs.getLong(3));
	    	beneficiary.setBankName(rs.getString(4));
	    	beneficiary.setBranch(rs.getString(5));
	    	beneficiary.setIfscCode(rs.getInt(6));
	    	beneficiary.setEmail(rs.getString(7));
	    	beneficiaries.add(beneficiary);
	    	}
	    
	   return beneficiaries;
}
   public ArrayList<Long> getAccounts(int customerId) throws SQLException{
	   Connection conn = DBUtil.getConnection();
		PreparedStatement ps= null;
		ResultSet rs=null;
		String status="ACTIVE";
		System.out.println("abcde");
		ArrayList<Long> account = new ArrayList<Long>();
	   ps=conn.prepareStatement("SELECT ACCOUNTNO FROM TBL_ACCOUNTDETAILS WHERE CUSTOMERID=? AND STATUS=?");
	   ps.setInt(1, customerId);
	   ps.setString(2, status);
	   rs=ps.executeQuery();
	  
	  
	   while(rs.next()){
		  
		   account.add(rs.getLong(1));
	   }
	   /*for(Long acc: account)
		   System.out.println("account"+acc);*/
	   return account;
   }
	public boolean transferringFunds(int customerId,long custAccountNo,long accountNo,double amount) throws SQLException{
		  Connection conn = DBUtil.getConnection();
			PreparedStatement ps= null;
			PreparedStatement ps2= null;
			boolean updated=false;
			ps=conn.prepareStatement("UPDATE TBL_ACCOUNTDETAILS SET CURRENTBALANCE=CURRENTBALANCE-? WHERE CUSTOMERID=? AND ACCOUNTNO=?");
			ps.setDouble(1, amount);
			ps.setInt(2,customerId);
			ps.setLong(3,custAccountNo);
			
			updated=ps.execute();
			ps2=conn.prepareStatement("UPDATE TBL_ACCOUNTDETAILS SET CURRENTBALANCE=CURRENTBALANCE+? WHERE ACCOUNTNO=?");
			ps2.setDouble(1, amount);
			ps2.setLong(2,accountNo);
			ps2.executeUpdate();
			System.out.println(updated);
			return !updated;
			
			
	}
	public boolean getAccountDelete(long accountNo) throws SQLException{
		Connection conn=DBUtil.getConnection();
		   PreparedStatement ps=null;
		   PreparedStatement ps1=null;
		   ResultSet rs=null;
		   String type="delete";
		   boolean done = false;
		   ps=conn.prepareStatement("SELECT * FROM TBL_ACCOUNTDETAILS WHERE ACCOUNTNO=?");
		   ps.setLong(1, accountNo);
		   rs=ps.executeQuery();
		   while(rs.next()){
			   ps=conn.prepareStatement("INSERT INTO TBL_ADMIN_UPDATE VALUES(?,?,?,?,?,?,?,REQUEST.NEXTVAL)");
			   ps.setInt(1, rs.getInt(1));
			   ps.setLong(2, rs.getLong(2));
			   ps.setString(3,rs.getString(3) );
			   ps.setString(4, rs.getString(4));
			   ps.setDouble(5, rs.getDouble(5));
			   ps.setInt(6, rs.getInt(6));
			   ps.setString(7, type);
			   ps.execute();
			   done=true;
		   }
		   return done;
	}
//for viewing customer details	
public Customer viewUpdateDetails(int customerId) throws SQLException{
	Connection conn = DBUtil.getConnection();
	Customer c = new Customer();
	ResultSet rs = null;
	PreparedStatement ps = null;
	try {
		ps = conn
				.prepareStatement("select * from TBL_CustomerDetails where customerId=?");
		ps.setInt(1,customerId);
		rs = ps.executeQuery();
		
		if(rs.next()){
		c.setCustomerId(rs.getInt(1));
		c.setCustomerName(rs.getString(3));
		System.out.println(rs.getString(3));
		c.setAge(rs.getInt(4));
		c.setAddress(rs.getString(5));
		c.setOccupation(rs.getString(6));
		c.setSalary(rs.getInt(7));
		c.setPan(rs.getString(8));
		c.setEmailId(rs.getString(9));
		c.setPhoneNo(rs.getLong(10));
		c.setDob(rs.getDate(11));
		 ps.executeUpdate();
		conn.commit();
		}	
	} catch (SQLException e) {
		System.out.println("Exception occured while view details operation");
		e.printStackTrace();
	} finally {
		DBUtil.closeResultSet(rs);
		DBUtil.closeConnection(conn);
	}
	return c;
}
public boolean deleteBeneficiary(long accountNo,int customerId) throws SQLException{
	Connection conn=DBUtil.getConnection();
	PreparedStatement ps=null;
	
	boolean deleted=false;
	ps=conn.prepareStatement("DELETE FROM TBL_CUSTOMER_BENEFICIARY WHERE CUSTOMERID=? AND ACCOUNTNO=?");
	ps.setInt(1, customerId);
	ps.setLong(2, accountNo);
	deleted = ps.execute();
	return !deleted;
	
}
//update details method
public String updateCustomer(Customer c, int customerId) throws SQLException {
	// TODO Auto-generated method stub
	Connection conn=DBUtil.getConnection();
	PreparedStatement updateCustomerPS=null;
	
	String update="request not submitted";
	String updateCustomer="Update TBL_CustomerDetails SET CUSTOMERNAME=?,AGE=?,ADDRESS=?,occupation=?,salary=?,pan=?,emailid=?,phoneno=?,dob=? WHERE CUSTOMERID=?";
	try {

		updateCustomerPS = conn.prepareStatement(updateCustomer);
		System.out.println(c.getCustomerName());
		updateCustomerPS.setString(1,c.getCustomerName());
		updateCustomerPS.setInt(2,c.getAge());
		updateCustomerPS.setString(3,c.getAddress());
		updateCustomerPS.setString(4,c.getOccupation());
		updateCustomerPS.setDouble(5,c.getSalary());
		updateCustomerPS.setString(6,c.getPan());
		updateCustomerPS.setString(7,c.getEmailId());
		updateCustomerPS.setLong(8,c.getPhoneNo());
		updateCustomerPS.setDate(9,c.getDob());
		updateCustomerPS.setInt(10,customerId);
		updateCustomerPS.executeUpdate();
	update="request submitted successfully";
	}
	catch(SQLException e)
	{
		System.out.println("Exception occured while update customer operation");
		e.printStackTrace();
	}
	finally{
		DBUtil.closeStatement(updateCustomerPS);
		DBUtil.closeConnection(conn);
	}
	return update;
}
public int createRecurringDeposit(RecurringDeposit rdeposit,Date matDate,float interest) throws SQLException {
	Connection conn = DBUtil.getConnection();
	PreparedStatement ps = null;
	ResultSet rs = null;
	int recurringId=0;
	PreparedStatement ps1=null;
	PreparedStatement ps2 = null;
	
	
	ps = conn
			.prepareStatement("INSERT INTO TBL_RECURRINGDEPOSIT VALUES(RECURRINGDEPOSIT.NEXTVAL,?,?,?,?,?,?,?,?,?)");
	ps.setInt(1, rdeposit.getCustomerId());
	ps.setLong(2, rdeposit.getAccountNo());
	ps.setInt(3, rdeposit.getTenure());
	ps.setDouble(4, rdeposit.getAmount());
	ps.setDate(5, rdeposit.getDepositDate());
	ps.setDate(6, matDate);
	ps.setString(7, rdeposit.getAutoDebit());
	ps.setInt(8, rdeposit.getDay());
	ps.setDouble(9,rdeposit.getAmount());
	rs=ps.executeQuery();
	ps2 = conn.prepareStatement("SELECT RECURRINGDEPOSIT.CURRVAL FROM DUAL");
	rs=ps2.executeQuery();
	while(rs.next()){
		recurringId = rs.getInt(1);
	}
	if(!rs.next()){
		ps1=conn.prepareStatement("UPDATE TBL_ACCOUNTDETAILS SET CURRENTBALANCE=CURRENTBALANCE-? WHERE CUSTOMERID=? AND ACCOUNTNO=?");
		ps1.setDouble(1, rdeposit.getAmount());
		ps1.setInt(2, rdeposit.getCustomerId());
		ps1.setLong(3, rdeposit.getAccountNo());
		ps1.execute();
	}
	
	return recurringId;

}
public Account getAccountDetails(long accountNo) throws SQLException{
	Account acc = new Account();
	Connection conn=DBUtil.getConnection();
	   PreparedStatement ps=null;
	   ResultSet rs=null;
	   ps=conn.prepareStatement("SELECT * FROM TBL_ACCOUNTDETAILS WHERE ACCOUNTNO=?");
	   ps.setLong(1, accountNo);
	   rs=ps.executeQuery();
	   while(rs.next()){
		   acc.setCustomerID(rs.getInt(1));
		   acc.setAccountNo(rs.getLong(2));
		   acc.setBankName(rs.getString(3));
		   acc.setBranch(rs.getString(4));
		   acc.setCurrentBalance(rs.getDouble(5));
		   acc.setIfscCode(rs.getInt(6));
	   }
	   return acc;
}
public boolean sendAccountRequest(Account acc) throws SQLException{
	Connection conn=DBUtil.getConnection();
	   PreparedStatement ps=null;
	   PreparedStatement ps1=null;
	   ResultSet rs = null;
	   String type="update";
	   boolean updated = false;
	   ps1 = conn.prepareStatement("SELECT * FROM TBL_BRANCHDETAILS  INNER JOIN TBL_BANKDETAILS  ON TBL_BANKDETAILS.BANKID=TBL_BRANCHDETAILS.BANKID WHERE TBL_BRANCHDETAILS.BRANCH=? AND TBL_BRANCHDETAILS.IFSCCODE=?");
	   ps1.setString(1, acc.getBranch());
	   ps1.setInt(2, acc.getIfscCode());
	   rs=ps1.executeQuery();
	   boolean b = rs.next();
	   if(b){
	   ps=conn.prepareStatement("INSERT INTO TBL_ADMIN_UPDATE VALUES(?,?,?,?,?,?,?,REQUEST.NEXTVAL)");
	   ps.setInt(1, acc.getCustomerID());
	   ps.setLong(2, acc.getAccountNo());
	   ps.setString(3, acc.getBankName());
	   ps.setString(4, acc.getBranch());
	   ps.setDouble(5, acc.getCurrentBalance());
	   ps.setInt(6, acc.getIfscCode());
	   ps.setString(7, type);
	   ps.execute();
	   updated=true;
	 
       }
	   return updated;
}

public ArrayList<Account>viewAccount(int customerId) throws SQLException
{
	   ArrayList<Account> accountList =new ArrayList<Account>();
	   Connection conn=DBUtil.getConnection();
	   PreparedStatement preparedStatement=null;
	   ResultSet rs=null;
	   try
	   {
		   System.out.println("im dao");
		   preparedStatement=conn.prepareStatement("SELECT * FROM TBL_ACCOUNTDETAILS WHERE CUSTOMERID=? AND STATUS='ACTIVE'");
		   preparedStatement.setInt(1, customerId);
		     rs=preparedStatement.executeQuery();
		   while(rs.next())
		   {
			   
			  System.out.println(customerId);
				long accountNo = rs.getLong(2);
				System.out.println(accountNo);
				String bankName = rs.getString(3);
				String branch = rs.getString(4);
				double currentBalance = rs.getDouble(5);
				int ifscCode=rs.getInt(6);
				
			   
			   
			   Account account = new Account();
			   account.setCustomerID(customerId);
			   account.setAccountNo(accountNo);
			   account.setBankName(bankName);
			   System.out.println(bankName);
			   account.setBranch(branch);
			   System.out.println(branch);
			   account.setCurrentBalance(currentBalance);
			   System.out.println(currentBalance);
			   account.setIfscCode(ifscCode);
			   System.out.println(ifscCode);
            accountList.add(account);
            System.out.println(accountList.size());
		   }
		   
	   }catch (SQLException e)
	   {
		   e.printStackTrace();
	   }finally
	   {
		   DBUtil.closeResultSet(rs);
		   DBUtil.closeStatement(preparedStatement);
		   DBUtil.closeConnection(conn);
	   }
	  
	   return accountList;
}

public ArrayList<FixedDeposit> viewFixedDeposit(int customerId) throws SQLException{
	Connection conn = DBUtil.getConnection();
	PreparedStatement ps = null;
	ResultSet rs = null;
	ArrayList<FixedDeposit> fd = new ArrayList<FixedDeposit>();
	ps=conn.prepareStatement("SELECT * FROM TBL_FIXEDDEPOSIT WHERE CUSTOMERID=?");
	ps.setInt(1, customerId);
	rs=ps.executeQuery();
	while(rs.next()){
		FixedDeposit f = new FixedDeposit();
		f.setFixedDepositId(rs.getInt(1));
		f.setCustomerId(rs.getInt(2));
		f.setAccountNo(rs.getLong(3));
		f.setTenure(rs.getInt(4));
		f.setAmount(rs.getDouble(5));
		f.setDepositDate(rs.getDate(6));
		f.setMaturityDate(rs.getDate(7));
		f.setAutoRenewal(rs.getString(8));
		fd.add(f);
		
	}
	return fd;
}
public float getInterestRD(int customerId, int tenure,double amount) throws SQLException {
	Connection conn = DBUtil.getConnection();
	PreparedStatement ps = null;
	PreparedStatement ps1 = null;
    System.out.println("amount"+amount);
	ResultSet rs = null;
	int age = 0;
	float interest = 0;
	ps = conn
			.prepareStatement("SELECT AGE FROM TBL_CUSTOMERDETAILS WHERE CUSTOMERID=?");
	ps.setInt(1, customerId);
	rs = ps.executeQuery();
	if (rs.next()) {
		age = rs.getInt(1);
		System.out.println("age"+age);
	}
	
	
	if (age < 60) {
		System.out.println("entered age");
		System.out.println("tenure"+tenure);
		ps1 = conn.prepareStatement("SELECT INDIVIDUAL_RATE  FROM TBL_INTERESTRECURR WHERE ?>=TENURE_START AND ?<=TENURE_END");
		ps1.setInt(1, tenure);
		ps1.setInt(2, tenure);
		rs = ps1.executeQuery();
		boolean f=rs.next();
		System.out.println(f);
		System.out.println("queryexecuted");
		    if(f)
		    {
		    	System.out.println("Enters into next");
			interest = rs.getFloat(1);
			System.out.println("interest1"+interest);
		    }
	} else {
		ps1 = conn
				.prepareStatement("SELECT SENIOR_RATE FROM TBL_INTERESTRECURR WHERE ?>=TENURE_START AND ?<=TENURE_END");
		ps1.setInt(1, tenure);
		ps1.setInt(2, tenure);
		rs = ps1.executeQuery();
		boolean f=rs.next();
		if (f) {
			interest =  rs.getFloat(1);
			System.out.println("interest2"+interest);
		}

	
		}
		
	return interest;

}
public void ITextWritePdfFile(FixedDeposit fdeposit,Date matDate,float interest){
	try {
		System.out.println("In pdf");
		File file = new File("D:\\Test.pdf");
		FileOutputStream fileout = new FileOutputStream(file);
		Document document = new Document();
		PdfWriter.getInstance(document, fileout);
		document.addAuthor("Me");
		document.addTitle("My iText Test");

		document.open();

		Chunk chunk = new Chunk("iText Test");
		Font font = new Font(Font.COURIER);
		font.setStyle(Font.UNDERLINE);
		font.setStyle(Font.ITALIC);
		chunk.setFont(font);
		chunk.setBackground(Color.CYAN);
		document.add(chunk);

		Paragraph paragraph = new Paragraph();
		paragraph.add("CustomerId:"+fdeposit.getCustomerId());
		Paragraph paragraph1 = new Paragraph();
		paragraph1.add("Fixed Deposit Id:"+fdeposit.getFixedDepositId());
		Paragraph paragraph2 = new Paragraph();
		paragraph2.add("Tenure:"+fdeposit.getTenure());
		Paragraph paragraph3 = new Paragraph();
		paragraph3.add("Account Number:"+fdeposit.getAccountNo());
		Paragraph paragraph4 = new Paragraph();
		paragraph4.add("Amount:"+fdeposit.getAmount());
		Paragraph paragraph5 = new Paragraph();
		paragraph5.add("Interest:"+interest);
		Paragraph paragraph6= new Paragraph();
		paragraph6.add("Auto-Renewal:"+fdeposit.getAutoRenewal());
		
		Paragraph paragraph7 = new Paragraph();
		paragraph7.add("Deposited-Date:"+fdeposit.getDepositDate());
		Paragraph paragraph9 = new Paragraph();
		paragraph9.add("Maturity-Date:"+matDate);
		
		paragraph.setAlignment(Element.ALIGN_CENTER);
		document.add(paragraph);
		document.add(paragraph1);
		document.add(paragraph2);
		document.add(paragraph3);
		document.add(paragraph4);
		document.add(paragraph5);
		document.add(paragraph6);
		document.add(paragraph7);
		document.add(paragraph9);

		

		document.close();
	} catch (FileNotFoundException e) {
		e.printStackTrace();
	} catch (DocumentException e) {
		e.printStackTrace();
	}

}
public void ITextWritePdfFile1(RecurringDeposit rdeposit,Date matDate,float interest,int recurringDepositId){
	try {
		System.out.println("In pdf");
		File file = new File("D:\\Test2.pdf");
		FileOutputStream fileout = new FileOutputStream(file);
		Document document = new Document();
		PdfWriter.getInstance(document, fileout);
		document.addAuthor("Me");
		document.addTitle("My iText Test");

		document.open();

		Chunk chunk = new Chunk("iText Test");
		Font font = new Font(Font.COURIER);
		font.setStyle(Font.UNDERLINE);
		font.setStyle(Font.ITALIC);
		chunk.setFont(font);
		chunk.setBackground(Color.CYAN);
		document.add(chunk);

		Paragraph paragraph = new Paragraph();
		paragraph.add("CustomerId:"+rdeposit.getCustomerId());
		Paragraph paragraph1 = new Paragraph();
		paragraph1.add("Recurring Deposit Id:"+recurringDepositId);
		Paragraph paragraph2 = new Paragraph();
		paragraph2.add("Tenure:"+rdeposit.getTenure());
		Paragraph paragraph3 = new Paragraph();
		paragraph3.add("Account Number:"+rdeposit.getAccountNo());
		Paragraph paragraph4 = new Paragraph();
		paragraph4.add("Amount:"+rdeposit.getAmount());
		Paragraph paragraph5 = new Paragraph();
		paragraph5.add("Interest:"+interest);
		Paragraph paragraph6= new Paragraph();
		paragraph6.add("Auto-Debit:"+rdeposit.getAutoDebit());
		
		Paragraph paragraph7 = new Paragraph();
		paragraph7.add("Deposited-Date:"+rdeposit.getDepositDate());
		Paragraph paragraph9 = new Paragraph();
		paragraph9.add("Maturity-Date:"+matDate);
		
		paragraph.setAlignment(Element.ALIGN_CENTER);
		document.add(paragraph);
		document.add(paragraph1);
		document.add(paragraph2);
		document.add(paragraph3);
		document.add(paragraph4);
		document.add(paragraph5);
		document.add(paragraph6);
		document.add(paragraph7);
		document.add(paragraph9);

		

		document.close();
	} catch (FileNotFoundException e) {
		e.printStackTrace();
	} catch (DocumentException e) {
		e.printStackTrace();
	}

}
// service request method from sathya


public  ArrayList<Request> viewRequestsByCustomer(int cust_id) throws SQLException
{
	ArrayList<Request> Rlist = new ArrayList<Request>();
		try{
			Connection con = DBUtil.getConnection();
			PreparedStatement ps = null;
			ResultSet rs = null;
		System.out.println(cust_id);
		ps=con.prepareStatement("select EMP_ID,REQ_NO,STATUS from TBL_REQUEST where CUCTOMER_ID=?");
		ps.setInt(1,cust_id);
		rs=ps.executeQuery();
		while(rs.next()){
			int id=rs.getInt(1);
			System.out.println(id);
			int reqid=rs.getInt(2);
			String status=rs.getString(3);
			
		Request req = new Request();
		req.setEmp_id(id);
		req.setReq_no(reqid);
		req.setStatus(status);
		
		req.setStatus(status);
		//req.setEmp_id(empid);
			Rlist.add(req);
		
			
			}
			//rs.close();
			DBUtil.closeStatement(ps);
		
			DBUtil.closeConnection(con);
		
	}catch(Exception e1){
		System.out.println("Exception 2 caught");
		e1.printStackTrace();
	}
		
		return Rlist;
	}
public double fetchBalance1(int customerId,long accountNo) throws SQLException{
	Connection conn = DBUtil.getConnection();
	PreparedStatement ps = null;
	ResultSet rs = null; 
	double balance=0;
	ps=conn.prepareStatement("SELECT CURRENTBALANCE FROM TBL_ACCOUNTDETAILS WHERE CUSTOMERID=? AND ACCOUNTNO=?");
	ps.setInt(1, customerId);
	ps.setLong(2, accountNo);
	rs=ps.executeQuery();
	while(rs.next()){
		balance=rs.getDouble(1);
	}
	return balance;
}


public String password(){
	SecureRandom random = new SecureRandom();
	String key =new BigInteger(30, random).toString(32);
	return key;
}
}





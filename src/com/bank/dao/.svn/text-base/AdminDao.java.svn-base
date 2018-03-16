package com.bank.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.bank.model.Account;
import com.bank.model.Beneficiary;
import com.bank.model.Customer;
import com.bank.model.Employee;
import com.bank.util.DBUtil;
import com.bank.util.DatabaseUtil;

public class AdminDao {
  public  ArrayList<Beneficiary> viewRequests() throws SQLException
  {
	  ArrayList<Beneficiary> beneficiaries = new ArrayList<Beneficiary>();
	  Connection conn = DBUtil.getConnection();
		PreparedStatement ps= null;
		//PreparedStatement ps1= null;
		int i=0;
		ResultSet rs=null;
		
	    ps=conn.prepareStatement("SELECT * FROM TBL_ADMIN_BENEFICIARY");
	    rs = ps.executeQuery();
	  
	    System.out.println("Hello"+i);
	    
	    while(rs.next()){
	    	
	    	Beneficiary beneficiary = new Beneficiary();
	    	beneficiary.setRequestNo(rs.getInt(1));
	    	System.out.println("RequestNo:"+rs.getInt(1));
	    	beneficiary.setCustomerId(rs.getInt(2));
	    	beneficiary.setBeneficiaryName(rs.getString(3));
	    	beneficiary.setAccountNo(rs.getLong(4));
	    	beneficiary.setBankName(rs.getString(5));
	    	beneficiary.setBranch(rs.getString(6));
	    	beneficiary.setIfscCode(rs.getInt(7));
	    	beneficiary.setEmail(rs.getString(8));
	    	beneficiaries.add(beneficiary);
	    	}
	    
	   return beneficiaries;
  }
  public boolean addBeneficiary(int requestid) throws SQLException{
	  Connection conn = DBUtil.getConnection();
		PreparedStatement ps= null;
		PreparedStatement ps1= null;
		int res=0;
		PreparedStatement ps2= null;
		ResultSet rs = null;
		String status="ACTIVE";
		boolean added = false;
		ps1=conn.prepareStatement("SELECT * FROM TBL_ADMIN_BENEFICIARY WHERE REQUESTID=?");
		ps1.setInt(1, requestid);
		rs=ps1.executeQuery();
		if(rs.next()){
	
		ps=conn.prepareStatement("INSERT INTO TBL_CUSTOMER_BENEFICIARY VALUES(?,?,?,?,?,?,?,?)");
		
		ps.setInt(1, rs.getInt(2));
		ps.setString(2,rs.getString(3));
		ps.setLong(3, rs.getLong(4));
		ps.setString(4, rs.getString(5));
		ps.setString(5, rs.getString(6));
		ps.setInt(6,rs.getInt(7));
		ps.setString(7, rs.getString(8));
		ps.setString(8, status);
		ps.executeUpdate();
		res=1;
		conn.commit();
		if(res>0){
		ps2=conn.prepareStatement("DELETE FROM TBL_ADMIN_BENEFICIARY WHERE REQUESTID=?");
		ps2.setInt(1, requestid);
		ps2.execute();
		added=true;
		}
  }return added;
  }
  public boolean updateDelete(int req) throws SQLException{
	  Connection conn = DBUtil.getConnection();
		PreparedStatement ps= null;
		PreparedStatement ps1= null;
		ResultSet rs = null;
		String branch="";
		String status = "INACTIVE";
		boolean done=false;
		long acc=0;
		int ifsc=0;
		String type="";
		ps1 = conn.prepareStatement("SELECT * FROM TBL_ADMIN_UPDATE WHERE REQUESTID=?");
		ps1.setInt(1, req);
		rs=ps1.executeQuery();
		while(rs.next()){
			acc=rs.getLong(2);
			System.out.println(acc);
			branch=rs.getString(4);
			System.out.println(branch);
			ifsc=rs.getInt(6);
			System.out.println(ifsc);
			type=rs.getString(7);
			System.out.println(type);
		}
		if(type.equals("update")){
		ps=conn.prepareStatement("UPDATE TBL_ACCOUNTDETAILS SET BRANCH=?,IFSCCODE=? WHERE ACCOUNTNO=?");
		ps.setString(1, branch);
		ps.setInt(2, ifsc);
		ps.setLong(3, acc);
		ps.execute();
		done = true;
		}else{
			ps=conn.prepareStatement("UPDATE TBL_ACCOUNTDETAILS SET STATUS=? WHERE ACCOUNTNO=?");
			ps.setString(1, status);
			ps.setLong(2, acc);
			ps.execute();
			done = true;
		}
		if(done){
			ps1 = conn.prepareStatement("DELETE FROM TBL_ADMIN_UPDATE WHERE REQUESTID=?");
			ps1.setInt(1, req);
			ps1.execute();
		}
		return done;
  }
  public ArrayList<Account> viewUpdateDelete() throws SQLException{
		System.out.println("in view add requesr dao 1");
		 
		 ArrayList<Account> accountList1=new ArrayList<Account>();
		  Connection conn = DBUtil.getConnection();
			PreparedStatement ps= null;
			ResultSet rs = null;
			ps=conn.prepareStatement("SELECT * FROM TBL_ADMIN_UPDATE");
			
			rs=ps.executeQuery();
			while(rs.next()){
				 Account account=new Account();
				account.setCustomerID(rs.getInt(1));
				account.setAccountNo(rs.getLong(2));
				account.setBankName(rs.getString(3));
				account.setBranch(rs.getString(4));
				account.setCurrentBalance(rs.getDouble(5));
				account.setIfscCode(rs.getInt(6));
				account.setType(rs.getString(7));
				account.setRequest(rs.getInt(8));
				accountList1.add(account);
				
			}
			return accountList1;
	  
  }
  public ArrayList<Account> viewAddRequest1() throws SQLException{
	System.out.println("in view add requesr dao 1");
	 
	 ArrayList<Account> accountList1=new ArrayList<Account>();
	  Connection conn = DBUtil.getConnection();
		PreparedStatement ps= null;
		ResultSet rs = null;
		ps=conn.prepareStatement("SELECT * FROM TBL_ACCOUNTDUMMY");
		System.out.println("before query");
		rs=ps.executeQuery();
		while(rs.next()){
			 Account account=new Account();
			account.setCustomerID(rs.getInt(1));
			account.setAccountNo(rs.getLong(2));
			account.setBankName(rs.getString(3));
			account.setBranch(rs.getString(4));
			account.setCurrentBalance(rs.getDouble(5));
			account.setIfscCode(rs.getInt(6));
			
			accountList1.add(account);
			
		}
		return accountList1; }
  
  
  public boolean addAccount1(int accNo) throws SQLException{
	  Connection conn = DBUtil.getConnection();
		System.out.println("in add account 1222222");
	  PreparedStatement ps= null;
		ResultSet rs = null;
		PreparedStatement ps1= null;
		boolean added = false;
		int res=0;
		String status="ACTIVE";
		System.out.println(accNo);
		ps=conn.prepareStatement("SELECT * FROM TBL_ACCOUNTDUMMY WHERE ACCOUNTNO=?");
		System.out.println("asdssafsf");
		ps.setInt(1,accNo);
		rs=ps.executeQuery();
		if(rs.next()){
			
			ps=conn.prepareStatement("INSERT INTO TBL_ACCOUNTDETAILS VALUES(?,?,?,?,?,?,?)");
			System.out.println("asd12324244s");
			ps.setInt(1, rs.getInt(1));
			ps.setLong(2,rs.getLong(2));
			ps.setString(3, rs.getString(3));
			ps.setString(4, rs.getString(4));
			ps.setDouble(5, rs.getDouble(5));
			ps.setInt(6,rs.getInt(6));
			ps.setString(7, status);
		
			ps.executeUpdate();
			res=1;
			conn.commit();
			if(res>0){
				System.out.println("adsfv686gn3543");
			ps1=conn.prepareStatement("DELETE FROM TBL_ACCOUNTDUMMY WHERE ACCOUNTNO=?");
			ps1.setInt(1, accNo);
			ps1.execute();
			added=true;
			}
	  }return added;
  }

  public boolean autoDebit() throws SQLException{
	  Connection conn = DBUtil.getConnection();
	  PreparedStatement ps= null;
	  PreparedStatement ps1= null;
	  PreparedStatement ps2= null;
	  PreparedStatement ps3= null;
	  PreparedStatement ps4= null;
	  PreparedStatement ps5= null;
		ResultSet rs = null;
		ResultSet rs1 = null;
		ResultSet rs2 = null;
		ResultSet rs3 = null;
		ResultSet rs4 = null;
		Date dt = new Date();
		Date depoDate=null;
		int month=0;
		int month1=0;
		long accountNo=0;
		int tenure=0;
		float interest=0;
		int id=0;
		int customerId=0;
		double amount=0;
		String auto="YES";
		boolean done=false;
		boolean updated=false;
		System.out.println("object"+dt.toString());
		int day= Integer.parseInt((dt).toString().substring(8,10));
		System.out.println("day "  +day);
		ps1=conn.prepareStatement("SELECT CURRENT_DATE FROM DUAL");
		rs = ps1.executeQuery();
		while(rs.next()){
			depoDate=rs.getDate(1);
			month=depoDate.getMonth()+1;
		    System.out.println("depoDate:"+month);
		}
		ps=conn.prepareStatement("SELECT * FROM TBL_RECURRINGDEPOSIT WHERE DEBIT_DAY=? AND AUTO_DEBIT='YES'");
		ps.setInt(1, day);
		rs1=ps.executeQuery();
		
		while(rs1.next()){
			id=rs1.getInt(1);
			customerId=rs1.getInt(2);
			amount=rs1.getDouble(5);
			tenure=rs1.getInt(4);
			accountNo=rs1.getLong(3);
			System.out.println("AccountNo:"+accountNo);
			month1=rs1.getDate(6).getMonth()+1;
			ps5=conn.prepareStatement("SELECT CURRENTBALANCE FROM TBL_ACCOUNTDETAILS WHERE CUSTOMERID=? AND ACCOUNTNO=?");
		   	ps5.setInt(1, customerId);
		   	ps5.setLong(2, accountNo);
		   	rs=ps5.executeQuery();
		   	while(rs.next()){
		   	if(rs.getDouble(1)>=amount){	
		   	
			if(month1!=month){
				ps2=conn.prepareStatement("SELECT AGE FROM TBL_CUSTOMERDETAILS WHERE CUSTOMERID=?");
				
				ps2.setInt(1, rs1.getInt(2));
				rs2=ps2.executeQuery();
				while(rs2.next()){
					int age=rs2.getInt(1);
					if (age < 60) {
						System.out.println("entered age");
						System.out.println("tenure"+tenure);
						ps3 = conn.prepareStatement("SELECT INDIVIDUAL_RATE FROM TBL_INTERESTGRT10 WHERE ?>=TENURE_START AND ?<=TENURE_END");
						ps3.setInt(1, tenure);
						ps3.setInt(2, tenure);
						rs3 = ps3.executeQuery();
						boolean f=rs3.next();
						System.out.println("queryexecuted");
						    if(f)
						    {
						    	System.out.println("Enters into next");
							    interest = rs3.getFloat(1);
							System.out.println("interest1"+interest);
						    }
					} else {
						ps3 = conn
								.prepareStatement("SELECT SENIOR_RATE FROM TBL_INTERESTGRT10 WHERE TENURE_START<=? AND TENURE_END>=?");
						ps3.setInt(1, tenure);
						ps3.setInt(2, tenure);
						rs3 = ps1.executeQuery();
						boolean f=rs3.next();
						if (f) {
							interest =  rs3.getFloat(1);
							System.out.println("interest2"+interest);
						}

					}
					ps4=conn.prepareStatement("UPDATE TBL_RECURRINGDEPOSIT SET MONTH_AMOUNT=MONTH_AMOUNT+? WHERE RECURRINGID=?");
					ps4.setDouble(1, amount);
					ps4.setInt(2, id);
					ps4.executeUpdate();
					updated=true;
					if(updated){
					ps5=conn.prepareStatement("UPDATE TBL_ACCOUNTDETAILS SET CURRENTBALANCE=CURRENTBALANCE-? WHERE CUSTOMERID=? AND ACCOUNTNO=?");
					ps5.setDouble(1, amount);
					ps5.setInt(2, customerId);
					ps5.setLong(3, accountNo);
					ps5.executeUpdate();
					done=true;
					}
				}
			}
		   	}else{
		   		done=false;
		   	}
		   	}
		}return done;
  }

  public ArrayList<Customer> viewUpdateRequest1() throws SQLException{
		System.out.println("in view update requesr dao 1");
		 
		 ArrayList<Customer> accountList2=new ArrayList<Customer>();
		  Connection conn = DBUtil.getConnection();
			PreparedStatement ps= null;
			ResultSet rs = null;
			ps=conn.prepareStatement("SELECT * FROM TBL_CustomerDetailsDummy");
			System.out.println("before query");
			rs=ps.executeQuery();
			while(rs.next()){
				 Customer c=new Customer();
				c.setCustomerId(rs.getInt(1));
				 c.setCustomerName(rs.getString(2));
					c.setAge(rs.getInt(3));
					c.setAddress(rs.getString(4));
					c.setOccupation(rs.getString(5));
					c.setSalary(rs.getDouble(6));
					c.setPan(rs.getString(7));
					c.setEmailId(rs.getString(8));
					c.setPhoneNo(rs.getLong(9));
					c.setDob(rs.getDate(10));
					 ps.executeUpdate();
				
				accountList2.add(c);
				
			}
			return accountList2; }
  public boolean rejectUpdateDelete(int req) throws SQLException{
	  boolean yes=false;
	  Connection conn = DBUtil.getConnection();
			PreparedStatement ps= null;
			ps = conn.prepareStatement("DELETE FROM TBL_ADMIN_UPDATE WHERE REQUESTID=?");
			ps.setInt(1, req);
			ps.execute();
			yes=true;
			return yes;
	  
  }
  public boolean updateRequest1(int custerId) throws SQLException{
	  Connection conn = DBUtil.getConnection();
		System.out.println("in add account 1222222");
	  PreparedStatement ps= null;
		ResultSet rs = null;
		PreparedStatement ps1= null;
		boolean added = false;
		int res=0;
		System.out.println(custerId);
		ps=conn.prepareStatement("SELECT * FROM TBL_CustomerDetailsDummy WHERE CUSTOMERID=?");
		System.out.println("asdssafsf");
		ps.setInt(1,custerId);
		rs=ps.executeQuery();
		if(rs.next()){
			
			ps=conn.prepareStatement("UPDATE TBL_CustomerDetails SET customerName=?,age=?,address=?,occupation=?,salary=?,emailId=?,phoneNo=?,dob=? where customerId=?");
			System.out.println("asd12324244s");
			ps.setString(1, rs.getString(2));
			ps.setInt(2,rs.getInt(3));
			ps.setString(3, rs.getString(4));
			ps.setString(4, rs.getString(5));
			ps.setDouble(5, rs.getDouble(6));
			ps.setString(6,rs.getString(8));
			ps.setLong(7,rs.getLong(9));
			ps.setDate(8,rs.getDate(10));
			ps.setInt(9,custerId);
			ps.executeUpdate();
			res=1;
			conn.commit();
			if(res>0){
				System.out.println("adsfv686gn3543");
			ps1=conn.prepareStatement("DELETE FROM TBL_CustomerDetailsDummy where customerId=?");
			ps1.setInt(1, custerId);
			ps1.execute();
			added=true;
			}
	  }return added;
  }
  public boolean rejectBeneficiary(int requestid) throws SQLException{
	  Connection conn = DBUtil.getConnection();
	
		PreparedStatement ps2= null;
	    boolean added = false;
        ps2=conn.prepareStatement("DELETE FROM TBL_ADMIN_BENEFICIARY WHERE REQUESTID=?");
		ps2.setInt(1, requestid);
		ps2.execute();
		added=true;
		conn.commit();
  return added;
  }

  public int createEmployee(Employee e){
	int load=0; customerDao p=new customerDao();
	  Connection con=null;
		PreparedStatement ps=null;
		PreparedStatement ps1=null;
		int id=0;
		ResultSet rs=null;

		try{
			String key=p.password();
		con=DatabaseUtil.getConnection();
		ps=con.prepareStatement("INSERT INTO  tbl_EmployeeDetails values(seq_employee.nextval,?,?,?,?,?)");
		
		ps.setString(1,e.getEmployeeName());
		ps.setString(2,e.getEmail());
		ps.setLong(3,e.getContactNo());
		ps.setString(4,key);
		ps.setInt(5,load);
		System.out.println(ps.executeUpdate());
		ps1=con.prepareStatement("select seq_employee.currval from dual ");
		rs=ps1.executeQuery();
		while(rs.next()){
			 id=rs.getInt(1);
			
			 e.setPassword(key);
			 e.setEmployeeId(id);
		}
		//rs.close();
		DatabaseUtil.closeStatement(ps1);
		DatabaseUtil.closeStatement(ps);
		DatabaseUtil.closeConnection(con);
		
		}
		catch(Exception ex){
			System.out.println("exception caught");
			ex.printStackTrace();
		}
		return id;
	}
}

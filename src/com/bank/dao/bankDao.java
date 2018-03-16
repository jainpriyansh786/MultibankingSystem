package com.bank.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.bank.model.Bank;
import com.bank.model.Branch;
import com.bank.util.DBUtil;

public class bankDao {

	public boolean addBranch(Branch branch,int bankId) throws SQLException {
boolean flag=true;

System.out.println("in add branch");
		Connection conn = DBUtil.getConnection();
		PreparedStatement createBankPS = null;
		PreparedStatement seqPS = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
		boolean added=false;
		try {
			ps = conn
					.prepareStatement("select * from TBL_BranchDetails where ifscCode=?");
			ps.setInt(1, branch.getIfscCode());
			rs = ps.executeQuery();
			if (!rs.next()) {
                System.out.println("rsnext");
				String createCustomerQuery = "insert into TBL_BranchDetails VALUES(?,?,?,?,?,?)";
				
				System.out.println("fdsgdfgdfh");
				createBankPS = conn.prepareStatement(createCustomerQuery);
				System.out.println("after query");
				System.out.println(bankId);
				createBankPS.setInt(1,bankId);
				createBankPS.setString(2, branch.getBranch());
				createBankPS.setInt(3, branch.getIfscCode());
				createBankPS.setString(4, branch.getLocation());
				createBankPS.setString(5, branch.getContactPerson());
				createBankPS.setLong(6, branch.getContactNo());
				createBankPS.executeUpdate();
				System.out.println("Inserted successfully");
				conn.commit();
				added=true;

				
			}
			
		} catch (SQLException e) {
			System.out.println("Exception occured while create branch operation");
			e.printStackTrace();
		} finally {
			DBUtil.closeResultSet(rs);
			DBUtil.closeStatement(createBankPS);
			DBUtil.closeStatement(seqPS);
			DBUtil.closeConnection(conn);
		}

	return added;}

	public Bank createBank(Bank bank) throws SQLException {
		
		Connection conn = DBUtil.getConnection();
		PreparedStatement createBankPS = null;
		PreparedStatement seqPS = null;
		ResultSet rs = null;
		int bankId = 0;
		long password = 0;
		PreparedStatement ps = null;

		try {
			ps = conn
					.prepareStatement("select * from TBL_BankDetails where bankName=?");
			ps.setString(1, bank.getBankName());
			rs = ps.executeQuery();
			if (!rs.next()) {
				String createCustomerQuery = "insert into TBL_BankDetails VALUES(BankId_Sequence.nextval,BankPassword_Sequence.nextval,?)";
				createBankPS = conn.prepareStatement(createCustomerQuery);
				createBankPS.setString(1, bank.getBankName());

				createBankPS.executeUpdate();
				conn.commit();

				seqPS = conn
						.prepareStatement("Select BankId_Sequence.currval,BankPassword_Sequence.currval from TBL_BankDetails");
				rs = seqPS.executeQuery();
				if (rs != null && rs.next()) {
					bankId = rs.getInt(1);
					password = rs.getLong(2);
					bank.setBankId(bankId);
					bank.setPassword(password);
					
				}
			} else {
				bankId = 0;
				password = 0;
				bank.setBankId(bankId);
				bank.setPassword(password);
				
			}

		} catch (SQLException e) {
			System.out.println("Exception occured while create bank operation");
			e.printStackTrace();
		} finally {
			DBUtil.closeResultSet(rs);
			DBUtil.closeStatement(createBankPS);
			DBUtil.closeStatement(seqPS);
			DBUtil.closeConnection(conn);
		}

		return bank;
	}
	
public int getPassword(int bankId) throws SQLException{
		
		int password1=0;
		Connection conn = DBUtil.getConnection();
		ResultSet rs = null;
		
		PreparedStatement ps = null;
		try {
			ps = conn
					.prepareStatement("select password from TBL_BankDetails where bankId=?");
			ps.setInt(1,bankId);
			rs = ps.executeQuery();
			if(rs.next()){
			
			 password1=rs.getInt(1);
			}
			
			else{
				password1=0;
			}
			
			
		
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return password1;
}
public ArrayList<Branch>viewBranch(int bankId) throws SQLException
{
	   ArrayList<Branch> branchList =new ArrayList<Branch>();
	   Connection conn=DBUtil.getConnection();
	   PreparedStatement preparedStatement=null;
	   ResultSet rs=null;
	   try
	   {
		   preparedStatement=conn.prepareStatement("SELECT * FROM TBL_BRANCHDETAILS WHERE BANKID=?");
		   preparedStatement.setInt(1, bankId);
		     rs=preparedStatement.executeQuery();
		   while(rs.next())
		   {
			   
			  // System.out.println(customerId1);
				String branch=rs.getString(2);
				//System.out.println(customerName);
				int ifscCode=rs.getInt(3);
				//System.out.println("age");
				String location=rs.getString(4);
				String contactPerson=rs.getString(5);
				long contactNo = rs.getLong(6);
				
			   
			   
			   Branch branch1 = new Branch();
			   branch1.setBankId(bankId);
			   branch1.setBranch(branch);
			   branch1.setIfscCode(ifscCode);
			   branch1.setLocation(location);
			   branch1.setContactPerson(contactPerson);
			   branch1.setContactNo(contactNo);
				branchList.add(branch1);
            
            
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
	  
	   return branchList;
}

}

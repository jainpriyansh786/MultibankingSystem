package com.bank.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bank.model.Account;
import com.bank.util.DBUtil;


public class AccountDao {
	public ArrayList<Account>viewAccount() throws SQLException
	   {
		   ArrayList<Account> accountList =new ArrayList<Account>();
		   Connection conn=DBUtil.getConnection();
		   PreparedStatement preparedStatement=null;
		   ResultSet rs=null;
		   try
		   {
			   System.out.println("im dao");
			   preparedStatement=conn.prepareStatement("SELECT * FROM TBL_ACCOUNTDETAILS");
			     rs=preparedStatement.executeQuery();
			   while(rs.next())
			   {
				   int customerId=rs.getInt(1);
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


}

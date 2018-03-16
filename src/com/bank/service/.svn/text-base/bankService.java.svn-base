package com.bank.service;

import java.sql.SQLException;
import java.util.ArrayList;


import com.bank.dao.bankDao;
import com.bank.model.Bank;
import com.bank.model.Branch;

public class bankService {
	
		bankDao dao = new bankDao();

		public Bank registerBank(Bank bank)
				throws SQLException {
			Bank bank2 = dao.createBank(bank);
			return bank2;
		}
	

		public boolean registerBranch(Branch branch,int bankId)
				throws SQLException {
			System.out.println("fdhfbranch service");
			boolean flag1=dao.addBranch(branch,bankId);
			return flag1;
		}

		public int getBankPassword(int bankId1) throws SQLException{
			
			return dao.getPassword(bankId1);
			
		}
		public ArrayList<Branch> viewBranch(int bankId) throws Exception
		{
			// Connect DAO to Search
			
			
			 
			ArrayList<Branch> branchList = dao.viewBranch(bankId);
			return branchList;
		}


}


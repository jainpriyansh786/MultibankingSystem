package com.bank.service;

import java.util.ArrayList;

import com.bank.dao.AccountDao;
import com.bank.model.Account;

public class AccountService {

	public ArrayList<Account> viewAccount() throws Exception
	{
		// Connect DAO to Search
		
		AccountDao customerdao = new AccountDao();
		 
		ArrayList<Account> accountList = customerdao.viewAccount();
		return accountList;
	}
}

package com.bank.service;


import java.sql.SQLException;
import java.util.ArrayList;

import com.bank.dao.AdminDao;
import com.bank.model.Account;
import com.bank.model.Beneficiary;
import com.bank.model.Customer;
import com.bank.model.Employee;

public class AdminService {
	AdminDao admin = new AdminDao();
	public ArrayList<Beneficiary> viewRequests() throws SQLException
	{
		ArrayList<Beneficiary> beneficiaries = new ArrayList<Beneficiary>();
		beneficiaries = admin.viewRequests();
		return beneficiaries;
	}
	public boolean addBeneficiary(int requestid) throws SQLException{
		
		return admin.addBeneficiary(requestid);
	}
public boolean rejectBeneficiary(int requestid) throws SQLException{
		
		return admin.rejectBeneficiary(requestid);
	}
public ArrayList<Account> viewAddRequest() throws SQLException{
		System.out.println("in service of view");
		return admin.viewAddRequest1();
	}
public boolean addAccount2(int accNo) throws SQLException{
	System.out.println("in service of view11111111111");
	return admin.addAccount1(accNo);
}

public boolean autoDebit() throws SQLException{
	return admin.autoDebit();
}
public ArrayList<Customer> viewUpdateRequest() throws SQLException{
	System.out.println("in service of  update view");
	return admin.viewUpdateRequest1();



}
public boolean rejectUpdateDelete(int req) throws SQLException{
	return admin.rejectUpdateDelete(req);
}
public boolean updateDelete(int req) throws SQLException{
	return admin.updateDelete(req);
}
public boolean updateRequest(int customerId) throws SQLException{
	System.out.println("in service of view11111111111");
	return admin.updateRequest1(customerId);
}

public ArrayList<Account> viewUpdateDelete() throws SQLException{
	return admin.viewUpdateDelete();
}

public int createEmployee (Employee e){
	
	return admin.createEmployee(e);
}
}


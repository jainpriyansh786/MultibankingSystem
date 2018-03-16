package com.bank.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.bank.dao.CustomerRequestDao;
import com.bank.model.PreFd;
import com.bank.model.PreRD;
import com.bank.model.Request;

public class CustomerRequestService {
	CustomerRequestDao adao=new CustomerRequestDao();
	public int insertRequest(Request req){
		
		return adao.insertRequest(req);
	}
	public ArrayList<Request> viewRequest() throws SQLException{
		
		return adao.viewRequests();
	}
	public  ArrayList<Request> updateRequest(int parameters){
		
		return adao.updateRequest(parameters);
		
	}
	public ArrayList<Request> viewRequestsByCustomer(int cust_id)throws SQLException{
		
		return adao.viewRequestsByCustomer(cust_id);
	}
	public ArrayList<Request> viewRequestsByEmployee(int emp_id)throws SQLException{

		return adao.viewRequestsByEmployee(emp_id);
	}
	
	public  PreFd readPreFd(int fdid,int custid) throws Exception
	{
		// Connect DAO to create
		System.out.println("service class");
		 
		 return adao.readPreFd(fdid,custid);
		
	}
	public  int createPreFd(PreFd prefd) throws Exception
	{
		// Connect DAO to create
		System.out.println("service class");
		
		 return adao.createSRfix(prefd);
		
	}
	
	public  PreRD readPreRD(int fdid,int custid) throws Exception
	{
		// Connect DAO to create
		System.out.println("service class");
		
		 return adao.readPreRd(fdid,custid);
		
	}
	public  int createSRrec(PreRD prerd) throws Exception
	{
		// Connect DAO to create
		System.out.println("service class");
	
		 return adao.createSRrec(prerd);
		
	}
	
	
	public boolean closeRequest(int requestId,int empId) throws SQLException{
		return adao.closeRequest1(requestId, empId);
	}
	
	

	public String getEmployeePassword(int employeeId1) throws SQLException{
		return adao.getEmployeePassword1(employeeId1);
	}
}

package com.bank.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.bank.dao.Admin_dao;
import com.bank.model.Request;

public class Admin_service {
	public int insertRequest(Request req){
		Admin_dao adao=new Admin_dao();
		return adao.insertRequest(req);
	}
	public ArrayList<Request> viewRequest() throws SQLException{
		Admin_dao adao = new Admin_dao();
		return adao.viewRequests();
	}
	public  ArrayList<Request> updateRequest(int parameters,int replace){
		Admin_dao adao=new Admin_dao();
		return adao.updateRequest(parameters,replace);
		
	}
	public ArrayList<Request> viewRequestsByCustomer(int cust_id)throws SQLException{
		Admin_dao adao = new Admin_dao();
		return adao.viewRequestsByCustomer(cust_id);
	}
	public ArrayList<Request> viewRequestsByEmployee(int emp_id)throws SQLException{
		Admin_dao adao = new Admin_dao();
		return adao.viewRequestsByEmployee(emp_id);
	}
}

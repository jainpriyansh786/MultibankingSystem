package com.bank.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bank.model.Employee;
import com.bank.model.Request;
import com.bank.util.DatabaseUtil;

public class Admin_dao {
	Connection con=null;
	PreparedStatement ps=null;
	PreparedStatement ps1=null;

	ResultSet rs=null;
	public int insertRequest(Request r){
		int x=0;
		try{
		int id=5555;
	
		con=DatabaseUtil.getConnection();
		String status="open";
		ps=con.prepareStatement("INSERT INTO  TBL_REQUEST(REQ_NO,REQ_TYPE ,REQ_DESCRIPTION,	STATUS,EMP_ID,CUCTOMER_ID) values(REQ_SEQ.nextval,?,?,?,?,?)");

		ps.setString(1, r.getReq_type());
		ps.setString(2,r.getReq_des());
		ps.setString(3, status);	
		ps.setInt(4,r.getEmp_id());
		ps.setInt(5, id);
		ps.executeUpdate();
		ps1=con.prepareStatement("select REQ_SEQ .currval  from dual ");
		rs=ps1.executeQuery();
		while(rs.next()){
			x=rs.getInt(1);
			System.out.println("MYId:"+x);
		}
		//rs.close();
		DatabaseUtil.closeStatement(ps1);
		DatabaseUtil.closeStatement(ps);
		DatabaseUtil.closeConnection(con);
		
		}
		catch(Exception e){
			System.out.println("exception caught");
			e.printStackTrace();
		}
		return x;
	}
	public  ArrayList<Request> viewRequests() throws SQLException
	  {
		ArrayList<Request> Rlist = new ArrayList<Request>();
			try{
			con=DatabaseUtil.getConnection();
			ps=con.prepareStatement("select * from TBL_REQUEST ");
			rs=ps.executeQuery();
			while(rs.next()){
				int id=rs.getInt(1);
				System.out.println(id);
				String req_typ=rs.getString(2);
				String req_des=rs.getString(3);
				String status=rs.getString(4);
				//int empid =rs.getInt(5);
			Request req = new Request();
			req.setReq_no(id);
			req.setReq_type(req_typ);
			req.setReq_des(req_des);
			req.setStatus(status);
			//req.setEmp_id(empid);
				Rlist.add(req);
			
				
				}
				//rs.close();
				DatabaseUtil.closeStatement(ps);
				DatabaseUtil.closeStatement(ps1);
				DatabaseUtil.closeConnection(con);
			
		}catch(Exception e1){
			System.out.println("Exception 2 caught");
			e1.printStackTrace();
		}
			/*for (Customer c : cList) {
				System.out.println("customer name="+c.getName());
			}*/
			return Rlist;
		}
	public ArrayList<Request> updateRequest(int parameters,int replace){
		int x=0;
		ArrayList<Request> Rlist = new ArrayList<Request>();
		try{
		
		con=DatabaseUtil.getConnection();
		ps=con.prepareStatement("UPDATE TBL_REQUEST  SET EMP_ID=?,STATUS=? WHERE REQ_NO =?");
		ps.setInt(1,parameters);
		ps.setInt(3,replace);
		ps.setString(2,"wip");
	    rs=ps.executeQuery();
	    ps1=con.prepareStatement("select * from TBL_REQUEST ");
     
        rs=ps1.executeQuery();
        while(rs.next()){
			int id=rs.getInt(1);
			String req_typ=rs.getString(2);
			String req_des=rs.getString(3);
			String status=rs.getString(4);
			int empid =rs.getInt(5);
			Request req = new Request();
			req.setReq_no(id);
			req.setReq_type(req_typ);
			req.setReq_des(req_des);
			req.setStatus(status);
			System.out.println("status");
			req.setEmp_id(empid);
			Rlist.add(req);
		
			
			}
        rs.close();
        DatabaseUtil.closeStatement(ps1);
        DatabaseUtil.closeStatement(ps);
        DatabaseUtil.closeConnection(con);
        }catch(Exception e){
			System.out.println("exception 3 caught");
			e.printStackTrace();
			
		}
		return Rlist;
		
	}

public  ArrayList<Request> viewRequestsByCustomer(int cust_id) throws SQLException
	  {
		ArrayList<Request> Rlist = new ArrayList<Request>();
			try{
			con=DatabaseUtil.getConnection();
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
				DatabaseUtil.closeStatement(ps);
				DatabaseUtil.closeStatement(ps1);
				DatabaseUtil.closeConnection(con);
			
		}catch(Exception e1){
			System.out.println("Exception 2 caught");
			e1.printStackTrace();
		}
			
			return Rlist;
		}

public  ArrayList<Request> viewRequestsByEmployee(int emp_id) throws SQLException
{
	ArrayList<Request> Rlist = new ArrayList<Request>();
		try{
		
		con=DatabaseUtil.getConnection();
		ps=con.prepareStatement("select REQ_NO,STATUS from TBL_REQUEST where EMP_ID=?");
		ps.setInt(1,emp_id);
		rs=ps.executeQuery();
		while(rs.next()){
			int id=rs.getInt(1);
			String status="close";
			
		Request req = new Request();
		req.setReq_no(id);
		
		req.setStatus(status);
		
		req.setStatus(status);
		//req.setEmp_id(empid);
			Rlist.add(req);
		
			
			}
			//rs.close();
			DatabaseUtil.closeStatement(ps);
			DatabaseUtil.closeStatement(ps1);
			DatabaseUtil.closeConnection(con);
		
	}catch(Exception e1){
		System.out.println("Exception 2 caught");
		e1.printStackTrace();
	}
		
		return Rlist;
	}



}

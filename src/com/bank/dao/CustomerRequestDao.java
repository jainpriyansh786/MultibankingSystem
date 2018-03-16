package com.bank.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.bank.model.PreFd;
import com.bank.model.PreRD;
import com.bank.model.Request;
import com.bank.util.DBUtil;

public class CustomerRequestDao {

	
	
	
	
	
	
	
	Connection con=null;
	PreparedStatement ps=null;
	PreparedStatement ps1=null;
ResultSet rs1=null;
ResultSet rs2=null;
	ResultSet rs=null;
	ResultSet rs4=null;
	public int insertRequest(Request r){
		int x=0;
		try{
		System.out.println("insert request");
	
		con=DBUtil.getConnection();
		String status="open";
		ps=con.prepareStatement("INSERT INTO  TBL_REQUEST(REQ_NO,REQ_TYPE ,REQ_DESCRIPTION,	STATUS,CUCTOMER_ID) values(REQ_SEQ.nextval,?,?,?,?)");

		ps.setString(1, r.getReq_type());
		ps.setString(2,r.getReq_des());
		ps.setString(3, status);	
	System.out.println(r.getCust_id());
		ps.setInt(4,r.getCust_id());
		ps.executeUpdate();
		ps1=con.prepareStatement("select REQ_SEQ .currval  from dual ");
		rs=ps1.executeQuery();
		while(rs.next()){
			x=rs.getInt(1);
			System.out.println("MYId:"+x);
		}
		//rs.close();
		DBUtil.closeStatement(ps1);
		DBUtil.closeStatement(ps);
		DBUtil.closeConnection(con);
		
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
			con=DBUtil.getConnection();
			ps=con.prepareStatement("select * from TBL_REQUEST where STATUS=? ");
			ps.setString(1,"open");
			rs=ps.executeQuery();
			while(rs.next()){
				int id=rs.getInt(1);
				System.out.println(id);
				String req_typ=rs.getString(2);
				System.out.println(req_typ);
				String req_des=rs.getString(3);
				String status=rs.getString(4);
				
				int customerId =rs.getInt(6);
			Request req = new Request();
			req.setReq_no(id);
			req.setReq_type(req_typ);
			req.setReq_des(req_des);
			req.setStatus(status);
			req.setCust_id(customerId);
				Rlist.add(req);
			
				
				}
				//rs.close();
				DBUtil.closeStatement(ps);
				DBUtil.closeStatement(ps1);
				DBUtil.closeConnection(con);
			
		}catch(Exception e1){
			System.out.println("Exception 2 caught");
			e1.printStackTrace();
		}
			/*for (Customer c : cList) {
				System.out.println("customer name="+c.getName());
			}*/
			return Rlist;
		}
	public ArrayList<Request> updateRequest(int requestId){
		int load=0;String employeeId=null;
		ArrayList<Request> Rlist = new ArrayList<Request>();
		try{
			con=DBUtil.getConnection();
			ps=con.prepareStatement("SELECT * FROM TBL_EMPLOYEEDETAILS WHERE LOAD = (SELECT MIN(LOAD) FROM TBL_EMPLOYEEDETAILS)");
			  rs4=ps.executeQuery();
			  rs4.next();
			System.out.println(rs4.getString("EMP_ID"));
			  System.out.println("before priyansh");
		//	 while(rs2.next()){
				  System.out.println("in while");
					 employeeId=rs4.getString("EMP_ID");
					 System.out.println(employeeId);
			  load=rs4.getInt("LOAD");
			  System.out.println(load);//}*/
		ps=con.prepareStatement("UPDATE TBL_REQUEST  SET EMP_ID=?,STATUS=? WHERE REQ_NO =?");
		ps.setString(1,employeeId);
		ps.setInt(3,requestId);
		ps.setString(2,"wip");
	    rs=ps.executeQuery();
	    ps1=con.prepareStatement("select * from TBL_REQUEST WHERE STATUS='open'");
     
        rs1=ps1.executeQuery();
        while(rs1.next()){
			int id=rs1.getInt(1);
			String req_typ=rs1.getString(2);
			String req_des=rs1.getString(3);
			String status=rs1.getString(4);
			int empid =rs1.getInt(5);
			Request req = new Request();
			req.setReq_no(id);
			req.setReq_type(req_typ);
			req.setReq_des(req_des);
			req.setStatus(status);
			System.out.println("status");
			req.setEmp_id(empid);
			Rlist.add(req);
		
			
			}
        ps=con.prepareStatement("UPDATE TBL_EMPLOYEEDETAILS SET LOAD=? WHERE EMP_ID=?");
        ps.setInt(1,load+1);
        ps.setString(2, employeeId);
        ps.executeQuery();
        rs.close();
        DBUtil.closeStatement(ps1);
        DBUtil.closeStatement(ps);
        DBUtil.closeConnection(con);
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
			con=DBUtil.getConnection();
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
				DBUtil.closeStatement(ps1);
				DBUtil.closeConnection(con);
			
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
		
		con=DBUtil.getConnection();
		ps=con.prepareStatement("select * from TBL_REQUEST where EMP_ID=? AND STATUS='wip'");
		ps.setInt(1,emp_id);
		rs=ps.executeQuery();
		while(rs.next()){
			int reqid=rs.getInt(1);
			String type=rs.getString(2);
			String des=rs.getString(3);
			String status=rs.getString(4);
			int customerid=rs.getInt(6);
		Request req = new Request();
		req.setReq_no(reqid);
		req.setStatus(status);
		req.setReq_type(type);
		req.setReq_des(des);
		req.setCust_id(customerid);
		
		//req.setEmp_id(empid);
			Rlist.add(req);
		
			
			}
			//rs.close();
			DBUtil.closeStatement(ps);
			DBUtil.closeStatement(ps1);
			DBUtil.closeConnection(con);
		
	}catch(Exception e1){
		System.out.println("Exception 2 caught");
		e1.printStackTrace();
	}
		
		return Rlist;
	}









public PreFd readPreFd(int id,int custId) throws SQLException
{
	
	Connection conn = DBUtil.getConnection();
	PreparedStatement preparedStatement1=null;
	PreparedStatement preparedStatement2 = null;
	ResultSet rs = null;
	ResultSet rs1 = null;
	PreFd prefd =new PreFd();
	
	try
	{
	preparedStatement1=conn.prepareStatement("SELECT AMOUNT, DEPOSITED_DATE FROM TBL_FIXEDDEPOSIT WHERE FIXEDID=?"); 
 	
	preparedStatement1.setInt(1, id);
	rs=preparedStatement1.executeQuery();

    while(rs.next())	
    {
    	System.out.println("asdgasdfg");
    	
    	preparedStatement2=conn.prepareStatement("SELECT AGE FROM TBL_CUSTOMERDETAILS WHERE CUSTOMERID=?"); 
    	preparedStatement2.setInt(1, custId);
      	rs1=preparedStatement2.executeQuery();
     
      	while(rs1.next()){
      		prefd.setAge(rs1.getInt("AGE"));
             	}
    	
		prefd.setInitialAmount(rs.getDouble("AMOUNT"));
		prefd.setDepositeDate(rs.getDate("DEPOSITED_DATE"));
	
    }
	}catch(SQLException e)
	{
	System.out.println("Exception occured while performing read project operation.");
	e.printStackTrace();
	}finally
	{
	
		DBUtil.closeResultSet(rs);
		DBUtil.closeStatement(preparedStatement1);
		
		DBUtil.closeConnection(conn);
	}

	return prefd;
}
public int createSRfix(PreFd prefd) throws SQLException
{

Connection conn = DBUtil.getConnection();
PreparedStatement preparedStatement1=null;
PreparedStatement preparedStatement2 = null;
PreparedStatement PS = null;
ResultSet rs = null;
ResultSet rs1 = null;
//String sequenceQurey="SELECT TBL_SR_FIXED1.CURRVAL AS ID FROM DUAL ";
int srTransId=0;
int empId=0;
try
{
	PS = conn.prepareStatement("SELECT * FROM TBL_SR_FIXED WHERE FIXEDID=?");
	PS.setInt(1, prefd.getFixedId());
	rs1=PS.executeQuery();
	if(!rs1.next()){
preparedStatement1=conn.prepareStatement("Insert Into TBL_SR_FIXED values(TBL_SR_FIXED1.NEXTVAL,?,?,?,?,'open',?)");


preparedStatement1.setInt(1, prefd.getFixedId());
preparedStatement1.setDouble(2, prefd.getInitialAmount());
preparedStatement1.setDouble(3, prefd.getPreMatureAmount());
preparedStatement1.setDate(4,  (new java.sql.Date(prefd.getCurrentDate().getTime())));
preparedStatement1.setInt(5,empId);
preparedStatement1.executeQuery();


preparedStatement2=conn.prepareStatement("SELECT TBL_SR_FIXED1.CURRVAL FROM DUAL");
rs1=preparedStatement2.executeQuery();
while(rs1.next()){
	int id=rs1.getInt(1);
	srTransId = id;
	System.out.println(id);
	preparedStatement1.setInt(2, id);
}
	System.out.println("before");}
	else{
		
		//srTransId=0;
		//prefd.setSrTransId(srTransId);
		
	}
}catch(SQLException e)
{
System.out.println("Exception occured while performing create project operation.");
e.printStackTrace();
}finally
{
	DBUtil.closeResultSet(rs);
	DBUtil.closeStatement(preparedStatement1);
	DBUtil.closeStatement(preparedStatement2);
	DBUtil.closeConnection(conn);
}
return srTransId;
}



public PreRD readPreRd(int id,int custId) throws SQLException
{
	
	Connection conn = DBUtil.getConnection();
	PreparedStatement preparedStatement1=null;
	PreparedStatement preparedStatement2 = null;
	ResultSet rs = null;
	ResultSet rs1 = null;
	PreRD prefd =new PreRD();
	
	try
	{
	preparedStatement1=conn.prepareStatement("SELECT AMOUNT, DEPOSITED_DATE FROM TBL_RECURRINGDEPOSIT WHERE RECURRINGID=?"); 
 	
	preparedStatement1.setInt(1, id);
	rs=preparedStatement1.executeQuery();

    while(rs.next())	
    {
    	System.out.println("asdgasdfg");
    	
    	preparedStatement2=conn.prepareStatement("SELECT AGE FROM TBL_CUSTOMERDETAILS WHERE CUSTOMERID=?"); 
    	preparedStatement2.setInt(1, custId);
      	rs1=preparedStatement2.executeQuery();
     
      	while(rs1.next()){
      		prefd.setAge(rs1.getInt("AGE"));
             	}
    	
		prefd.setInitialAmount(rs.getDouble("AMOUNT"));
		prefd.setDepositeDate(rs.getDate("DEPOSITED_DATE"));
	
    }
	}catch(SQLException e)
	{
	System.out.println("Exception occured while performing read Account operation.");
	e.printStackTrace();
	}finally
	{
	
		DBUtil.closeResultSet(rs);
		DBUtil.closeStatement(preparedStatement1);
		
		DBUtil.closeConnection(conn);
	}

	return prefd;
}
public int createSRrec(PreRD prefd) throws SQLException
{

Connection conn = DBUtil.getConnection();
PreparedStatement preparedStatement1=null;
PreparedStatement preparedStatement2 = null;
PreparedStatement PS = null;
ResultSet rs = null;
ResultSet rs1 = null;
//String sequenceQurey="SELECT TBL_SR_FIXED1.CURRVAL AS ID FROM DUAL ";
int srTransId=0;
try
{
	PS = conn.prepareStatement("SELECT * FROM TBL_SR_RECUR1 WHERE RECURRINGID=?");
	PS.setInt(1, prefd.getId());
	rs1=PS.executeQuery();
	if(!rs1.next()){
preparedStatement1=conn.prepareStatement("Insert Into TBL_SR_RECUR1 values(SEQUENCE_RECUR1.NEXTVAL,?,?,?,?,'OPEN')");


preparedStatement1.setInt(1, prefd.getId());
preparedStatement1.setDouble(2, prefd.getInitialAmount());
preparedStatement1.setDouble(3, prefd.getPreMatureAmount());
preparedStatement1.setDate(4,  (new java.sql.Date(prefd.getCurrentDate().getTime())));
preparedStatement1.executeQuery();


preparedStatement2=conn.prepareStatement("SELECT SEQUENCE_RECUR1.CURRVAL FROM DUAL");
rs1=preparedStatement2.executeQuery();
while(rs1.next()){
	int id=rs1.getInt(1);
	srTransId = id;
	System.out.println(id);
	preparedStatement1.setInt(2, id);
}
	System.out.println("before");}
	else{
		
		//srTransId=0;
		//prefd.setSrTransId(srTransId);
		
	}
}catch(SQLException e)
{
System.out.println("Exception occured while performing create Request operation.");
e.printStackTrace();
}finally
{
	DBUtil.closeResultSet(rs);
	DBUtil.closeStatement(preparedStatement1);
	DBUtil.closeStatement(preparedStatement2);
	DBUtil.closeConnection(conn);
}
return srTransId;
}


public boolean closeRequest1(int requestId1,int empId) throws SQLException{
	boolean flag=false;
	Connection conn = DBUtil.getConnection();
	PreparedStatement ps=null;
	System.out.println(requestId1);
	ArrayList<Request> Rlist = new ArrayList<Request>();
	System.out.println(empId);
	String status1="close";
	 try {
		ps=conn.prepareStatement("UPDATE TBL_REQUEST  SET STATUS=? WHERE REQ_NO=? AND EMP_ID=?");
		ps.setString(1,status1);
		ps.setInt(2,requestId1);
		ps.setInt(3,empId);
		ps.executeUpdate();
		flag=true;
	  /* ps1=con.prepareStatement("select * from TBL_REQUEST WHERE EMP_ID=?");
     ps1.setInt(1,empId);
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
		
			
			}*/
	 } catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	}
	return flag;
}






















public String getEmployeePassword1(int employeeId) throws SQLException {

	String password1 = null;
	Connection conn = DBUtil.getConnection();
	ResultSet rs = null;

	PreparedStatement ps = null;
	try {
		ps = conn
				.prepareStatement("select EMP_PASSWRD from TBL_EMPLOYEEDETAILS where EMP_ID=?");
		ps.setInt(1, employeeId);
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








}
















package com.bank.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class DatabaseUtil {
	




	

	 private static final String URL = "jdbc:oracle:thin:@ingnrgpilpsql01:1521:XE";
	    private static final String DRIVER_NAME = "oracle.jdbc.driver.OracleDriver";
	    private static final String USERNAME = "ja28d";
	    private static final String PASSWORD = "ja28d";
		    
		    
		    
		    public static Connection getConnection(){
		    	Connection con = null;
		    	
		    	try {
					 Class.forName(DRIVER_NAME);
					 con  = DriverManager.getConnection(URL, USERNAME, PASSWORD);
						
				    	
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	            
	           catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		    	return con;
		    	
		    }
		    
		    public static void closeConnection(Connection con){
		    	
		    	if(con!=null){
					try {
						con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
		    }
		    
		    
	          public static void closeStatement(PreparedStatement ps){
		    	
		    	if(ps!=null){
					try {
						ps.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
		    }
		

	}






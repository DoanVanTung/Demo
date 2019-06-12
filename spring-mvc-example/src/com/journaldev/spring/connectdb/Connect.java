package com.journaldev.spring.connectdb;
import java.sql.*;
public class Connect {
	 private Connection conn=null; 
	 private PreparedStatement statement=null;
	 public Connect() {
	        connect1();
	      }
	 public void connect1() {
	        String hostName = "localhost";
	        String sqlInstanceName = "SQLEXPRESS";
	        String database = "QLStudent";
	        String userName = "sa";
	        String password = "123";
	        try {
	            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	            String connectionURL = "jdbc:sqlserver://" + hostName + ":1433"
	                    + ";instance=" + sqlInstanceName + "?useUnicode=true&characterEncoding=utf8;databaseName=" + database;

	            conn = DriverManager.getConnection(connectionURL, userName,
	                    password);
	            if(conn != null){
	                System.out.println("Connect success!");
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    public ResultSet chonDuLieuDTB(String sql) {
	    	ResultSet resultSet = null;
	    	try {
				statement = conn.prepareStatement(sql);
				resultSet = ( statement).executeQuery();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	     	return resultSet;  	
	    }
	    public void thucthicaulenh(String sql) throws Exception{
	    	Statement stmt = conn.createStatement();
	    	stmt.executeUpdate(sql); 	
	    }

	 
	}


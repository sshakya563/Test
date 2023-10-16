package com.ray.Connection;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class JdbcConnection  {
	public   Connection Connect(){
		Connection con=null;
		try {
				Driver d=new com.mysql.cj.jdbc.Driver();
				DriverManager.registerDriver(d);   // Load a Driver
				con = DriverManager.getConnection("jdbc:mysql://crimemanagement.c2l0wiqdrnnv.ap-south-1.rds.amazonaws.com:3306/crimemanagement","root","12345678");
			    ///System.out.print("Connected");
			}catch (Exception e) {
				e.printStackTrace();
			}
		return con;

		}

	}

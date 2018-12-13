package org.akshaykotish.coolgateway;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class MYConnection {
	private Connection conn = null;
	public Connection connect() throws SQLException
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/cooldata?user=root&password=root");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			 e.toString();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.toString();
		}
		return conn;
	}
}

package com.example.banhang.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connectionjdbc {
	public static Connection getjdbcconnection() {
		final String url = "jdbc:mysql://localhost:3306/data";
		final String user = "root";
		final String password = "";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public static void main(String[] args) {
		Connection connection=getjdbcconnection();
		if(connection!=null) {
			System.out.println("Thanh cong");
		}else {
			System.out.println("that bai");
		}
		
	}
}

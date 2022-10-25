package com.sparks.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class CP {

	public static Connection con;

	public static Connection createconneConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/sparksbanks";
			String user = "root";
			String pass = "1234";
		
			con = DriverManager.getConnection(url, user, pass);
		} catch (SQLException e) {

			System.out.println("Error is making Connection" + e);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Error is making Connection" + e);
		}

		System.out.println(con);
		return con;

	}
}

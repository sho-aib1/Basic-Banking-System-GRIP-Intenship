package com.sparks.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sparks.bean.UserBean;

public class Userdao {
	public static Connection con;

	public Userdao() {
		con = CP.createconneConnection();
	}

	public boolean check(String acc) {
		String q = "select * from user where AccNumber=?";

		try {
			PreparedStatement psmt = con.prepareStatement(q);

			psmt.setString(1, acc);

			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				return false;

			}

		} catch (SQLException e) {
			System.out.println("Error in check Method" + e);
		}
		return true;

	}

	public int insertDetails(UserBean u) {
		int status = 0;
		String q = "insert into user values(?,?,?,?)";

		try {
			PreparedStatement pst = con.prepareStatement(q);
			pst.setString(1, u.getFullNameString());
			pst.setString(2, u.getGender());
			pst.setString(3, u.getAccno());

			pst.setInt(4, u.getBalance());

			status = pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error in InsertDetails method " + e);
		}

		return status;

	}

	public ArrayList getAll() {
		ArrayList<UserBean> al = new ArrayList<UserBean>();
		String q = "select * from user";
		try {
			PreparedStatement pst = con.prepareStatement(q);
			ResultSet set = pst.executeQuery();
			while (set.next()) {
				UserBean u = new UserBean();
				u.setFullNameString(set.getString("FullName"));
				u.setGender(set.getString("Gender"));

				u.setAccno(set.getString("AccNumber"));
				u.setBalance(set.getInt("balance"));
				al.add(u);
			}
			// Collections.sort(al);
		} catch (Exception e) {
			System.out.println("Error in Get All Method");
		}
		// System.out.println(al);
		return al;

	}
}

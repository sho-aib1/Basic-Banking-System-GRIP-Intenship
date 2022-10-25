package com.sparks.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Transaction {
	static Connection con;

	int sbal = 0;
	int rbal = 0;
	String sender = null;
	String receiver = null;
	int amount = 0;
	static String sname = null;
	static String rname = null;

	public Transaction(String s1, String s2, int amount) {
		sender = s1;

		receiver = s2;
		this.amount = amount;
		con = CP.createconneConnection();

	}

	public int check(String acc) {

		String q = "Select * from user where AccNumber=?";
		try {
			PreparedStatement pst = con.prepareStatement(q);
			pst.setString(1, acc);

			ResultSet set = pst.executeQuery();
			if (set.next() == false) {
				return -1;
			}
			rbal = set.getInt("balance");
			rname = set.getString("FullName");
			sbal = getSenderBalance();
			if (sbal < amount) {
				return 0;
			}

			int status = sendMoney();
			System.out.println(sname + " sender name");
			System.out.println(rname + " receiver name");
			TransactionHistory t = new TransactionHistory(sname, rname);
			return status;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error in check method");
		}
		return 2;

	}

	public int sendMoney() {
		int amt1 = sbal - amount;
		int amt2 = rbal + amount;
		int sum = 0;

		final String p = "update user set balance=? where AccNumber=?";
		try {

			PreparedStatement ps = con.prepareStatement(p);

			ps.setInt(1, amt1);

			ps.setString(2, sender);
			ps.addBatch();

			ps.setInt(1, amt2);

			ps.setString(2, receiver);
			ps.addBatch();

			int a[] = ps.executeBatch();
			for (int i : a) {
				sum += a[i];
			}
		}

		catch (Exception e) {
			System.out.println("Error in sendMoney method");
		}
		return sum;
	}

	public int getSenderBalance() {
		String q = "select * from user where AccNumber=?";
		int amt = 0;
		try {
			PreparedStatement pst = con.prepareStatement(q);
			// System.out.println("sender acc in getsenderbalance method " + sender);
			pst.setString(1, sender);
			ResultSet set = pst.executeQuery();

			if (set.next() == false) {
				return 0;
			}

			amt = set.getInt("balance");
			sname = set.getString("FullName");
			System.out.println(set.getString("FullName"));

		} catch (SQLException e) {

			System.out.println("Error in senderbalance method");

		}

		return amt;
	}

}

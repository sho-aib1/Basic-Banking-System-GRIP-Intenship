package com.sparks.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import com.sparks.bean.HistoryBean;

public class TransactionHistory {
    static String sname = null;
    static String rname = null;
    static Connection con;

    public TransactionHistory(String s1, String s2) {
	sname = s1;
	rname = s2;
    }

    public TransactionHistory() {
	con = CP.createconneConnection();
    }

    public void setHistory(String sender, String receiver, int amount) {

	SimpleDateFormat sm = new SimpleDateFormat("dd/MM/yyyy");
	Calendar c = Calendar.getInstance();
	String date = sm.format(c.getTime());

	SimpleDateFormat formatter = new SimpleDateFormat("HH:mm:ss");
	Date date2 = new Date();
	String time = String.valueOf(formatter.format(date2));

	System.out.println(formatter.format(date2));

	try {
	    String q = "Insert into history values(?,?,?,?,?,?,?)";
	    PreparedStatement pst = con.prepareStatement(q);
	    pst.setString(1, sname);
	    pst.setString(2, sender);
	    pst.setString(3, rname);
	    pst.setString(4, receiver);
	    pst.setInt(5, amount);
	    pst.setString(6, date);
	    pst.setString(7, time);

	    pst.executeUpdate();
	} catch (Exception e) {
	    System.out.println("Error in setHistory method in TransactionHistory Class");
	    e.printStackTrace();
	}
    }

    public ArrayList getAll() {
	ArrayList<HistoryBean> al = new ArrayList<HistoryBean>();
	String q = "select * from History";

	try {
	    PreparedStatement pst = con.prepareStatement(q);
	    ResultSet set = pst.executeQuery();
	    while (set.next()) {
		HistoryBean hb = new HistoryBean();
		hb.setSname(set.getString(1));
		hb.setSaccno(set.getString(2));
		hb.setRname(set.getString(3));
		hb.setRaccno(set.getString(4));
		hb.setAmount(set.getInt(5));
		hb.setDate(set.getString(6));
		hb.setTime(set.getString(7));

		al.add(hb);
	    }

	} catch (Exception e) {
	    System.out.println("Error in get all method");
	}
	return al;
    }

}

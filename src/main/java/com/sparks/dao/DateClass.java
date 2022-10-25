package com.sparks.dao;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class DateClass {
    public static void main(String[] args) {
	SimpleDateFormat sm = new SimpleDateFormat("dd/MM/YYYY");
	Calendar c = Calendar.getInstance();

	String date = sm.format(c.getTime());
	System.out.println(date);
    }
}

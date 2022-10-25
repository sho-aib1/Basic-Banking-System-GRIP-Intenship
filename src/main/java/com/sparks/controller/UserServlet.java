package com.sparks.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sparks.bean.UserBean;
import com.sparks.dao.Userdao;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
	super();
	// TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	// TODO Auto-generated method stub

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);

	String name = request.getParameter("username");
	String acc = request.getParameter("acc");
	String gender = request.getParameter("gender");
	int balance = Integer.parseInt(request.getParameter("bal"));

	Userdao ud = new Userdao();
	boolean isValid = ud.check(acc);
	if (!isValid) {
	    System.out.println("Account number Already Exists");
	    PrintWriter out = response.getWriter();
	    out.print("<h1> Account number already exists</> ");

	} else {
	    UserBean u = new UserBean();
	    u.setAccno(acc);
	    u.setBalance(balance);
	    u.setFullNameString(name);
	    u.setGender(gender);
	    int status = ud.insertDetails(u);
	    if (status == 1) {
		System.out.println("successfully created");
	    } else {
		System.out.println("Not added");
	    }
	}
    }

}

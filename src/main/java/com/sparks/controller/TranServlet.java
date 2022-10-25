package com.sparks.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sparks.dao.Transaction;
import com.sparks.dao.TransactionHistory;

/**
 * Servlet implementation class TranServlet
 */
@WebServlet("/TranServlet")
public class TranServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TranServlet() {
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
	doGet(request, response);
	PrintWriter out = response.getWriter();

	String sender = request.getParameter("sender");
	System.out.println(sender);

	String accsender = sender.substring(0, sender.lastIndexOf("com") + 3);
	String receiver = request.getParameter("receiver");
	String accreceiver = receiver.substring(0, receiver.lastIndexOf("com") + 3);
	System.out.println(accreceiver);
	int bal = Integer.parseInt(request.getParameter("amount"));

	Transaction t = new Transaction(accsender, accreceiver, bal);

	// check if both are equals or not
	if (accsender.equals(accreceiver)) {
	    System.out.println("Both accounts are equal");
	    request.setAttribute("msg", "Accounts Should not be Same");
	    RequestDispatcher rd = request.getRequestDispatcher("/Transfer.jsp");
	} else {
	    int valid = t.check(accreceiver);
	    if (valid == -1) {

		System.out.println("invalid receiver accnuber");

	    } else if (valid == 0) {
		System.out.println("insufficient Balance");
	    }

	    else if (valid == 2) {

		System.out.println("Transaction Successfull");
		TransactionHistory th = new TransactionHistory();
		th.setHistory(accsender, accreceiver, bal);
		request.getRequestDispatcher("/Transfer.jsp").forward(request, response);
	    }
	}

//	RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/Transfer.jsp");
//		rd.forward(request, response);

    }

}

package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.admin;
import com.dao.admindao;

/**
 * Servlet implementation class admincontroller
 */
@WebServlet("/admincontroller")
public class admincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 PrintWriter out = response.getWriter();

		String action = request.getParameter("action");

		if(action.equalsIgnoreCase("Login")) {
	        	admin a1 = new admin();
	        	a1.setA_email(request.getParameter("a_email"));
	        	a1.setA_password(request.getParameter("a_password"));
	            String email = request.getParameter("a_email");
	            String pass = request.getParameter("a_password");
	            admin aa =admindao.checklogin(a1);
	            if(pass.equalsIgnoreCase("")||email.equalsIgnoreCase("")) {
	            	out.print("The Email and password is Empty");
	            	request.getRequestDispatcher("adminlogin.jsp").include(request, response);
	            }
	            else {
	            	HttpSession session =request.getSession();
	            	session.setAttribute("abc", aa);
	            	request.getRequestDispatcher("adminindex.jsp").forward(request, response);
	                System.out.println("The server is running ");
	            }
	        }
	}

}

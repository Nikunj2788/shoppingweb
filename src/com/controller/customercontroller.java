package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.customer;
import com.dao.customerdao;






/**
 * Servlet implementation class customercontroller
 */
@WebServlet("/customercontroller")
public class customercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  PrintWriter out = response.getWriter();
	        String action = request.getParameter("action");
	        if(action.equalsIgnoreCase("Sign Up")) {
	        customer c1 = new customer();
	        c1.setName(request.getParameter("name"));
	        c1.setPhoneno(request.getParameter("phoneno"));
	        c1.setEmailid(request.getParameter("emailid"));
	        c1.setPassword(request.getParameter("password"));
	        c1.setConform(request.getParameter("conform"));
	        System.out.println(request.getParameter("name"));
	        System.out.println(request.getParameter("phoneno"));
	        System.out.println(request.getParameter("emailid"));
	        System.out.println(request.getParameter("password"));
	        System.out.println(request.getParameter("conform"));
	        customerdao.insertcustomer(c1);
	        response.sendRedirect("homecus.jsp");
	    }
	        if(action.equalsIgnoreCase("Login")) {
	        	customer c1 = new customer();
	        	c1.setEmailid(request.getParameter("emailid"));
	        	c1.setPassword(request.getParameter("password"));
	            String email = request.getParameter("emailid");
	            String pass = request.getParameter("password");
	            customer cc = customerdao.checklogin(c1);
	            if(pass.equalsIgnoreCase("")||email.equalsIgnoreCase("")) {
	            	out.print("The Email and password is Empty");
	            	request.getRequestDispatcher("logincus.jsp").include(request, response);
	            }
	            else {
	            	HttpSession session =request.getSession();
	            	session.setAttribute("abc", cc);
	            	request.getRequestDispatcher("homecus.jsp").forward(request, response);
	            }
	        }
	        if(action.equalsIgnoreCase("update")) {
				customer c = new customer();
				c.setId(Integer.parseInt(request.getParameter("id")));
				c.setName(request.getParameter("name"));
				c.setPhoneno(request.getParameter("phoneno"));
				c.setEmailid(request.getParameter("emailid"));
				c.setPassword(request.getParameter("password"));
				c.setConform(request.getParameter("conform"));
				System.out.println("The server is running");
				customerdao.updatecustomer(c);
				response.sendRedirect("myaccountcus.jsp");
			}
	        if(action.equalsIgnoreCase("delete")) {
				int id = Integer.parseInt(request.getParameter("id"));
				//System.out.println(id);
				customerdao.deletecustomer(id);
				response.sendRedirect("admincus.jsp");
				}
	    	if(action.equalsIgnoreCase("edit")) {
				int id = Integer.parseInt(request.getParameter("id"));
				customer c = customerdao.getDataById(id);
				request.setAttribute("abc", c);
				request.getRequestDispatcher("adminedit.jsp").forward(request, response);
			}
	       
	
	
	
	}

}

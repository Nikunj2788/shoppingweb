package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.seller;
import com.dao.sellerdao;



/**
 * Servlet implementation class sellercontroller
 */
@WebServlet("/sellercontroller")
public class sellercontroller extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 PrintWriter out = response.getWriter();
	        String action = request.getParameter("action");
	        if(action.equalsIgnoreCase("Sign Up")) {
	        seller s1 = new seller();
	        s1.setName(request.getParameter("name"));
	        s1.setPhoneno(request.getParameter("phoneno"));
	        s1.setEmailid(request.getParameter("emailid"));
	        s1.setPassword(request.getParameter("password"));
	        s1.setConform(request.getParameter("conform"));
	        
	        System.out.println(request.getParameter("name"));
	        System.out.println(request.getParameter("phoneno"));
	        System.out.println(request.getParameter("emailid"));
	        System.out.println(request.getParameter("password"));
	        System.out.println(request.getParameter("conform"));
	        sellerdao.insertseller(s1);
	        response.sendRedirect("homesel.jsp");
	    }
	        if(action.equalsIgnoreCase("Login")) {
	        	seller s1 = new seller();
	        	s1.setEmailid(request.getParameter("emailid"));
	        	s1.setPassword(request.getParameter("password"));
	            String email = request.getParameter("emailid");
	            String pass = request.getParameter("password");
	            seller ss = sellerdao.checklogin(s1);
	            if(pass.equalsIgnoreCase("")||email.equalsIgnoreCase("")) {
	            	out.print("The Email and password is Empty");
	            	request.getRequestDispatcher("loginsel.jsp").include(request, response);
	            }
	            else {
	            	HttpSession session =request.getSession();
	            	session.setAttribute("abc", ss);
	            	request.getRequestDispatcher("homesel.jsp").forward(request, response);
	            }
	        }
	        if(action.equalsIgnoreCase("update")) {
				seller s = new seller();
				s.setId(Integer.parseInt(request.getParameter("id")));
				s.setName(request.getParameter("name"));
				s.setEmailid(request.getParameter("emailid"));
				s.setPhoneno(request.getParameter("phoneno"));
				s.setPassword(request.getParameter("password"));
				s.setConform(request.getParameter("conform"));
				sellerdao.updateSeller(s);
				response.sendRedirect("myaccountsel.jsp");
			}
	        if(action.equalsIgnoreCase("delete")) {
				int id = Integer.parseInt(request.getParameter("id"));
				//System.out.println(id);
				sellerdao.deleteseller(id);
				response.sendRedirect("adminsel.jsp");
				}

	}

}

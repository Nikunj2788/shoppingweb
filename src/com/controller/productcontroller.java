package com.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bean.product;
import com.dao.productdao;




/**
 * Servlet implementation class productcontroller
 */
@MultipartConfig
@WebServlet("/productcontroller")
public class productcontroller extends HttpServlet {
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
           
			
			System.out.println("Selected Image is in post method");
		    Part file = request.getPart("image");
		    
		    String imageFileName = file.getSubmittedFileName();
		    System.out.println("Selected Image file name "+imageFileName);
		    
		    String uploadPaths = "/home/nikunj/medicine/shoppingweb/WebContent/images/" +imageFileName;
		    System.out.println("Uploaded Path" +uploadPaths);
		
		    try {
				FileOutputStream fos = new FileOutputStream(uploadPaths);
				InputStream is = file.getInputStream();
				
				byte[] data = new byte[is.available()];
				is.read(data);
				fos.write(data);
				fos.close();
				
			} catch (Exception e) {
				// TODO: handle exception
			     e.printStackTrace(); 
			}  
		    String action = request.getParameter("action");
            if(action.equalsIgnoreCase("addproduct")) {
		    product p = new product();
		    p.setSid(Integer.parseInt(request.getParameter("sid")));
		    
		    p.setImage(imageFileName);
		    p.setP_name(request.getParameter("p_name"));
		    p.setP_category(request.getParameter("p_category"));
		    p.setP_price(request.getParameter("p_price"));
		    System.out.println("The Controller is okk");
		    System.out.println(p);
		    productdao.insertproduct(p);
		    response.sendRedirect("addproduct.jsp");
		}
            if(action.equalsIgnoreCase("delete")) {
    			int id = Integer.parseInt(request.getParameter("id"));
    			//System.out.println(id);
    			productdao.deleteproduct(id);
    			response.sendRedirect("singleproduct.jsp");
    			}

		}
}

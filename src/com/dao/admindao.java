package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.admin;
import com.bean.customer;
import com.bean.seller;
import com.util.shoppingutil;

public class admindao {
	public static admin checklogin(admin a1) {
		admin a = null;
		try {
			Connection con  = shoppingutil.createConnection();
			String sql = "select * from admin where a_email=? and a_password=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, a.getA_email());
			pst.setString(2, a.getA_password());
			ResultSet rs = pst.executeQuery();
			 if(rs.next()) {
			    	a1= new admin();
			    	a1.setA_id(rs.getInt("a_id"));
	                a1.setA_email(rs.getString("a_email"));
	                a1.setA_password(rs.getString("a_password"));
	                
			    }
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return a1;
		} 
}

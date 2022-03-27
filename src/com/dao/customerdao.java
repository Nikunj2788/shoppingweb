package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.customer;
import com.util.shoppingutil;
public class customerdao {
	public static void insertcustomer(customer c1) {
		try {
			Connection conn = shoppingutil.createConnection();
			String sql = "insert into customer(name,phoneno,emailid,password,conform) values(?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
		    pst.setString(1, c1.getName());
		    pst.setString(2, c1.getPhoneno());
		    pst.setString(3, c1.getEmailid());
		    pst.setString(4, c1.getPassword());
		    pst.setString(5, c1.getConform());
			pst.executeUpdate();
			System.out.println("Data is inserted");
		} catch (Exception e) {
			// TODO: handle exception

			e.printStackTrace();
		}
	}
	public static customer checklogin(customer c1) {
		customer c = null;
		try {
			Connection con  = shoppingutil.createConnection();
			String sql = "select * from customer where emailid=? and password=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, c.getEmailid());
			pst.setString(2, c.getPassword());
			ResultSet rs = pst.executeQuery();
			 if(rs.next()) {
			    	c1= new customer();
			    	c1.setId(rs.getInt("id"));
	                c1.setName(rs.getString("name"));
	                c1.setEmailid(rs.getString("emailid"));
	                c1.setPhoneno(rs.getString("phoneno"));
	                c1.setPassword(rs.getString("email"));
	                c1.setConform(rs.getString("conform"));
	                
			    }
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return c1;
		} 
	
	
	  public static List<customer> getAllData(){ 
		  List <customer> list = new  ArrayList<customer>();
        try { Connection conn =
	  shoppingutil.createConnection(); 
      String sql = "select * from customer";
	  PreparedStatement pst = conn.prepareStatement(sql); ResultSet rs =
	  pst.executeQuery(); 
	  while(rs.next()) { 
	  customer c = new customer();
	  c.setId(rs.getInt("id"));
	  c.setName(rs.getString("name"));
	  c.setPhoneno(rs.getString("phoneno"));
	  c.setEmailid(rs.getString("emailid"));
	  c.setPassword(rs.getString("password"));
	  c.setConform(rs.getString("conform"));
	  
	  list.add(c);
	  }
	  } catch (Exception e) { 
		  // TODO: handle exception
	  e.printStackTrace();
	  } return list;
	  
	  
	  }
	 
	public static customer getDataById(int id) {
		customer c = null;
		try {
			Connection conn = shoppingutil.createConnection();
			String sql = "select * from customer where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				c = new customer();
				c.setId(rs.getInt("id"));
				c.setName(rs.getString("name"));
				c.setPhoneno(rs.getString("phoneno"));
				c.setEmailid(rs.getString("emailid"));
				c.setPassword(rs.getString("password"));
				c.setConform(rs.getString("conform"));
					
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return c;
	}
	public static void updatecustomer(customer c) {
		try {
			Connection con = shoppingutil.createConnection();
			String sql = "update customer set name=?,phoneno=?,emailid=?,password=?,conform=? where id=?";
			PreparedStatement pst =con.prepareStatement(sql);
			
			pst.setString(1, c.getName());
			pst.setString(2, c.getPhoneno());
			pst.setString(3, c.getEmailid());
			pst.setString(4, c.getPassword());
			pst.setString(5, c.getConform());
			pst.setInt(6, c.getId());
			pst.executeUpdate();
			System.out.println("data updated");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public static void deletecustomer(int id) {
		try {
			Connection conn = shoppingutil.createConnection();
			String sql = "delete from customer where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
			System.out.println("data deleted");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	}
package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.seller;
import com.util.shoppingutil;


public class sellerdao {
	public static void insertseller(seller s1) {
		try {
			Connection conn = shoppingutil.createConnection();
			String sql = "insert into seller(name,phoneno,emailid,password,conform) values(?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
		    pst.setString(1, s1.getName());
		    pst.setString(2, s1.getPhoneno());
		    pst.setString(3, s1.getEmailid());
		    pst.setString(4, s1.getPassword());
		    pst.setString(5, s1.getConform());
			pst.executeUpdate();
			System.out.println("Data is inserted");
		} catch (Exception e) {
			// TODO: handle exception

			e.printStackTrace();
		}
	}
	public static seller checklogin(seller s) {
		seller s1 = null;
		try {
			Connection con  = shoppingutil.createConnection();
			String sql = "select * from seller where emailid=? and password=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, s.getEmailid());
			pst.setString(2, s.getPassword());
			ResultSet rs = pst.executeQuery();
			 if(rs.next()) {
			    	s1= new seller();
			    	s1.setId(rs.getInt("id"));
	                s1.setName(rs.getString("name"));
	                s1.setEmailid(rs.getString("emailid"));
	                s1.setPhoneno(rs.getString("phoneno"));
	                s1.setPassword(rs.getString("password"));
	                s1.setConform(rs.getString("conform"));
	                
			    }
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return s1;
		}
	public static List<seller> getAllData(){
		List <seller> list = new ArrayList<seller>();
		try {
			Connection conn = shoppingutil.createConnection();
			String sql = "select * from seller";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				seller s = new seller();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setPhoneno(rs.getString("phoneno"));
				s.setEmailid(rs.getString("emailid"));
				s.setPassword(rs.getString("password"));
				s.setConform(rs.getString("conform"));
				
				list.add(s);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	public static void updateSeller(seller s) {
		try {
			Connection con = shoppingutil.createConnection();
			String sql = "update seller set name=?,phoneno=?,emailid=?,password=?,conform=? where id=?";
			PreparedStatement pst =con.prepareStatement(sql);
			
			pst.setString(1, s.getName());
			pst.setString(2, s.getPhoneno());
			pst.setString(3, s.getEmailid());
			pst.setString(4, s.getPassword());
			pst.setString(5, s.getConform());
			pst.setInt(6, s.getId());
			pst.executeUpdate();
			System.out.println("data updated");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public static void deleteseller(int id) {
		try {
			Connection conn = shoppingutil.createConnection();
			String sql = "delete from seller where id=?";
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

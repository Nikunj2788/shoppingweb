package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.product;
import com.util.shoppingutil;


public class productdao {
		public static void insertproduct(product p) {
			try {
				Connection con = shoppingutil.createConnection();
				String sql ="insert into product(sid,image,p_name,p_category,p_price) values(?,?,?,?,?)";
				PreparedStatement pst = con.prepareStatement(sql);
			/*
			 * pst.setInt(1, p.getSid());
			 * 
			 */	
				pst.setInt(1, p.getSid());
				pst.setString(2, p.getImage());
				pst.setString(3, p.getP_name());
				pst.setString(4, p.getP_category());				
				pst.setString(5, p.getP_price());
				pst.executeUpdate();
				System.out.println("data inserted");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		public static product getDataByid(int productid) {
			product p = null;
			try {
				Connection conn = shoppingutil.createConnection();
				String sql = "select * from product where productid=?";
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setInt(1, productid);
				ResultSet rs = pst.executeQuery();
				if(rs.next()) {
					p = new product();
					p.setProductid(rs.getInt("productid"));;
					p.setImage(rs.getString("image"));
					p.setP_category(rs.getString("p_category"));
					p.setP_name(rs.getString("p_name"));
					p.setP_price(rs.getString("p_price"));
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return p;
		}
		public static List<product> getAllData(){
			List <product> list = new ArrayList<product>();
			try {
				Connection conn = shoppingutil.createConnection();
				String sql = "select * from product";
				PreparedStatement pst = conn.prepareStatement(sql);
				ResultSet rs = pst.executeQuery();
				while(rs.next()) {
					product p = new product();
					p.setImage(rs.getString("image"));
					p.setProductid(rs.getInt("productid"));
					p.setP_name(rs.getString("p_name"));
					p.setP_category(rs.getString("p_category"));
					p.setP_price(rs.getString("p_price"));
					
					list.add(p);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return list;
		
		
	}
		public static void deleteproduct(int id) {
			try {
				Connection conn = shoppingutil.createConnection();
				String sql = "delete from product where id=?";
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

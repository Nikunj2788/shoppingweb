package com.bean;

public class product {
	private int productid, sid;
	String image, p_name, p_category, p_price;
	public int getSid() {
		return sid;
	}

	

	public void setSid(int sid) {
		this.sid = sid;
	}

	

	public String getP_price() {
		return p_price;
	}

	public void setP_price(String p_price) {
		this.p_price = p_price;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_category() {
		return p_category;
	}

	public void setP_category(String p_category) {
		this.p_category = p_category;
	}
	@Override
	public String toString() {
		return "product [productid=" + productid + ", sid=" + sid + ", image=" + image + ", p_name=" + p_name
				+ ", p_category=" + p_category + ", p_price=" + p_price + "]";
	}
}

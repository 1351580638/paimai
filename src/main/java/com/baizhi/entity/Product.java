package com.baizhi.entity;

import java.util.Date;
import java.util.List;

public class Product {
	private int auction_id;
	private String auction_name;
	private double auction_start_price;
	private double auction_upset;
	private Date auction_start_time;
	private Date auction_end_time;
	private String auction_desc;
	private List<Auction> recordlist;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(int auction_id, String auction_name,
			double auction_start_price, double auction_upset,
			Date auction_start_time, Date auction_end_time,
			String auction_desc, List<Auction> recordlist) {
		super();
		this.auction_id = auction_id;
		this.auction_name = auction_name;
		this.auction_start_price = auction_start_price;
		this.auction_upset = auction_upset;
		this.auction_start_time = auction_start_time;
		this.auction_end_time = auction_end_time;
		this.auction_desc = auction_desc;
		this.recordlist = recordlist;
	}
	@Override
	public String toString() {
		return "Product [auction_id=" + auction_id + ", auction_name="
				+ auction_name + ", auction_start_price=" + auction_start_price
				+ ", auction_upset=" + auction_upset + ", auction_start_time="
				+ auction_start_time + ", auction_end_time=" + auction_end_time
				+ ", auction_desc=" + auction_desc + ", recordlist="
				+ recordlist + "]";
	}
	public int getAuction_id() {
		return auction_id;
	}
	public void setAuction_id(int auction_id) {
		this.auction_id = auction_id;
	}
	public String getAuction_name() {
		return auction_name;
	}
	public void setAuction_name(String auction_name) {
		this.auction_name = auction_name;
	}
	public double getAuction_start_price() {
		return auction_start_price;
	}
	public void setAuction_start_price(double auction_start_price) {
		this.auction_start_price = auction_start_price;
	}
	public double getAuction_upset() {
		return auction_upset;
	}
	public void setAuction_upset(double auction_upset) {
		this.auction_upset = auction_upset;
	}
	public Date getAuction_start_time() {
		return auction_start_time;
	}
	public void setAuction_start_time(Date auction_start_time) {
		this.auction_start_time = auction_start_time;
	}
	public Date getAuction_end_time() {
		return auction_end_time;
	}
	public void setAuction_end_time(Date auction_end_time) {
		this.auction_end_time = auction_end_time;
	}
	public String getAuction_desc() {
		return auction_desc;
	}
	public void setAuction_desc(String auction_desc) {
		this.auction_desc = auction_desc;
	}
	public List<Auction> getRecordlist() {
		return recordlist;
	}
	public void setRecordlist(List<Auction> recordlist) {
		this.recordlist = recordlist;
	}
	
}

package com.baizhi.entity;

import java.util.Date;

public class AuctionDTO {
	private Date auction_time;//竞拍时间
	private double auction_price;//竞拍价格
	private String user_name;
	public AuctionDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AuctionDTO(Date auction_time, double auction_price, String user_name) {
		super();
		this.auction_time = auction_time;
		this.auction_price = auction_price;
		this.user_name = user_name;
	}
	@Override
	public String toString() {
		return "AuctionDTO [auction_time=" + auction_time + ", auction_price="
				+ auction_price + ", user_name=" + user_name + "]";
	}
	public Date getAuction_time() {
		return auction_time;
	}
	public void setAuction_time(Date auction_time) {
		this.auction_time = auction_time;
	}
	public double getAuction_price() {
		return auction_price;
	}
	public void setAuction_price(double auction_price) {
		this.auction_price = auction_price;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
}

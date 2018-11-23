package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.Auction;
import com.baizhi.entity.AuctionDTO;

public interface AuctionService {
	//添加
	public void insert(Auction auction);
	
	/**
	 * 竞拍的查询界面
	 * 
	 */
	public List<AuctionDTO> getAuction(int auction_id);

}

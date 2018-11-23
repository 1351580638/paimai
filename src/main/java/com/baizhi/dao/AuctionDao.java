package com.baizhi.dao;

import java.util.List;

import com.baizhi.entity.Auction;
import com.baizhi.entity.AuctionDTO;

public interface AuctionDao {
	
	//Ìí¼Ó
	public void insert(Auction auction);
	
	public List<AuctionDTO> getAuction(int auction_id);

}

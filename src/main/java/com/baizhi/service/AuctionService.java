package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.Auction;
import com.baizhi.entity.AuctionDTO;

public interface AuctionService {
	//���
	public void insert(Auction auction);
	
	/**
	 * ���ĵĲ�ѯ����
	 * 
	 */
	public List<AuctionDTO> getAuction(int auction_id);

}

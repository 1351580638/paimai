package com.baizhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.dao.AuctionDao;
import com.baizhi.entity.Auction;
import com.baizhi.entity.AuctionDTO;
import com.baizhi.service.AuctionService;
@Service("service")
public class AuctionServiceImpl implements AuctionService {

	@Autowired
	private AuctionDao auctionDao;
	//���
	@Override
	public void insert(Auction auction) {
		auctionDao.insert(auction);
	}
	/**
	 * ���ĵĲ�ѯȫ���Ľ���
	 */
	@Override
	public List<AuctionDTO> getAuction(int auction_id) {
		List<AuctionDTO> list=auctionDao.getAuction(auction_id);
		System.out.println(list.size()+"@@@@");
		return list;
	}
	
	
}

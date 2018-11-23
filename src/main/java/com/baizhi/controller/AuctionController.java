package com.baizhi.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baizhi.entity.Auction;
import com.baizhi.entity.AuctionDTO;
import com.baizhi.entity.Product;
import com.baizhi.service.AuctionService;
import com.baizhi.service.ProductService;

@Controller
public class AuctionController {
	@Autowired
	private AuctionService service;
	@Autowired
	private ProductService service1;
	/**
	 * 竞拍的详情界面  竞拍的添加
	 * @param auction
	 * @param session
	 * @return
	 */
	@RequestMapping("/getinsert")
	public String insert(Auction auction,HttpSession session,int auction_id){
		
		System.out.println(1111111111);
		System.out.println(auction);
		service.insert(auction);
		
		return "forward:/selectAuction.action?auction_id="+auction.getAuction_id();
	}
	
	/**
	 * 竞拍品    （全部的）  的详情界面
	 */
	@RequestMapping("/selectAuction")
	public String selectAuction(int auction_id,Map map){
		System.out.println(222);
		System.out.println(auction_id);
		
		Product product=service1.selectOne(auction_id);
		map.put("product",product);
		
		System.out.println(product);
		
		List<AuctionDTO>auction=service.getAuction(auction_id);
		
		map.put("auction", auction);
		System.out.println(auction.size()+"@@@@@@@@@@@@@@@@@@@@@@@@@");
		return "forward:/auction.jsp";
	}

}

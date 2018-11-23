package com.baizhi.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.baizhi.entity.Auction;
import com.baizhi.entity.Product;
import com.baizhi.service.ProductService;

@Controller

public class ProductController {
	@Autowired
	private ProductService service1;
	//��ѯȫ��
	@RequestMapping("/selectAll")
	public String selectAll(Map map){
		
		List<Product>list=service1.selectAll();
		map.put("list", list);
		
		return "forward:/admin.jsp";
	}
	//��ѯһ��
	@RequestMapping("/selectOne")
	public String selectOne(int id,Map map){
		System.out.println(id);
		Product p=service1.selectOne(id);
		map.put("p",p);
		return "forward:/auction.jsp";
	}
	
	//���
	@RequestMapping("/insert")
	public String insert(Product product){
		service1.insert(product);
		return "forward:/admin.jsp";
	}
	
	//ɾ��
	@RequestMapping("/delete")
	public String delete(int id){
		service1.delete(id);
		return "forward:/selectAll.action";
	}
	//��ѯһ���޸�
	@RequestMapping("/selectOnee")
	public String selectOnee(int id,Map map){
		Product p=service1.selectOne(id);
		map.put("p",p);
		return "forward:/update.jsp";
	}
	//�޸�
	@RequestMapping("/update")
	public String update(Product pro,HttpServletRequest request){
		service1.update(pro);
		return "forward:/selectAll.action";
	}
	/**
	 * ���ĵĲ�ѯ
	 */
	@RequestMapping("/selectRR")
	public String selectRR(HttpSession session,int auction_id){
		Product pro=service1.selectRR(auction_id);
		session.setAttribute("pro",pro);
		return "forward:/selectRR.action";
	}
	/**
	 * ��ѯ
	 */
	@RequestMapping("/search")
	public String search(Product product){
		System.out.println(product);
		List<Product>product1=service1.search(product);
		
		return "forward:/selectAll.action";
	}

}

package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.Auction;
import com.baizhi.entity.Product;

public interface ProductService {
	//查询全部
	public List<Product> selectAll();
	//查询一个
	public Product selectOne(int id);
	//修改一个
	public void update(Product pro);
	//删除
	public void delete(int id);
	//添加
	public void  insert(Product pro);
	//模糊查询
	
	List<Product> search(Product product);
	
	
	Product selectRR(int auction_id);
}

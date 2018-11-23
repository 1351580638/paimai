package com.baizhi.dao;

import java.util.List;

import com.baizhi.entity.Product;

public interface ProductDao {
	//查询全部
	public List<Product> selectAll();
	//查询一个
	public Product selectOne(int id);
	//修改
	public void update(Product pro);
	//删除
	public void delete(int id);
	//添加
	public void insert(Product pro);
	//模糊查询
	public List<Product> search(Product product);
	//竞拍查询
	  Product selectRR(int auction_id);
	

}

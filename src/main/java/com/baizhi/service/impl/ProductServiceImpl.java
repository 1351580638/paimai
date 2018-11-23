package com.baizhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.dao.ProductDao;
import com.baizhi.entity.Auction;
import com.baizhi.entity.Product;
import com.baizhi.service.ProductService;
@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao productDao;
	

	//查询全部
	@Override
	public List<Product> selectAll() {
		List<Product> list = productDao.selectAll();
		return list;
	}
	//查询哪一个
	@Override
	public Product selectOne(int id) {
		Product pro=productDao.selectOne(id);
		return pro;
	}
	//修改
	@Override
	public void update(Product pro) {
		productDao.update(pro);
		
	}
	//删除
	@Override
	public void delete(int id) {
		productDao.delete(id);
		
	}
	//添加
	@Override
	public void insert(Product pro) {
		productDao.insert(pro);
		
	}
	public List<Product> search(Product product) {
		List<Product>list1=productDao.search(product);
		return list1;
	}
	
	@Override
	public Product selectRR(int auction_id) {
		return productDao.selectRR(auction_id);
	}

}

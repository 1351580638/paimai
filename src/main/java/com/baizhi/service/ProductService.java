package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.Auction;
import com.baizhi.entity.Product;

public interface ProductService {
	//��ѯȫ��
	public List<Product> selectAll();
	//��ѯһ��
	public Product selectOne(int id);
	//�޸�һ��
	public void update(Product pro);
	//ɾ��
	public void delete(int id);
	//���
	public void  insert(Product pro);
	//ģ����ѯ
	
	List<Product> search(Product product);
	
	
	Product selectRR(int auction_id);
}

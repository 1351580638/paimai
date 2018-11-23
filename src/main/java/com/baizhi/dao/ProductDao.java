package com.baizhi.dao;

import java.util.List;

import com.baizhi.entity.Product;

public interface ProductDao {
	//��ѯȫ��
	public List<Product> selectAll();
	//��ѯһ��
	public Product selectOne(int id);
	//�޸�
	public void update(Product pro);
	//ɾ��
	public void delete(int id);
	//���
	public void insert(Product pro);
	//ģ����ѯ
	public List<Product> search(Product product);
	//���Ĳ�ѯ
	  Product selectRR(int auction_id);
	

}

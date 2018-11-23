package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.User;

public interface UserService {
	
	//查询一个
	public User selectOne(User user);
	//添加
	public void insert(User u);

}

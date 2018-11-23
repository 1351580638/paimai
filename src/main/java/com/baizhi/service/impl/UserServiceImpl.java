package com.baizhi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.baizhi.dao.UserDao;
import com.baizhi.entity.User;
import com.baizhi.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	
//²éÑ¯Ò»¸ö
	@Override
	public User selectOne(User user) {
		User user1 = userDao.selectOne(user);
		return user1;
	}
	@Override
	public void insert(User u) {
		userDao.insert(u);
		
	}
	

}

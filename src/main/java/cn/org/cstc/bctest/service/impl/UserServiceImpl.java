package cn.org.cstc.bctest.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.org.cstc.bctest.bean.User;
import cn.org.cstc.bctest.mapper.UserMapper;
import cn.org.cstc.bctest.service.IUserService;

@Service
public class UserServiceImpl implements IUserService{
	@Autowired
	private UserMapper userMapper;
	
	
	public User getUser(int id) {
		return userMapper.selectUserById(id);
	}
	
	@Override
	public User getUserByUsername(String username) {
		return userMapper.selectUserByUsername(username);
	}
	public User getUser(User user){
		return userMapper.selectUserByUser(user);
	}
	
	public int saveUser(User user) {
		if(getUserByUsername(user.getUsername()) != null)
			return -1;
		Date date = new Date();//获得系统时间.
		user.setLastLoginTime(date);
		user.setRegesterTime(date);
		if ( userMapper.InsertUser(user) == true) return 0;
		else return 1;
	}
	
	public void updateLoginTime(int id) {
		userMapper.updateLoginTime(id);
	}
}

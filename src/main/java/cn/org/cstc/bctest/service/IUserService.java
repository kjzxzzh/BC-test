package cn.org.cstc.bctest.service;

import cn.org.cstc.bctest.bean.User;

public interface IUserService {
	public User getUser(int id);

	
	public int saveUser(User user);
	public User getUserByUsername(String username);
	public User getUser(User user);
	public void updateLoginTime(int id);

}

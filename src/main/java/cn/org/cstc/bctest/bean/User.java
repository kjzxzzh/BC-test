package cn.org.cstc.bctest.bean;

import java.util.Date;
import java.util.List;


import lombok.Data;


@Data
public class User {
	
	private int id;

	private String mobile;
	private Date regesterTime;
	private Date lastLoginTime;

	private String username;//账号.
	private String password;
	private String salt;//加密密码的盐
	
	private byte state;//用户状态,0:创建未认证（比如没有激活，没有输入验证码等等）--等待验证的用户 , 1:正常状态,2：用户被锁定.
	
	private List<Role> roleList;// 一个用户具有多个角色
	/**
	 * 密码盐.
	 * @return
	 */
	public String getCredentialsSalt(){
		return this.username+this.salt;
	}
}

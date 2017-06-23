package cn.org.cstc.bctest.bean;

import java.util.Date;

import lombok.Data;


@Data
public class User {
	
	private int id;

	private String mobile;
	private Date regesterTime;
	private Date lastLoginTime;

	private String userName;//账号.
	private String password;
}

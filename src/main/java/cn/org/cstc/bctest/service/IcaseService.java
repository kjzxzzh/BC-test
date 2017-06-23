package cn.org.cstc.bctest.service;

import java.util.List;

import cn.org.cstc.bctest.bean.Case;

public interface IcaseService {
	
	public int getCaseSum(String key);
	
	public List<Case> getCaseSet(int start,int number,String key);

}

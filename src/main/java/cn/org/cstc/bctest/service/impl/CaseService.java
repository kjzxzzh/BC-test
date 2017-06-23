package cn.org.cstc.bctest.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.org.cstc.bctest.bean.Case;
import cn.org.cstc.bctest.mapper.CaseMapper;
import cn.org.cstc.bctest.service.IcaseService;

@Service
public class CaseService implements IcaseService{
	@Autowired
	private CaseMapper caseMapper;
	
	@Override
	public int getCaseSum(String key) {
		return caseMapper.getCaseSum(key);
	}

	@Override
	public List<Case> getCaseSet(int start, int number, String key) {
		return caseMapper.getCaseSet(start, number, key);
	}
	

}

package cn.org.cstc.bctest.controller.account;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.constraints.Max;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import cn.org.cstc.bctest.bean.Case;
import cn.org.cstc.bctest.service.IcaseService;
import net.wimpi.telnetd.io.terminal.ansi;
import scala.collection.generic.BitOperations.Int;

@Controller
public class CaseController {
	@Autowired
	private IcaseService caseService;
	
	@RequestMapping(value="/account/getCaseList")
	public String getCaseList(int page,String key,Model model ){
		System.out.println("获取第"+page+"页用例,"+"关键字为"+key);
		
		int number = 5;
		int start = (page-1) * number;
		List<Case> cases = caseService.getCaseSet(start, number, key);
		
		model.addAttribute("cases", cases);
		model.addAttribute("nowPage", page);
		
		int maxPage = (int) Math.ceil(caseService.getCaseSum(key)/5.0);
		Integer pageStart = Math.max(1, page-2);
		Integer pageEnd = Math.min(maxPage, page+2);
		List<Integer> list = new ArrayList<>();
		for(Integer i= pageStart;i <= pageEnd;i++)
			list.add(i);
		model.addAttribute("pages", list);
		model.addAttribute("pageSum", maxPage);
		System.out.println(cases);
		return "account/caseListTable";
	}
	
	@RequestMapping(value="/account/getPageSum")
	public @ResponseBody Map<String,Object> getPageSum(String key){

		int caseSum = caseService.getCaseSum(key);       //向上取整计算
		int pageSum = (int) Math.ceil(caseSum/5.0);
		System.out.println("pageSum:"+pageSum);
		Map<String,Object> map = new HashMap<String,Object>();  
		
		map.put("pageSum", pageSum);  
		return map;
	}
	
	@RequestMapping(value="/account/case",method = RequestMethod.GET)
	public String login() {
		System.out.println(123);
		return "/account/case";
	}
	
}

package cn.org.cstc.bctest.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.org.cstc.bctest.bean.User;
import cn.org.cstc.bctest.service.IUserService;

@Controller
public class IndexController {
	@Autowired
	private IUserService userService;
	
	@RequestMapping(value="/index")
	public String hello(Model model){
		return "account/index";
	}
}

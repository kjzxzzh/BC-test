package cn.org.cstc.bctest.controller.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccountController {
	@RequestMapping(value="/account/index")
	public String index(){
		return "account/index";
	}
	

}

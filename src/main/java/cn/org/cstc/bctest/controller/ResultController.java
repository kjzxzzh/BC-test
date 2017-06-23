package cn.org.cstc.bctest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResultController {
	@RequestMapping(value = "/account1/showResult")
	public String showResult(){
		return "account/showResult";
	}
}

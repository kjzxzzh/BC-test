package cn.org.cstc.bctest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Detection {
	@RequestMapping({"/detection"})
	public String news(Model model){
		return "detection";
	}
}

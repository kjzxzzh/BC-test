package cn.org.cstc.bctest.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import cn.org.cstc.bctest.bean.User;
import cn.org.cstc.bctest.service.IUserService;

@Controller
public class UserController {
	@Autowired
	private IUserService userService;
	
	
	@RequestMapping(value = "register",method = RequestMethod.GET)
	public String register(){
		return "register";
	}
	
	
	@RequestMapping(value = "register",method = RequestMethod.POST)
	public ModelAndView registerSubmit(
							User user,
							String code,
							HttpSession session,
							RedirectAttributes attributes
		){
		ModelAndView modelAndView = null;
		//判断验证码是否正确
		String sessesionYZM = (String) session.getAttribute("YZM");
		if(code==null||(code!=null && !code.equals(sessesionYZM))){
			modelAndView = new ModelAndView(new RedirectView("register"));
			
			attributes.addFlashAttribute("errorCode", "invalidYZM");
			attributes.addFlashAttribute("errorMsg","验证码错误！");
			
			return modelAndView;
		}
		
		if (userService.saveUser(user) == -1) {// -1 表示用户名已存在
			modelAndView = new ModelAndView(new RedirectView("register"));
			attributes.addFlashAttribute("errorCode", "existName");
			attributes.addFlashAttribute("errorMsg","用户名已存在！");
			return modelAndView;
		}
		
		session.setAttribute("user", user);
		modelAndView = new ModelAndView(new RedirectView("account/index"));
		return modelAndView;
	}
	
}

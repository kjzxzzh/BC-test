package cn.org.cstc.bctest.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.constraints.Null;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import cn.org.cstc.bctest.bean.User;
import cn.org.cstc.bctest.service.IUserService;
import cn.org.cstc.bctest.util.ImageUtil;

@Controller
public class LoginController {
	@Autowired
	private IUserService userService;
	
	@RequestMapping(value="/login",method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		String currentUser = (String) request.getSession().getAttribute("currentUser"); 
		if (currentUser == null) 		return "login";
		else return "/account/index";
	}

	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(HttpServletRequest request, Map<String, Object> map	) 	{
		System.out.println("HomeController.login()");
		String exception = (String) request.getAttribute("shiroLoginFailure");
	    System.out.println("exception=" + exception);
	    String errorMsg = "";
	    String errorCode = "";
		if (exception != null) {
			if (UnknownAccountException.class.getName().equals(exception)) {
				System.out.println("UnknownAccountException -- > 账号不存在：");
				errorCode = "invalidPassword";
				errorMsg = "账号或者密码错误";
			} else if (IncorrectCredentialsException.class.getName().equals(exception)) {
				System.out.println("IncorrectCredentialsException -- > 密码不正确：");
				errorCode = "invalidPassword";
				errorMsg = "账号或者密码错误：";
			} else if ("kaptchaValidateFailed".equals(exception)) {
				System.out.println("kaptchaValidateFailed -- > 验证码错误");
				errorCode = "invalidYZM";
				errorMsg = "验证码错误";
			} else {
				errorCode = "UnknowError";
				errorMsg = "else >> "+exception;
				System.out.println("else -- >" + exception);
			}
		}
		map.put("errorCode", errorCode);
		map.put("errorMsg", errorMsg);
	    
	    return "/login";
		
	}
	
	
	
	@RequestMapping(value="logout")
	public String logout(HttpSession session){
		if(session.getAttribute("user")!=null){
			session.removeAttribute("user");
		}
		return "redirect:/login";
	}
	
	
	@RequestMapping(value="yzm")
	public void getYZM(HttpServletRequest request,HttpServletResponse response){
		try {
			ImageUtil.getYZM(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

package cn.org.cstc.bctest.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	public String login() {
		return "login";
	}

	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView login(@RequestParam("username")String userName,
						@RequestParam("password")String password,
						@RequestParam("code")String code,
						HttpSession session,
						RedirectAttributes attributes
	) 
	{
		ModelAndView modelAndView = null;
		boolean checkResult = true; 
		User user = userService.getUserByUsername(userName);
		if(user==null){
			modelAndView = new ModelAndView(new RedirectView("tologin"));
			attributes.addFlashAttribute("username",userName);
			attributes.addFlashAttribute("errorCode", "userNotExists");
			attributes.addFlashAttribute("errorMsg","该用户名不存在！");			
			checkResult = false;
			return modelAndView;
		}
		
		if(user!=null&&!user.getPassword().equals(password.trim())){
			modelAndView = new ModelAndView(new RedirectView("tologin"));
			
			attributes.addFlashAttribute("username",userName);
			attributes.addFlashAttribute("errorCode", "invalidPassword");
			attributes.addFlashAttribute("errorMsg","密码错误！");
			
			checkResult = false;
			return modelAndView;
		}
		String sessesionYZM = (String) session.getAttribute("YZM");
		if(code==null||(code!=null && !code.equals(sessesionYZM))){
			modelAndView = new ModelAndView(new RedirectView("tologin"));
			
			attributes.addFlashAttribute("username",userName);
			attributes.addFlashAttribute("errorCode", "invalidYZM");
			attributes.addFlashAttribute("errorMsg","验证码错误！");
			
			checkResult = false;
			return modelAndView;
		}
		
		if(checkResult){
			session.setAttribute("user", user);
			modelAndView = new ModelAndView(new RedirectView("account/index"));
			userService.updateLoginTime(user.getId());
			return modelAndView;
		}
		return modelAndView;
	}
	
	
	
	@RequestMapping(value="logout")
	public String logout(HttpSession session){
		if(session.getAttribute("user")!=null){
			session.removeAttribute("user");
		}
		return "redirect:/tologin";
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

package cn.org.cstc.bctest.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//System.out.println(">>>LoginInterceptor>>>>>>>在请求处理之前进行调用（Controller方法调用之前）");
//		if(request.getSession().getAttribute("user") == null){
//			response.sendRedirect("/tologin");
//			return false;
//		}else{
//			System.out.println("user login");
//			return true;
//		}
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		 //System.out.println(">>>LoginInterceptor>>>>>>>请求处理之后进行调用，但是在视图被渲染之前（Controller方法调用之后）");
		
	}
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		//System.out.println(">>>LoginInterceptor>>>>>>>在请求处理之前进行调用（Controller方法调用之后）");
	}

}

package cn.org.cstc.bctest.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import cn.org.cstc.bctest.interceptor.LoginInterceptor;

@Configuration
public class MyWebAppConfigurer extends WebMvcConfigurerAdapter {

	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		// addPathPatterns 用于添加拦截规则
		// excludePathPatterns 用户排除拦截
		registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/account/**").excludePathPatterns("/tologin");
		super.addInterceptors(registry);
	}

}

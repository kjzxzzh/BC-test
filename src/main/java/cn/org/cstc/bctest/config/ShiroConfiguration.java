package cn.org.cstc.bctest.config;

import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.Filter;

import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 *  Shiro 配置
 * @author zzh
 *Apache Shiro 核心通过 Filter 来实现,是通过URL规则来进行过滤和权限校验，所以我们需要定义一系列关于URL的规则和访问权限。
 *
 */

@Configuration
public class ShiroConfiguration {

	 /**
     * ShiroFilterFactoryBean 处理拦截资源文件问题。
     * 注意：单独一个ShiroFilterFactoryBean配置是或报错的，以为在
     * 初始化ShiroFilterFactoryBean的时候需要注入：SecurityManager
     *
        Filter Chain定义说明
       1、一个URL可以配置多个Filter，使用逗号分隔
       2、当设置多个过滤器时，全部验证通过，才视为通过
       3、部分过滤器可指定参数，如perms，roles
     *
     */
	 @Bean
	    public ShiroFilterFactoryBean shirFilter(SecurityManager securityManager) {
	        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
	        
	        Map<String, Filter> filters = shiroFilterFactoryBean.getFilters();//获取filters  
	        filters.put("authc", new CustomFormAuthenticationFilter());//将自定义 的FormAuthenticationFilter注入shiroFilter中   
	        
	        
	        // 必须设置 SecurityManager
	        
	        shiroFilterFactoryBean.setSecurityManager(securityManager);

	        // 如果不设置默认会自动寻找Web工程根目录下的"/login.jsp"页面
	        shiroFilterFactoryBean.setLoginUrl("/login");
	        // 登录成功后要跳转的链接
	        shiroFilterFactoryBean.setSuccessUrl("/account/index");
	        // 未授权界面;
	        shiroFilterFactoryBean.setUnauthorizedUrl("/403");

	        // 拦截器.
	        Map<String, String> filterChainDefinitionMap = new LinkedHashMap<String, String>();
	        // 配置不会被拦截的链接 顺序判断
	        filterChainDefinitionMap.put("/static/**", "anon");
	        filterChainDefinitionMap.put("/login", "authc");
	        //filterChainDefinitionMap.put("/**", "anon");
	        // 配置退出过滤器,其中的具体的退出代码Shiro已经替我们实现了
	        filterChainDefinitionMap.put("/logout", "logout");


	        // <!-- 过滤链定义，从上向下顺序执行，一般将 /**放在最为下边 -->:这是一个坑呢，一不小心代码就不好使了;
	        // <!-- authc:所有url都必须认证通过才可以访问; anon:所有url都都可以匿名访问-->
	        filterChainDefinitionMap.put("/account/**", "authc");

	        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);
	        System.out.println("Shiro拦截器工厂类注入成功");
	        return shiroFilterFactoryBean;
	    }
    
    @Bean
    public SecurityManager securityManager(){
       DefaultWebSecurityManager securityManager =  new DefaultWebSecurityManager();
       //设置realm.
       securityManager.setRealm(myShiroRealm());
       return securityManager;
    }
    
    @Bean
	public MyShiroRealm myShiroRealm(){
		MyShiroRealm myShiroRealm = new MyShiroRealm();
		myShiroRealm.setCredentialsMatcher(hashedCredentialsMatcher());;
		return myShiroRealm;
	}
    
    @Bean
	public HashedCredentialsMatcher hashedCredentialsMatcher(){
		HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
		
		hashedCredentialsMatcher.setHashAlgorithmName("md5");//散列算法:这里使用MD5算法;
		hashedCredentialsMatcher.setHashIterations(2);//散列的次数，比如散列两次，相当于 md5(md5(""));
		
		return hashedCredentialsMatcher;
	}
}

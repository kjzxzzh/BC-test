package cn.org.cstc.bctest.config;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import cn.org.cstc.bctest.bean.User;
import cn.org.cstc.bctest.service.IUserService;


	/**
	 * 身份校验核心类;
	 * @author zzh
	 *
	 */
public class MyShiroRealm extends AuthorizingRealm{

	@Autowired
	private IUserService userService;
	
    /**
     * 此方法调用  hasRole,hasPermission的时候才会进行回调.
     *
     * 权限信息.(授权):
     * 1、如果用户正常退出，缓存自动清空；
     * 2、如果用户非正常退出，缓存自动清空；
     * 3、如果我们修改了用户的权限，而用户不退出系统，修改的权限无法立即生效。
     * （需要手动编程进行实现；放在service进行调用）
     * 在权限修改后调用realm中的方法，realm已经由spring管理，所以从spring中获取realm实例，
     * 调用clearCached方法；
     * :Authorization 是授权访问控制，用于对用户进行的操作授权，证明该用户是否允许进行当前操作，如访问某个链接，某个资源文件等。
     * @param principals
     * @return
     */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// TODO Auto-generated method stub
		return null;
	}

	
	 /**
     * 认证信息.(身份验证)
     * :
     * Authentication 是用来验证用户身份
     * @param token
     * @return
     * @throws AuthenticationException
     */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		 
		System.out.println("MyShiroRealm.doGetAuthenticationInfo()");
	       //获取用户的输入的账号.
	       String username = (String)token.getPrincipal();
	       System.out.println(token.getCredentials());
	      
	       //通过username从数据库中查找 User对象，如果找到，没找到.
	       //实际项目中，这里可以根据实际情况做缓存，如果不做，Shiro自己也是有时间间隔机制，2分钟内不会重复执行该方法
	       User user = userService.getUserByUsername(username);
	       System.out.println("----->>user="+user);
	       if(user == null){
	           return null;
	       }
	      
	       /*
	        * 获取权限信息:这里没有进行实现，
	        * 请自行根据UserInfo,Role,Permission进行实现；
	        * 获取之后可以在前端for循环显示所有链接;
	        */
	       //userInfo.setPermissions(userService.findPermissions(user));
	      
	      
	       //账号判断;
	      
	       //加密方式;
	       //交给AuthenticatingRealm使用CredentialsMatcher进行密码匹配，如果觉得人家的不好可以自定义实现
	       SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
	              user, //用户名
	              user.getPassword(), //密码
	                ByteSource.Util.bytes(user.getCredentialsSalt()),//salt=username+salt
	                getName()  //realm name
	        );
	      

	      
	       return authenticationInfo;
	}

}

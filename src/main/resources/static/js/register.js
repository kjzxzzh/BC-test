function yzm(){
 	$("#yzm").attr("src", "yzm.html?" + Math.random());
}

function validate () {    
	var userName = $("#userName").val();
	var password = $("#password").val();
	var passwordConfirm = $("#passwordConfirm").val();
	var checkCode = $("#code").val();	
	var mobile = $("#mobile").val();

	//检查用户名
	//1. 检查用户名是否为空
	//2. 检查用户名格式，格式为3到16位数字字母下划线
		if(userName==""||userName==null||userName=="请输入用户名"){
			//	$('#mobile-tip').append("<span class='formtips onError' style='color:red'>请输入商户号或注册邮箱</span>");
			$("#m-tip").html("请输入用户名");
				return false;
		}
		if(!/^[a-zA-Z0-9_-]{3,16}$/.test(userName)){
			$("#m-tip").html("只能使用字母数字下划线,位数为3到16位");
			return false;
		}
			
	//检查验证码
	//1. 检查验证码是否输入
	//2. 检查验证码是否正确,改版为：在后端验证      
		if(checkCode.length <=0) {          
			$("#c-tip").html("请输入验证码！");
			return false;      
		}
//		if(inputCode != codeToUp ){  
//			$("#c-tip").html("验证码输入错误！");
//			createCode();      
//			return false;      
//		}

			
	//检查密码
	//1. 检查两次输入的密码是否一致
	//2. 检查密码属否为空	
	//3. 检查密码的位数
		if (password != passwordConfirm){
			$("#p2-tip").html("两次输入的密码不一致")
			return false;
		}
		if(password==""||password==null){      
			$("#p-tip").html("请输入密码！")
			return false;  
		}
		if (password.length<6){
			$("#p-tip").html("密码过短，至少6位！");
			return false;  
		}
	
	//检查手机号或者电话
		
		if(!/^((\d{3}-\d{8}|\d{4}-\d{7,8})|(1[3|5|7|8][0-9]{9}))$/.test(mobile)){
			$("#mobile-tip").html("请输入正确的手机号！");
			return false ;
		}
	return true;
}

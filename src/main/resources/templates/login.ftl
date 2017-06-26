<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/index.css" />
		<link href="css/login.css" rel="stylesheet" type="text/css" />
		<script src="js/jquery-1.10.1.js"></script>
		<script src="js/login-xin.js"></script>
		<script>
			//验证码
			function yzm(){
			 	$("#yzm").attr("src", "yzm.html?" + Math.random());
			}
		</script>
		
	</head>
	<body>  
	<#include "/head.ftl">    
<div class="login">

	
			<div class="login-con">
				<div class="login-a">
					<div class="login-a-b">
					<form id="loginForm" method="post" action="login" onsubmit="return validate()">
                      <div class="login-b">
                      	<div class="login-b-a">用户登陆</div>
                      	<div class="login-b-b">
                      		<ul>
                      			<!--用户名-->
                      			<li>
                      				<label for="username" >用&nbsp;&nbsp;户&nbsp;&nbsp;名：</label><input type="text" id="username" name="username" <#if username??>value="${username}</#if>"/>
                      			</li>                     			
                      			<!--密码-->
                      			<li>
                      				<label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label><input type="password" id="password" name="password"/>
                      				<h1 id="p-tip"><#if errorCode?? && errorCode == 'invalidPassword'>${errorMsg}</#if></h1>
                      			</li>
                      			<!--验证码-->
                      			<li>
                      				<label >验&nbsp;&nbsp;证&nbsp;&nbsp;码：</label><input type="text" id="input1" name="code" maxlength="4" />                                   
                                    <a href="javascript:yzm();" ">
                                    	<img id="yzm" src="pape/common/loading100x100.gif" style="width: 85px; height: 32px;" />
                                    	看不清楚
                                    </a>      
                                    <h1 id="c-tip"><#if errorCode?? && errorCode == 'invalidYZM'>${errorMsg}</#if></h1>
                      					
                      			   <!--输入错误时的输入框样式<input type="text" name="textfield" id="textfield" class="receSum-error" />-->
                                   <!--当输入的手机号码发生错误时，出现如下提示信息
                                   <p class="error-tips-1 spanRed">在此处显示错误的信息提示——如：对不起，您输入的手机号码格式有误，请重新输入！</p>-->
                      				
                      			</li>                      			
                      			<li class="login-x">
		                          <div class="login-x-a"><input type="submit" value="登录"id="Button1" onClick="validate();" /><div class="x"></div></div>
	                            </li>
                      			
                      		</ul>
                      	</div>
                      	<div class="login-b-c">
                      		<a href="register.html">立刻注册</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">忘记登录密码？</a>
                      	</div>
                      </div>
					</form>
					</div>
				</div>
			</div>
			
            
            <#include "/bottom.ftl">
</div>
		<script type="text/javascript">
			yzm();
			
			function validate() {    
				var username = $("#username").val();
				var password = $("#password").val();
				var checkCode = $("#input1").val();	
				if(username==""||username==null||username=="商户号或注册邮箱"){
					$("#m-tip").html("请输入用户名");
					return false;
				}
				else{	
					$("#m-tip").html("");
				}
				
				if(password==""||password==null){      
					$("#p-tip").html("请输入密码！")
 					return false;      
				}else{
					$("#p-tip").html("");
				}
				
				if(checkCode.length = 0 ) {      
					$("#c-tip").html("请输入验证码！");
				    return false;
				}
				
				if(checkCode.length < 4 ) {      
					$("#c-tip").html("验证码不完整！");
				    return false;
				}
			}
		</script>
</body>    
</html>

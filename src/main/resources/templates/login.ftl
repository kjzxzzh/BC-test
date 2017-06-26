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
<div class="login">
<div class="header">
			<div class="navbox">
				<div class="navbg"></div>
				<div class="nav fix">
					<div class="floatleft">
						<a href="index.html"><img src="./pape/logo.png"></a>
						<style type="text/css">
							.ahr{font-size: 18px;}
							.nav .ahr:hover{border:0;}
						</style>
						<a class="ahr" style=""> 欢迎登陆 ！！</a>
						
					</div>
					<div class="floatright">
							<div  style="">
								<a href="loginup.html" style="border-bottom: 0; margin-top: 0;">没有账户？ 立即注册</a>
							</div>
						<!--<div class="login" style="">
							<input type="button" value="退出">
							<input disabled="false" type="text" >
						</div>-->
						<!--<div class="phone">
							<img src="./pape/icon-phone.png">
							<span>咨询电话：010-88559372</span>
						</div>-->
					</div>
				</div>
			
			
			


	<div class="theme-popover-mask1"></div>


	<!--<div class="productnav producthover">
					<div class="productnav-a">
						
						<a href="#" target="_blank" class="product">
							<img class="img01" src="./pape/tce2.png">
							<img class="img02" src="./pape/tce.png">
							<h2>选择测试用例</h2>
						</a>
						<a href="#" class="product">
							<img class="img01" src="./pape/tc2.png">
							<img class="img02" src="./pape/tc.png">
							<h2>测试用例查看</h2>
						</a>
						
					</div>
				</div>
							
				<div class="productnav2 producthover2">
					<div class="productnav-a">
						<a href="#" target="_blank" class="product">
							<img class="img01" src="./pape/sc.png">
							<img class="img02" src="./pape/sc1.png">
							<h2>上传区块链</h2>
						</a>
						<a href="#" target="_blank" class="product">
							<img class="img01" src="./pape/cs.png">
							<img class="img02" src="./pape/cs1.png">
							<h2>区块链测试</h2>
						</a>
											
				</div>
				</div>
																												
				<div class="solutionnav solutionhover" style="background: #;">
					<div class="solutionnav-a">
						<a href="#" target="_blank" class="product">
							<img class="img01" src="./pape/sc.png">
							<img class="img02" src="./pape/sc1.png">
							<h2>上传测试用例</h2>
						</a>
						
					
					</div>
				</div>-->

</div>
		</div>
	
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
			<div class="footerbox" style="background: #fff;">
			<div class="footer fix">
				<div class="footer-a floatleft" style="margin-left: 0;">
					<h1 style="color: #666;">快速入口</h1>
					<a href="http://www.cstc.org.cn/templet/sheji/index.jsp" target="_blank">北京赛迪工业和信息化工程设计中心</a>
					<a href="http://www.cstc.org.cn/templet/jianli/" target="_blank">北京赛迪工业和信息化工程监理中心</a>
					<a href="javascript:;" target="_blank">北京赛迪工业和信息化技术培训中心</a>
					<a href="http://jingjiu.cstc.org.cn/jg.html" target="_blank">北京赛迪经久软件测评实验室有限公司</a>
					<a href="http://www.licat.com/" target="_blank">利猫网</a>
					<a href="http://www.cstccloud.org/" target="_blank">中国测试云</a>
				</div>
				<div class="footer-a floatleft">
					<h1 style="color: #666;">帮助与支持</h1>
					<a href="#" target="_blank">服务</a>
					<a href="#" target="_blank">解决方案</a>
					<a href="#" target="_blank">关于我们</a>
				</div>
				<div class="footer-a floatleft">
					<h1 style="color: #666;">关注我们</h1>
					<img src="./pape/weixin.png">
				</div>
				<div class="footer-line floatleft"></div>
				<div class="footer-a floatleft">
					<h2 style="color: #666;">010-88559239</h2>
					<h4 style="color: #666;"><img class="floatleft" src="./pape/footer1.png">service@cstc.org.cn</h4>
				</div>
			</div>
			<div class="footerinfo" style="color: #666; background: #fff; border-top: 2px solid #920000;">版权所有 © 2017 中国软件评测中心，保留一切权利。 京ICP备05009401号-1</div>
		</div>
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

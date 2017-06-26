<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery/jquery-1.4.min.js"></script>
		<script src="js/register.js"></script>
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/index.css" />
		<link href="css/login.css" rel="stylesheet" type="text/css" />
	</head>
	<body onLoad="yzm();">     
<#include "/head.ftl">       
<div class="login">
		
	
			<div class="login-con">
				<div class="login-a">
					<div class="login-a-b">
					<form id="loginForm" method="POST" action="register" onsubmit="return validate()">
                      <div class="login-b" style="height: 500px; margin-top: 8%;">
                      	<div class="login-b-a">新用户注册</div>
                      	<div class="login-b-b" style="height: 320px;">
                      		<ul>
                      			<li>
                      				<label for="userName" >用&nbsp;&nbsp;户&nbsp;&nbsp;名：</label><input type="text" id="userName" name="userName"/>
                      				<h1 id="m-tip"><#if errorCode?? && errorCode == 'existName'>${errorMsg}</#if></h1>
                      			</li>
                      			<li>
                      				<label for="password">设置密码：</label><input type="password" id="password" name="password"/>
                      				<h1 id="p-tip"></h1>
                      			</li>
                      			<li>
                      				<label for="password">确认密码：</label><input type="password" id="passwordConfirm" name="passwordConfirm"/>
                      				<h1 id="p2-tip"></h1>
                      			</li>
								<li>
                      				<label for="mobile">手机号码：</label><input type="text" id="mobile" name="mobile"/>
                      				<h1 id="mobile-tip"></h1>
                      			</li>


                      			<li>
                      				<label >验&nbsp;&nbsp;证&nbsp;&nbsp;码：</label><input type="text" id="code" name="code" />  
                      				<a href="javascript:yzm();" ">
                                    	<img id="yzm" src="pape/common/loading100x100.gif" style="width: 85px; height: 32px;" />
                                    	看不清楚
                                    </a>      
                                    <h1 id="c-tip"><#if errorCode?? && errorCode == 'invalidYZM'>${errorMsg}</#if></h1>
                                    
                                        
                      					
                      				<!--输入错误时的输入框样式<input type="text" name="textfield" id="textfield" class="receSum-error" />-->
                                   <!--当输入的手机号码发生错误时，出现如下提示信息
                                   <p class="error-tips-1 spanRed">在此处显示错误的信息提示——如：对不起，您输入的手机号码格式有误，请重新输入！</p>-->
                      				
                      			</li>
                      			<li>
							<div class="login-b-c">
                      		<a href="/login">已有账号登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">忘记登录密码？</a>
                      	    </div>
                                </li>
                      			<li class="login-x">
		                          <div class="login-x-a"><input type="submit" name="注册"value="注册"id="Button1"  /><div class="x"></div></div>
		                          
	                            </li>
                      			
                      		</ul>
                      	</div>
                      
                      </div>
					</form>
					</div>
				</div>
			</div>

            </div>
            <#include "/bottom.ftl">
		
</body>    
</html>

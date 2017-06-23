function validate() {
	var username = $("#username").val();
	var password = $("#password").val();
	var checkCode = $("#input1").val();
	if (username == "" || username == null || username == "用户名") {
		$("#m-tip").html("请输入登录用户名");
		return false;
	} else {
		$("#m-tip").html("");

		var inputCode = document.getElementById("input1").value.toUpperCase();
		var codeToUp = code.toUpperCase();
		if (inputCode.length <= 0) {
			// alert("请输入验证码！");
			$("#c-tip").html("请输入验证码！");
			return false;
		} else if (inputCode != codeToUp) {
			// alert("验证码输入错误！");
			$("#c-tip").html("验证码输入错误！");
			createCode();
			return false;
		} else {
			$("#c-tip").html("");
		}
		if (password == "" || password == null) {
			// alert("输入正确，输入的验证码为："+inputCode);
			$("#p-tip").html("请输入密码！")

			return false;
		}
		$("#p-tip").html("")
		return true;
	}
}
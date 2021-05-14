//使用正则表达式判断账号是否为空
		function userCheck() {
			if ($("#username")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
				$("#usermes")[0].innerHTML = "账号不能为空";
				return false;
			} else {
				$("#usermes")[0].innerHTML = "";
				return true;
			}
		}
		//判断密码是否为空
		function pwdCheck() {

			if ($("#password")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
				$("#pwdmes")[0].innerHTML = "密码不能为空";
				return false;
			} else {
				$("#pwdmes")[0].innerHTML = "";
				return true;
			}
		}
		//判断表单是否满足条件
		function checkForm() {
			var a = userCheck();
			var b = pwdCheck();
			if(a&&b){
				//出错
				return true;
			} else {
				//提交
				return false;
			}
		}

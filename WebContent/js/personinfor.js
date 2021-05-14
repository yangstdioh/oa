
//检查表单
//检查表单是否合法
function checkUpdateForm(){
	var a = checkrealname();
	var b = checkage();
	var c = checkbirthday();
	var d = checkphonenumber();
	var e = checkaddress();
	var f = checkemail();
	if(a&&b&&c&&d&&e&&f){
		alert("提交");
		return true;
	}else{
		alert("出错");
		return false;
	}
}
function $(id){
	//根据ID获取对象
	return document.getElementById(id);
}

//检查真实姓名是否为空
function checkrealname(){
	if ($("realname").value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("realnamemes").innerHTML = "真实姓名不能为空";
		return false;
	} else {
		$("realnamemes").innerHTML = "";
		return true;
	}
}
//检查年龄是否合法
function checkage(){
	if ($("age").value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("agemes").innerHTML = "年龄不能为空";
		return false;
	} else {
		var age = $("age").value;
		var reg=/(^[1-9][0-9]$|^[0-9]$|^100$)/;
		if(!reg.test(age)){
			$("agemes").innerHTML = "只能输入0到100整数";
			return false;
		}else{
			$("agemes").innerHTML = "";
			return true;
		}
	}
}
//检查生日是否合法
function checkbirthday(){
	if ($("birthday").value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("birthdaymes").innerHTML = "生日不能为空";
		return false;
	} else {
		//日期的正则表达式
		var reg = /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
		var regExp = new RegExp(reg);
		var birthday = $("birthday").value;
		if(!regExp.test(birthday)){
			$("birthdaymes").innerHTML = "日期格式不正确(yyyy-mm-dd)";
			return false;
		}else{
			$("birthdaymes").innerHTML = "";
			return true;
		}
	}
}
//检查电话是否合法
function checkphonenumber(){
	if ($("phonenumber").value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("phonenumbermes").innerHTML = "电话不能为空";
		return false;
	} else {
		var re = /^1\d{10}$/;
		var phonenumber = $("phonenumber").value;
		if(!re.test(phonenumber)){
			$("phonenumbermes").innerHTML = "电话号码格式不正确";
			return false;
		}else{
			$("phonenumbermes").innerHTML = "";
			return true;
		}
	}
}
//检查籍贯是否合法
function checkaddress(){
	if ($("address").value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("addressmes").innerHTML = "籍贯不能为空";
		return false;
	} else {
		$("addressmes").innerHTML = "";
		return true;
	}
}
//检查邮箱是否为合法
function checkemail(){
	if ($("email").value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("emailmes").innerHTML = "邮箱不能为空";
		return false;
	} else {
		var  re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
		var email = $("email").value;
		if(!re.test(email)){
			$("emailmes").innerHTML = "邮箱格式不正确";
			return false;	
		}else{
			$("emailmes").innerHTML = "";
			return true;
		}
	}
}
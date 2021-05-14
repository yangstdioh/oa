<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/login.jpg" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="cache-control" content="no-cache"> 
<link href="/oa/css/left.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="jquery/jquery-1.9.1.min.js"></script> 
<script type="text/javascript" src="layDate-v5.0.9/laydate/laydate.js"></script>
<style type="text/css">
  a{  
        text-decoration:none;  
   } 
</style>
</head>
<body topmargin="0" >
	<table width="100%" height="715" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <!-- 引入头部页面 -->
    <td height="140" colspan="2" align="center"><jsp:include flush="true" page="../adminpages/head.jsp"/></td>
  </tr>
  <tr>
    <!-- 引入左部页面 -->
    <td width="12%" height="550" align="center"><jsp:include flush="true" page="../adminpages/left.jsp"/></td>
    <!-- 引入右部页面 -->
    <td width="88%" align="center"  background="images/5.jpg" style="background-repeat:repeat-x;"><jsp:include flush='true' page="../adminpages/addUser.jsp"/></td>
  </tr>
</table>
</body>
<script type="text/javascript">
//日期控制控件
laydate.render({
	  elem: '#birthday' //指定元素
	});
//检查表单
function checkUForm(){
	var a = checkusername();
	var b = checkpassword();
	var c = checkrealname();
	var d = checkage();
	var e = checkbirthday();
	var f = checkphonenumber();
	var g = checkaddress();
	var h = checkemail();
	if(a&&b&&c&&d&&e&&f&&g&&h){
		alert("提交");
		return true;
	}else{
		alert("出错");
		return false;
	}
}
//检查用户名是否为空
function checkusername(){
	if ($("#username")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#usernamemes")[0].innerHTML = "账号不能为空";
		return false;
	} else {
		$("#usernamemes")[0].innerHTML = "";
		return true;
	}
}
//检查密码是否为空
function checkpassword(){
	if ($("#password")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#passwordmes")[0].innerHTML = "密码不能为空";
		return false;
	} else {
		$("#passwordmes")[0].innerHTML = "";
    	   return true;
	}
}
//检查真实姓名是否为空
function checkrealname(){
	if ($("#realname")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#realnamemes")[0].innerHTML = "真实姓名不能为空";
		return false;
	} else {
		$("#realnamemes")[0].innerHTML = "";
		return true;
	}
}
//检查年龄是否合法
function checkage(){
	if ($("#age")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#agemes")[0].innerHTML = "年龄不能为空";
		return false;
	} else {
		var age = $("#age")[0].value;
		var reg=/(^[1-9][0-9]$|^[0-9]$|^100$)/;
		if(!reg.test(age)){
			$("#agemes")[0].innerHTML = "只能输入0到100整数";
			return false;
		}else{
			$("#agemes")[0].innerHTML = "";
			return true;
		}
	}
}
//检查生日是否合法
function checkbirthday(){
	if ($("#birthday")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#birthdaymes")[0].innerHTML = "生日不能为空";
		return false;
	} else {
		//日期的正则表达式
		var reg = /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
		var regExp = new RegExp(reg);
		var birthday = $("#birthday")[0].value;
		if(!regExp.test(birthday)){
			$("#birthdaymes")[0].innerHTML = "日期格式不正确(yyyy-mm-dd)";
			return false;
		}else{
			$("#birthdaymes")[0].innerHTML = "";
			return true;
		}
	}
}
//检查电话是否合法
function checkphonenumber(){
	if ($("#phonenumber")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#phonenumbermes")[0].innerHTML = "电话不能为空";
		return false;
	} else {
		var re = /^1\d{10}$/;
		var phonenumber = $("#phonenumber")[0].value;
		if(!re.test(phonenumber)){
			$("#phonenumbermes")[0].innerHTML = "电话号码格式不正确";
			return false;
		}else{
			$("#phonenumbermes")[0].innerHTML = "";
			return true;
		}
	}
}
//检查籍贯是否合法
function checkaddress(){
	if ($("#address")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#addressmes")[0].innerHTML = "籍贯不能为空";
		return false;
	} else {
		$("#addressmes")[0].innerHTML = "";
		return true;
	}
}
//检查邮箱是否为合法
function checkemail(){
	if ($("#email")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#emailmes")[0].innerHTML = "邮箱不能为空";
		return false;
	} else {
		var  re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
		var email = $("#email")[0].value;
		if(!re.test(email)){
			$("#emailmes")[0].innerHTML = "邮箱格式不正确";
			return false;	
		}else{
			$("#emailmes")[0].innerHTML = "";
			return true;
		}
	}
}

</script>
</html>
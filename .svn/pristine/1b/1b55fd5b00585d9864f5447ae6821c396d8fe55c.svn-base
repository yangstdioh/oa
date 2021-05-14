<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html5/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/login.jpg" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="cache-control" content="no-cache"> 
<link href="/oa/css/left.css" rel="stylesheet" type="text/css"> 
<script type="text/javascript" src="jquery/jquery-1.9.1.min.js"></script> 
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
    <td width="88%" align="center"  background="images/5.jpg" style="background-repeat:repeat-x;"><jsp:include flush='true' page="../adminpages/addmac.jsp"/></td>
  </tr>
</table>
</body>
<script type="text/javascript">
//使用正则表达式判断账号是否为空
function checkusername() {
	if ($("#username")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#usernamemes")[0].innerHTML = "账号不能为空";
		return false;
	} else {
		$("#usernamemes")[0].innerHTML = "";
		return true;
	}
}
//判断MAC地址是否为空
function checkmacaddress() {
	if ($("#macaddress")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#macaddressmes")[0].innerHTML = "MAC地址不能为空";
		return false;
	} else {
		var temp = /[A-Fa-f0-9]{2}-[A-Fa-f0-9]{2}-[A-Fa-f0-9]{2}-[A-Fa-f0-9]{2}-[A-Fa-f0-9]{2}-[A-Fa-f0-9]{2}/;
		if (!temp.test($("#macaddress")[0].value)){
			$("#macaddressmes")[0].innerHTML = "输入的mac地址格式不正确，请以xx-xx-xx-xx-xx-xx的形式输入（xx为16进制数字）!";
		     return false;
		}else{
			$("#macaddressmes")[0].innerHTML = "";
			return true;
		}
	}
}
function checkmacForm(){
	var a = checkusername();
	var b = checkmacaddress();
	if(a&&b){
		//提交
		return true;
	}else{
		//出错
		return false;
	}
}
</script>
</html>
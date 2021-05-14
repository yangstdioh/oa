<%@page import="com.sanxia.oa.bean.User"%>
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
<%
  User user = (User)request.getSession().getAttribute("user");
  if(user==null){
	  request.getRequestDispatcher("/login.jsp").forward(request, response);
  }
%>
<body topmargin="0" >
	<table width="100%" height="715" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <!-- 引入头部页面 -->
    <td height="140" colspan="2" align="center"><jsp:include flush="true" page="../userpages/head.jsp"/></td>
  </tr>
  <tr>
    <!-- 引入左部页面 -->
    <td width="12%" height="550" align="center"><jsp:include flush="true" page="../userpages/left.jsp"/></td>
    <!-- 引入右部页面 -->
    <td width="88%" align="center"  background="images/5.jpg" style="background-repeat:repeat-x;"><jsp:include flush='true' page="../userpages/SendEmail.jsp"/></td>
  </tr>
</table>
</body>
<script type="text/javascript">
var timer =  setInterval( function selectMesCount(){
	 var mesUid = $("#mesUid")[0].value;
		//请求路径
	    var url = "selectMesCount";
	    //请求参数
	    var params = {mesUid:mesUid};
	    //Ajax的get请求
	    $.get(url,params,function(data){
	    	$("#warmMes")[0].innerHTML = data;
});
} ,1000);
//校验表单
function checkEmailForm(){
	var a = checkreceive();
	var b = checkemaiAddr();
	var c = checkemailContent();
	var d = checksubject();
	if(a&&b&&c&&d){
		alert("发送");
		return true;
	}else{
		alert("出错");
		return false;
	}
}
//判断收件人是否为空
function checkreceive(){
	if ($("#receive")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#receivemes")[0].innerHTML = "收件人不能为空";
		return false;
	} else {
		$("#receivemes")[0].innerHTML = "";
    	   return true;
	}
}
//判断邮箱地址是否合法
function checkemaiAddr(){
	if ($("#emaiAddr")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#emaiAddrmes")[0].innerHTML = "邮箱不能为空";
		return false;
	} else {
		var  re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
		var email = $("#emaiAddr")[0].value;
		if(!re.test(email)){
			$("#emaiAddrmes")[0].innerHTML = "邮箱格式不正确";
			return false;	
		}else{
			$("#emaiAddrmes")[0].innerHTML = "";
			return true;
		}
	}
}
//判断邮箱主题是否为空
function checksubject(){
	if ($("#subject")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#subjectmes")[0].innerHTML = "邮件主题不能为空";
		return false;
	} else {
		$("#subjectmes")[0].innerHTML = "";
    	   return true;
	}
}
//判断邮箱内容是否为空
function checkemailContent(){
	if ($("#emailContent")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#emailContentmes")[0].innerHTML = "邮件内容不能为空";
		return false;
	} else {
		$("#emailContentmes")[0].innerHTML = "";
    	   return true;
	}
}
function checkunreadmes(){
	 var warmMes = $("#warmMes")[0].innerHTML ;
	 if(warmMes =="(有未读信息)"){
		 return true;
	 }else{
		 alert("没有未读信息");
		 return false;
	 }
}
</script>
</html>
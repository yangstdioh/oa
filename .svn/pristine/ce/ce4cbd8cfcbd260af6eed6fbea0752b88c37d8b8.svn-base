<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sanxia.oa.bean.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
  User user = (User)request.getSession().getAttribute("user");
  if(user==null){
	  request.getRequestDispatcher("/login.jsp").forward(request, response);
  }
%>
<head>
<link rel="shortcut icon" href="images/login.jpg" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="cache-control" content="no-cache">
<link href="/oa/css/left.css" rel="stylesheet" type="text/css"> 
<script type="text/javascript" src="/jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/resetuser.js"></script>
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
    <td height="140" colspan="2" align="center"><jsp:include flush="true" page="../userpages/head.jsp"/></td>
  </tr>
  <tr>
   <!-- 引入左部页面 -->
    <td width="12%" height="500" align="center"><jsp:include flush="true" page="../userpages/left.jsp"/></td>
    <!-- 引入右部页面 -->
    <td width="88%" align="center" background="images/5.jpg" style="background-repeat:repeat-x;"><jsp:include flush="true" page="../userpages/resetPersonPwd.jsp"/>
    </td>
  </tr> 
</table>
</body>
<script type="text/javascript">
var timer =  setInterval( function selectMesCount(){
	 var mesUid = $("mesUid").value;
		//请求路径
	    var url = "selectMesCount";
	    //请求参数
	    var params = {mesUid:mesUid};
	    //Ajax的get请求
	    $.get(url,params,function(data){
	    	$("warmMes").innerHTML = data;
});
} ,1000);
//判断旧密码是否为空
function oldpwdCheck() {

	if ($("oldpassword").value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("oldpwdmes").innerHTML = "旧密码不能为空";
		return false ;
	} else {
		$("pwdmes").innerHTML = "";
		return true;
	}
}
//判断新密码是否为空
function newpwdCheck() {

	if ($("newpassword").value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("newpwdmes").innerHTML = "新密码不能为空";
		return false ;
	} else {
		$("pwdmes").innerHTML = "";
		return true;
	}
}
//检查表单
function checkResetPersonPwd(){
	var a = oldpwdCheck();
	var b = newpwdCheck();
	if (a&&b){
		alert("提交");
		return true;
	} else {
		alert("出错")
		return false;
	}
}
//根据ID获取对象
function $(id){
	return document.getElementById(id);
}
function checkunreadmes(){
	 var warmMes = $("warmMes").innerHTML ;
	 if(warmMes =="(有未读信息)"){
		 return true;
	 }else{
		 alert("没有未读信息");
		 return false;
	 }
}
</script>
</html>
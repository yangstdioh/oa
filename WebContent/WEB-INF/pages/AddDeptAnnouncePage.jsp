<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.sanxia.oa.bean.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html5/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/login.jpg" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="cache-control" content="no-cache">  
<link href="/oa/css/left.css" rel="stylesheet" type="text/css">
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
    <td width="88%" align="center"  background="images/5.jpg" style="background-repeat:repeat-x;"><jsp:include flush='true' page="../userpages/AddDeptAnnounce.jsp"/></td>
  </tr>
</table>
</body>
<script type="text/javascript">
function checkPublishForm(){
	var a = checkTitle();
	var b = checkContent();
	if(a&&b){
	alert("提交");
	return true;
	}else{
		alert("出错");
		return false;
	}
}
function $(id){
	//根据id获取对象
	return document.getElementById(id);
}
//判断公告名称是否为空
function checkTitle(){
	var title = $("title").value;
	if(title.replace(/(^\s*)|(\s*$)/g, "").length == 0){
		$("titlemes").innerHTML = "公告名称不能为空";
		return false;
	}else{
		$("titlemes").innerHTML = "";
		return true;
	}
}
//判断公告内容是否为空
function checkContent(){
	var content = $("content").value;
	if(content.replace(/(^\s*)|(\s*$)/g, "").length == 0){
		$("contentmes").innerHTML = "内容不能为空";
		return false;
	}else{
		$("contentmes").innerHTML = "";
		return true;
	}
}
</script>
</html>
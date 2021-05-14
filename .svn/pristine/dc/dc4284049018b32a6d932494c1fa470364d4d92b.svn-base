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

<script type="text/javascript" src="layDate-v5.0.9/laydate/laydate.js"></script> 
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
    <td width="88%" align="center"  background="images/5.jpg" style="background-repeat:repeat-x;"><jsp:include flush='true' page="../userpages/updatebacklog.jsp"/></td>
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
//检查表单
function checkbackLogForm(){
	var a = checkdate();
	var b = checkbacklog();
	if(a&&b){
		return true;
	}else{
		return false;
	}
}
function $(id){
	//根据ID获取对象
	return document.getElementById(id);
}
//判断时间是否为空
function checkdate(){
	if ($("date").value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("datemes").innerHTML = "时间不能为空";
		return false;
	} else {
	    	  $("datemes").innerHTML = "";
	          return true;
	      }
}
//判断待办事项是否为空
function checkbacklog(){
	if ($("backlog").value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("backlogmes").innerHTML = "待办事项不能为空";
		return false;
	} else {
		$("backlogmes").innerHTML = "";
		return true;
	}
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
//时间选择器
laydate.render({
  elem: '#date'
  ,type: 'datetime'
});
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.sanxia.oa.bean.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html5/loose.dtd">
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
<script type="text/javascript" src="layDate-v5.0.9/laydate/laydate.js"></script>
<script type="text/javascript" src="js/personinfor.js"></script>
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
    <td width="12%" height="550" align="center"><jsp:include flush="true" page="../userpages/left.jsp"/></td>
    <!-- 引入右部页面 -->
    <td width="88%" align="center"  background="images/5.jpg" style="background-repeat:repeat-x;"><jsp:include flush='true' page="../userpages/updateUserInfor.jsp"/></td>
  </tr>
</table>
</body>
<script type="text/javascript">
function $(id){
	//根据ID获取对象
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
//日期控制控件
laydate.render({
	  elem: '#birthday' //指定元素
	});
</script>
</html>
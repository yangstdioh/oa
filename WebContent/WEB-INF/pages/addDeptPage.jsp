<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    <td width="88%" align="center"  background="images/5.jpg" style="background-repeat:repeat-x;"><jsp:include flush='true' page="../dept/addDept.jsp"/></td>
  </tr>
</table>
</body>
<script type="text/javascript">
//获取XMLHttpRequest对象
function getXMLHttpRequest(){
	var xmlhttp;
	if (window.XMLHttpRequest)
	  {// 当前浏览器为 IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// 当前浏览器为IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	return xmlhttp;
}
//检查表单
function checkDeptForm(){
	var b = checkdeptName();
	if(b){
		
		return true;
	}else{
		
		return false;
	}
}
//检查部门名是否为空
function checkdeptName(){
	if ($("#deptName")[0].value.replace(/(^\s*)|(\s*$)/g, "").length == 0) {
		$("#deptNamemes")[0].innerHTML = "部门名称不能为空";
		return false;
	} else {
		$("#deptNamemes")[0].innerHTML = "";
		return true;
	}
		
}
function chDeptName(){
	//获取部门名称
	var deptName = $("#deptName")[0].value;
	//获取XMLHttpRequest对象
	var xmlHttp = getXMLHttpRequest();
	//请求路径
    var url = "selectDeptByName";
    //打开连接请求：post请求
    xmlHttp.open('post', url, true);
    //设置请求头：post请求必须设置，且在打开连接之后发送请求之前设置
    xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    //请求参数
    var params = "deptName="+deptName;
    //发送请求
    xmlHttp.send(params);
    //状态改变事件
    xmlHttp.onreadystatechange = result();
    return result();
}
function result(){
	      //获取响应状态判断
	      if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
	          //打印结果
	      var message = xmlHttp.responseText;
	          if(message.length == 0){
	        	  $("#deptNamemes")[0].innerHTML = ""; 
	        	  return true; 
	          }else{
	        	  $("#deptNamemes")[0].innerHTML = message;
	        	  return false; 
	          }
	      }
	}
</script>
</html>
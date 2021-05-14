<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="images/login.jpg" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="cache-control" content="no-cache"> 
<link href="/oa/css/left.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/jquery/jquery-1.9.1.min.js"></script>  
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
    <td width="12%" height="500" align="center"><jsp:include flush="true" page="../adminpages/left.jsp"/></td>
    <!-- 引入右部页面 -->
    <td width="88%" align="center" background="images/5.jpg"><jsp:include flush="true" page="../dept/searchDept.jsp"/>
    </td>
  </tr> 
</table>
</body>
<script type="text/javascript">
function checkConfirm(){
	if(window.confirm('你确定要删除部门吗？')){
        //alert("确定");
        return true;
     }else{
        //alert("取消");
        return false;
    }
}
//判断当前是否是第一页
function checkupbacklog(){
	var pageNow = document.getElementById("pageNow");
	if(pageNow.innerHTML==1){
		return false;
	}else{
		
		return true;
	}
}
//判断当前是否是最后一页
function checklastbacklog(){
	var pageNow = document.getElementById("pageNow").innerHTML;
	var pageCount = document.getElementById("pageCount").innerHTML;
	if(pageNow!=pageCount){
		return true;
	}else{
		return false;
	}
}

</script>
</html>
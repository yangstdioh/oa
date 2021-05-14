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
    <td width="88%" align="center" background="images/5.jpg" style="background-repeat:repeat-x;"><jsp:include flush="true" page="../adminpages/userInfor.jsp"/>
    </td>
  </tr> 
</table>
</body>
<script type="text/javascript">
function checkPageNow(){
	var jumpPage = document.getElementById("jumpPage").value;
	if(jumpPage.replace(/(^\s*)|(\s*$)/g, "").length != 0){
		if(parseInt(jumpPage)!=jumpPage){
			document.getElementById("jumpPagemes").innerHTML="只能输入整数";
			return false;	
		}else{
			document.getElementById("jumpPagemes").innerHTML="";
			return true;
		}	
	}else{
		document.getElementById("jumpPagemes").innerHTML="输入不能为空";
		return false;
	}
	
}
function checkUserConfirm(){
	if(window.confirm('你确定要删除用户吗？')){
        //alert("确定");
        return true;
     }else{
        //alert("取消");
        return false;
    }
}
</script>
</html>
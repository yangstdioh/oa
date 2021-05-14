<%@page import="org.apache.tomcat.util.http.Cookies"
        import="java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/oa/css/login.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="images/login.jpg" type="image/x-icon" />
<script type="text/javascript" src="jquery/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
</head>
<body  background="images/5.jpg" topmargin="0">
   <table width="100%" border="0" >
  <tr>
    <td colspan="2" bgcolor="#00CCFF" height="10;">&nbsp;</td>
  </tr>
  <tr>
    <td width="8%"><img src="images/tubiao.jpg" width="150" height="150" alt="1" /></td>
    <td width="92%" align="center" background="images/2.png" width="150" height="150" >
    <h1 style="color: #454545;">OA系统登录</h1></td>
  </tr>
  <tr>
    <td colspan="2" bgcolor="#00CCFF" height="10;">&nbsp;</td>
  </tr>
</table><br><br><br><br><br><br>
	<%
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			for(Cookie c:cookies){
				if(c.getName().equals("name")){
					request.setAttribute("name",URLDecoder.decode(c.getValue(),"UTF-8"));
				}else if(c.getName().equals("pwd")){
					request.setAttribute("pwd",c.getValue());
				}
			}
		}
	}
	%>
	<center >
		<form action="login.do"method="post" onsubmit="return checkForm()">
			<table border="0px" class="table1" background="images/6.jpg">
				<tr>
					<td class="usrpwd">用户名:</td>
					<td><input type="text" name="username" id="username"
						onblur="userCheck()" value="${requestScope.name }"></td>
					<td><span id="usermes" class="warm">${requestScope.warm }</span></td>
				</tr>
				<tr>
					<td class="usrpwd">密&nbsp;码:</td>
					<td><input type="password" name="password" onblur="pwdCheck()"
						id="password" value="${requestScope.pwd }"></td>
					<td><span id="pwdmes" class="warm"></span>
				</tr>
				<tr>
					<td align="center" class="usrpwd"><input type="radio"
						name="saveuser" value="保存用户">保存用户</td>
					<td align="center" class="usrpwd"><input type="radio"
						name="savepwd" value="保存密码">保存密码</td>
					<td align="left" class="usrpwd"><input type="radio"
					    name="admin" value="管理员登录">管理员登录</td>
				</tr>
				<tr>
					<td></td>
					<td><input class="submit" type="submit" value="登录"></td>
					<td></td>
				</tr>
			</table>
			<br>
		</form>
	</center>
</body>
</html>
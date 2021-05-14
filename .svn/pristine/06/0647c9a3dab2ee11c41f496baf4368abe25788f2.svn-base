<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<h2 style="color: #454545;">重置个人密码</h2><br><br><hr>
<center><br><br><br><br>
<form action="resetPersonPwd.do" method="post" onsubmit="return checkResetPersonPwd();">
<table border="0" cellspacing="15">
<tr align="center" height="40">
<td>用户名:<input readonly="readonly" type="text" value="${sessionScope.user.username}" name="username" id="username" onblur="userCheck();"></td>
<td></td>
</tr>
<tr align="center">
<td>旧密码:<input type="password" id="oldpassword" name="oldpassword" onblur="oldpwdCheck();"></td>
<td><span style="color: red" id="oldpwdmes">${oldpwdmes}</span></td>
</tr>
<tr align="center">
<td>新密码:<input type="password" id="newpassword" name="newpassword" onblur="newpwdCheck();"></td>
<td><span style="color: red" id="newpwdmes"></span></td>
</tr>
<tr >
<td align="center"><input style="height: 40px; width: 60px;" type="submit" value="重置" style="height: 30px;width: 40px;">&nbsp;
<a href="index"><input style="height: 40px; width: 60px;" type="button" value="返回" style="height: 30px;width: 40px;"></a>
</td>
</tr>
</table>
</form>
</center>
</body>

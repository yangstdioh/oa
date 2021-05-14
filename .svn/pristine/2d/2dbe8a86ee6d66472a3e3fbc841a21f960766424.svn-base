<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<center>
<h2>修改用户MAC地址</h2><br><br><br>
<form action="updateSign.do" onsubmit="return checkmacForm();" method="post">
<table width="50%" border="0" cellspacing="5" cellpadding="2">
  <tr>
    <td width="35%" height="30" align="right">用户账号:</td>
    <td width="68%" align="left">
    <input type="text" name="username" onblur="checkusername();" id="username">
    <span id="usernamemes" style="color: red;">${macmes}</span>
    </td>
  </tr>
  <tr>
  <td width="35%" height="35" align="right">MAC地址:</td>
  <td><input type="text" name="macaddress" id="macaddress" onblur="checkmacaddress();">
  <span id="macaddressmes" style="color: red;"></span></td>
  </tr>
   <tr>
    <td height="35"></td>
    <td ><input type="submit" value="保存" style="height: 40px; width: 50px;">&nbsp;&nbsp;
    <a href="admin"><input style="height: 40px; width: 50px;" type="button" value="返回" style="height: 30px;" ></a></td>
  </tr>
 </table>
</form>
</center>
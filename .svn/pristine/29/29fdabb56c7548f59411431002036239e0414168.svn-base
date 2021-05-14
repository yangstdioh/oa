<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<center>
<h2>发送邮件</h2><br><br><br><hr>
<form action="sendEmail.do" onsubmit="return checkEmailForm();" method="post">
<table width="50%" border="0" cellspacing="5" cellpadding="2">
   <tr>
    <td width="35%" height="30" align="right"></td>
    <td width="68%" align="left">
    <input type="hidden"   name="userId"  id="userId" value="${sessionScope.user.id}">
    </td>
  </tr>
  <tr>
    <td width="35%" height="30" align="right">用户名:</td>
    <td width="68%" align="left">
    <input type="text" readonly="readonly"  name="username"  id="username" value="${sessionScope.user.username}">
    <span id="usernamemes" style="color: red;"></span>
    </td>
  <tr>
    <td width="35%" height="30" align="right">收件人:</td>
    <td width="68%" align="left">
    <input type="text"  name="receive"  id="receive" onblur="checkreceive();">
    <span id="receivemes" style="color: red;"></span>
    </td>
  </tr>
  <tr>
  <td width="35%" height="35" align="right">邮箱地址:</td>
  <td><input type="text"  name="emaiAddr" id="emaiAddr" onblur="checkemaiAddr();">
  <span id="emaiAddrmes" style="color: red;"></span></td>
  </tr>
  <tr>
  <td width="35%" height="35" align="right">邮件主题:</td>
  <td><input type="text"  name="subject" id="subject" onblur="checksubject();">
  <span id="subjectmes" style="color: red;"></span></td>
  </tr>
  <tr>
  <td width="35%" height="35" align="right">邮件内容:</td>
  <td><textarea rows="3" cols="20" name="emailContent" id="emailContent" onblur="checkemailContent();"></textarea>
  <span id="emailContentmes" style="color: red;"></span></td>
  </tr>
   <tr>
    <td height="35"></td>
    <td ><input type="submit" value="发送" style="height: 40px; width: 70px;">&nbsp;&nbsp;
    <a href="index"><input style="height: 40px; width: 70px;" type="button" value="返回" style="height: 30px;" ></a></td>
  </tr>
 </table>
</form>
</center>
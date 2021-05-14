<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<center>
<h2>回复${message.sendName}信息</h2><br><br><br><hr>
<form action="sendMessage.do" onsubmit="return checkSendMessageForm();" method="post">
<table width="50%" border="0" cellspacing="5" cellpadding="2">
   <tr>
    <td width="35%" height="30" align="right"></td>
    <td width="68%" align="left">
    <input type="hidden"   name="userId"  id="userId" value="${sessionScope.user.id}">
    </td>
  </tr>
  
  <tr>
    <td width="35%" height="30" align="right">联系人:</td>
    <td width="68%" align="left">
    <input type="text" name="sendName" id="sendName" readonly="readonly" value="${message.sendName}">
    </td>
  </tr>
  <tr>
    <td width="35%" height="30" align="right"></td>
    <td width="68%" align="left">
    <input type="hidden"  name="username"  id="username" value="${sessionScope.user.username}">
    </td>
    </tr>
  <tr>
  <td width="35%" height="35" align="right">输入信息:</td>
  <td><textarea rows="4" cols="30" name="message" id="message" onblur="checkmessage();"></textarea>
  <span id="messagemes" style="color: red;"></span></td>
  </tr>
  <tr>
    <td width="35%" height="30" align="right"></td>
    <td width="68%" align="left">
     <input type="hidden"   name="receiverId"  id="receiveId" value="${message.sendId}">
    </td>
    </tr>
   <tr>
    <td height="35"></td>
    <td ><input type="submit" value="发送" style="height: 40px; width: 70px;">&nbsp;&nbsp;
    <a href="index"><input style="height: 40px; width: 70px;" type="button" value="返回" style="height: 30px;" ></a></td>
  </tr>
 </table>
</form>
</center>
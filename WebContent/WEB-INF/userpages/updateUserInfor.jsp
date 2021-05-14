<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sanxia.oa.bean.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<center>
<h2>个人基本信息</h2><br><br><br>
<%
     User user = (User)request.getAttribute("user");
     int x = user.getSex()=='男'?1:0;
     request.setAttribute("x", x);
%>
<form action="updatePersonInfor.do" onsubmit="return checkUpdateForm();" method="post">
<table width="50%" border="0" cellspacing="5" cellpadding="2">
  <tr>
    <td width="35%" height="35" align="right">用户名:</td>
    <td width="68%" align="left">
    <input type="text" name="username" value="${user.username }" readonly="readonly"></td>
  </tr>
  <tr>
   <td height="35" align="right">真实姓名:</td>
    <td align="left"><input type="text" value="${user.realname }" name="realname" id="realname" onblur="checkrealname();">
    <span id="realnamemes" style="color: red;"></span></td>
  </tr>
  <tr>
   <td height="35" align="right">部&nbsp;门:</td>
    <td align="left"><select name="deptId">
    <option value="${dept.deptId }">${dept.deptName}</option>
    </select></td>
  </tr>
  <tr>
   <td height="35" align="right">职&nbsp;位:</td>
    <td align="left">
    <c:if test="${user.roleId==1 }">
    <input type="hidden" value="${user.roleId}" readonly="readonly" name="role" id="role" >
    <input type="text" value="员工" readonly="readonly" name="roleId" id="roleId" >
    </c:if>
     <c:if test="${user.roleId==2 }">
    <input type="hidden" value="${user.roleId}" readonly="readonly" name="role" id="role" >
    <input type="text" value="部长" readonly="readonly" name="roleId" id="roleId" >
    </c:if>
    </td>
  </tr>
   <tr>
   <td height="35" align="right">年&nbsp;龄:</td>
    <td align="left"><input value="${user.age }" type="text" name="age" id="age" onblur="checkage();">
   <span id="agemes" style="color: red;"></span> </td>
  </tr>
  <tr>
   <td align="right" height="35">性&nbsp;别:</td>
    <td align="left"><select  id="sex" name="sex" >
     <c:if test="${x==1 }">
      <option value="女" >女</option> 
      <option value="男" selected="selected">男</option>
     </c:if>
     <c:if test="${x==0 }">
      <option value="女"  selected="selected">女</option> 
      <option value="男">男</option>
     </c:if>
    </select></td>
  </tr>
  <tr>
   <td height="35" align="right">生&nbsp;日:</td>
    <td align="left"><input type="text" name="birthday" id="birthday" onblur="checkbirthday();" value="${user.birthday }">
   <span id="birthdaymes" style="color: red;"></span> </td>
  </tr>
  <tr>
   <td height="35" align="right">电&nbsp;话:</td>
    <td align="left"><input type="text" name="phonenumber" id="phonenumber" onblur="checkphonenumber();" value="${user.phonenumber }">
   <span id="phonenumbermes" style="color: red;"></span> </td>
  </tr>
   <tr>
   <td height="35" align="right">籍&nbsp;贯:</td>
    <td align="left"><input type="text" name="address" id="address" onblur="checkaddress();" value="${user.address }">
   <span id="addressmes" style="color: red;"></span> </td>
  </tr>
   <tr>
   <td height="35" align="right">邮&nbsp;箱:</td>
    <td align="left"><input type="text" name="email" id="email" onblur="checkemail();" value="${user.email }">
   <span id="emailmes" style="color: red;"></span> </td>
  </tr>
   <tr>
   <td align="right" height="35">婚姻状况:</td>
    <td align="left"><select  name="ismarriage" >
    <option value="${user.ismarriage }" selected="selected">${user.ismarriage }</option>
    <option value="未婚" >未婚</option>
    <option value="已婚">已婚</option>
    <option value="离异">离异</option>
    </select></td>
  </tr>
  <tr>
    <td align="right" height="35"><input type="submit" value="修改" style="height: 40px; width: 50px;"></td>
    <td align="left">&nbsp;&nbsp;<a href="index"><input type="button" value="返回" style="height: 40px; width: 50px;" ></a></td>
  </tr>
</table>
</form>
</center>
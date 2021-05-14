<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<center>
<h2>添加新用户</h2><br>
<form action="addUser.do" onsubmit="return checkUForm();" method="post">
<table width="50%" border="0" cellspacing="5" cellpadding="2">
  <tr>
    <td width="35%" height="35" align="right">用户名:</td>
    <td width="68%" align="left">
    <input type="text" name="username" id="username" onblur="checkusername();">
    <span id="usernamemes" style="color: red;">${usernamemes}</span></td>
  </tr>
  <tr>
   <td height="35" align="right">密&nbsp;码:</td>
    <td align="left"><input type="password" name="password" id="password" onblur="checkpassword();" >
    <span id="passwordmes" style="color: red;"></span></td>
  </tr>
  <tr>
   <td height="35" align="right">真实姓名:</td>
    <td align="left"><input type="text" name="realname" id="realname" onblur="checkrealname();" >
    <span id="realnamemes" style="color: red;"></span></td>
  </tr>
  <tr>
   <td height="35" align="right">部&nbsp;门:</td>
    <td align="left"><select name="deptId">
    <c:forEach items="${depts }" var="dept" >
     <option value="${dept.deptId }">${dept.deptName}</option>
    </c:forEach>
    </select></td>
  </tr>
  <tr>
   <td height="35" align="right">年&nbsp;龄:</td>
    <td align="left"><input type="text" name="age" id="age" onblur="checkage();" >
   <span id="agemes" style="color: red;"></span> </td>
  </tr>
  <tr>
   <td align="right" height="35">性&nbsp;别:</td>
    <td align="left"><select  name="sex" >
    <option value="男" selected="selected">男</option>
    <option value="女">女</option>
    </select></td>
  </tr>
  <tr>
   <td height="35" align="right">生&nbsp;日:</td>
    <td align="left"><input type="text" name="birthday" id="birthday" onblur="checkbirthday();" >
   <span id="birthdaymes" style="color: red;"></span> </td>
  </tr>
  <tr>
   <td height="35" align="right">电&nbsp;话:</td>
    <td align="left"><input type="text" name="phonenumber" id="phonenumber" onblur="checkphonenumber();" >
   <span id="phonenumbermes" style="color: red;"></span> </td>
  </tr>
   <tr>
   <td height="35" align="right">籍&nbsp;贯:</td>
    <td align="left"><input type="text" name="address" id="address" onblur="checkaddress();" >
   <span id="addressmes" style="color: red;"></span> </td>
  </tr>
   <tr>
   <td height="35" align="right">邮&nbsp;箱:</td>
    <td align="left"><input type="text" name="email" id="email" onblur="checkemail();" >
   <span id="emailmes" style="color: red;"></span> </td>
  </tr>
  <tr>
   <td align="right" height="35">婚姻状况:</td>
    <td align="left"><select  name="ismarriage" >
    <option value="未婚" selected="selected">未婚</option>
    <option value="已婚">已婚</option>
    <option value="离异">离异</option>
    </select></td>
  </tr>
  <tr>
   <td align="right" height="35">用户角色:</td>
    <td align="left"><select  name="roleId" >
    <option value="1" selected="selected">员工</option>
    <option value="2">部长</option>
    <option value="3">管理员</option>
    </select></td>
  </tr>
  <tr>
    <td align="right" height="35"><input type="submit" value="保存" style="height: 30px;"></td>
    <td align="left">&nbsp;&nbsp;<a href="admin"><input type="button" value="返回" style="height: 30px;" ></a></td>
  </tr>
</table>
</form>
</center>
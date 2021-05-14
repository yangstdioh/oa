<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<center>
<h2>修改部门信息</h2><br><br><br>
<form action="updateDept.do" onsubmit="return checkDeptForm();" method="post">
<table width="50%" border="0" cellspacing="5" cellpadding="2">
   <tr>
    <td width="35%" height="35" align="right">部门ID:</td>
    <td width="68%" align="left">
    <input type="text" readonly="readonly" name="deptId"  value="${dept.deptId}">
   </td>
  <tr>
    <td width="35%" height="35" align="right">操作人:</td>
    <td width="68%" align="left">
    <input type="text" readonly="readonly" name="addname"  value="${sessionScope.admin}">
   </td>
  </tr>
  <tr>
   <td height="35" align="right">部门名称:</td>
    <td align="left"><input type="text" name="deptName" id="deptName" onblur="checkdeptName();" value="${dept.deptName}">
    <span id="deptNamemes" style="color: red;">${deptNamemes }</span></td>
  </tr>
  <tr>
    <td align="right" height="35"><input type="submit" value="保存" style="height: 30px;"></td>
    <td align="left">&nbsp;&nbsp;<a href="admin"><input type="button" value="返回" style="height: 30px;" ></a></td>
  </tr>
</table>
</form>
</center>
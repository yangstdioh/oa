<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<script>
		    /**
		     * 展开或关闭左部菜单
		     * @param {Object} thisz
		     */
			function openOrCloseMenu(thisz, isLast) {
				//console.log(thisz);
				//console.log(thisz.id);
				//获得所有子级菜单项
				var childNodes = document.getElementsByName(thisz.id);
				//console.log(childNodes.length);
				//定义记录关闭或展开菜单的状态
				var isOpen = false;
				//循环显示或隐藏子级菜单项
				for(i=0; i<childNodes.length; i++) {
					//获得当前子级菜单项
					var childNode = childNodes[i];
					//console.log(childNode.style.display);
					//判断显示或隐藏
					if(childNode.style.display=="none") { //隐藏状态
						//显示当前子级菜单项
						childNode.style.display = "block";
						//展开
						isOpen = true;
					} else { //显示状态
						//隐藏当前子级菜单项
						childNode.style.display = "none";
						//关闭
						isOpen = false;
					}
				}
				//判断是否是最后一个父级菜单选项, 以及是否关闭状态
				if(isLast&&!isOpen) {
					thisz.style.borderBottomLeftRadius = "5px";
					thisz.style.borderBottomRightRadius = "5px";
				} else {
					thisz.style.borderBottomLeftRadius = "0px";
					thisz.style.borderBottomRightRadius = "0px";
				}
			}
	</script>

<aside>
			<!-- 无序列表 制作左部导航菜单 -->
			<ul id="menu">
				<li id="001" class="menu_active menu_active_first" onclick="openOrCloseMenu(this,true)"><a href="javascript:void(0);">员工管理</a></li>
				<li name="001">	<a href="addUserPage" >添加员工</a></li>
				<li name="001"><a href="selectAllUser" >查询员工信息</a></li>
				<li name="001"><a href="resetUserPwdPage" >账号密码重置</a></li>
				<li id="002" class="menu_active menu_active_last" onclick="openOrCloseMenu(this,true)"><a href="javascript:void(0);">公告管理</a></li>
				<li name="002" class="menu_hidden"><a href="jumpUpPublishPage" >发布公告</a></li>
				<li id="003" class="menu_active menu_active_last" onclick="openOrCloseMenu(this,true)"><a href="javascript:void(0);">部门管理</a></li>
				<li name="003" class="menu_hidden"><a href="selectAllDept?pageNow=1" >查询部门信息</a></li>
				<li name="003" class="menu_hidden"><a href="jumpaddDeptPage" >添加部门信息</a></li>
				<li id="004" class="menu_active menu_active_last" onclick="openOrCloseMenu(this,true)"><a href="javascript:void(0);">在线签到管理</a><span id="warmMes" style="color: red;"></span></li>
				<li name="004" class="menu_hidden"><a href="jumpaddmacpage" >添加MAC地址</a></li>
				<li name="004" class="menu_hidden"><a href="jumpupdatemacpage" >修改MAC地址</a></li>
			</ul>
		</aside>

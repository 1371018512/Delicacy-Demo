<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script type="text/javascript">
	var curUser=null;
	$(document).ready(function(){
		$.get("${ctx}/portal/getCurrentUser",function(data){
			curUser=data;
			if(curUser!=null&&curUser!=undefined){
				$("#userInfoLi").html('<a href="${ctx}/page4">'+curUser.loginName+'</a>');
				$("#userOperationLi").html('<a href="${ctx}/logout">注销</a>');
			}else{
				$("#userInfoLi").html('<a href="${ctx}/login">登录</a>');
				$("#userOperationLi").html('<a href="${ctx}/login">注册</a>');
			}
		},"json");
	});
</script>
<ul class="nav navbar-nav col-md-4 col-md-offset-2">
	<li id="userInfoLi">								
		<a href="${ctx}/login">登录</a>
	</li>
	<li id="userOperationLi">
		<a href="${ctx}/signin">注册</a>
	</li>
</ul>
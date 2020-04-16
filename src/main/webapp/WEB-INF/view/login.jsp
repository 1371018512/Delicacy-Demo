<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>

	<head>
		<title>event</title>
		<link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	</head>
	<style type="text/css">
		#container {
			height: 300px;
			width: 400px;
			position: absolute;
			
			left: 50%;
			top: 40%;
			transform: translate(-50%, -50%);
		}
		button{
			width: 80%;
			position: relative;
			left: 50%;
			transform: translateX(-50%);
		}
		#warning{
			display:none;
			width:350px;
			height:40px;
			background:grey;
			position:absolute;
			left: 50%;
			top:100%;
			border-radius:10px;
			transform: translate(-50%, 0);
			color:red;
			text-align:center;
			line-height:40px;
		}
	</style>

	<body>
		<%
			String error=(String)request.getAttribute("shiroLoginFailure");
			if(error!=null){
		%>
		<script type="text/javascript">				
				$(document).ready(function(){
					//document.getElementById("warning").textContent="用户名不存在或密码错误！";
					$("#warning").stop().fadeIn().fadeOut(2000);
				});	
		</script>
		<%
			}
		%>
		<div id="container">
			<form role="form" method="post" action="${ctx}/login">
				<h1>
					请登录
				</h1>
				<div class="form-group">
					<input type="email" class="form-control" id="username" name="username" placeholder="邮箱" required autofocus value="${username}">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="password" name="password" placeholder="密码">
				</div>
				<div class="checkbox">
					<label>
				      <input type="checkbox" name="rememberMe" value="true"> 记住密码
				    </label>
				</div>
				<button type="submit" class="btn btn-primary">进入邮箱</button>
			</form>
			<div id="warning"><%=error%></div>
		</div>
	</body>

</html>
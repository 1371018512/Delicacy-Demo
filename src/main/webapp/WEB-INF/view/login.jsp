<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

	<head>
		<title>event</title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
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
	</style>

	<body>
		<div id="container">
			<form role="form">
				<h1>
					请登录
				</h1>
				<div class="form-group">
					<input type="email" class="form-control" id="exampleInputEmail1" placeholder="邮箱">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="exampleInputPassword1" placeholder="密码">
				</div>
				<div class="checkbox">
					<label>
				      <input type="checkbox"> 记住密码
				    </label>
				</div>
				<button type="submit" class="btn btn-primary">进入邮箱</button>
			</form>
		</div>
	</body>

</html>
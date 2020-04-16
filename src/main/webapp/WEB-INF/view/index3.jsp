<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>臻品生活家</title>
		<style>
			body{
				overflow-x: hidden
			}
			
			.itemBox{
				border: gainsboro 1px solid;
				margin-top: 20px;
				
				width: 100%;
			
			}
			.title{
				margin-top: 40px;
				font-size: 30px;
			}
			.btnContent{
				margin: 30px 0;
				display: flex;
			}
			.btn{
				margin: 0 auto;
			}
		</style>
		<!-- Bootstrap -->
		<link href="${ctx}/static/css/bootstrap.min.css" rel="stylesheet">

		<!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
		<!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
		<!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
	</head>

	<body>
		<nav class="navbar-default">
			<div class="row">
				<div class="col-md-10 col-md-offset-2">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-responsive-collapse">
				         <span class="sr-only">Toggle Navigation</span>
				         <span class="icon-bar"></span>
				         <span class="icon-bar"></span>
				         <span class="icon-bar"></span>
				       </button>
							<!-- 确保无论是宽屏还是窄屏，navbar-brand都显示 -->
							<a class="navbar-brand" href="#">臻品生活家</a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-responsive-collapse row" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav col-md-6">
								<li>
									<c:url value="/portal/page1" var="page1Url" />
									<a href="${page1Url}">首页</a>
								</li>
								<li>
									<c:url value="/portal/page2" var="page2Url" />
									<a href="${page2Url}">美食</a>
								</li>
								<li  class="active">
									<a href="#">活动</a>
								</li>
								<li>
									<a href="#">关于</a>
								</li>
							</ul>
							<ul class="nav navbar-nav col-md-4 col-md-offset-2">
								<li>
									<a href="${ctx}/login">登录</a>
								</li>
								<li>
									<a href="${ctx}/signin">注册</a>
								</li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</div>
			</div>

		</nav>
		<div id="main-content" class="row">
			<div class="col-md-8 col-md-offset-2 itemBox" >
				<p class="title">新年家宴</p>
				<p><span class="glyphicon glyphicon-map-marker"></span>上海</p>
				<p><strong>活动时间:</strong>2017年1月5日 10:30-13:30</p>
				<p><strong>活动地点:</strong>上海市徐汇区桃红路8号</p>
				<p>学习制作，佤乡辣子鱼，石屏香煎包浆豆腐，演示，香辣野生牛杆菌，品尝、石林鸡丝凉米线...</p>
				<hr />
				<img src="${ctx}/static/images/yunnan01.jpg" style="width: 100%;"/>
				<div class="btnContent">
					<button type="button" class="btn btn-default">点击预约</button>	
				</div>
							
			</div>
		</div>
		
		<div class="row">
			<h5 class="page-header col-md-8 col-md-offset-2"></h5>
			<div class="col-md-8 col-md-offset-2">
				<footer class="footer">
					<p class="container">
						© 2018 臻品生活家
					</p>
				</footer>
				<a src="#" class="pull-right">回到顶部</a>
			</div>
		</div>
		<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
		<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
		<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
		<script src="${ctx}/static/js/bootstrap.min.js"></script>
	</body>

</html>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			#content2{
				display: flex;
				justify-content: center;
			}
			.itemBox{
				display: flex;
				flex-wrap:wrap;
				justify-content: space-between;
				flex-direction: row;
				
			}
			.item{
				flex-basis: 220px;
				margin-top: 20px;
				padding: 5px;
				height: 300px;
				border: gainsboro 1px solid;
			}
			.itemImage{
				width: 100%;
			}
			.title{
				color: dodgerblue;
				font-size: 30px;
				margin-top: 20px;
				margin-bottom: 0px;
			}
			.date{
				
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
								<li  class="active">
									<a href="#">美食</a>
								</li>
								<li>
									<c:url value="/portal/page3" var="page3Url" />
									<a href="${page3Url}">活动</a>
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
				<div class="item">
					<img src="${ctx}/static/images/lunbo1.jpg" class="itemImage">
					<p class="title">红酒雪梨</p>
					<p class="date">2017.1.18</p>
					<p>面粉、玉米面、温水、细砂糖、酵母粉、南瓜泥、葡萄干。</p>
				</div>
				<div class="item">
					<img src="${ctx}/static/images/lunbo1.jpg" class="itemImage">
					<p class="title">红酒雪梨</p>
					<p class="date">2017.1.18</p>
					<p>面粉、玉米面、温水、细砂糖、酵母粉、南瓜泥、葡萄干。</p>
				</div>
				<div class="item">
					<img src="${ctx}/static/images/lunbo1.jpg" class="itemImage">
					<p class="title">红酒雪梨</p>
					<p class="date">2017.1.18</p>
					<p>面粉、玉米面、温水、细砂糖、酵母粉、南瓜泥、葡萄干。</p>
				</div>
				<div class="item">
					<img src="${ctx}/static/images/lunbo1.jpg" class="itemImage">
					<p class="title">红酒雪梨</p>
					<p class="date">2017.1.18</p>
					<p>面粉、玉米面、温水、细砂糖、酵母粉、南瓜泥、葡萄干。</p>
				</div>
				<div class="item">
					<img src="${ctx}/static/images/lunbo1.jpg" class="itemImage">
					<p class="title">红酒雪梨</p>
					<p class="date">2017.1.18</p>
					<p>面粉、玉米面、温水、细砂糖、酵母粉、南瓜泥、葡萄干。</p>
				</div>
			</div>
		</div>
		<div id="content2">
			<nav aria-label="Page navigation">
			  <ul class="pagination">
			    <li>
			      <a href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			    <li>
			      <a href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
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
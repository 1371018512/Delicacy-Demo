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
			#box a:hover{
				color:grey;				
			}
			#box a{
				color:black;
				text-decoration:none;
			}
			#backToTop{
				cursor:pointer;
			}
		</style>
		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

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
								<li class="active">
									<a href="#">首页</a>
								</li>
								<li>
									<c:url value="/page2" var="page2Url" />
									<a href="${page2Url}">美食</a>
								</li>
								<li>
									<c:url value="/page3" var="page3Url" />
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
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active" style="height: 500px;">
					<img src="images/fstp01.jpg" alt="picture1" style="width: 100%;">
					<div class="carousel-caption">
						<h1>法式苹果塔</h1>
						<button class="btn btn-primary" type="button">查看详情</button>
						<br /><br />
					</div>
				</div>
				<div class="item" style="height: 500px;">
					<img src="images/fstp02.jpg" alt="picture2" style="width: 100%;">
					<div class="carousel-caption">
						<h1>奶油泡芙</h1>
						<button class="btn btn-primary" type="button">查看详情</button>
						<br /><br />
					</div>
				</div>
				<div class="item" style="height: 500px;">
					<img src="images/yunnan02.jpg" alt="picture1" style="width: 100%;">
					<div class="carousel-caption">
						<h1>剁椒烤鱼</h1>
						<button class="btn btn-primary" type="button">查看详情</button>
						<br /><br />
					</div>
				</div>
			</div>

			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		<div class="row" style="margin-top:30px ;" id="box">
			<div class="col-md-2 col-md-offset-2" style="text-align: center;">
				<c:url value="/page2" var="page2Url" />
				<a href="${page2Url}">
					<img src="images/meishi.png" />
					<h1>美食</h1>
					<h4>
			      		体验极致烹饪。
			      	</h4>
				</a>				
				<br /><br />
			</div>
			<div class="col-md-2 col-md-offset-1" style="text-align: center;">
				<c:url value="/page3" var="page3Url" />
				<a href="${page3Url}">
					<img src="images/huodong.png" />
					<h1>活动</h1>
					<h4>
			      		我们号召城中所有的美食达人，辣妈主播，烘焙大师，城市OL等民间高手，爱好生活、美食的伙伴都将聚于此。
			      	</h4>
				</a>				
				<br /><br />
			</div>
			<div class="col-md-2 col-md-offset-1" style="text-align: center;">
				<c:url value="/page4" var="page4Url" />
				<a href="${page4Url}">
					<img src="images/wode.png" />
					<h1>我的</h1>
					<h4>
			      		更多个人信息管理
			      	</h4>
				</a>
				
				<br /><br />
			</div>
		</div>
		<div class="row">
			<h5 class="page-header col-md-8 col-md-offset-2"></h5>
			<div class="col-md-8 col-md-offset-2">
				<footer class="footer">
					<p class="container" style="color: lightslategrey;">
						© 2018 臻品生活家
					</p>
				</footer>
				<a src="#" class="pull-right" id="backToTop">回到顶部</a>
			</div>
		</div>

		<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
		<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
		<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
		<script src="js/bootstrap.min.js"></script>
	</body>
	<script>
		document.getElementById("backToTop").addEventListener("click",function(e){
			var timeId=requestAnimationFrame(function(){
				var oTop = document.body.scrollTop || document.documentElement.scrollTop;
				if(oTop > 0){
					document.body.scrollTop = document.documentElement.scrollTop = oTop - 50;
					timeId = requestAnimationFrame(arguments.callee);
				}else{
					cancelAnimationFrame(timeId);
				} 
			});
			event.stopPropagation();
		})
	</script>
</html>
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
			.div1{
				height: 1200px;
				background: gainsboro;
				padding-right: 0 !important;
				min-width: 150px;
			}
			p{
				margin: 0 !important;
			}
			.menuItem{
				color: dodgerblue;
				font-size: 18px;
				padding-left:30px ;
				height: 40px;
				width: 100%;
				display: flex;
				align-items: center;
			}
			.div1>.active{
				background: lightblue !important;
			}
			
			#left-content{
				padding-top: 30px;
			}
			#left-content a{
				cursor: pointer;
			}
			#left-content a:hover{
				text-decoration: none;
			}
			.div2{
				padding-top: 30px;
				padding-left: 100px;
				
			}
			img{
				margin-top: 20px;
				max-width: 100px;
				max-height: 100px;
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
									<c:url value="/portal/page1" var="page1Url" />
									<a href="${page1Url}">退出</a>
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
			<div class="col-md-3 col-xs-3 div1" id="left-content">
				<div class="menuItem">
					<c:url value="/page4" var="page4Url" />
					<a href="${page4Url}">收藏的美食</a>
				</div>
				<div class="menuItem">
					<a>预约的活动</a>
				</div>
				<div class="menuItem">
					<a>设置</a>
				</div>
				<div class="menuItem active">
					<a>美食发布</a>
				</div>
				<div class="menuItem">
					<a>活动发布</a>
				</div>
			</div>
			<div class="col-md-9 col-xs-9 div2" id="right-content">
				<form class="form-horizontal" role="form">
				  <div class="form-group">
				    <label for="name" class="col-sm-2 control-label">美食名称</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control" id="name" placeholder="请输入美食名称">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="picture" class="col-sm-2 control-label">上传照片</label>
				    <div class="col-sm-8">
				      <input type="file" id="picture">
				      <img id="myImage" src="">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="material" class="col-sm-2 control-label">材料</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control" id="material" placeholder="请输入材料">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="count" class="col-sm-2 control-label">步骤数</label>
				    <div class="col-sm-8">
				      <input type="number" onfocus="this.blur();" min="1" max="5" step="1" class="form-control" id="count" placeholder="请输入步骤数" oninput="value=value.replace(/[^\d]/g,'')">
				    </div>
				    <div class="col-sm-2">
				      <button type="button" class="btn btn-success" name="affirm" onclick="check()">确定</button>
				    </div>
				  </div>
				</form>
			</div>
		</div>
		<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
		<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
		<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
		<script src="${ctx}/static/js/bootstrap.min.js"></script>
	</body>
	<script>
		document.querySelectorAll(".menuItem").forEach(function(item,index,arr){
			item.addEventListener("mouseenter",function(e){
				//item.classList.add("mask");
				item.style.background="rgba(0,0,0,0.1)";
			})
			item.addEventListener("mouseleave",function(e){
				item.style.background="rgba(0,0,0,0)";
			})
		})
		document.documentElement.addEventListener("change",function(e){
			if(e.target.type=="file"){
				var img=e.target.nextElementSibling;
				var fileDom=e.target;
				var reader=new FileReader();
				console.log(reader);
				reader.readAsDataURL(fileDom.files[0]);				
				reader.onload=function(){
					img.setAttribute("src",reader.result);
				}
			}
		})
		function check(){
			var count=parseInt(document.getElementById("count").value);
			if(count>5){
				count=5;
				alert("步骤过多！");
			}
			var form=document.getElementsByTagName("form")[0];
			var eles=document.getElementsByClassName('step');
			for(var i = eles.length - 1; i >= 0; i--) {
			    eles[i].parentNode.removeChild(eles[i]);
			}
			form.elements["affirm"].innerHTML="重置步骤";
			form.elements["affirm"].classList.remove("btn-success");
			form.elements["affirm"].classList.add("btn-warning");
			if(count){
				for(let i=0;i<count;i++){
					var el1=document.createElement("div");
					el1.classList.add("form-group");
					el1.classList.add("step");
					el1.innerHTML=
					    "<label for=\"step"+(i+1)+"\" class=\"col-sm-2 control-label\">步骤"+(i+1)+"</label>"+
					    "<div class=\"col-sm-8\">"+
					      "<input type=\"text\" class=\"form-control\" id=\"step"+(i+1)+"\" placeholder=\"请输入美食名称\">"+
					    "</div>";
					form.appendChild(el1);
					var el2=document.createElement("div");
					el2.classList.add("form-group");
					el2.classList.add("step");
					el2.innerHTML=
					    "<label for=\"picture\" class=\"col-sm-2 control-label\">上传照片</label>"+
					   	"<div class=\"col-sm-8\">"+
					      "<input type=\"file\" id=\"picture\">"+
					      "<img id=\"myImage\" src=\"\">"+
					    "</div>"
					form.appendChild(el2);
				}
			}
		}
	</script>
</html>
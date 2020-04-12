<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
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
		<div id="container">
			<form role="form">
				<h1>
					请注册
				</h1>
				<div class="form-group">
					<input type="email" class="form-control" id="exampleInputEmail1" placeholder="邮箱">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="exampleInputPassword1" placeholder="密码">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="exampleInputPasswordCheck" placeholder="再次输入密码">
				</div>
				<button  class="btn btn-primary">注册</button>
			</form>
			<div id="warning"></div>
		</div>
	</body>
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<script>
		var pwInput=document.getElementById("exampleInputPassword1");
		var checkInput=document.getElementById("exampleInputPasswordCheck");
		var userName=document.getElementById("exampleInputEmail1");
		var subbt=document.getElementsByTagName("button")[0];
		var flagU=false;
		var flagPwd=false;
		var flagCpwd=false;
		userName.addEventListener("blur",function(e){
			//dconsole.log("${ctx}/signin/checkLoginName?loginName="+userName.value);
			$.get("${ctx}/signin/checkLoginName?loginName="+userName.value,function(data,status){
				var ret=data;
				//console.log(ret);
				if(!ret){
					document.getElementById("warning").textContent="用户名已经存在！";
					$("#warning").stop().fadeIn().fadeOut(2000);
					flagU=false;
				}else{
					flagU=true;
				}
			})
		})
		pwInput.addEventListener("blur",function(e){
			if(this.value.length<6){
				document.getElementById("warning").textContent="密码必须包含6位以上数字、字符或字符！";
				$("#warning").stop().fadeIn().fadeOut(2000);
				flagPwd=false;
			}else{
				flagPwd=true;
			}
		})
		checkInput.addEventListener("blur",function(e){
			if(pwInput.value!=this.value){
				document.getElementById("warning").textContent="两次密码不一致！";
				$("#warning").stop().fadeIn().fadeOut(2000);	
				flagCpwd=false;
			}else{
				flagCpwd=true;
			}
		})
		subbt.addEventListener("click",function(e){
			e.preventDefault();
			//console.log("ddd");
			if(flagU&&flagPwd&&flagCpwd){
				//console.log("ddd");
				let data={
						LoginName:userName.value,
						Password:pwInput.value
				}
				//console.log(data);
				$.post("${ctx}/signin",data,function(e,status){
					console.log(e);
					var res=$.parseJSON(e);
					if(res.success){
						//console.log("???")
						alert("注册成功，点击确定跳转至登录页面！");
						window.location.href="${ctx}/login";
					}else{
						document.getElementById("warning").textContent="注册失败，已经存在该用户！";
						$("#warning").stop().fadeIn().fadeOut(2000);
					}
				})
			}else{
				document.getElementById("warning").textContent="表单信息存在错误！";
				$("#warning").stop().fadeIn().fadeOut(2000);
			}
		})
		
	</script>
</html>
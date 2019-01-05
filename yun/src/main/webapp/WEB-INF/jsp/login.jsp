<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>登陆</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="../css/login.css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/login.js"></script>
<title></title>
</head>

<body>
	<div id="slider-title">
		<img src="img/logo.png" height="45" width="45" />
		<div id="title-logo">云盘</div>
	</div>
	<div class="slider">
		<ul class="slider-main">
			<li class="slider-panel"><a href="#" ><img
					alt="云盘" title="云盘" src="../img/a.jpg"></a></li>
			<li class="slider-panel"><a href="#" ><img
					alt="云盘"   src="img/d.jpg"></a></li>
			<li class="slider-panel"><a href="#" ><img
					alt="云盘" title="云盘" src="../img/g.jpg"></a></li>
			<li class="slider-panel"><a href="#" ><img
					alt="云盘" title="云盘" src="../img/f.jpg"></a></li>
		</ul>
		<div class="slider-extra">
			<ul class="slider-nav">
				<li class="slider-item"></li>
				<li class="slider-item"></li>
				<li class="slider-item"></li>
				<li class="slider-item"></li>
			</ul>
		</div>
	</div>

	<div id="login">
		<form action="user/login.action" method="post">
			<div id="form-title">账号密码登录</div>
			<input type="text" placeholder="用户名" name="username" class="login-input" id="name" />
			<input type="password" placeholder="密码" name="password" class="login-input" /><br/>
			<input type="submit" value="登录" class="login-btn" /><br/>
			<div id="bottom">
				<div id="inner">
					<div>
						<input type="submit" onclick="return regist()" value="立即注册" class="submit">
					</div>
					<div class="clearFloat"></div>
				</div>
			</div>
		</form>
	</div>
</body>
<script type="text/javascript">
	function regist(){
		window.location.href = "user/regist.action";
		return false;
	}
</script>
</html>

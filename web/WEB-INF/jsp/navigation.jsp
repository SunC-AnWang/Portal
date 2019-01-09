
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
		<title>物流管理系统</title>
		<meta name="keywords" content="蚂蚁物流" />
		<meta name="description" content="蚂蚁物流" />
		<link href="resources/Css/layout.css" rel="stylesheet" type="text/css">
		<link href="resources/Css/login.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="resources/Js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="resources/Js/js.js"></script>
                
	</head>
	<style>
		.ibar {display: none;}
	</style>
	<body class="login-bg">
		<div class="main ">
			<!--登录-->
			<div class="login-dom login-max">
				
				<div class="login container " id="login">
					
					
					
						<form class="login-form" action="login" method="post" autocomplete="off">
						
						<input type="submit" class="btn text-center login-btn" value="物流内部员工">
                                                
                                                
                                                </form>
                                    
                                    
                                                <form class="login-form" action="adminLogin" method="post" autocomplete="off">
						
						<input type="submit" class="btn text-center login-btn" value="超级管理员">
                                                 
                                                
                                                </form>
                                    
<!--                                                <div class="logo text-center">
					
					<img src="resources/Images/logo.png" width="180px" height="180px">
					
				       </div>-->
					
				</div>
			</div>

			
		</div>
	</body>
	
	

</html>

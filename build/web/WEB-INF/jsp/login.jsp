
<%@page contentType="text/html" language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <title>登录首页</title>
        <base href="${pageContext.request.contextPath}/">
        <meta http-equiv="pragma" content="no-cache">  
        <meta http-equiv="cache-control" content="no-cache">  
        <meta http-equiv="expires" content="0">      
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
        <meta http-equiv="description" content="This is my page"> 
             <link href="resources/Css/layout.css" rel="stylesheet" type="text/css">
		<link href="resources/Css/login.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="resources/Js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="resources/Js/js.js"></script>
        
        <!--<link rel="stylesheet" href="resources/css/style.css"/>-->
        
        
        <link rel="stylesheet" href="resources/csss/reset.css" />
	<link rel="stylesheet" href="resources/csss/login.css" />
        <script type="text/javascript" src="resources/jss/jquery.min.js"></script>
        <script type="text/javascript" src="resources/jss/login.js"></script>
        <!--登陆页面效果-->
    </head>
         
    <body class="login-bg">
        
        <%
            String uname="";
            String pwd="";
            Cookie[] cookies=request.getCookies();
            if(cookies!=null){
                for(Cookie c:cookies){ //遍历cookies数组
                    if(c.getName().equals("eid")) //判断当前遍历Cookie的名称是否是username
                        uname=c.getValue(); //是的话获取其值
                  if(c.getName().equals("epwd")) //判断当前Cookie的名称是否是password
                        pwd=c.getValue(); //是的话获取其值
                }  }   %>
                
                <!--使用cookie记住用户-->
                       
                
                
                
           <div class="page">
	              <div class="loginwarrp">
       
		
                <div class="login_form">
			<form id="Login" name="Login" method="post" onsubmit="" action="login/login">
				<li class="login-item">
					<span>登陆 账号：</span>
					<input type="text" id="eid" name="eid" value="<%=uname==null?"":uname %>"   class="login_input" >
                                        <span id="count-msg" class="error"></span>
				</li>
				<li class="login-item">
					<span>登陆 密码：</span>
					<input type="password" id="epwd" name="epwd"  value="<%=pwd==null?"":pwd %>"  class="login_input" >
                                        <span id="password-msg" class="error"></span>
				</li>
				<li class="login-item verify">
					<span>验证码：</span>
					<input type="text" name="code" class="login_input verify_input">
                                        
                                       
                                        
                                          
				</li>
                                 <img src="number.jsp" border="0" class="verifyimg" />
				<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 
                                 <%  
    String incode = (String)request.getParameter("code");   
    String rightcode = (String)session.getAttribute("rCode");   
      
    if(incode != null && rightcode != null){  
        if(incode.equals(rightcode)){  
           out.println("输入正确！");  
        }else{  
          out.println("请重新输入！");  
        }  
    }  
 %> 
				<div class="clearfix"></div> 
				<li class="login-sub">
                                    
                                    
                                    
                                    
                              
					<input type="submit" name="Submit" value="登录" />
                                        <input type="reset" name="Reset" value="重置" />
                                              
                                
                                        
				</li>     
                                <input type="checkbox" checked name="remember" value="Y" id="ck1">
                                       
                                <label for="ck1">记住密码</label>
           </form>
		</div>
                      </div>  
                       </div>
   
                                 
                
           
        
    </body>
</html>

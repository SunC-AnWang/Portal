<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>物流管理系统管理员界面</title>
                 <base href="${pageContext.request.contextPath}/">
		<link rel="stylesheet" type="text/css" href="resources/Css/identify.css" />
		<link rel="stylesheet" type="text/css" href="resources/Css/layout.css" />
		<link rel="stylesheet" type="text/css" href="resources/Css/account.css" />
		<link rel="stylesheet" type="text/css" href="resources/Css/style.css" />
		<link rel="stylesheet" type="text/css" href="resources/Css/control_index.css" />
		<script type="text/javascript" src="resources/Js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="resources/Js/layer/layer.js"></script>
		<script type="text/javascript" src="resources/Js/haidao.offcial.general.js"></script>
		<script type="text/javascript" src="resources/Js/select.js"></script>
		<script type="text/javascript" src="resources/Js/haidao.validate.js"></script>
	</head>

	<body>
		<div class="view-topbar">
			<div class="topbar-console">
				<div class="tobar-head fl">
					<a  class="topbar-logo fl">
					<span><img src="resources/Images/logo.png" width="20" height="20"/></span>
					</a>
					<a  href="javascript:history.back(-1)"  class="topbar-home-link topbar-btn text-center fl"><span>管理员界面</span></a>
				</div>
			</div>
			<div class="topbar-info">
				<ul class="fr">
					<li class="fl topbar-info-item">
					<div class="dropdown">
						<a  class="topbar-btn">
						<span class="fl text-normal">${admin.pwd}</span>
						<span class="icon-arrow-down"></span>
						</a>
						<ul class="dropdown-menu">
							
                                                        <li><a  id=HyperLink3 onclick="logout()" href="javascript:window.opener=null;%20window.close();">退出系统</a></li>
						</ul>
					</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="view-body">
			<div class="view-sidebar">
				<div class="sidebar-content">
                                    <div class="sidebar-nav">
						<div class="sidebar-title">
							<a >
								<span class="icon"><b class="fl icon-arrow-down"></b></span>
								<span class="text-normal">管理中心</span>
							</a>
						</div>
						<ul class="sidebar-trans">
							<li>
                                                                <a href="<%=path%>/employeesInfo/showAllEmployeesInfo" target="iframe_a">
									<b class="sidebar-icon"><img src="resources/Images/icon_cost.png" width="16" height="16" /></b>
									<span class="text-normal">员工管理</span>
								</a>
							</li>
							<li>
                                                                <a href="<%=path%>/occupations/showAllOccupations" target="iframe_a">
								
									<b class="sidebar-icon"><img src="resources/Images/icon_authentication.png" width="16" height="16" /></b>
									<span class="text-normal">职位管理</span>
								</a>
							</li>
							<li>
                                                                <a href="<%=path%>/departments/showAllDepartments" target="iframe_a">
								
									<b class="sidebar-icon"><img src="resources/Images/icon_news.png" width="16" height="16" /></b>
									<span class="text-normal">部门管理</span>
								</a>
							</li>
					 		
						</ul>
					</div>
                                    
				</div>
			</div>
                                <div class="view-product background-color">
				<div class="padding-big background-color">
					<div class="account-product margin-big-top clearfix">
                                            <iframe src="<%=path%>/indexPart" width="1125" height="800" frameborder="0" name="iframe_a"></iframe>
							
                                                       
                                                        
						
							
                                            
                                            
                                            
                                            
                                            
                                            
                                            
  
					</div>
				</div>
			</div>                                  
                                                                        
                                                                        
                                                                        
                                                                        
			
		</div>

		<script>
			$(".sidebar-title").live('click', function() {
				if ($(this).parent(".sidebar-nav").hasClass("sidebar-nav-fold")) {
					$(this).next().slideDown(200);
					$(this).parent(".sidebar-nav").removeClass("sidebar-nav-fold");
				} else {
					$(this).next().slideUp(200);
					$(this).parent(".sidebar-nav").addClass("sidebar-nav-fold");
				}
			});
		</script>
                
                
                
//退出系统                   
<script language="javascript" type="text/javascript">
    function logout(){
      if (confirm("您确定要退出系统吗？"))
            top.location="<%=path%>/";
         return false;
    }
</script>
	</body>

</html>

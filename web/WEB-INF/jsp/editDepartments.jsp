
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
		<title>物流管理系统用户界面</title>
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
                <script src="resources/js/jquery-3.3.1.min.js"></script>
                 
	</head>

	<body>
		
		
                                                                        

                                                                                
 
				<div class="authority">
					<div class="authority-head">
						<div class="manage-head">
							<h6 class="layout padding-left manage-head-con">编辑部门信息
							<span class="fr text-small text-normal padding-top">物流系统</span>
							<span class="fr margin-large-right padding-top text-small text-normal">最新版本：<em class="text-main">2.4.0.160708</em></span>
							</h6>
						</div>
					</div>
					<div class="authority-content">
						<div class="list-content show">
							<div class="offcial-table tr-border margin-big-top clearfix">
								<div class="tr-th clearfix">
									<div class="th w20">
										部门编号
									</div>
									<div class="th w20">
										部门名称
									</div>
                                                                    
									<div class="th w15">
										其他信息
									</div>
									<div class="th w15">
										
									</div>
									<div class="th w15">
                                                                                
									</div>
									<div class="th w15">
										操作
									</div>
								</div>
                                                            
                                                            <form action="departments/editDepartments">
                                                            
                                                            
								<div class="tr clearfix border-bottom-none">
									<div class="td w20">
									<input type="text" name="deId" value="${de.deId}">	
									</div>
									<div class="td w20">
									<input type="text" name="edepartment" value="${de.edepartment}">	
									</div>
									<div class="td w15">
										<input type="text" name="other" value="${de.other}">
									</div>
									<div class="td w15">
                                                                            
									</div>
									<div class="td w15">
                                                                            
									</div>
									<div class="td w15">
                                                                                 
                                                                            <input type="submit" value="提交更改">
                                                                            
									</div>
								</div>
                                                            
                                                            
                                                            </form>
                                                            
                                                            
                                                            
                                                            
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
	</body>

</html>


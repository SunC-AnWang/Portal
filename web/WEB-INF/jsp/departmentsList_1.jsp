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
		<title>物流管理员界面</title>
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
                <script src="resources/Js/jquery-3.3.1.min.js"></script>
                 
	</head>

	<body>
		

                                                                                 
 
				<div class="authority">
					<div class="authority-head">
						<div class="manage-head">
							<h6 class="layout padding-left manage-head-con">部门管理
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
                                                            
                                                            <c:forEach items="${departmentsList}" var="de">
                                                            
                                                            
								<div class="tr clearfix border-bottom-none">
									<div class="td w20">
										${de.deId}
									</div>
									<div class="td w20">
										${de.edepartment}
									</div>
									<div class="td w15">
										${de.other}
									</div>
									<div class="td w15">
										
									</div>
									<div class="td w15">
										
									</div>
									<div class="td w15">
                                                                                 <a href="departments/toAddDepartments" class="button-word2 btn_ajax_confirm">添加</a>
                                                                                 <a href="departments/toEditDepartments?deId=${de.deId}" class="button-word2 btn_ajax_confirm">编辑</a>
										 <a href="javascript:deleteDepartments(${de.deId})" class="button-word2 btn_ajax_confirm">删除</a>
									</div>
								</div>
                                                                        
                                                            
                                                            
                                                            </c:forEach> 
                                                            
                                                            
                                                            
							</div>
						</div>
                                            
                                            
					</div>
				</div>
			</div>    
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                                
                                                                        
                       
                                                                        
                                                                        
                                                                        
           <script>
            function deleteDepartments(deId) {
                $.ajax({
                    url:'departments/deleteDepartments',
                    type: "POST",
                    data: {"deId": deId}, //发送编号给服务器删除员工信息
                    success: function () {
                        //服务器删除员工的同时从表格删除当前行
                        //需要在打印tr的时候给每个tr一个id用于区分没一行
                       
                        $("#" + deId).remove(); //remove删除当前元素和其内容
                         alert("删除成功！");
                    },
                    error: function () {
                        alert("Ajax请求失败!");
                    }
                });
            }
        </script>                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        

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


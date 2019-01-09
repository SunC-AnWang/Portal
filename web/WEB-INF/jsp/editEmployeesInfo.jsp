
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
							<h6 class="layout padding-left manage-head-con">修改个人信息
							<span class="fr text-small text-normal padding-top">物流系统</span>
							<span class="fr margin-large-right padding-top text-small text-normal">最新版本：<em class="text-main">2.4.0.160708</em></span>
							</h6>
						</div>
					</div>
					<div class="authority-content">
                                            
                                            <form action="<%=path%>/employeesInfo/editEmployeesInfo">
                                           
						<div class="list-content show">
                                                    
							<div class="offcial-table tr-border margin-big-top clearfix">
								<div class="tr-th clearfix">
									<div class="th w20">
										员工编号
									</div>
									<div class="th w20">
										员工姓名
									</div>
                                                                    
									<div class="th w15">
										员工性别
									</div>
									<div class="th w15">
										员工密码
									</div>
									<div class="th w15">
                                                                                员工部门
									</div>
									<div class="th w15">
										员工职位
									</div>
								</div>
                                                            
                                                            
                                                            
                                                            
								<div class="tr clearfix border-bottom-none">
									<div class="td w20">
                                                                            <input type="text"  readonly  unselectable="on"  name="eid" value="${e.eid}">
									
									</div>
                                                                        
									<div class="td w20">
									<input type="text" name="ename" value="${e.ename}">	
									</div>
									<div class="td w15">
										<input type="text" name="egender" value="${e.egender}">
									</div>
									<div class="td w15">
                                                                            <input type="text" name="epwd" pattern="{3,10}"   value="${e.epwd}">
									</div>
									<div class="td w15">
										<input type="text" name="edepartment" value="${e.edepartment}">
									</div>
									<div class="td w15">
                                                                                 
                                                                            <input type="text" name="eoccupation" value="${e.eoccupation}">
                                                                            
									</div>
								</div>
                                                          
							</div>
                                                                            
                                                                            
                                                                            
                                                <div class="offcial-table tr-border margin-big-top clearfix">
								<div class="tr-th clearfix">
									<div class="th w20">
										员工级别
									</div>
									<div class="th w20">
										联系电话
									</div>
                                                                    
									<div class="th w15">
										员工薪资
									</div>
									<div class="th w15">
										员工邮箱
									</div>
									<div class="th w15">
                                                                                
									</div>
									<div class="th w15">
										操作
									</div>
								</div>
                                                            
                                                            
                                                            
                                                            
								<div class="tr clearfix border-bottom-none">
									<div class="td w20">
									<input type="text" name="eanswer" value="${e.eanswer}">
									</div>
									<div class="td w20">
									<input type="text" pattern="^1[0-9]{10}$" name="ephone"  value="${e.ephone}">	
									</div>
									<div class="td w15">
										<input type="text" name="esalary" value="${e.esalary}">
									</div>
									<div class="td w15">
										<input type="email" name="email" value="${e.email}">
									</div>
									<div class="td w15">
										
									</div>
									<div class="td w15">
                                                                                 
                                                                            <input type="submit" value="提交更改">
                                                                            
									</div>
                                                                                                                     

								</div>
                                                          
							</div>                            
                                                                            
                                                                            
                                                                            
                                        

						</div>
                                             </form>
                                            
					</div>
				</div>
		  
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                                
		
                                                                        
                       
                                                                        
                                                                        
                                                                        
            <script>
            function deleteAreas(rid) {
                $.ajax({
                    url:'areas/deleteAreas',
                    type: "POST",
                    data: {"rid": rid}, //发送编号给服务器删除员工信息
                    success: function () {
                        //服务器删除员工的同时从表格删除当前行
                        //需要在打印tr的时候给每个tr一个id用于区分没一行
                        $("#" + rid).remove(); //remove删除当前元素和其内容
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


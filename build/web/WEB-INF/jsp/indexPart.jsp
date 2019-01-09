
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
	</head>

	<body>
		
		
			
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
			
				<div class="padding-big background-color">
					<div class="account-info clearfix">
						<div class="text-box-main min-width-300 fl">
							<dl>
								<dt class="padding-big-left lists-border-list clearfix">
									<div class="title fl padding-big-top padding-big-bottom">
										
										<p class="margin-small-top clearfix">
											<span class="fl"><em class="text-blue-deep">${em.eanswer}</em></span>
											<!--没有实名认证-->
											<!-- <a class="button bg-blue-deep icon icon-button-blue fl margin-left" href="#">立即实名认证</a> -->
											<!--通过实名认证-->
											<a class="button bg-green-deep icon icon-button-green fl margin-left" href="employeesInfo/viewEmployeesInfo?eid=${em.eid}">查看个人信息</a>
										</p>
									</div>
									<span class="fr icon-head">
										<img src="resources/Images/noavatar_middle.gif" alt="账户头像">
									</span>
								</dt>
								<dd class="padding-big clearfix">
									<p class="w50 fl">
										<i class="fl icon icon-mobile"></i>

										<span class="fl margin-left">手机：已填写</span>
									</p>
									<p class="w50 fl">
										<i class="fl icon icon-email"></i>

										<span class="fl margin-left">邮箱：已填写</span>
									</p>
									<!-- <p class="w50 fl">
										<i class="fl icon icon-wechat"></i>
										<span class="fl margin-left">微信：<a class="text-underline" href="#">未绑定</a></span>
									</p>
									<p class="w50 fl">
										<i class="fl icon icon-password"></i>
																				<span class="fl margin-left">支付密码：<a class='text-underline' href="#"> 未设置</a></span>
																			</p>  -->
								</dd>
							</dl>
						</div>
						<div class="text-box-main min-width-360 fl">
							<dl>
								<dt class="padding-big lists-border-list clearfix">
									
                                                                    
                                                                    <div class="margin-tb manage-detail-con clearfix">
							
							
                                                                        <a class="h5 margin-large-left custom fl" >发货单信息</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        <a class="fl margin-left button btn-red text-white"  href="diapatchBillInfo/toAddDiapatchBillInfo">+++添加+++</a>
                                                                    </div>
                                                                    
                                                                    
                                                                    
                                                                    
									
								</dt>
								<dd class="padding-big">
									<div class="account-class text-hidden">
										
										 <div class="margin-tb manage-detail-con clearfix">
							
							
							<a class="h5 margin-large-left custom fl">业务单通知单</a>
                                                        <a class="fl margin-left button btn-red text-white"  href="">添加</a>
                                                                    </div>
										
                                                                            
									</div>
								</dd>
							</dl>
						</div>
						<div class="text-box-main min-width-300 fl margin-right-none">
							<dl>
								<dt class="padding-big lists-border-list clearfix">
									<div class="fl title">
										<p>遇到问题：</p>
										
									</div>
									<div class="fr">
										<a class="button btn-orange text-white" href="http://jq.qq.com/?_wv=1027&k=28Xajoq" target="_blank">联系管理员</a>
									</div>
								</dt>
								<dd class="padding-big">
									<div class="account-class text-hidden">
										<p>物理管理系统为您服务！</p>
									</div>
								</dd>
							</dl>
						</div>
					</div>

					<!--产品-->
					<div class="account-product margin-big-top clearfix">
						<div class="text-box-main padding-big fl mine-product">
							<h2 class="h6 margin-big-bottom"></h2>
							<div class="mine-product-content clearfix">
								<ul class="w50 fl lists">
									 <li class="w70 lists-border-list">
										<p class="border-list-text">业务单：   	
											<a class="text-main fr" href="normalBillInfo/showAllNormalBillInfo">管理</a>
										</p>
									</li>  
									
									
                                                                        
                                                                       
								</ul>
								<ul class="w50 fl lists">
									 <li class="w70 lists-border-list">
										<p class="border-list-text">工单：   	
											<a class="text-main fr" href="workBillInfo/showAllWorkBillInf">管理</a>
										</p>
									</li>  
									
									
                                                                        
                                                                       
								</ul>
                                                           
                                                            
							
							</div>
						</div>
						
                                            
                                            
                                            
                                            <div class="text-box-main padding-big fl w25">
							
                                                        <div class="margin-tb manage-detail-con clearfix">
							<a class="h5 margin-large-left custom fl" href="saff/showAllSaff">取派员管理</a>
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


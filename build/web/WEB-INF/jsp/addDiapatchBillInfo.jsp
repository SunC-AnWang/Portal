
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
							<h6 class="layout padding-left manage-head-con">添加新货单
							<span class="fr text-small text-normal padding-top">物流系统</span>
							<span class="fr margin-large-right padding-top text-small text-normal">最新版本：<em class="text-main">2.4.0.160708</em></span>
							</h6>
						</div>
					</div>
					<div class="authority-content">
						<div class="list-content show">
                                                    <form action="diapatchBillInfo/addDiapatchBillInfo">
							<div class="offcial-table tr-border margin-big-top clearfix">
								<div class="tr-th clearfix">
									<div class="th w20">
										发货单编号
									</div>
									<div class="th w20">
										寄件人姓名
									</div>
                                                                    
									<div class="th w15">
										寄件人地址
									</div>
									<div class="th w15">
										寄件人联系电话
									</div>
									<div class="th w15">
                                                                                收件人姓名
									</div>
									<div class="th w15">
										收件人地址
									</div>
								</div>
                                                            
                                                            
                                                            
                                                            
								<div class="tr clearfix border-bottom-none">
									<div class="td w20">
									<input type="text" name="did">	
									</div>
									<div class="td w20">
									<input type="text" name="senderName" >	
									</div>
									<div class="td w15">
										<input type="text" name="senderAddress" >
									</div>
									<div class="td w15">
										<input type="text"  pattern="^1[0-9]{10}$"   name="senderPhone" >
									</div>
									<div class="td w15">
										<input type="text" name="consigneeName" > 
									</div>
									<div class="td w15">
                                                                                 
                                                                            <input type="text" name="consigneeAddress" > 
                                                                            
									</div>
								</div>
                                                           
							</div>
                                                        
                                                        
                                                        	<div class="offcial-table tr-border margin-big-top clearfix">
								<div class="tr-th clearfix">
									<div class="th w20">
										收件人联系电话
									</div>
									<div class="th w20">
										物品数量
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
                                                            
                                                            
                                                            
                                                            
								<div class="tr clearfix border-bottom-none">
									<div class="td w20">
									<input type="text" pattern="^1[0-9]{10}$"   name="consigneePhone">	
									</div>
									<div class="td w20">
									<input type="text" name="number" >	
									</div>
									<div class="td w15">
										<input type="text" name="other" >
									</div>
									<div class="td w15">
									
									</div>
									<div class="td w15">
										
									</div>
									<div class="td w15">
                                                                                 
                                                                            <input type="submit" value="添 加">
                                                                            
									</div>
								</div>
                                                           
							</div>
                                                        
                                     </form>

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
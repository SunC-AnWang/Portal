
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
							<h6 class="layout padding-left manage-head-con">货单管理
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
										发货单编号
									</div>
									<div class="th w20">
										寄件人姓名
									</div>
                                                                    
									<div class="th w15">
										寄件人地址
									</div>
									<div class="th w15">
										收件人姓名
									</div>
									<div class="th w15">
										物品数量
									</div>
									<div class="th w15">
										操作
									</div>
								</div>
                                                            
                                                            <c:forEach items="${diapatchBillInfoList}" var="d">
                                                            
                                                            
								<div class="tr clearfix border-bottom-none">
									<div class="td w20">
										${d.did}
									</div>
									<div class="td w20">
										${d.senderName}
									</div>
									<div class="td w15">
										${d.senderAddress}
									</div>
									<div class="td w15">
										${d.consigneeName}
									</div>
									<div class="td w15">
										${d.number}
									</div>
									<div class="td w15">
                                                                                 <a href="diapatchBillInfo/viewDiapatchBillInfo?did=${d.did}" class="button-word2 btn_ajax_confirm">查看</a>
                                                                                 <a href="diapatchBillInfo/toEditDiapatchBillInfo?did=${d.did}" class="button-word2 btn_ajax_confirm">编辑</a>
										 <a href="javascript:deleteDiapatchBillInfo(${d.did})" class="button-word2 btn_ajax_confirm">删除</a>
									</div>
								</div>
                                                            
                                                            
                                                            
                                                            </c:forEach> 
                                                            
                                                            
                                                            
							</div>
						</div>
                                            
                                            
                                            
						<div class="show-page padding-big-right">
							<div class="page">
								<div class="page">
									<ul class="offcial-page margin-top margin-big-right">
										<li>共<em class="margin-small-left margin-small-right">1</em>条数据</li>
										<li>每页显示<em class="margin-small-left margin-small-right">15</em>条</li>
										<li><a class="next disable">上一页</a></li>
										<li></li>
										<li><a class="next disable">下一页</a></li>
										<li><span class="fl">共<em class="margin-small-left margin-small-right">1</em>页</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>    
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                                
                                                                        
                       
                                                                        
                                                                        
                                                                        
            <script>
            function deleteDiapatchBillInfo(did) {
                $.ajax({
                    url:'diapatchBillInfo/deleteDiapatchBillInfo',
                    type: "POST",
                    data: {"did": did}, //发送编号给服务器删除员工信息
                    success: function () {
                        //服务器删除员工的同时从表格删除当前行
                        //需要在打印tr的时候给每个tr一个id用于区分没一行
                        
                        $("#" + did).remove(); //remove删除当前元素和其内容
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


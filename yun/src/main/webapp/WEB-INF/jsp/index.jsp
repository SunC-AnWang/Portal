<%@ page language="java" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<base href="<%=basePath%>">

<title>云盘</title>

</head>
<body>
<div class="content">
    <div class="top">
        <%@include file="top.jsp"%>
    </div>
    <div class="bottom" onclick="">
        <div class="left">
            <%@include file="menu.jsp"%>
        </div>
        <div class="right">
            <jsp:include page="main.jsp"></jsp:include>
        </div>
    </div>

</div>
<%@include file="tab.jsp" %>
</body>
</html>
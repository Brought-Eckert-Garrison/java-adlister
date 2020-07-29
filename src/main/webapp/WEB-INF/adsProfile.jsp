<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Ad Profile"/>
    </jsp:include>
    <%@ include file="/WEB-INF/partials/theme.jsp" %>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
    <%--    <h1 class="text-center">Ad Profile</h1>--%>
    <%--    <hr>--%>
    <div class="row">
        <div class="col-sm-6">
            <h2 class="text-center">Ad Information:</h2>
            <hr>
            <div class="card">
                <%--                <div class="card-header">--%>
                <%--                    Ad Information--%>
                <%--                </div>--%>
                <div class="card-body">
                    <h5 class="card-title">Title: </h5>
                    <p class="card-text">Description: </p>
                    <a href="/ads" class="btn btn-primary">View All Ads</a>
                </div>
            </div>
            <%--            <div class="card">--%>
            <%--                <div class="card">--%>
            <%--                        <img src="..." class="card-img-top" alt="...">--%>
            <%--                        <div class="card-body">--%>
            <%--                            <h5 class="card-title">${ad.title}</h5>--%>
            <%--                            <p class="card-text">${ad.description}.</p>--%>
            <%--                            <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>--%>
            <%--                        </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>
            <br>
        </div>
        <div class="col-sm-6">
            <h2 class="text-center">Posted By:</h2>
            <hr>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Username: ${sessionScope.user.username}</h5>
                    <h5 class="card-text">Contact Info: ${sessionScope.user.email}</h5>
                    <a href="/profile" class="btn btn-primary">View profile</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

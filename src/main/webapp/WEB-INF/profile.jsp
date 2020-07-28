<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

<%--====Display User====--%>
    <div class="container">
        <div class="row text-center">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    </div>
    <hr>
    <div class="container">
        <div class="row">
            <div class="col-sm-4 d-flex flex-column">
                <c:forEach var="ad" items="${ads}">
                    <div class="col-md-8">
                        <h2>${ad.title}</h2>
                        <p>${ad.description}</p>
                    </div>
                </c:forEach>
            </div>
            <div class="col-sm-8">
                <h1 class="text-center">Create a new Ad</h1>
                <form action="/ads/create" method="post">
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input id="title" name="title" class="form-control" type="text">
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea id="description" name="description" class="form-control" type="text"></textarea>
                    </div>
                    <input type="submit" class="btn btn-block btn-primary">
                </form>
            </div>
        </div>
    </div>
</body>
</html>

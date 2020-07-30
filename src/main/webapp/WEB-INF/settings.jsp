<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <%@ include file="/WEB-INF/partials/theme.jsp" %>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/homepage.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">

<%--=====Update User Info=====--%>
    <h1 class="text-center text-white">${sessionScope.user.username}'s Settings</h1>
    <div class="row">
        <div class="col-sm-6">
            <h2 class="text-center text-white">Update User Information</h2>
            <hr>
            <form action="/update" method="post">
                <div class="form-group text-white">
                    <label for="username">Username</label>
                    <input id="username"  value="<c:out value='${user.username}' />" name="username" class="form-control" type="text">
                </div>
                <div class="form-group text-white">
                    <label for="email">Email</label>
                    <input id="email" value="<c:out value='${user.email}' />" name="email" class="form-control" type="text">
                </div>
                <div class="form-group text-white">
                    <label for="password">Password</label>
                    <input id="password" value="<c:out value='${password}' />" name="password" class="form-control" type="password">
                </div>
                <div class="form-group text-white">
                    <label for="confirm_password">Confirm Password</label>
                    <input id="confirm_password" value="<c:out value='${password}' />" name="confirm_password" class="form-control" type="password">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Update</button>

                <br>
                <hr>
                <%--            <input type="submit" class="btn btn-primary btn-block" name="Update">--%>
            </form>
            <form action="/delete" method="post">
                <div class="text-center text-white">
                <label>DELETE USER</label>
                </div>
                <button type="submit" class="btn btn-danger btn-block">Delete</button>
            </form>
        </div>

        <%--===== Update Theme =====--%>
        <div class="col-sm-6 text-center text-white">
            <h2>Update Theme</h2>
            <hr>
            <form action="/theme" method="post">
                <label for="light">Light Mode (Default)</label>
                <input type="radio" name="theme" id="light" value="light" checked="checked">
                <br>
                <label for="dark">Dark Mode</label>
                <input type="radio" name="theme" id="dark" value="dark">
                <br>
                <button type="submit" class="btn btn-primary">Change Theme</button>
            </form>
        </div>
    </div>
</div>

<div class="img-fluid fixed-top" style="z-index: -1000">
    <img src="img/grayscale-photography-of-person-holding-cassette-tape-1745936.jpg" class="d-block w-80" alt="imac">
</div>
</body>
</html>

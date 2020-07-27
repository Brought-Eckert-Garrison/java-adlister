<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <%@ include file="/WEB-INF/partials/theme.jsp" %>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">

<%--=====Update User Info=====--%>
    <h1 class="text-center">Settings</h1>
    <div class="row">
        <div class="col-sm-6">
            <h2 class="text-center">Update User Information</h2>
            <hr>
            <form action="/settings" method="post">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input id="username" name="username" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" name="email" class="form-control" type="text">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" name="password" class="form-control" type="password">
                </div>
                <div class="form-group">
                    <label for="confirm_password">Confirm Password</label>
                    <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                </div>
                <button type="submit" class="btn btn-primary btn-block">Update</button>
                <button type="submit" class="btn btn-danger btn-block">Delete</button>
                <%--            <input type="submit" class="btn btn-primary btn-block" name="Update">--%>
            </form>
        </div>

        <%--===== Update Theme =====--%>
        <div class="col-sm-6 text-center">
            <h2>Update Theme</h2>
            <hr>
            <form action="/settings" method="post">
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


</body>
</html>

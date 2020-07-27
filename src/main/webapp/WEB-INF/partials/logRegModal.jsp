<%--
  Created by IntelliJ IDEA.
  User: andrewbrought
  Date: 7/27/20
  Time: 10:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
</head>
<body>

<!-- Button trigger modal -->
<%--<button type="button" class="btn" data-toggle="modal" data-target="#exampleModal">--%>
<%--    Launch demo modal--%>
<%--</button>--%>

<!-- Modal -->
<div class="container">
    <div class="row">
        <div class="col-xs-12">

            <%--            Establish target id for nav button--%>
            <div class="modal" id="logRegModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <%--                        Modal Header--%>
                        <div class="modal-header container-fluid">
                            <ul class="nav nav-tabs" role="tablist">

                                <%--                                    Login tab --%>
                                <li role="presentation" class="nav-tabs active col-sm">
                                    <a href="#login" aria-controls="login" role="tab" data-toggle="tab">Login </a>  </li>

                                <%--                                Signup tab --%>
                                <li role="presentation" class="nav-tabs col-sm">
                                    <a href="#signUp" aria-controls="signUp" role="tab" data-toggle="tab"> Signup</a>
                                </li>
                            </ul>
                            <h4 class="modal-title"></h4>
                            <button class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <%--                        Modal body--%>
                        <div class="modal-body" >

                            <div role="tabpanel">
                                <!-- Nav tabs -->


                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <%--                                    Login pane--%>
                                    <div role="tabpanel" class="tab-pane active" id="login">

                                        <h4>Login</h4>
                                        <form action="/login" method="POST">
                                            <div class="form-group">
                                                <label for="username">Username</label>
                                                <input id="username" name="username" class="form-control" type="text">
                                            </div>
                                            <div class="form-group">
                                                <label for="password">Password</label>
                                                <input id="password" name="password" class="form-control" type="password">
                                            </div>
                                            <%--  <input type="submit" class="btn btn-primary btn-block" value="Log In">--%>
                                        </form>
                                        <div class="modal-footer">
                                            <button class="btn btn-primary" type="submit">Log in</button>
                                            <button class="btn btn-primary" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>


                                    <%--                                    Signup panel --%>
                                    <div role="tabpanel" class="tab-pane" id="signUp">
                                        <h4>Register</h4>
                                        <%--                                    Signup form --%>
                                        <form action="/register" method="post">
                                            <div class="form-group">
                                                <label for="reg_username">Username</label>
                                                <input id="reg_username" name="reg_username" class="form-control" type="text">
                                            </div>
                                            <div class="form-group">
                                                <label for="email">Email</label>
                                                <input id="email" name="email" class="form-control" type="text">
                                            </div>
                                            <div class="form-group">
                                                <label for="reg_password">Password</label>
                                                <input id="reg_password" name="reg_password" class="form-control" type="password">
                                            </div>
                                            <div class="form-group">
                                                <label for="confirm_password">Confirm Password</label>
                                                <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                                            </div>
                                            <input type="submit" class="btn btn-primary btn-block">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <style>
        .modal-backdrop {
            /* bug fix - no overlay */
            display: none;
        }
    </style>
</head>
<body>

<!-- Modal -->
<div class="container">
    <div class="row">
        <div class="col-xs-12">

            <%--            Establish target id for nav button--%>
            <div class="modal" id="regModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <%--                        Modal Header--%>
                        <div class="modal-header container-fluid">
                            <ul class="nav nav-tabs" role="tablist">
<%--
                                <%--                                Signup tab --%>
                                <li role="presentation" class="nav-tabs active col-sm">
                                    <a href="#signUp" aria-controls="signUp" role="tab" data-toggle="tab"> Register</a>
                                </li>
                                <%--                            'x' to close--%>
                                <button class="close" data-dismiss="modal">&times;</button>
                            </ul>
                        </div>

                        <%--                        Modal body--%>
                        <div class="modal-body" >

                            <div role="tabpanel">
                                <!-- Nav tabs -->

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <%--                                    Login pane--%>

                                    <%--                                    Signup panel --%>
                                    <div role="tabpanel" class="tab-pane active" id="signUp">

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

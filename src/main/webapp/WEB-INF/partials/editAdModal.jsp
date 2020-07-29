<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
<%--<% session.getAttribute("adOject"); %>--%>
<!-- Modal -->
<div class="container">
    <div class="row">
        <div class="col-xs-12">

            <%--            Establish target id for nav button--%>
            <div class="modal" id="editModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <%--                        Modal Header--%>
                        <div class="modal-header container-fluid">
                            <ul class="nav nav-tabs" role="tablist">
                                <%--
                                                                <%--                                Signup tab --%>
                                <li role="presentation" class="nav-tabs active col-sm">
                                    <a href="#edit" aria-controls="signUp" role="tab" data-toggle="tab"> Edit / Delete</a>
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

                                    <%--                                    Update panel --%>
                                    <div role="tabpanel" class="tab-pane active" id="edit">

                                        <h4>Edit / Delete</h4>
                                        <%--                                    Update form --%>
                                        <form action="/ad-update" method="post">
                                            <div class="form-group">
                                                <label for="title">Title: <c:out value='${ad.title}' /></label>
                                                <input id="title" name="title" class="form-control" type="text">
                                            </div>
                                            <div class="form-group">
                                                <label for="description">Description: ${ad.description}</label>
                                                <input id="description" name="description" class="form-control" type="text">
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

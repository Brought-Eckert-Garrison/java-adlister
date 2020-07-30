
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
            <div class="modal" id="profileModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <%--                        Modal Header--%>
                        <div class="modal-header container-fluid">
                            <ul class="nav nav-tabs" role="tablist">
                                <%--
                     <%--                               AdProfile tab --%>
                                <li role="presentation" class="nav-tabs active col-sm">
                                    <a href="#profile" aria-controls="profile" role="tab" data-toggle="tab"> Ad Profile</a>
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

                                    <%--                                    Ad Profile panel --%>
                                    <div role="tabpanel" class="tab-pane active" id="profile">

                                        <%--                                    Ad Profile panel --%>

                                            <div class="card-body adProf">

                                                <h4 class="card-title">Title: </h4>
                                                <h4 class="adTitle"></h4>
                                                <h4 class="mt-3 card-title">Description: </h4>
                                                <h4 class="card-text adDescription"></h4>
<%--                                                <a href="/adsHome" class="btn btn-primary">View All Ads</a>--%>
                                            </div>
<%--                                            <h2 class="text-center">Posted By:</h2>--%>
<%--                                            <hr>--%>
<%--                                            <div class="card">--%>
<%--                                                <div class="card-body">--%>
<%--                                                    <h4 class="card-title">Username: </h4>--%>
<%--                                                    <h4 class="user"></h4>--%>
<%--                                                    <h4 class="card-text">Contact Info: </h4>--%>
<%--                                                    <h4 class="email"></h4>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>

                                            <button class="btn btn-primary" data-dismiss="modal">Close</button>
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

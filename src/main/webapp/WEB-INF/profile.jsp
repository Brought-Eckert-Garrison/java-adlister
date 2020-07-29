<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html >
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>

    <%--    jQuery script--%>
<%--    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>--%>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    <%--    --%>

    <script type="text/javascript">

        // let dbid;
        $(document).ready(function(){
            // alert("Hello!!!!");
            $(document).on('click', '.ad', function(e) {
                e.preventDefault();
                // e.stopImmediatePropagation();
                let targetId = $(this).attr("data-dbid");
                // console.log(targetId);
                // console.log("test");
                   let  editTitle = $(this).attr("data-title");
                   // console.log(editTitle);
                   let editDescription = $(this).attr("data-desc");
                    // console.log(editDescription);
                   $('#editTitle').val(editTitle);
                   $('#editDescription').val(editDescription);
                   // dbid = targetId;
                $("#deleteId").val(targetId);
                $("#adId").val(targetId);
                $("#adId").attr("placeholder", targetId);
            })
        });

    </script>

</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <jsp:include page="partials/editAdModal.jsp" />

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
                        <form>
<%--                           <c:set var="id" value='${ad.id}' scope="session" />--%>
                            <a href="#" class="nav-link ad" data-title="${ad.title}" data-desc="${ad.description}" data-dbid="${ad.id}" data-backdrop="false" data-toggle="modal" data-target="#editModal"><h4>${ad.title}</h4></a>
                            <p>${ad.description}</p>
                        </form>
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

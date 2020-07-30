<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <jsp:include page="partials/head.jsp">
            <jsp:param name="title" value="Adlister - All Ads" />
        </jsp:include>
        <jsp:include page="/WEB-INF/partials/adsProfileModal.jsp" />
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $(document).on('click', '.profile', function (e) {
                    e.preventDefault();
                    console.log("working");
                    let targetId = $(this).attr('data-id');
                    let targetTitle = $(this).attr('data-title');
                    let targetDescription = $(this).attr('data-desc');
                    console.log(targetId);
                    console.log(targetTitle);
                    console.log(targetDescription);
                    $(".adTitle").html("<h4>" + targetTitle + "</h4>");
                    $(".adDescription").html("<p>" + targetDescription + "</p>");
                })
            });
        </script>
    </head>
    <body>
        <jsp:include page="partials/navbar.jsp"/>

        <h1>All Ads</h1>
        <div class="container-fluid">
            <div class="row row-cols-1 row-cols-md-2">
                <c:forEach var="ad" items="${ads}">
                    <form action="/ad/profile/" method="post">

                    <div class="col mb-4">
                        <div class="card mb-3" style="width: 30rem;">
                            <div class="card-body">
<%--                                    ${pageContext.request.contextPath}/ad/profile/${ad.id}--%>
<%--    data-title="${ad.title}" data-description="${ad.description}" data-id="${ad.id}"--%>
<%--    profile" name="profileId" data-id="${ad.id}--%>


    <a href="#" class="nav-link profile" data-title="${ad.title}" data-desc="${ad.description}" data-dbid="${ad.id}" data-uid="${ad.userId}" data-backdrop="false" data-toggle="modal" data-target="#profileModal"><h4>${ad.title}</h4></a>


<%--    <a href="/ad/profile?id=${ad.id}" class="card-link">--%>
<%--        <h5 class="card-title"--%>
<%--    >${ad.title}</h5></a>--%>

    <h6 class="card-subtitle mb-2 text-muted"></h6>
                                <p class="card-text">${ad.description}</p>
                            </div>
                            <div class="card-footer"></div>
                        </div>
                    </div>
                    </form>

                </c:forEach>
            </div>
        </div>
    </body>
</html>
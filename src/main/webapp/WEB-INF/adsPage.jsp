<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
    <head>
        <jsp:include page="partials/head.jsp">
            <jsp:param name="title" value="Adlister - All Ads" />
        </jsp:include>
    </head>
    <body>
        <jsp:include page="partials/navbar.jsp"/>
        <h1>All Ads</h1>
        <div class="container-fluid">
            <div class="row row-cols-1 row-cols-md-2">
                <c:forEach var="ad" items="${ads}">
                    <div class="col mb-4">
                        <div class="card mb-3" style="width: 30rem;">
                            <div class="card-body">
                                <a href="#" class="card-link"><h5 class="card-title">${ad.title}</h5></a>
                                <h6 class="card-subtitle mb-2 text-muted"></h6>
                                <p class="card-text">${ad.description}</p>
                            </div>
                            <div class="card-footer"></div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </body>
</html>
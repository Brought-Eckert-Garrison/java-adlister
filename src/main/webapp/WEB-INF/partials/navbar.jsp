<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/partials/logRegModal.jsp" />
<jsp:include page="/WEB-INF/partials/registerModal.jsp" />

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right" role="tablist">
        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <li><a href="/logout">Logout</a></li>
                <li class="nav-item">
                    <a href="#" class="nav-link" data-backdrop="false" data-toggle="modal" data-target="#regModal">Register</a>
                </li>
            </c:when>
            <c:otherwise>
            <li class="nav-item">
                <a href="#" class="nav-link" data-backdrop="false" data-toggle="modal" data-target="#logRegModal">Login / Register</a>
            </li>
            </c:otherwise>
        </c:choose>

        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

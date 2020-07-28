<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<jsp:include page="/WEB-INF/partials/editAdModal.jsp">
   <jsp:param name="adTitle" value="${ad.title}" />
</jsp:include>

<%--<% session.setAttribute("adObject", ad);%>--%>

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <form>
                <input type="hidden" name="adObject" value="${ad}">
                <a href="#" id="adNumber" class="nav-link" data-backdrop="false" data-toggle="modal" data-target="#editModal"><h2>${ad.title}</h2></a>
                <p id="par">${ad.description}</p>
            </form>
        </div>
    </c:forEach>
</div>

<script>
    $("#adNumber").click(function(){
      let adDescription = $("#par").val();
      console.log(adDescription);
      $("#description").val(adDescription);
    });

</script>

</body>
</html>

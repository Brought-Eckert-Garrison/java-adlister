<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Adlister - Home" />
    </jsp:include>
    <jsp:include page="css/homepage.css"/>
</head>

<body>
<div class="container-fluid position-relative d-flex flex-column">
    <h1 class="text-center position-absolute align-self-center" style="bottom: -250px;">Welcome to Adlister</h1>
    <div id="typewriter" class="container text-wrap position-absolute align-self-center d-inline-flex" style="background-color: rgba(76, 76, 76, .6); color: #e5e5e5; width: 20%; z-index: 100; bottom: -360px;">
        <h3>Where people come to buy and sell experiences.</h3>
    </div>
</div>
<div class="container position-relative d-flex justify-content-end">
    <h2 class="position-absolute" style="z-index: 101; bottom: -450px; right: 300px">Recent posts:</h2>
    <div class="card-group position-absolute d-flex flex-column" style="z-index: 101; bottom: -1100px;">
        <div class="card mb-3" style="width: 30rem;">
            <div class="card-body">
                <a href="#" class="card-link"><h5 class="card-title">${ads.get(ads.size() - 1).title}</h5></a>
                <h6 class="card-subtitle mb-2 text-muted"></h6>
                <p class="card-text">${ads.get(ads.size() - 1).description}</p>
            </div>
            <div class="card-footer">
                <small class="text-muted">by @someone</small>
            </div>
        </div>
        <div class="card mb-3" style="width: 30rem;">
            <div class="card-body">
                <a href="#" class="card-link"><h5 class="card-title">${ads.get(ads.size() - 2).title}</h5></a>
                <h6 class="card-subtitle mb-2 text-muted"></h6>
                <p class="card-text">${ads.get(ads.size() - 2).description}</p>
            </div>
            <div class="card-footer">
                <small class="text-muted">by @someone</small>
            </div>
        </div>
        <div class="card mb-3" style="width: 30rem;">
            <div class="card-body">
                <a href="#" class="card-link"><h5 class="card-title">${ads.get(ads.size() - 3).title}</h5></a>
                <h6 class="card-subtitle mb-2 text-muted"></h6>
                <p class="card-text">${ads.get(ads.size() - 3).description}</p>
            </div>
            <div class="card-footer">
                <small class="text-muted">by @someone</small>
            </div>
        </div>
    </div>
</div>
<div id="homepageCarousel" class="carousel slide" data-ride="carousel" style="z-index: -1000">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/gray-scale-photo-of-man-taking-a-photo-3692623.jpg" class="d-block w-50" alt="man taking a photo">
        </div>
        <div class="carousel-item">
            <img src="img/black-plastic-hangers-3312030.jpg" class="d-block w-50" alt="sideview desk">
        </div>
        <div class="carousel-item">
            <img src="img/grayscale-photography-of-person-holding-cassette-tape-1745936.jpg" class="d-block w-50" alt="imac">
        </div>
        <div class="carousel-item">
            <img src="img/woman-in-white-long-sleeve-holding-a-paint-brush-3778140.jpg" class="d-block w-50" alt="ceramic pots">
        </div>
    </div>
</div>

<jsp:include page="partials/bootstrap-scripts.jsp"/>

<jsp:include page="js/typewriter.js"/>

</body>
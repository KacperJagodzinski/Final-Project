<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Walk A Dog</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/walk/list">My walks<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/dog/list">My dogs</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/walk/alllist">All Walks</a>
            </li>
        </ul>
        <c:choose>
            <c:when test="${empty email}">

                <a class="btn btn-primary" href="/user/login">Login</a>

                <a class="btn btn-success" href="/user/register">Register</a>

            </c:when>
            <c:otherwise>
                    Witaj,
                <div class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <c:out value="${firstName}"/>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="/user/edit">Edit</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="/user/logout">Logout</a>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>

    </div>
</nav>

</body>
</html>

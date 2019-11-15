<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bootstrap.jsp"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1 style="color: white">List of walks</h1>
<div class="mt-1">
    <a href="/walk/add" class="btn btn-success">Dodaj</a>
</div>
<div class="mt-1">
    <table class="table" style="background-color: white;opacity: 0.8">
        <thead>
        <tr>
            <th scope="col">Date</th>
            <th scope="col">Place</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${walks}" var="walk">
            <c:set var ="inWalk" value="false"/>
            <tr>
                <td>${walk.datetime}</td>
                <td>${walk.place}</td>
                <td>
                    <c:forEach items="${walk.users}" var="user">
                        <c:if test="${user.id == sessionScope.id}">
                            <c:set var="inWalk" value="true"/>
                        </c:if>
                    </c:forEach>
                    <c:choose>
                    <c:when test="${inWalk == false}">
                    <a class="btn btn-primary" href="/walk/join/${walk.id}">Join</a>
                    </c:when>
                    <c:otherwise>
                        <a class="btn btn-success" href="/walk/alllist">Joined</a>
                    </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bootstrap.jsp"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1>List of walks</h1>
<div class="mt-1">
    <a href="/walk/add" class="btn btn-success">Dodaj</a>
</div>
<div class="mt-1">
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Date</th>
            <th scope="col">Place</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${walks}" var="walk">
            <tr>
                <td>${walk.date}</td>
                <td>${walk.place}</td>
                <td>
                    <a class="btn btn-primary" href="/walk/join/${walk.id}">Join</a>
                </td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>

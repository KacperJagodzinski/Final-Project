<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bootstrap.jsp"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1 style="color: white">List of your walks</h1>
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
    <c:forEach items="${userWalks}" var="walks">
        <tr>
            <td>${walks.datetime}</td>
            <td>${walks.place}</td>
            <td>
                <a class="btn btn-primary" href="/walk/edit/${walks.id}">Edit</a>
                <a class="btn btn-danger" href="/walk/delete/${walks.id}">Delete</a>
            </td>
        </tr>

    </c:forEach>
    </tbody>
</table>
</div>

</body>
</html>

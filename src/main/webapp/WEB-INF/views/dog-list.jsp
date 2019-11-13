<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bootstrap.jsp"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1>Your Dogs</h1>
<div class="mt-1">
    <a href="/dog/add" class="btn btn-success">Dodaj</a>
</div>
<div class="mt-1">
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Name</th>
            <th scope="col">Rase</th>
            <th scope="col">Age</th>
            <th scope="col">Gender</th>
            <th scope="col">Description</th>
            <th scope="col">Rating</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${dogs}" var="dog">
                <tr>
                    <td>${dog.name}</td>
                    <td>${dog.rase.name}</td>
                    <td>${dog.age}</td>
                    <td>${dog.gender}</td>
                    <td>${dog.description}</td>
                    <td>${dog.rating}</td>
                    <td>
                        <a class="btn btn-primary" href="/dog/edit/${dog.id}">Edit</a>
                        <a class="btn btn-danger" href="/dog/delete/${dog.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bootstrap.jsp"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1>Add a walk</h1>
    <form:form method="post" modelAttribute="walk">
        <label>
            <form:hidden path="id"/>
        </label>
        <label> Miejsce:
            <form:input path="place"/>
            <form:errors path="place"/>
        </label></br>
        <label>Data:
            <form:input path="datetimeString" type="datetime-local"/>
            <form:errors path="datetime"/>
        </label>
        <form:hidden path="ifActive"/>
        <input type="submit" value="add"/>
    </form:form>
</body>
</html>

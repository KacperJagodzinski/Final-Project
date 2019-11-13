<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bootstrap.jsp"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1>Register</h1>
<form:form method="post" modelAttribute="user">
    <label>
        <form:hidden path="id"/>
    </label><br/>
    <label> Name:
        <form:input path="firstName"/>
        <form:errors path="firstName"/>
    </label><br/>
    <label>Surname:
        <form:input path="lastName"/>
        <form:errors path="lastName"/>
    </label><br/>
    <label>Email:
        <form:input path="email"/>
        <form:errors path="email"/>
    </label><br/>

        <form:hidden path="password"/>

    <label>Description:
        <form:input path="description"/>
        <form:errors path="description"/>
    </label><br/>
    <label>
        <form:hidden path="rating"/>
    </label><br/>
    <input type="submit" value="edit"><br/>
</form:form>


</body>
</html>

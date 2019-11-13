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
    <label>Haslo:
        <form:password path="password"/>
        <form:errors path="password"/>
    </label><br/>
    <label>Powtorz haslo:
        <input type="password" name="password2"/>
    </label><br/>
    <label>Description:
        <form:input path="description"/>
        <form:errors path="description"/>
    </label><br/>
    <label>
        <form:hidden path="rating"/>
    </label><br/>
    <input type="submit" value="register"><br/>
</form:form>

</body>
</html>

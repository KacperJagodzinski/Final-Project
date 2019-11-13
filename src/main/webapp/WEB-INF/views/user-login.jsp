<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="forh" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bootstrap.jsp"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1>Login</h1>
<div class="form-group">
    <form:form method="post" modelAttribute="user">
        Email: <form:input type="email" path="email"/>
        <form:errors path="email" /><br/>
        Password: <form:password path="password"/>
        <form:errors path="password" /><br/>
        <forh:hidden path="id"/>
        <forh:hidden path="description"/>
        <forh:hidden path="firstName"/>
        <forh:hidden path="lastName"/>
        <forh:hidden path="rating"/>
        <input type="submit" value="Login"/>
    </form:form>
</div>


</body>
</html>

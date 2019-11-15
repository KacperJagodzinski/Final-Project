<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bootstrap.jsp"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<%--<form:form method="post" modelAttribute="user">--%>
<%--    <label>--%>
<%--        <form:hidden path="id"/>--%>
<%--    </label><br/>--%>
<%--    <label> Name:--%>
<%--        <form:input path="firstName"/>--%>
<%--        <form:errors path="firstName"/>--%>
<%--    </label><br/>--%>
<%--    <label>Surname:--%>
<%--        <form:input path="lastName"/>--%>
<%--        <form:errors path="lastName"/>--%>
<%--    </label><br/>--%>
<%--    <label>Email:--%>
<%--        <form:input path="email"/>--%>
<%--        <form:errors path="email"/>--%>
<%--    </label><br/>--%>
<%--    <label>Haslo:--%>
<%--        <form:password path="password"/>--%>
<%--        <form:errors path="password"/>--%>
<%--    </label><br/>--%>
<%--    <label>Powtorz haslo:--%>
<%--        <input type="password" name="password2"/>--%>
<%--    </label><br/>--%>
<%--    <label>Description:--%>
<%--        <form:input path="description"/>--%>
<%--        <form:errors path="description"/>--%>
<%--    </label><br/>--%>
<%--    <label>--%>
<%--        <form:hidden path="rating"/>--%>
<%--        <form:hidden path="description"/>--%>
<%--    </label><br/>--%>
<%--    <input type="submit" value="register"><br/>--%>
<%--</form:form>--%>

<section class="dashboard-section">
    <div class="container pt-4 pb-4">
        <div class="border-dashed view-height">
            <div class="container w-25">
                <form:form method="post" modelAttribute="user">
                <h1 class="text-color-darker" style="color: white">Register</h1>
                    <form:hidden path="id"/>
                        <div class="form-group">
                            <form:input path="firstName" class="form-control" placeholder="podaj imię"/>
                            <form:errors path="firstName"/>
                        </div>
                        <div class="form-group">
                            <form:input path="lastName" class="form-control" placeholder="podaj nazwisko"/>
                            <form:errors path="lastName"/>
                        </div>
                        <div class="form-group">
                            <form:input path="email" class="form-control" placeholder="podaj email"/>
                            <form:errors path="email"/>
                        </div>
                        <div class="form-group">
                            <form:password path="password" class="form-control" placeholder="podaj haslo" />
                            <form:errors path="password"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="password2" placeholder="powtórz hasło">
                        </div>
                    <button class="btn btn-success" type="submit">Zarejestruj</button>
                </form:form>
            </div>
        </div>
    </div>
</section>


</body>
</html>
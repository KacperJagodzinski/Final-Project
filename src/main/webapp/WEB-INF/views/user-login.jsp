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

<section class="dashboard-section">
    <div class="container pt-4 pb-4">
        <div class="border-dashed view-height">
            <div class="container w-25">
                <form:form method="post" modelAttribute="user">
                    <h1 class="text-color-darker" style="color: white">Logowanie</h1>
                    <div class="form-group">
                        <form:input type="email" path="email" class="form-control" placeholder="podaj email" />
                        <form:errors path="email" /></div>
                    <div class="form-group">
                        <form:password path="password" class="form-control" placeholder="podaj haslo"/>
                        <form:errors path="password" /></div>
                    <button class="btn btn-primary" type="submit">Zaloguj</button>
                </form:form>
            </div>
        </div>
    </div>
</section>
</body>
</html>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                    <h1 style="color: white">Edit</h1>
                        <form:hidden path="id"/>
                    <div>
                        <form:input path="firstName" class="form-control"/>
                        <form:errors path="firstName"/>
                    </div>
                    <div>
                        <form:input path="lastName" class="form-control"/>
                        <form:errors path="lastName"/>
                    </div>
                    <div>
                        <form:input path="email" class="form-control"/>
                        <form:errors path="email"/>
                    </div>

                        <form:hidden path="password"/>

                    <div>
                        <form:input path="description" class="form-control"/>
                        <form:errors path="description"/>
                    </div>
                        <form:hidden path="rating"/>
                    <input type="submit" value="edit"><br/>
                </form:form>
            </div>
        </div>
    </div>
</section>
</body>
</html>

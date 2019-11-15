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
                <form:form method="post" modelAttribute="walk">
                    <h1 class="text-color-darker" style="color: white">Adding walk</h1>
                        <form:hidden path="id"/>

                    <div class="form-group">
                        <form:input path="place" class="form-control" placeholder="place"/>
                        <form:errors path="place"/>
                    </div>

                    <div class="form-group">
                        <form:input path="datetimeString" type="datetime-local" class="form-control"/>
                        <form:errors path="datetime"/>
                    </div>
                        <form:hidden path="ifActive"/>
                    <div class="form-group">
                        <input type="submit" value="add"/>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>
</body>
</html>

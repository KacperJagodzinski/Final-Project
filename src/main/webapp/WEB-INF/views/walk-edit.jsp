<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="bootstrap.jsp"/>
</head>
<body>
<jsp:include page="header.jsp"/>
<form:form method="post" modelAttribute="walk">
    <label>
        <form:hidden path="id"/>
    </label>
    <label> Miejsce:
        <form:input path="place"/>

    </label></br>
    <label>Data:
        <form:input type="date" path="date" />
    </label>
    <input type="submit" value="edit"/>
</form:form>

</body>
</html>
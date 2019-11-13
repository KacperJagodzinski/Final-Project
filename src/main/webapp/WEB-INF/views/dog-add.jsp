<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Add a dog</h1>
<form:form modelAttribute="dog" method="post">
    <label>
        <form:hidden path="id"/>
    </label><br/>
    <label>Imię:
        <form:input path="name"/>
        <form:errors path="name"/>
    </label><br/>
    <label>Płeć:
        <form:select path="gender">
        <form:options items="${gender}"/>
        </form:select>
        <form:errors path="gender"/>
    </label><br/>
    <label>Wiek:
        <form:input path="age" type="number"/>
        <form:errors path="age"/>
    </label><br/>

        <form:hidden path="rating"/>
    <form:errors path="rating"/>

    <label>Opis zachowań:
        <form:input path="description"/>
        <form:errors path="description"/>
    </label><br>
    <label>Rasa:
        <form:select itemValue="id" itemLabel="name"
                     path="rase.id" items="${rases}"/>
        <form:errors path="rase"/>
    </label><br/>

    <input type="submit" value="dodaj">
</form:form>

</body>
</html>

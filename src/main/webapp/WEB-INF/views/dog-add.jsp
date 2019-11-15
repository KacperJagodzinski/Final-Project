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
                <form:form method="post" modelAttribute="dog">
                    <h1 class="text-color-darker" style="color: white">Dodawanie psa</h1>
                    <form:hidden path="id"/>
                    <div class="form-group">
                        <form:input path="name" class="form-control" placeholder="imie"/>
                        <form:errors path="name"/>
                    </div>
                    <div class="form-group">
                        <form:select path="gender" class="form-control">
                        <form:options items="${gender}"/>
                        </form:select>
                        <form:errors path="gender"/>
                    </div>
                    <div class="form-group" title="wiek" >
                        <form:input path="age" type="number" min="0" class="form-control" title="wiek"  />
                        <form:errors path="age"/>
                    </div>
                    <div class="form-group">
                        <form:input path="description" type="text" class="form-control" placeholder="opis zachowan"/>
                        <form:errors path="description"/>
                    </div>
                    <div class="form-group">
                        <form:select itemValue="id" itemLabel="name"
                                     path="rase.id" items="${rases}" class="form-control"/>
                        <form:errors path="rase"/>
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary" type="submit">Dodaj</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>
</body>
</html>

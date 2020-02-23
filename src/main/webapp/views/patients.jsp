<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Łukasz
  Date: 22.02.2020
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pacjenci</title>
</head>
<body>
<ul>
    <c:forEach items="${allPatients}" var="patient">
        <li>${patient.surname}, ${patient.age}, ${patient.email},${patient.street}, ${patient.city}, ${patient.phone}</li>
    </c:forEach>
</ul>

</body>
</html>

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
    <c:forEach items="${allPatient}" var="patient">
        <li>${patient.name},${patient.Firstname}, ${patient.Age}, ${patient.email},${patient.Street}, ${patient.City}, ${patient.Phone}</li>
    </c:forEach>
</ul>

</body>
</html>

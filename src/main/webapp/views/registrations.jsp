<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Łukasz
  Date: 23.02.2020
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rejestracja</title>
</head>
<body>
<ul> <c:forEach items="${allRegistration}" var="registration">
    <li>${registration.date}, ${registration.patient}, ${registration.doctor},${registration.duration}, ${registration.id}, ${registration.time}</li>
    </ul>

</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Łukasz
  Date: 22.02.2020
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Doktorzy</title>
</head>
<body>
<ul>
    <c:forEach items="${allDoctors}" var="doctor">
        <li>${doctor.name}, ${doctor.specialization} (Gabinet: ${doctor.office})</li>
    </c:forEach>
</ul>
</body>
</html>

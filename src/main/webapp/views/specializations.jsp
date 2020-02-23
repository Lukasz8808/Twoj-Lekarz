<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Łukasz
  Date: 23.02.2020
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Specjalizacja</title>
</head>
<body>
<ul> <c:forEach items="${allSpecializations}" var="specialization" >
    <li>${specialization.id}, ${specialization.name}</li>
    </ul>

</body>
</html>

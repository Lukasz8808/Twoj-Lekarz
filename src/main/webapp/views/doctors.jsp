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
<div>
    <h2>Dodaj doktora!</h2>
    <form method="post" action="/doctors/add">
        <p>Nazwa: <input type="text" name="name"/></p>
        <p>Specjalizacja: <input type="text" name="specialization"/></p>
        <p>Gabinet: <input type="text" name="office"/></p>
        <p><button type="submit">Dodaj</button></p>
    </form>
</div>
<table style="border: 1px solid black">
    <tr>
        <th>Nazwa</th>
        <th>Specjalizacja</th>
        <th>Gabinet</th>
        <th>Akcje</th>
    </tr>
    <c:forEach items="${allDoctors}" var="doctor">
        <tr>
            <td>${doctor.name},</td>
            <td>${doctor.specialization}</td>
            <td>${doctor.office}</td>
            <td><form method="post" action="/doctors/remove">
                <input type="hidden" name="doctorId" value="${doctor.id}"/>
                <button type="submit">Usuń</button>
            </form></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

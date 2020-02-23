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
<div>
    <h2> Dodaj specjalizacje!</h2>
    <form method="post" action="/specializations/add">
        <p>Nazwa: <input type="text" name="name"/></p>
        <p><button type="submit">Dodaj</button> </p>
    </form>
</div>
<table style="border: 1px solid black">
    <tr>
        <th>Nazwa</th>
    </tr>
 <c:forEach items="${allSpecializations}" var="specialization" >
    <
    <tr>
     <td>${specialization.id},</td>
     <td>${specialization.name}, </td>
     <td><form method="post" action="/specializations/remove">
     <input type="hidden" name="specializationID" value="${specialization.id}"/>
     <button type="submit">Usuń</button>
     </form></td>
     </tr>
    </c:forEach>
</table>
</body>
</html>

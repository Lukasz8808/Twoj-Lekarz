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
<div>
    <h2>Dodaj Nowego Pacjenta</h2>
    <form method="post" action="/patients/add">
        <p>Imię: <input type="text" name="name"/></p>
        <p>Nazwisko: <input type="text" name="surname"/></p>
        <p>Wiek: <input type="text" name="age"/></p>
        <p>Adres e-mail: <input type="text" name="email"/></p>
        <p>Miasto: <input type="text" name="city"/></p>
        <p>Ulica: <input type="text" name="street"/></p>
        <p>Nr Telefonu: <input type="text" name="phone"/></p>
        <p><button type="submit">Dodaj</button></p>
    </form>
</div>
<table style="border: orange 1px">
    <tr>
             <th>Imię</th>
             <th>Nazwisko</th>
             <th>Wiek</th>
             <th>Email</th>
             <th>Miasto</th>
             <th>Ulica</th>
             <th>Numer Telefonu</th>
             <th>Akcje</th>

    </tr>
    <c:forEach items="${allPatients}" var="patient">
        <tr>
            <td>${patient.name}</td>
        <td>${patient.surname}</td>
        <td>${patient.age}</td>
        <td>${patient.city}</td>
        <td>${patient.street}</td>
        <td>${patient.phone} </td>
        <td>${patient.email}</td>

        <td><form method="post" action="/patients/remove">
            <input type="hidden" name="patientId" value="${patient.id}"/>
            <button type="submit">Usuń</button>
        </form></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>

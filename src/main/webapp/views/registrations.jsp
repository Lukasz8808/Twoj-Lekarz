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
<div>
    <h2>Zarejestruj wizytę</h2>
    <form method="post" action="/registrations/add">
        <p>Dzień: <input type="date" name="date"/></p>
        <p>Godzina: <input type="time" name="time"/></p>
        <p>Pacjent: <select name="patientId">
            <c:forEach items="${patients}" var="patient">
                <option value="${patient.id}">${patient.name} ${patient.surname} (${patient.phone})</option>
            </c:forEach>
        </select></p>
        <p>Doctor: <select name="doctorId">
            <c:forEach items="${doctors}" var="doctor">
                <option value="${doctor.id}">${doctor.name} (${doctor.specialization})</option>
            </c:forEach>
        </select></p>
        <p>
            <button type="submit">Zarejestruj wizytę</button>
        </p>
    </form>
</div>
<ul>
    <c:forEach items="${allRegistration}" var="registration">
        <li>${registration.date}, ${registration.patient.name} ${registration.patient.surname}, ${registration.doctor.name},${registration.duration}, ${registration.id}, ${registration.time}</li>
    </c:forEach>
</ul>

</body>
</html>
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">

    <style>
        * {
            box-sizing: border-box;
        }

        img {
            width: 100%;
            height: auto;
        }

        .row:after {
            content: "";
            clear: both;
            display: table;
        }

        [class*="col-"] {
            float: left;
            padding: 15px;
            width: 100%;
        }

        @media only screen and (min-width: 600px) {
            .col-s-1 {width: 8.33%;}
            .col-s-2 {width: 16.66%;}
            .col-s-3 {width: 25%;}
            .col-s-4 {width: 33.33%;}
            .col-s-5 {width: 41.66%;}
            .col-s-6 {width: 50%;}
            .col-s-7 {width: 58.33%;}
            .col-s-8 {width: 66.66%;}
            .col-s-9 {width: 75%;}
            .col-s-10 {width: 83.33%;}
            .col-s-11 {width: 91.66%;}
            .col-s-12 {width: 100%;}
        }

        @media only screen and (min-width: 768px) {
            .col-1 {width: 8.33%;}
            .col-2 {width: 16.66%;}
            .col-3 {width: 25%;}
            .col-4 {width: 33.33%;}
            .col-5 {width: 41.66%;}
            .col-6 {width: 50%;}
            .col-7 {width: 58.33%;}
            .col-8 {width: 66.66%;}
            .col-9 {width: 75%;}
            .col-10 {width: 83.33%;}
            .col-11 {width: 91.66%;}
            .col-12 {width: 100%;}
        }

        html {
            font-family: "Lucida Sans", sans-serif;
        }

        .header {
            background-color: #9933cc;
            color: #ffffff;
            padding: 15px;
        }

        .menu ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        .menu li {
            padding: 8px;
            margin-bottom: 7px;
            background-color :#33b5e5;
            color: #ffffff;
            box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
        }

        .menu li:hover {
            background-color: #0099cc;
        }

        .aside {
            background-color: #33b5e5;
            padding: 15px;
            color: #ffffff;
            text-align: left;
            font-size: 14px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
        }

        .footer {
            background-color: #0099cc;
            color: #ffffff;
            text-align: left;
            font-size: 12px;
            padding: 15px;
        }
    </style>
</head>

<body>

<div class="header">
    <style>
        h1 {text-shadow: 2px 2px 2px red;}
        img {border-radius: 8px;}
    </style>
    <title>Wojciech Witt</title>
    <h1 style = "text-align: center">Przychodnia "Twój Lekarz"</h1>
</div>

<div class="row">
    <div class="col-3 col-s-3 menu">
        <ul>
            <li><a href="doctors">Lekarze</a></li>
            <li><a href="patients">Pacjenci</a></li>
            <li><a href="specializations">Specjalizacje</a></li>
        </ul>
    </div>

    <div class="col-6 col-s-9">
        <h1 style="text-align: center">Poczujesz się u nas jak w niebie</h1>

        <img src="<c:url value="/views/doctor.jpg"/>" width="460" height="345">
    </div>

    <div class="col-3 col-s-12">
        <div class="aside">
            <h2 style="text-align: center"><i>Zarejestruj wizytę</i></h2>
            <form method="post" action="/registrations/add">
                <p>Dzień:   <input type="date" name="date"/></p>
                <p>Godzina: <input type="time" name="time"/></p>
                <p>Pacjent: <select name="patientId">
                    <c:forEach items="${patients}" var="patient">
                        <option value="${patient.id}">${patient.name} ${patient.surname} (${patient.phone})</option>
                    </c:forEach>
                </select></p>
                <p>Doctor:  <select name="doctorId">
                    <c:forEach items="${doctors}" var="doctor">
                        <option value="${doctor.id}">${doctor.name} (${doctor.specialization})</option>
                    </c:forEach>
                </select></p>
                <p style="text-align: center">
                    <button type="submit"> REJESTRUJ </button>
                </p>
            </form>
        </div>
    </div>
</div>

<div class="footer">
    <ul>
        <c:forEach items="${allRegistration}" var="registration">
            <li>Na kiedy: ${registration.date}, Pacjent: ${registration.patient.name} ${registration.patient.surname},
                Lekarz: ${registration.doctor.name}, Czas trwania wizyty: ${registration.duration},
                Numer rezerwacji: ${registration.id}, Godzina dokonania rezerwacji: ${registration.time}</li>
        </c:forEach>
    </ul>
</div>

</body>

<div>

</div>


</body>
</html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="title" var="bundle"/>
<html lang="${language}" class="h-100">
<head>
    <meta charset="utf-8">
    <title><fmt:message key="registration.title" bundle="${bundle}"/></title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/cover/">

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <link rel="shortcut icon" href="images/icon.png" type="image/png">

</head>
<body>
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column d-flex h-100 text-center text-dark">
    <header class="" >
        <div>
            <img class="float-md-start mb-auto" src="images/logo.png" width="30px" height="26px" alt="logo">
            <h3 class="float-md-start margin-left">BESTCAR</h3>
            <form class="float-md-start margin-left">
                <select class="form-select" id="language" name="language" onchange="submit()">
                    <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
                    <option value="ru" ${language == 'ru' ? 'selected' : ''}>Русский</option>
                </select>
            </form>
            <nav class="float-md-end text-dark">
                <a class="p-2 text-dark" aria-current="page" href="home"><fmt:message key="general.header.home" bundle="${bundle}"/></a>
                <a class="btn btn-outline-primary margin-left" href="registration"><fmt:message key="general.header.registration" bundle="${bundle}"/></a>
                <a class="btn btn-outline-primary margin-left" href="login"><fmt:message key="general.header.login" bundle="${bundle}"/></a>
            </nav>
        </div>
    </header>
    <main class="px-3 mt-auto align-content-center">
        <form method="post" action="registration" class="wrapper">
            <img class="mb-auto" src="images/logo.png" width="150px" height="130px" alt="logo">
            <h1 class="h3 mb-3 fw-normal margin"><fmt:message key="general.header.registration" bundle="${bundle}"/></h1><br><br>
            <fmt:message key="registration.input.phone" bundle="${bundle}" var="inputPhone"/>
            <label for="inputPhone" class="visually-hidden">${inputPhone}</label>
            <input type="tel" required pattern="[0-9_-]{9}" title="(99) 999 99 99" placeholder="${inputPhone}" id="inputPhone" class="form-control margin" name="phone" autofocus="">
            <fmt:message key="registration.input.name" bundle="${bundle}" var="inputName"/>
            <label for="inputName" class="visually-hidden">${inputName}</label>
            <input type="text" id="inputName" class="form-control margin" placeholder="${inputName}" name="name" required="" autofocus="">
            <fmt:message key="registration.input.surname" bundle="${bundle}" var="inputSurname"/>
            <label for="inputSurname" class="visually-hidden">${inputSurname}</label>
            <input type="text" id="inputSurname" class="form-control margin" placeholder="${inputSurname}" name="surname" required="" autofocus="">
            <fmt:message key="registration.input.password" bundle="${bundle}" var="inputPassword"/>
            <label for="inputPassword" class="visually-hidden">${inputPassword}</label>
            <input type="password" id="inputPassword" class="form-control margin" placeholder="${inputPassword}" name="password" required="">
            <fmt:message key="registration.input.rePassword" bundle="${bundle}" var="inputRePassword"/>
            <label for="inputPassword2" class="visually-hidden">${inputRePassword}</label>
            <input type="password" id="inputPassword2" class="form-control margin" placeholder="${inputRePassword}" name="password2" required="">
            <div>${requestScope.message}</div>
            <button class="btn btn-outline-secondary text-dark" type="submit"><fmt:message key="registration.button.submit" bundle="${bundle}"/></button>
        </form>
    </main>
    <footer class="mt-auto text-black-50">
        <p><fmt:message key="general.footer" bundle="${bundle}"/></p>
    </footer>
</div>
</body>
</html>

<style>

    .wrapper{
        width: 300px;
        margin: auto;
    }

    .margin{
        margin-bottom: 20px;
    }

    .margin-left{
        margin-left: 10px;
    }

</style>


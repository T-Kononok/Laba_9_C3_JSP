<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
    <title>Регистрация нового пользователя</title>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
</head>
<body>
<jsp:include page="/static/header.jsp"></jsp:include>
<my:layout1Column>
    <h1>Регистрация нового пользователя</h1>
    <my:errorMessage />
    <form id="mform" action="doRegister.jsp" method="post">
        <table>
                <%-- body="0" cellspacing="0" cellpadding="10">--%>
            <tr>
                <td>Логин:</td>
                <td><input type="text" name="login" value="${sessionScope.userData.login}"></td>
            </tr>
            <tr>
                <td>Пароль:</td>
                <td><input type="password" name="password" value=""></td>
            </tr>
            <tr>
                <td>Имя:</td>
                <td><input type="text" name="name" value="${sessionScope.userData.name}"></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="email" value="${sessionScope.userData.email}"></td>
            </tr>
            <tr>
                <c:set var="num" scope="session" value="${sessionScope.userData.rand}"/>
                <c:set var="num0" scope="session" value="${sessionScope.userData.rand % 10 / 1}"/>
                <c:set var="num1" scope="session" value=
                        "${((sessionScope.userData.rand - (sessionScope.userData.rand % 10)) / 10) % 10 /1}"/>
                <c:set var="num2" scope="session" value=
                        "${((sessionScope.userData.rand - (sessionScope.userData.rand % 100)) / 100) % 10 /1}"/>
                <c:set var="num3" scope="session" value=
                        "${(sessionScope.userData.rand - (sessionScope.userData.rand % 1000)) / 1000}"/>
                <td>Капча:</td>
                <td>
                <img src="<c:url value="/resources/num${num0}.jpg"/>" width="40" height="40">
                <img src="<c:url value="/resources/num${num1}.jpg"/>" width="40" height="40">
                <img src="<c:url value="/resources/num${num2}.jpg"/>" width="40" height="40">
                <img src="<c:url value="/resources/num${num3}.jpg"/>" width="40" height="40">
                </td>
            </tr>
            <tr>
                <td>Что на капче?</td>
                <td><input type="text" name="capcha" value=""></td>
            </tr>
                 <tr>
                     <td></td>
                     <td><input type="submit" value="Зарегистрироваться"> <input
                             type="button" value="Отменить"
                             onclick="window.location='<c:url value="/index.jsp"/>';"></td>
                 </tr>
                    <tr>
                        <td><input type="hidden" name="vvod" value="${sessionScope.userData.rand}"></td>
                    </tr>

        </table>
    </form>
</my:layout1Column>
<%@ include file="/static/footer.jsp"%>
</body>
</html>

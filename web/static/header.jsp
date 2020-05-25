<%--
  Created by IntelliJ IDEA.
  User: Alisa
  Date: 29.04.2020
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Обработать параметр сортировки --%>
<c:if test="${param.sort!=null}">
    <c:set var="sort" scope="session" value="${param.sort}"/>
</c:if>
<%-- Обработать параметр направления сортировки --%>
<c:if test="${param.dir!=null}">
    <c:set var="dir" scope="session" value="${param.dir}"/>
</c:if>
<%-- Общая декоративная "шапка" для всех страниц --%>
<div style="background-color: #3cbd7a; padding: 10px; ">
    <img src="<c:url value="/resources/ad.png"/>" width="50" height="53" border="0" align="left">
    <div style="font-family: 'Trebuchet'; font-size: 30px; height: 53px;
margin-left: 80px;">
        Доска объявлений "Фиговый листок" v.1.0.0
    </div>
</div>
<%-- Панель отображается если пользователь аутентифицирован --%>
<c:if test="${sessionScope.authUser!=null}">
    <div style="background-color: #ccc; padding: 5px">
        <div style="float: right; margin-right: 5px">
            [ <a href="<c:url value="/doLogout.jsp" />">Выйти</a> ]
        </div>
        Вы вошли как:
        <c:out value="${sessionScope.authUser.name}" />
        ( <c:out value="${sessionScope.authUser.login}" /> )
    </div>
</c:if>

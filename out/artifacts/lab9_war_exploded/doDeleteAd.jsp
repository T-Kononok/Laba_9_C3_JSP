<%--
  Created by IntelliJ IDEA.
  User: Alisa
  Date: 29.04.2020
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" pageEncoding="UTF-8" %>
<%-- Импортировать JSTL-библиотеку --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- Импортировать собственную библиотеку тегов --%>
<%@taglib prefix="ad" uri="http://bsu.rfe.java.teacher.tag/ad" %>

<%-- Извлечь JavaBean требуемого объявления --%>
<ad:getAds id="${param.id}" var="ad" />
<%-- Удалить его из системы --%>
<ad:deleteAd ad="${ad}"/>
<%-- Переадресовать на страницу кабинета --%>
<c:redirect url="/cabinet.jsp" />

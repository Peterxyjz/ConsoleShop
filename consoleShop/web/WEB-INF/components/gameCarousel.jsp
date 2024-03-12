<%-- 
    Document   : carousel
    Created on : Mar 12, 2024, 1:30:03 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<section class="today-deal container">
    <h3 class="today-deal__header">Game hay hôm nay</h3>

    <i class="fa-solid fa-chevron-left today-deal__previous"></i>
    <div class="today-deal__wrapper">
        <c:forEach var="game" items="${gameList}" begin="0" end="10">
            <div class="today-deal__item">
                <a href="<c:url value="/product/index.do?proName=${game.proName}"/>" class="today-deal__img">
                    <img src="<c:url value="/images/${game.proId}.jpg"/>" alt="">
                </a>
                <a href="<c:url value="/product/index.do?proName=${game.proName}"/>" class="today-deal__info" style="text-align: center">
                    <div class="today-deal__name">${game.proName}</div>
                    <div class="today-deal__price"><fmt:formatNumber value="${game.price - (game.price * game.discount)}"/>đ <span class="today-deal__discount"><fmt:formatNumber value="${game.price }"/>đ</span></div>
                    
                </a>
            </div>
        </c:forEach>



    </div>
    <i class="fa-solid fa-chevron-right today-deal__next"></i>
</section>
<script><%@include file="/WEB-INF/javascript/carousel.js"%></script>

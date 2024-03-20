<%-- 
    Document   : carouselNintendo
    Created on : Mar 12, 2024, 3:27:36 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--New nintendo Switch area  -->
<section class="today-deal container" id="switch-new">
    <h3 class="today-deal__header">Thế giới Nintendo Switch</h3>
    <div class="deal-status">Nintendo switch mới</div>
    <i class="fa-solid fa-chevron-left today-deal__previous"></i>
    <div class="today-deal__wrapper">
        <c:forEach var="nin" items="${nintendoNewList}" begin="0" end="9">
            <div class="today-deal__item">
                <a href="<c:url value="/product/index.do?proName=${nin.proName}"/>" class="today-deal__img">
                    <img src="<c:url value="/images/${nin.proId}.jpg"/>" alt="">
                </a>
                <a href="<c:url value="/product/index.do?proName=${nin.proName}"/>" class="today-deal__info">
                    <div class="today-deal__name" style="text-transform: capitalize">${nin.proName}</div>
                    <div class="today-deal__price"><fmt:formatNumber value="${nin.price - (nin.price * nin.discount)}"/>đ<span class="today-deal__discount"><fmt:formatNumber value="${nin.price}"/>đ</span></div>
                    
                </a>
            </div>
        </c:forEach>


        <i class="fa-solid fa-chevron-right today-deal__next"></i>
    </div>
</section>

<!-- SecondHand Nintendo Switch -->
<section class="today-deal container" id="switch-2hand">
    <h3 class="today-deal__header"></h3>
    <div class="deal-status">Nintendo switch cũ</div>
    <i class="fa-solid fa-chevron-left today-deal__previous"></i>
    <div class="today-deal__wrapper">
        <c:forEach var="nin" items="${nintendoLikeNewList}" begin="0" end="9">
            <div class="today-deal__item">
                <a href="<c:url value="/product/index.do?proName=${nin.proName}"/>" class="today-deal__img">
                    <img src="<c:url value="/images/${nin.proId}.jpg"/>" alt="">
                </a>
                <a href="<c:url value="/product/index.do?proName=${nin.proName}"/>" class="today-deal__info">
                    <div class="today-deal__name" style="text-transform: capitalize">${nin.proName}</div>
                    <div class="today-deal__price"><fmt:formatNumber value="${nin.price - (nin.price * nin.discount)}"/>đ<span class="today-deal__discount"><fmt:formatNumber value="${nin.price}"/>đ</span></div>
                </a>
            </div>
        </c:forEach>
        <i class="fa-solid fa-chevron-right today-deal__next"></i>
    </div>
</section>
<script><%@include file="/WEB-INF/javascript/carousel.js"%></script>





<%-- 
    Document   : best_seller
    Created on : Mar 20, 2024, 11:04:10 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<style><%@include file="/WEB-INF/css/product.css"%></style>
<c:set var="urlLogin" value="/product/showBestSeller.do" scope="session"/>
<c:set var="urlLogout" value="/product/showBestSeller.do" scope="session"/>
<c:set var="urlSignup" value="/product/showBestSeller.do" scope="session"/>

<c:forEach var="product" items="${list}">
    <div class="today-deal__item col-lg-3 col-md-4 col-sm-6 col-6">
        <div class="today-deal__img">
            <a  href="<c:url value="/product/index.do?proName=${product.proName}"/>"><img src="<c:url value="/images/${product.proId}.jpg"/>" alt=""></a>
        </div>
        <a href="<c:url value="/product/index.do?proName=${product.proName}"/>" class="today-deal__info">
           <div class="today-deal__name">${product.proName}</div>
            <c:if test="${product.amount > 0}">
                <div class="today-deal__price">
                    <fmt:formatNumber value="${(1-product.discount)*product.price}" type="number" />đ
                    <c:if test="${product.discount > 0}">
                        <div class="today-deal__discount"><fmt:formatNumber value="${product.price}" type="number" />đ</div>
                        <div class="today-deal__discount-p"><fmt:formatNumber value="${product.discount}" type="percent" /></div>
                    </c:if>

                    <c:if test="${product.proName.contains("Like New")}">
                        <div class="product__likenew" style="background: #e30010;font-size: 10px;border-radius: 14px;color: #fff; padding: 4px 4px;">Like new</div>
                    </c:if>
                </div>
            </c:if>
            <c:if test="${product.amount == 0}">
                <div class="today-deal__price">
                    <div class="today-deal__discount-p">Hết hàng</div>
                </div>
            </c:if>
        </a>
    </div>
</c:forEach>
<br/>
<jsp:include page="/WEB-INF/components/footer.jsp" />
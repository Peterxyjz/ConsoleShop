<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<style><%@include file="/WEB-INF/css/product.css"%></style>
<div class="container-fluid mt-5">
    <div class="row product">
        <div class="col-lg-1"></div>
        <div class="col-lg-3  product__left">
            <img src="<c:url value="/images/${product.proId}.jpg"/>" width="60%" class=""/>
            <div class="moreImg col-lg-4 text-center mt-2">
                <a href="#" id="moreImgLink">Xem thêm ảnh</a>  
            </div>
        </div>


        <form action="<c:url value="/cart/add.do"/>" class="col-lg-6  product__right">
            <p>Sản phẩm</p>
            <input type="hidden" name="proId" value="${product.proId}">
            <h3 class="product__name">${product.proName}</h3>
            <div class="product__description">
                <div class="product__info">
                    <div class="product__status">
                        <span><i class="bi bi-box-seam-fill"></i> Tình trạng: </span>
                        <c:if test="${product.amount != 0}">
                            <span>Còn hàng (${product.amount} sản phẩm)</span>
                        </c:if>
                        <c:if test="${product.amount == 0}">
                            <span style="color: red">Hết hàng</span>
                        </c:if>
                    </div>
                    <p class="product__price"><fmt:formatNumber value="${(1-product.discount)*product.price}" type="number" />đ</p>
                    <span class="product__discount"><fmt:formatNumber value="${product.price}" type="number" />đ</span>
                    <!--Discount:--> 
                    <span class="product__discount-p"><fmt:formatNumber value="${product.discount}" type="percent" /></span>
                </div>
                <div  class="product__amount mt-3">
                    <label for="amount" style="padding-right: 1rem">Số lượng:</label>
                    <i class="fa-solid fa-minus amount__minus"></i>
                    <input type="hidden" id="maxAmount" value="${product.amount}">
                    <input type="text" value="1" inputmode="numeric" id="amount" name="amount" max="${product.amount}"/>
                    <i class="fa-solid fa-plus amount__plus"></i>

                </div>
            </div>

            <div class="nav_button">
                <hr/>
                <c:if test="${product.amount == 0}">
                    <p>Hết hàng</p>
                </c:if>
                <c:if test="${product.amount != 0}">
                    <!--                        <form action="paynow.do">
                                            <input type="hidden" name="proId" value="${product.proId}">
                                            <input type="hidden" name="amount" value="${product.amount}">
                                            <button type="submit" class="nav__btn--buy">
                                                <i class="bi bi-credit-card-fill"></i> Mua Ngay
                                            </button>-->
                    <a href="#" class="nav__btn--buy">
                        <i class="bi bi-credit-card-fill"></i> Mua Ngay
                    </a>
            </form>
            <button type="submit" class="nav__btn--add" id="add">
                <i class="bi bi-cart-plus"></i> Thêm vào giỏ 
            </button>
        </c:if>
        <hr/>
    </div>
</form>




<div class="col-lg-1"></div>
</div>
<div class="row">
    <div class="col-lg-1"></div>
    <div class=" col-lg-3 text-center mt-2">

    </div>
    <div class="col-lg-6 mt-2">
        <p style="text-align: justify; font-size: large">${product.description}</p> 
    </div>
    <div class="col-lg-1"></div>
</div>
${errorMsg}
</div>
<c:set var="urlLogin" value="/product/index.do?proName=${product.proName}" scope="session"/>
<c:set var="urlLogout" value="/product/index.do?proName=${product.proName}" scope="session"/>
<c:set var="urlSignup" value="/product/index.do?proName=${product.proName}" scope="session"/>
<br/>
<script><%@include file="/WEB-INF/javascript/product.js"%></script>
<jsp:include page="/WEB-INF/components/footer.jsp" />
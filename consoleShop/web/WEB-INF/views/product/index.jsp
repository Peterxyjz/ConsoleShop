<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<style><%@include file="/WEB-INF/css/product.css"%></style>
<div class="container-fluid mt-5">
    <div class="row product">
        <div class="col-lg-5 col-md-6  product__left">
            <img src="<c:url value="/images/${product.proId}.jpg"/>" width="60%" class=" rounded mx-auto d-block "/>
        </div>
        <div class="col-lg-5 col-md-5  product__right">
            <h3 class="product__name">${product.proName}</h3>
            <div class="product__description">
                <div class="product__info">
                    <p class="product__status"><i class="bi bi-box-seam-fill"></i> Tình trạng: </p>
                    <p class="product__price"><fmt:formatNumber value="${(1-product.discount)*product.price}" type="number" />đ</p>
                    <span class="product__discount"><fmt:formatNumber value="${product.price}" type="number" />đ</span>
                    <!--Discount:--> 
                    <span class="product__discount-p"><fmt:formatNumber value="${product.discount}" type="percent" /></span>
                </div>
                <form action="" class="product__amount">
                    <label for="amount" >Số lượng</label><br/>
                    <i class="fa-solid fa-minus amount__minus"></i>
                    <input type="text" value="1" inputmode="numeric" id="amount" />
                    <i class="fa-solid fa-plus amount__plus"></i>
                </form>
            </div>
                    
            <div class="nav_button">
                <hr/>
                <button class="nav__btn--buy" type="submit"><i class="bi bi-credit-card-fill"></i> Mua Ngay</button>
                <button class="nav__btn--add"  type="submit"><i class="bi bi-cart-plus"></i> Thêm vào giỏ</button>
            </div>
        </div>
        <div class="col-sm-1"></div>
    </div>
    <div class="row">
        <div class="moreImg col-lg-5 col-md-6 text-center mt-2">
            <a href="#" id="moreImgLink">Xem thêm ảnh</a>  
        </div>
        <div class="col-lg-5 col-md-5 ">
            <hr/>
            <p style="text-align: justify; font-size: large">${product.description}</p> 
        </div>
    </div>
    ${errorMsg}
</div>
<br/>
<script><%@include file="/WEB-INF/javascript/product.js"%></script>
<jsp:include page="/WEB-INF/components/footer.jsp" />
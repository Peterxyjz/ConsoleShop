<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<!--<style><%@include file="/WEB-INF/css/product.css"%></style>-->
<div class="container">
    <a href="<c:url value="/product/search_handler.do?proName=" />" class="btn btn-link">
        <i class="bi bi-arrow-left-short"></i> Mua thêm sản phẩm khác
    </a>
    <div class="row">
        <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Giỏ hàng</div>
        <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Thông tin đặt hàng</div>
        <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Thanh toán</div>
        <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Hoàn tất</div>
    </div>
    <div class="row">
        <div class="col-sm-9">
            <h3>Giỏ hàng <span style="font-size: 1rem">(${cart.quantity}) sản phẩm</span></h3> 
            <div class="item row">
                <div class="item_img col-sm-4">
                    <a href="#">
                        <img src="<c:url value="/images/1.jpg"/>" width="100%" class=" rounded mx-auto d-block "/>
                    </a>
                </div>
                <div class="item_info col-sm-8">
                    <div class="one">
                        <a href="#">
                            Tên sản phẩm
                        </a>
                        <p>Thể loại</p>
                    </div>
                    <div class="two">
                        <form action="" class="product__amount">
                            <label for="amount" >Số lượng</label><br/>
                            <i class="fa-solid fa-minus amount__minus"></i>
                            <input type="text" value="1" inputmode="numeric" id="amount" />
                            <i class="fa-solid fa-plus amount__plus"></i>
                        </form>
                    </div>
                    <div class="today-deal__price">
                        <fmt:formatNumber value="${(1-product.discount)*product.price}" type="number" />đ
                        <div class="today-deal__discount"><fmt:formatNumber value="${product.price}" type="number" />đ</div>
                        <div class="today-deal__discount-p"><fmt:formatNumber value="${product.discount}" type="percent" /></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-3">

        </div>
    </div>

</div>
</div>
<jsp:include page="/WEB-INF/components/footer.jsp" />


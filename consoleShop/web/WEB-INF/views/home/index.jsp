<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/home.css"%></style>
<jsp:include page="/WEB-INF/components/navbar.jsp" />

<section class="banner">
    <div class="banner__content">
        <h1 class="banner__header">Console Shop</h1>
        <div class="banner__description">Khám phá thế giới game đỉnh cao, cùng đam mê vượt mọi ranh giới, tại đây chúng tôi chờ bạn !</div>
        <a href="<c:url value="/product/search_handler.do?proName"/>"><button class="banner__btn">Mua ngay</button></a>
    </div>

    <div class="banner__bkg">
        <img src="<c:url value="/images/Background/bg2.png"/>" alt="">
    </div>
</section>

<section class="top-product container">
    <h3 class="top-product__header">Sản phẩm hàng đầu</h3>
    <div class="top-product__wrapper row">
        <div class="top-product__item col-lg-2 col-md-4 col-6">
            <img src="<c:url value="/images/63.jpg"/>" alt="">
            <h4>Nitendo Switch</h4>
        </div>
        <div class="top-product__item col-lg-2 col-md-4 col-6 ">
            <img src="<c:url value="/images/82.jpg"/>" alt="">
            <h4>PlayStation 5</h4>
        </div>
        <div class="top-product__item col-lg-2 col-md-4 col-6">
            <img src="<c:url value="/images/77.jpg"/>" alt="">
            <h4>PlayStation 4</h4>
        </div>
        <div class="top-product__item col-lg-2 col-md-4 col-6" id="ps3-img">
            <img src="<c:url value="/images/72.jpg"/>" alt="">
            <h4>PlayStation 3</h4>
        </div>
        <div class="top-product__item col-lg-2 col-md-4 col-6">
            <img src="<c:url value="/images/19.jpg"/>" alt="">
            <h4>Games</h4>
        </div>

        <div class="top-product__item col-lg-2 col-md-4 col-6">
            <img src="<c:url value="/images/102.jpg"/>" alt="">
            <h4>Phụ kiện</h4>
        </div>
    </div>
</section>


<jsp:include page="/WEB-INF/components/gameCarousel.jsp" />

<hr>
<section class="cashback">
    <div class="cashback__img">
        <img src="<c:url value="/images/Background/bg1.png"/>" alt="">
    </div>
    <div class="cashback__content">
        <h1>Hoàn tiền lên đến 50%</h1>
        <p>Nhận voucher khi đăng ký tài khoản mua sắm tại <span>Console Shop</span></p>
        <a href="<c:url value="/account/signup.do"/>"><button>Đăng ký ngay</button></a>
    </div>
</section>
<hr>

<!--New nintendo Switch area  -->
<jsp:include page="/WEB-INF/components/nintendoCarousel.jsp" />


<jsp:include page="/WEB-INF/components/footer.jsp" />
<script><%@include file="/WEB-INF/javascript/home.js"%></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous">
</script>

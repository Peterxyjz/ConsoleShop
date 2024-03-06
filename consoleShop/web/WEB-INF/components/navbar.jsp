<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/main.css"%></style>
<navbar class="nav">
    <div class="nav__wrapper">
        <div class="nav__upper">
            <div class="nav__logo">
                <a href="<c:url value="/"/>" class="logo__group">
                    <img src="<c:url value="/images/Background/textlogo.jpg"/>">
                </a>
            </div>

            <div class="navigate__search">
                <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
                <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
                <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
                <form action="<c:url value="/product/search_handler.do"/>" method="POST">
                    <input oninput="searchByName()" type="text" placeholder="Tìm sản phẩm" id="search" name="search" onfocus="searchByName()">            
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <i class="fa-solid fa-magnifying-glass" id="search-bar-icon"></i>
                </form>

            </div>

            <div class="nav__right">
                <i class="fa-solid fa-magnifying-glass nav__search-icon"></i>
                <c:if test="${account == null}">
                    <a href="<c:url value="/account/login.do"/>"class="nav__account">
                        <i class="bi bi-person"></i>
                        <span>Tài Khoản</span>
                    </a>
                </c:if>
                <c:if test="${account != null}">
                    <div class="nav__account">
                        
                        <i class="bi bi-person nav__account--logged">
                            <a class="nav__name">Xin chào ${account.username}!</a>
                            <ul class="account__dropdown">
                            <li class="account__links">
                                <div>Số dư tài khoản</div>
                                <div>
                                    <span><fmt:formatNumber value="${account.wallet}" type="number"/>đ</span>
                                    <a style="margin-left: 4px " href="/"><i class="bi bi-plus-circle"></i></a>
                                </div>
                            </li>
                            <li class="account__links"><a href="">Quản lý tài khoản</a></li>
                            <li class="account__links"><a href="">Lịch sử đơn hàng</a></li>
                            <li class="account__links"><a href="<c:url value="/account/logout.do"/>">Đăng xuất</a></li>
                        </ul>
                        </i>
                        
                        
                        
                    </div>
                </c:if>
                <a href="<c:url value="/cart/index.do"/>" class="nav__cart">
                    <c:if test="${cart == null}">
                        <i class="bi bi-cart"></i> (0) 
                    </c:if>
                    <c:if test="${cart != null}">
                        <i class="bi bi-cart-fill"></i> (${cart.quantity})
                    </c:if>
                    <span>Giỏ hàng</span> 
                </a>
                <i class="fa-solid fa-bars nav__menu"></i>
            </div>
        </div>
        <div class="nav__lower">
            <ul class="navigate__items">
                <li class="nav__item">
                    <a href="<c:url value="/product/search_handler.do?proName"/>"><i class="fa-solid fa-list"></i> Tất cả sản phẩm</a>
                    <div class="item-border"></div>
                </li>
                <li class="nav__item">
                    <a href=""><i class="bi bi-tag"></i> Danh mục sản phấm</a>
                    <div class="item-border"></div>
                </li>
                <li class="nav__item">
                    <a href=""><span>%</span> Sản phẩm bán chạy</a>
                    <div class="item-border"></div>
                </li>
                <li class="nav__item">
                    <a href=""><i class="bi bi-credit-card"></i> Hình thức thanh toán</a>
                    <div class="item-border"></div>
                </li>
            </ul>
        </div>
        <form action="<c:url value="/product/search_handler.do"/>" method="POST" id="search__form">
            <input type="text" id="search__bar" width="100%">
            <div class="nav__modal"></div>  
            <i class="fa-solid fa-magnifying-glass nav__search-icon"></i>
        </form>
    </div>

    <div class="dropdown__container">
        <ul class="dropdown__menu">
            <li class="dropdown__element">
                <a href="<c:url value="/product/search_handler.do?proName"/>"> Tất cả sản phẩm</a>         
            </li>
            <li class="dropdown__element">
                <a href=""> Danh mục sản phấm</a>
            </li>
            <li class="dropdown__element">
                <a href=""> Sản phẩm khuyến mãi</a>
            </li>
            <li class="dropdown__element">
                <a href=""> Hình thức thanh toán</a>
            </li>
        </ul>
    </div>              
</navbar>
<script><%@include file="/WEB-INF/javascript/navbar.js"%></script>
<script><%@include file="/WEB-INF/javascript/home.js"%></script>
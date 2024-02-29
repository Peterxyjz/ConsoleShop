<%-- 
    Document   : navbar
    Created on : Feb 27, 2024, 2:36:59 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/main.css"%></style>

<navbar class="nav">
    <div class="nav__wrapper">
        <div class="nav__logo">
            <a href="<c:url value="/"/>" class="logo__group">
                <img src="<c:url value="/images/Background/textlogo.jpg"/>" alt="logo" width="100%">
            </a>
        </div>
        <ul class="navigate__items ">
            <li class="nav__item">
                <a href="">Lorem</a>
            </li>
            <li class="nav__item">
                <a href="">Lorem</a>
            </li>
            <li class="nav__item">
                <a href="">Lorem</a>
            </li>
            <li class="nav__item">
                <a href="">Lorem</a>
            </li>
        </ul>
        <div class="navigate__search">
              <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
    <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
            <form action="<c:url value="/product/search_handler.do"/>" method="POST">
                <input oninput="searchByName()" type="text" placeholder="Tìm sản phẩm" id="search" name="search"  >            
                <i class="fa-solid fa-magnifying-glass"></i>

            </form>
        </div>

        <div class="nav__right">
            <a href="<c:url value="/account/login.do"/>" class="nav__account">
                <i class="fa-regular fa-user"></i>
                <span>Tài Khoản</span>
            </a>
            <a href="#" class="nav__cart">
                <i class="bi bi-cart2"></i>
                <span>Giỏ hàng</span>
            </a>
            <i class="fa-solid fa-bars nav__menu"></i>
        </div>
    </div>
    <div class="dropdown__container">
        <ul class="dropdown__menu">
            <li class="dropdown__element">
                <a href="">Lorem</a>
            </li>
            <li class="dropdown__element">
                <a href="">Lorem</a>
            </li>
            <li class="dropdown__element">
                <a href="">Lorem</a>
            </li>
            <li class="dropdown__element">
                <a href="">Lorem</a>
            </li>
        </ul>
    </div>
</navbar>
<script><%@include file="/WEB-INF/javascript/home.js"%></script>
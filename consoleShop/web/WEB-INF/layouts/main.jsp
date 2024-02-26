<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Console Shop</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style><%@include file="/WEB-INF/css/main.css"%></style>
    </head>
    <body>  
    <navbar class="nav">
        <div class="nav__wrapper">
            <div class="nav__logo">
                <a href="<c:url value="/index.html"/>" class="logo__group">
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
                <input type="text" placeholder="Tìm sản phẩm">
                <i class="fa-solid fa-magnifying-glass"></i>
            </div>

            <div class="nav__right">
                <a href="#" class="nav__account">
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
    <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp" />
</body>
</html>

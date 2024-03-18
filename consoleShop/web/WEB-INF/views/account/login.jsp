<%-- 
    Document   : login
    Created on : Feb 27, 2024, 2:01:07 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/login.css"%></style>
<div class="container-fluid">
    <div class="row">
        <div class="login col-lg-7">
            <a href="<c:url value="/"/>" class="logo">
                <img src="<c:url value="/images/Background/logo.png"/>" alt="">
                <span>Console Shop</span>
            </a>
            <h2 class="login__header">Đăng nhập vào Console Shop</h2>
            <form action="<c:url value="/account/login_handler.do" />" class="login__form container-fluid" id="form__login">
                <div class="row">
                    <div class="form__group col-lg-8 col-sm-8">
                        <label for="email">Email</label><br/>
                        <input type="text" id="email" name="email" value="${param.email!=null?param.email:ckEmail.value}"><br/>
                    </div>
                    <div class="form__group col-lg-8 col-sm-8">
                        <label for="password">Mật khẩu</label><br/>
                        <input type="password" id="password_check" name="password" value="${param.password!=null?param.password:ckPassword.value}"><br/>
                    </div>
                    <div class="form__message">${errMsg}</div>
                    <div class="form-check mb-3">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" name="remember"> Lưu tài khoản
                        </label>
                    </div>
                    <div class="form__group--submit col-lg-8 col-sm-8" >
                        <button type="submit">Đăng nhập</button>
                    </div>
                    <div class="login__footer col-lg-8 col-sm-8">
                        Bạn chưa có tài khoản? <a href="<c:url value="/account/signup.do"/>">Đăng kí</a>
                    </div>
                    <div class="login__footer col-lg-8 col-sm-8">
                        Bạn quên mật khẩu? <a href="<c:url value="/account/forgot.do"/>">Đổi mật khẩu</a>
                    </div>

                </div>
            </form>
        </div>
        <div class="side-bar-bg col-lg-5">

            <div class="side-bar col-lg-12">
                <img src="<c:url value="/images/Background/marioonshell.gif" />" alt="side bar image">
                <div class="side-bar__highlight">
                    <div class="highlight__group">
                        <i class="fa-regular fa-circle-check"></i>
                        <span>Sản phẩm chính hãng</span>
                    </div>
                    <div class="highlight__group">
                        <i class="fa-regular fa-circle-check"></i>
                        <span>Giao hàng toàn quốc trong 48h</span>

                    </div>
                    <div class="highlight__group">
                        <i class="fa-regular fa-circle-check"></i>
                        <span>Trả hàng và hoàn tiền 100%</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous">
</script>

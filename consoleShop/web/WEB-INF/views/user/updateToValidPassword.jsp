<%-- 
    Document   : password_change
    Created on : Mar 20, 2024, 9:09:46 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/updatePassword.css"%></style>
<div class="container-fluid">
    <div class="row">
        <div class="login col-lg-7">
            <a href="<c:url value="/"/>" class="logo">
                <img src="<c:url value="/images/Background/logo.png"/>" alt="">
                <span>Console Shop</span>
            </a>
            <h2 class="login__header">Thay đổi mật khẩu</h2>
            <form action="<c:url value="/user/updateToValidPassword_handler.do" />" class="login__form container-fluid" id="form__login">
                <div class="row">
                    <div class="form__group col-lg-8 col-sm-8">
                        <label for="accId" class="form-label"></label>
                        <input type="hidden" id="accId" name="accId" value="${sessionScope.account.accId}"><br/>
                    </div>
                    <div class="form__group col-lg-8 col-sm-8">
                        <label for="password">Mật khẩu mới</label><br/>
                        <input type="password" id="password" name="password" value="${param.password}"><br/>
                    </div>
                    <div class="form__group col-lg-8 col-sm-8">
                        <label for="password_check">Xác nhận mật khẩu mới</label><br/>
                        <input type="password" id="password_check" name="password_check" value="${param.password_check}"><br/>
                    </div>
                    <div class="form__message">${errMsgPasswordNull}${errMsgPasswordInvalid}${errMsgPassword}</div>
                    <div class="form__group--submit col-lg-8 col-sm-8" >
                        <button type="submit"><i class="bi bi-check-lg"></i>    Xác nhận</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="side-bar-bg col-lg-5">

            <div class="side-bar col-lg-12">
                <img src="<c:url value="/images/Background/marioonshell.gif" />" alt="side bar image">
                <div class="side-bar__highlight">
                    <div class="highlight__group">
                        <i class="fa-regular"></i>
                        <span>ĐỂ THAY ĐỔI MẬT KHẨU:</span>
                    </div>
                    <div class="highlight__group">
                        <i class="fa-regular fa-circle-check"></i>
                        <span>Mật khẩu có độ dài từ 3-10 kí tự</span>

                    </div>
                    <div class="highlight__group">
                        <i class="fa-regular fa-circle-check"></i>
                        <span>Ít nhất có 1 số và 1 chữ cái (không phân biệt hoa thường)</span>
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
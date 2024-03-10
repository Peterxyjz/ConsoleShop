<%-- 
    Document   : update
    Created on : Mar 6, 2024, 6:14:46 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/accountUpdate.css"%></style>
<jsp:include page="/WEB-INF/components/navbar.jsp" />

<div class="container" >
    <div class="general">
        <h3 class="general__header">Tổng quan</h3>

        <div class="row general__wrapper">
            <div class="general__group col-md-3 col-sm-4 col-12">
                <div class="general__label">Tên đăng nhập</div>
                <div class="general__info">${sessionScope.account.username}</div>
            </div>

            <div class="general__group col-md-3 col-sm-4 col-12">
                <div class="general__label">Họ và tên</div>
                <c:if test="${sessionScope.account.fullName == null}">
                    <div class="general__info">Chưa cập nhật</div>
                </c:if>

                <c:if test="${sessionScope.account.fullName != null}">
                    <div class="general__info">${sessionScope.account.fullName}</div>
                </c:if>
            </div>
            <div class="general__group col-md-3 col-sm-4 col-12">
                <div class="general__label">Số dư</div>
                <div class="general__info"><fmt:formatNumber value="${sessionScope.account.wallet}" type="number"/>đ</div>
            </div>
            <div class="general__group col-md-3 col-sm-4 col-12">
                <div class="general__label">Tổng đơn hàng</div>
                <div class="general__info">Bạn chưa mua gì cả :(</div>

            </div>
            <div class="general__group col-md-3 col-sm-4 col-12">
                <div class="general__label">Email</div>
                <div class="general__info">${sessionScope.account.email}</div>
            </div>
        </div>
    </div>
    <hr>
    <div class="personal col-lg-5">
        <h3 class="personal__header">Thông tin cá nhân</h3>
        <p class="personal__remind">*Để mua hàng tốt nhất, bạn nên nhập đầy đủ thông tin.</p>

            <div class="personal__group col-lg-12">
                Username: ${sessionScope.account.username}
            </div>

            <div class="personal__group col-lg-12">
                Họ và tên: ${sessionScope.account.fullName}
            </div>

            <div class="personal__group col-lg-12">
                Số điện thoại: ${sessionScope.account.phoneNumber}
            </div>

            <div class="personal__group col-lg-12">
                Quốc gia: ${sessionScope.account.country}
            </div>

            <div class="personal__group col-lg-12">
                Địa chỉ: ${sessionScope.account.address}
            </div>

            <div class="personal__group col-lg-12">
                Ngày sinh: <fmt:formatDate value="${sessionScope.account.birthDay}" pattern="MM-dd-yyyy" />
                
            </div>
                <a href="update.do?accId=${sessionScope.account.accId}">
                    <button class="personal__change col-4">Cập nhật</button>
                </a>
    </div>
</div>
<jsp:include page="/WEB-INF/components/footer.jsp" />
<script><%@include file="/WEB-INF/javascript/accountUpdate.js"%></script>
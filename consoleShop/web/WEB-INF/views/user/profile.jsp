<%-- 
    Document   : update
    Created on : Mar 6, 2024, 6:14:46 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/user.css"%></style>
<style><%@include file="/WEB-INF/css/accountManage.css"%></style>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<div class="row ">
    <jsp:include page="/WEB-INF/components/accountNavigate.jsp" />

    <div class="container info__wrapper col-lg-9 col-12">

        <div class="row">
            <div class="general col-sm-12">
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
                        <div class="general__label">
                            Số dư: <span class="general__info"><fmt:formatNumber value="${account.wallet}" pattern="###,###,###,###,###,###" type="number"/>đ</span>
                        </div>
                        <a href="<c:url value="/user/deposit.do"/>" class="btn btn-success"><i class="bi bi-plus-circle"></i> Nạp thêm tiền</a>
                    </div>
                    <div class="general__group col-md-3 col-sm-4 col-12">
                        <div class="general__label">Tổng đơn hàng</div>
                        <div class="general__info">
                            <c:if test="${orders.size() == 0}">
                                Bạn chưa mua gì cả :(
                            </c:if>
                            <c:if test="${orders.size() > 0}">
                                Bạn đã mua: ${orders.size()} đơn hàng <3
                            </c:if>    
                        </div>

                    </div>
                    <div class="general__group col-md-3 col-sm-4 col-12">
                        <div class="general__label">Email</div>
                        <div class="general__info">${sessionScope.account.email}</div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="personal col-sm-5">
                <h3 class="personal__header">Thông tin cá nhân</h3>
                <p class="personal__remind">*Để mua hàng tốt nhất, bạn nên nhập đầy đủ thông tin.</p>

                <div class="personal__group col-lg-12">
                    <span class="personal__title">Username:</span> ${sessionScope.account.username}
                </div>

                <div class="personal__group col-lg-12">
                    <span class="personal__title">Họ và tên:</span> ${sessionScope.account.fullName}
                </div>

                <div class="personal__group col-lg-12">
                    <span class="personal__title">Số điện thoại:</span> ${sessionScope.account.phoneNumber}
                </div>

                <div class="personal__group col-lg-12">
                    <span class="personal__title">Quốc gia:</span> ${sessionScope.account.country}
                </div>

                <div class="personal__group col-lg-12">
                    <span class="personal__title">Địa chỉ:</span> ${sessionScope.account.address}
                </div>

                <div class="personal__group col-lg-12">
                    <span class="personal__title">Ngày sinh:</span> <fmt:formatDate value="${sessionScope.account.birthDay}" pattern="MM-dd-yyyy" />

                </div>
                <a href="profile_edit.do?accId=${sessionScope.account.accId}">
                    <button class="personal__change col-md-4 col-6">Cập nhật</button>
                </a>
            </div>
        </div>

    </div>
</div>
<div style="width: 100%; height: 30px; background-color: #fff; margin-top: 40px"></div>
<jsp:include page="/WEB-INF/components/footer.jsp" />
<script><%@include file="/WEB-INF/javascript/accountUpdate.js"%></script>
<script><%@include file="/WEB-INF/javascript/accountNavigate.js"%></script>
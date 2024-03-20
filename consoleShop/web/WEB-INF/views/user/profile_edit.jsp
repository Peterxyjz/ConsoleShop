<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/user.css"%></style>
<style><%@include file="/WEB-INF/css/accountManage.css"%></style>

<jsp:include page="/WEB-INF/components/navbar.jsp" />
<div class="row">
    <jsp:include page="/WEB-INF/components/accountNavigate.jsp" />
    <div class="container info__wrapper col-lg-9 col-12">
        <div class="general">
            <h3 class="general__header">Tổng quan</h3>

            <div class="row general__wrapper">
                <div class="general__group col-md-3 col-sm-4 col-12">
                    <div class="general__label">Tên đăng nhập: </div>
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
                        Số dư: <span class="general__info"><fmt:formatNumber value="${account.wallet}" type="number" pattern="###,###,###,###,###,###"/>đ</span>
                    </div>
                    <a href="<c:url value="/user/deposit.do"/>" class="btn btn-success"><i class="bi bi-plus-circle"></i> Nạp thêm tiền</a>
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
            <form action="profile_edit_handler.do" class="row personal__wrapper">
                <div class="personal__group col-lg-12">
                    <label for="username" class="form-label">Tên đăng nhập</label>
                    <input id="username" value="${sessionScope.account.username}" name="username" type="text" class="form-control">
                </div>

                <div class="personal__group col-lg-12">
                    <label for="fullName" class="form-label">Họ và tên</label>
                    <c:if test="${sessionScope.account.fullName == null}">
                        <input id="fullName" value="${sessionScope.account.fullName}" name="fullName" placeholder="Vui lòng nhâp họ và tên"  type="text" class="form-control">
                    </c:if>
                    <c:if test="${sessionScope.account.fullName != null}">
                        <input id="fullName" value="${sessionScope.account.fullName}" name="fullName" type="text" class="form-control">
                    </c:if>
                </div>

                <div class="personal__group col-lg-12">
                    <label for="phoneNumber" class="form-label">Số điện thoại</label>
                    <c:if test="${sessionScope.account.phoneNumber == null}">
                        <input id="phoneNumber" value="${sessionScope.account.phoneNumber}" placeholder="Vui lòng nhập số điện thoại" name="phoneNumber" type="tel" class="form-control">
                    </c:if>
                    <c:if test="${sessionScope.account.phoneNumber != null}">
                        <input id="phoneNumber" value="${sessionScope.account.phoneNumber}" name="phoneNumber" type="tel" class="form-control">
                    </c:if>
                </div>

                <div class="personal__group col-lg-12">
                    <label for="country" class="form-label">Quốc gia</label>
                    <input id="country" value="Việt Nam" name="country" type="text" readonly>
                    <p style="color: red; font-size: 14px">*Console Shop chỉ hoạt động tại Việt Nam</p>
                </div>
                
                <div class="personal__group col-lg-12">
                    <label for="address" class="form-label">Địa chỉ</label>
                    <c:if test="${sessionScope.account.address == null}">
                        <input id="address" value="${sessionScope.account.address}" placeholder="Vui lòng nhập địa chỉ" name="address" type="text" class="form-control">
                    </c:if>
                    <c:if test="${sessionScope.account.address != null}">
                        <input id="phoneNumber" value="${sessionScope.account.address}" name="address" type="text" class="form-control">
                    </c:if>
                </div>

                <div class="personal__group col-lg-12">

                    <label for="birthDay" class="form-label">Ngày sinh</label>
                    <c:if test="${sessionScope.account.birthDay == null}">
                        <input id="birthDay" value="${sessionScope.account.birthDay}" placeholder="Vui lòng nhập sinh nhật" type="date" class="form-control">  
                    </c:if>
                    <c:if test="${sessionScope.account.birthDay != null}">
                        <input id="birthDay" value="${sessionScope.account.birthDay}" name="birthDay" type="date" class="form-control"> 
                    </c:if>

                </div>
                <button type="submit" class="personal__submit col-md-5 col-7">Lưu các thay đổi</button>
            </form>
        </div>       
    </div>
</div>
<div style="width: 100%; height: 30px; background-color: #fff; margin-top: 40px"></div>
<jsp:include page="/WEB-INF/components/footer.jsp" />
<script><%@include file="/WEB-INF/javascript/accountUpdate.js"%></script>
<script><%@include file="/WEB-INF/javascript/accountNavigate.js"%></script>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<style><%@include file="/WEB-INF/css/user.css"%></style>
<div class="nav_bg">
    <div class="container">
        <a href="<c:url value="/" />" class="link-primary"><i class="bi bi-chevron-left"></i> Quay lại trang chủ</a>
        <div class="nav_deposit">         
            <h3>Hình thức thanh toán</h3>
            <hr/>
            <div>
                <!-- Tab items -->
                <div class="tabs row">
                    <div class="tab-item active col-lg-4">
                        <i class="fa-solid fa-wallet tab-icon"></i>
                        Ví của tôi
                        <div class="line active"></div>
                    </div>
                    <div class="tab-item  col-lg-4">
                        <i class="fa-solid fa-credit-card  tab-icon"></i>
                        Online Banking
                        <div class="line"></div>
                    </div>
                    <div class="tab-item col-lg-4">
                        <i class="fa-solid fa-location-dot  tab-icon"></i>
                        Ship COD
                        <div class="line"></div>
                    </div>

                </div>

                <!-- Tab content -->
                <div class="tab-content">
                    <div class="tab-pane active">
                        <h2>Ví ConsoleShop</h2>
                        <p style="font-size: 18px"><span>Số dư: </span> ${sessionScope.account.wallet}đ</p>
                        <a href="<c:url value="/user/deposit.do"/>" class="btn btn-success"><i class="bi bi-plus-circle"></i> Nạp thêm tiền</a>
                    </div>

                    <div class="tab-pane" >
                        <h2>Thanh toán Online Banking</h2>
                        <p style="text-align: center; font-size: 24px; color: red">Tính năng sắp cập nhật bạn nhé!</p>
                    </div>

                    <div class="tab-pane">
                        <h2>Ship COD</h2>
                        <p>
                            Khi quý khách hàng nhận hàng sẽ thanh toán tổng giá trị đơn hàng hoặc
                            phần còn lại (sau khi khách hàng đã đặt cọc trước) bằng tiền mặt hoặc
                            quẹt thẻ (chỉ áp dụng đơn hàng ở nội thành Tp. Hồ Chí Minh).
                            <br/>
                            Quý khách sẽ thanh toán tại địa điểm nhận hàng cho nhân viên
                            giao nhận của ConsoleShop hoặc đơn vị vận chuyển mà ConsoleShop sử dụng.
                        </p>
                        
                    </div>

                </div>
            </div>

            <hr/>

        </div>
    </div>
    <br/>
</div>
<c:set var="urlLogin" value="/user/payment.do" scope="session"/>
<c:set var="urlLogout" value="/user/payment.do" scope="session"/>
<c:set var="urlSignup" value="/user/payment.do" scope="session"/>
<script><%@include file="/WEB-INF/javascript/payment.js"%></script>

<jsp:include page="/WEB-INF/components/footer.jsp"/>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<style><%@include file="/WEB-INF/css/user.css"%></style>
<div class="nav_bg">
    <br/>
    <div class="container">
        <div class="nav_deposit">
            <h3>Hình thức thanh toán</h3>
            <hr/>
            <div class="row mt-2 mb-3">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <h4>Thanh toán bằng tiền tài khoản</h4>
                    <a class="btn btn-primary" href="<c:url value="/user/deposit.do" />" role="button">Nạp tiền vào tài khoản</a>
                </div>

                <div class="col-sm-1"></div>
            </div>
            <hr/>
            <div class="row mt-2 mb-3">
                <div class="col-sm-1"></div>
                <h4 class="col-sm-5">Thanh toán trực tiếp</h4>
                <h5 class="col-sm-6">
                    Quý khách hàng có thể đến trực tiếp Console Shop tại TP. Hồ Chí Minh để thanh toán bằng tiền mặt hoặc quẹt thẻ.
                </h5>
                <p class="text-center">Địa chỉ: Lô E2a-7, Đường D1, Đ. D1, Long Thạnh Mỹ, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh</p>
            </div>
            <hr/>
            <div class="row mt-2 mb-3">
                <div class="col-sm-1"></div>
                <div class="col-sm-6">
                    <h4>Thanh toán khi nhận hàng</h4>
                    <p>
                        Khi quý khách hàng nhận hàng sẽ thanh toán tổng giá trị đơn hàng hoặc
                        phần còn lại (sau khi khách hàng đã đặt cọc trước) bằng tiền mặt hoặc
                        quẹt thẻ (chỉ áp dụng đơn hàng ở nội thành Tp. Hồ Chí Minh).
                        <br/>
                        Quý khách sẽ thanh toán tại địa điểm nhận hàng cho nhân viên
                        giao nhận của ConsoleShop hoặc đơn vị vận chuyển mà ConsoleShop sử dụng.
                    </p>
                </div>
                <div class="col-sm-4">
                    <img src="<c:url value="/images/Background/marioonshell.gif"/>" width="100%">
                </div>
                <div class="col-sm-1"></div>
            </div>
            <hr/>
            
        </div>
    </div>
    <br/>
</div>
<jsp:include page="/WEB-INF/components/footer.jsp"/>



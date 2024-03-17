<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/order.css"%></style>

<jsp:include page="/WEB-INF/components/navbar.jsp" />
<div class="nav_order">
    <div class="container">
        <a href="<c:url value="/order/infor.do" />" class="btn btn-link">
            <i class="bi bi-arrow-left-short"></i> Trở lại
        </a>
        <div class="row mt-2">
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Giỏ hàng</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly" >Thông tin đặt hàng</div>
            <div class="pay__status col-sm-3 d-flex align-items-center justify-content-evenly">Thanh toán</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Hoàn tất</div>
        </div>
        <div class="row mt-2">
            <div class="col-sm-3"></div>
            <div class="col-sm-6 nav_item row">
                <div class="col-sm-12">
                    <h3>Thông tin đặt hàng</h3>
                    <ul>
                        <li>Khách hàng: ${requestScope.fullName}</li>
                        <li>Số điện thoại: ${requestScope.phone}</li>
                        <li>Địa chỉ nhận hàng: ${requestScope.address}</li>
                        <li>Tạm tính: ${cart.total} đ </li>
                        <li>Phí vận chuyển: 50.000đ </li>
                        <li>Tổng tiền:${cart.total+50000} đ </li>
                        
                    </ul>
                </div>
                <hr/>
                <div class="col-sm-12 mt-2 mb-2">
                    <button class="btn btn-link " type="button" data-bs-toggle="collapse" data-bs-target="#collapseDiscount" aria-expanded="false" aria-controls="collapseExample">
                        <i class="bi bi-ticket-perforated"></i> Sử dụng mã giảm giá <i class="bi bi-caret-down"></i>
                    </button>
                    <div class="collapse mt-2 row" id="collapseDiscount">
                        <form action="#">
                            <div class="col-sm-8">
                                <input type="text" class="form-control" name="referral_code" placeholder="Mã giảm giá">
                            </div>
                            <div class="col-sm-4">
                                <button type="submit" class="btn btn-light mb-3">Áp dụng</button>
                            </div>
                        </form>
                    </div>
                </div>

                <form action="<c:url value="/order/checkout.do"/>" class="mt-2 mb-3">
                    <hr/>
                    <h4>Chọn hình thức thanh toán</h4>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="payments" id="payments" checked>
                        <label class="form-check-label" for="payments">
                            <i class="bi bi-cash-coin"></i> Thanh toán khi giao hàng (COD)
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="payments" id="payments" >
                        <label class="form-check-label" for="flexRadioDefault2">
                            <i class="bi bi-cash-coin"></i> Thanh toán bằng tiền trong tài khoản
                        </label>
                    </div>
                    <hr/>
                    <p>Tổng tiền: </p>
                    <div class="d-grid gap-2">
                        <button type="submit" class="btn btn-danger">THANH TOÁN NGAY</button>
                    </div>
                </form>
            </div>
            <div class="col-sm-3"></div>
        </div>
        <br/>
    </div>
</div>
<script><%@include file="/WEB-INF/javascript/province.js"%></script>
<jsp:include page="/WEB-INF/components/footer.jsp" />
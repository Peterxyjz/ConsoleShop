<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta  charset=UTF-8>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/order.css"%></style>

<jsp:include page="/WEB-INF/components/navbar.jsp" />
<div class="nav_order">
    <div class="container">
        <a href="<c:url value="/cart/index.do" />" class="btn btn-link">
            <i class="bi bi-arrow-left-short"></i> Trở lại
        </a>
        <div class="row mt-2">
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Giỏ hàng</div>
            <div class="pay__status col-sm-3 d-flex align-items-center justify-content-evenly" >Thông tin đặt hàng</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Thanh toán</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Hoàn tất</div>
        </div>
        <div class="row mt-2">
            <div class="col-sm-3"></div>
            <div class="col-sm-6 nav_item">
                <h3 class="text-center">Thông tin đặt hàng</h3>
                <hr/>
                <form  id="orderForm" class="row" >
                    <div class="col-sm-12 mt-3 mb-3">
                        <label for="fullName" class="form-label">Họ và tên</label>
                        <input class="form-control" type="text" name="fullName" id="fullName" placeholder="Họ và tên">
                    </div>
                    <div class="col-sm-12 mb-3">
                        <label for="phone" class="form-label">Số điện thoại</label>
                        <input class="form-control" type="text" name="phone" id="phone" placeholder="Số điện thoại">
                    </div>
                    <div class="col-sm-4 mb-3">
                        <!--Thành phố-->
                        <label for="province" class="form-label">Thành phố</label>
                        <select id="province" class="form-select" name="province">
                        </select>
                    </div>
                    <div class="col-sm-4 mb-3">
                        <!--quận-->
                        <label for="district" class="form-label">Quận</label>
                        <select id="district" class="form-select" name="district">
                        </select>
                    </div>
                    <div class="col-sm-4 mb-3">
                        <!-- phường -->
                        <label for="ward" class="form-label">Huyện/Phường</label>
                        <select id="ward" class="form-select" name="ward">
                        </select>
                    </div>
                    <div class="col-sm-12 mb-3">
                        <label for="address" class="form-label">Địa chỉ chi tiết</label>
                        <input type="text" class="form-control" placeholder="Số nhà, tên đường" name="address" id="address"/>
                    </div>

                    <label class="form-check-label mt-2 mb-3">
                        <input class="form-check-input" type="checkbox" name="remember"> Lưu lại thông tin
                    </label>

                    <div class="d-grid gap-2 mb-3">
                        <button class="btn btn-primary" type="submit">Xác nhận</button>
                    </div>
                </form>
            </div>
            <div class="col-sm-3"></div>
            
        </div>
                    
        <!-- information -->
        <div id="information"></div>
        <br/>
    </div>
</div>
<script><%@include file="/WEB-INF/javascript/province.js"%></script>
<jsp:include page="/WEB-INF/components/footer.jsp" />
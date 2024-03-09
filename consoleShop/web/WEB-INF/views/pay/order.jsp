<%-- 
    Document   : order
    Created on : Mar 9, 2024, 12:25:15 PM
    Author     : QUOC PHONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<div class="container">
      <a href="<c:url value="/product/search_handler.do?proName=" />" class="btn btn-link">
            <i class="bi bi-arrow-left-short"></i> Mua thêm sản phẩm khác
        </a>
        <div class="row">
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Giỏ hàng</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly"style="background-color: rgb(145, 222, 222);" >Thông tin đặt hàng</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Thanh toán</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Hoàn tất</div>
        </div>
    <form class="mb-3">
        <div class="col-4">
            <label for="fullName" class="form-label">Họ và tên</label>
            <input class="form-control" type="text" name="fullName" id="fullName" placeholder="Họ và tên">
        </div>
        <div class="col-4">
            <label for="phone" class="form-label">Số điện thoại</label>
            <input class="form-control" type="text" name="phone" id="phone" placeholder="Số điện thoại">
        </div>


        <div class="row mb-3">
            <!-- Thanh phoos -->
            <div class="col-4">
                <label for="province" class="form-label">Thành phố</label>
                <select id="province" class="form-select">
                    <!-- <option value="1">TP HaNoi</option> -->
                </select>
            </div>
            <!-- quan -->
            <div class="col-4">
                <label for="district" class="form-label">Quận</label>
                <select id="district" class="form-select">
                    <!-- <option value="1">Quan ne</option> -->
                </select>
            </div>
            <!-- phuong -->
            <div class="col-4">
                <label for="ward" class="form-label">Huyện/Phường</label>
                <select id="ward" class="form-select">
                    <!-- <option value="1">Huyen ne</option> -->
                </select>
            </div>
        </div>

        <!-- địa chỉ nhà  -->
        <div class="mb-3">
            <label for="address" class="form-label">Địa chỉ</label>
            <input
                type="text"
                id="address"
                class="form-control"
                placeholder="Số nhà, tên đường"
                />
        </div>

        <!-- btn -->
        <button class="btn btn-primary">Đặt hàng</button>
    </form>
    <!-- information -->
    <div id="information"></div>
</div>

  <script><%@include file="/WEB-INF/javascript/province.js"%></script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/order.css"%></style>
<jsp:include page="/WEB-INF/components/navbar.jsp" />

<div class="nav_order">
    <div class="container">
        <br/>
        <div class="row mt-2">
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Giỏ hàng</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly" >Thông tin đặt hàng</div>
            <div class=" col-sm-3 d-flex align-items-center justify-content-evenly">Thanh toán</div>
            <div class="pay__status col-sm-3 d-flex align-items-center justify-content-evenly">Hoàn tất</div>
        </div>

        <div class="row mt-2">
            <div class="col-sm-2"></div>
            <div class="col-sm-8 ">
                <a href="<c:url value="/product/search_handler.do?search=&index=1"/>" class="btn btn-link" style="text-align: left">
                    <i class="bi bi-basket"></i> Tiếp tục mua sắm
                </a> 
                <div class="nav_item row">
                    <div style="display: flex; align-items: center; ">
                        <a href="<c:url value="/user/history.do?accId=${account.accId}" />" class="btn btn-link">
                            <i class="bi bi-clock-history"></i> Xem chi tiết đơn hàng
                        </a> 
                        <a href="#" class="btn btn-link">
                            |  Mọi thắc mắc liên hê: 0399234222
                        </a>
                    </div>

                    <img src="<c:url value="/images/Background/thank.jpg"/>" width="100%">
                </div>
            </div>
            <div class="col-sm-2"></div>
        </div>
        <br/>    
    </div>
</div>
<jsp:include page="/WEB-INF/components/footer.jsp" />
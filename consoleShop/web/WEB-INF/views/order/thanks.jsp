
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/order.css"%></style>
<jsp:include page="/WEB-INF/components/navbar.jsp" />

<div class="nav_order">
    <div class="container">
        
        <div class="row mt-2">
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Giỏ hàng</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly" >Thông tin đặt hàng</div>
            <div class=" col-sm-3 d-flex align-items-center justify-content-evenly">Thanh toán</div>
            <div class="pay__status col-sm-3 d-flex align-items-center justify-content-evenly">Hoàn tất</div>
        </div>

        <br/>
        
            Thanks for your payment!<br/>
            Thanks for your payment!<br/>
            Thanks for your payment!<br/>
            Thanks for your payment!<br/>
            Thanks for your payment!<br/>
            Thanks for your payment!<br/>
    </div>
</div>
<jsp:include page="/WEB-INF/components/footer.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<style><%@include file="/WEB-INF/css/product.css"%></style>
<div class="container mt-3">
    <div class="row">
        <div class="col-sm-5">
            <img src="<c:url value="/images/${product.proId}.jpg"/>" width="60%" class=" rounded mx-auto d-block "/>
        </div>
        <div class="col-sm-7">
            <p>Sản phẩm</p>
            <h3>${product.proName}</h3>
            <p><i class="bi bi-box-seam-fill"></i> Tình trạng: </p>
            <p><fmt:formatNumber value="${(1-product.discount)*product.price}" type="currency" /></p>
            <p><strike><fmt:formatNumber value="${product.price}" type="currency" /></strike>
            <!--Discount:--> 
            <span class="badge bg-secondary"><fmt:formatNumber value="${product.discount}" type="percent" /></span>
            </p>
         

            <hr/>
            <div class="nav_button">
                <button class="btn btn-primary" type="submit"><i class="bi bi-credit-card-fill"></i> Mua Ngay</button>
                <button class="btn"  type="submit"><i class="bi bi-cart-plus"></i> Thêm vào giỏ</button>
            </div>
        </div>
        <div class="col-sm-1"></div>
    </div>
    <div class="row">
        <div class="moreImg col-sm-5 text-center mt-2">
            <a href="#" id="moreImgLink">Xem thêm ảnh</a>  
        </div>
        <div class="col-sm-7">
            <hr/>
            <p style="text-align: justify; font-size: large">${product.description}</p> 
        </div>
    </div>
    ${errorMsg}
</div>
<br/>
<script><%@include file="/WEB-INF/javascript/product.js"%></script>
<jsp:include page="/WEB-INF/components/footer.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<style><%@include file="/WEB-INF/css/cart.css"%></style>
<div class="nav-cart">
    <div class="container">
        <a href="<c:url value="/product/search_handler.do?proName=" />" class="btn btn-link">
            <i class="bi bi-arrow-left-short"></i> Mua thêm sản phẩm khác
        </a>
        <div class="row">
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Giỏ hàng</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Thông tin đặt hàng</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Thanh toán</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Hoàn tất</div>
        </div>
        <div class="row nav_item">
            <div class="col-sm-9 nav_item_left">
                <!--if cart !=null-->
                <h3>Giỏ hàng <span style="font-size: 1rem">(${cart.getItems().size()} sản phẩm)</span></h3>
                <div class="row item">
                    <c:forEach var="item" items="${cart.items}" >
                        <div class="col-sm-4">
                            <a href="#">
                                <img src="<c:url value="/images/${item.product.proId}.jpg"/>" width="50%"/>                               
                            </a>

                        </div>
                        <form action="">
                            <div class="col-sm-8">
                                <div class="item_info">
                                    <div class="item_info_left">
                                        <a href="#">
                                            Tên sản phẩm: ${item.product.proName}
                                            <!--<input type="hidden" id="proId" name="proId" value="${item.product.proId}">-->
                                        </a>
                                        <p>Thể loại: 
                                            <c:forEach var="categories" items="${categoryList}">
                                                <c:if test="${item.product.categoryId == categories.categoryId}">
                                                    ${ categories.categoryName}
                                                </c:if>
                                            </c:forEach>
                                        </p>
                                    </div>
                                    <div class="item_info_mid">
                                        <!--<button type="button" class="btn_quantity" onclick="decreaseQuantity()">-</button>-->
                                        <input oninput="autoUpdateQuantity(this, ${item.product.proId})" class="inp_quantity" type="number" required min="1" step="1" name="quantity" id="quantityInput" value="${item.quantity}">
                                        <!--<button type="button" class="btn_quantity" onclick="increaseQuantity()">+</button>-->   

                                    </div> 

                                    <div class="item_info_right">
                                       <strike> <p class="product__price"><fmt:formatNumber value=" ${item.product.price} " type="number" />đ</p></strike>
                                        <!--Discount:--> 
                                        <span class="product__discount-p"><fmt:formatNumber value="${item.product.discount}" type="percent" /></span>
                                        <span class="product__discount"><fmt:formatNumber value="${(1-item.product.discount)*item.product.price}" type="number" />đ</span>
                                    </div>
                                </div>
                                <hr/>
                                <div class="item_footer">
                                    <p><i class="bi bi-box2"></i> Tình trạng: </p>
                                    <a href="<c:url value="/cart/delete.do?proId=${item.product.proId}"/>" style="color: red"><i class="bi bi-trash"></i></a>
                                </div>
                            </div>
                        </form>
                        <hr/>
                    </c:forEach>
                </div>
             
            </div>







            <div class="col-sm-3">
                <div>
                    <h5>Bạn có mã giới thiệu?</h5>
                </div>
                <div>
                    <h5>Bạn có mã ưu đãi?</h5>
                </div>
                <div>
                    <h5>Thanh toán</h5>
                    <p class="totalCartValue">Tổng giá trị sản phẩm:  ${cart.getTotal()}    đ</p>
                    <hr/>
                    <p>Tổng giá trị phải thanh toán:      đ</p>
                    <p>Số dư hiện tại:      đ</p>
                    <p>Số tiền cần nạp thêm:      đ</p>
                </div>
                <div>
                    <a href="#" class="btn btn-primary d-grid gap-2">
                        Thanh toán ngay!
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div style="background-color: #fff; min-height: 20px;" class="mt-3 mb-3"></div>
</div>
<script><%@include file="/WEB-INF/javascript/cart.js"%></script>
<jsp:include page="/WEB-INF/components/footer.jsp" />


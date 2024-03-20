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
        <div class="row mt-2">
            <div class="pay__status col-sm-3 d-flex align-items-center justify-content-evenly">Giỏ hàng</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Thông tin đặt hàng</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Thanh toán</div>
            <div class="col-sm-3 d-flex align-items-center justify-content-evenly">Hoàn tất</div>
        </div>
        <div class="row nav_item">
            <div class="col-sm-8 nav_item_left">
                <c:if test="${cart == null}">
                    <div class="cart_empty">
                        <h3>Giỏ hàng trống!</h3>
                        <p>Thêm sản phẩm vào giỏ và quay lại trang này để thanh toán nha bạn <3</p>
                        <img src="<c:url value="/images/Background/cart_empty.png"/>" width="100%"/>
                    </div>
                </c:if>
                <c:if test="${cart != null}">
                    <h3>Giỏ hàng <span style="font-size: 1rem">(${cart.getItems().size()} sản phẩm)</span></h3>
                    <div class="row item">
                        <c:forEach var="item" items="${cart.items}" >
                            <div class="col-sm-4">
                                <a href="#">
                                    <img src="<c:url value="/images/${item.product.proId}.jpg"/>" width="50%"/>                               
                                </a>
                            </div>
                            <div class="col-sm-8">
                                <div class="item_info">
                                    <div class="item_info_left">
                                        <a href="#">
                                            Tên sản phẩm: ${item.product.proName}
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
                                        <input oninput="autoUpdateQuantity(this, ${item.product.proId})" class="inp_quantity" type="number" required min="1" max="${item.product.amount}" step="1" name="quantity" id="quantityInput" value="${item.quantity}">  
                                    </div> 

                                    <div class="item_info_right">
                                        <strike> <p class="product__price"><fmt:formatNumber value=" ${item.product.price} " type="number" pattern="###,###,###, ###,###,###"/>đ</p></strike>
                                        <!--Discount:--> 
                                        <span class="product__discount-p"><span class="badge bg-danger"><fmt:formatNumber value="${item.product.discount}" type="percent" /></span></span>
                                        <span class="product__discount"><fmt:formatNumber value="${(1-item.product.discount)*item.product.price}" type="number" pattern="###,###,###,###,###,###"/>đ</span>
                                    </div>
                                </div>
                                <hr/>
                                <div class="item_footer">
                                    <p><i class="bi bi-box2"></i> Tình trạng: </p>
                                    <a href="<c:url value="/cart/delete.do?proId=${item.product.proId}"/>" style="color: red"><i class="bi bi-trash"></i></a>
                                </div>
                            </div>
                            <hr/>
                        </c:forEach>
                    </div>
                </c:if>
            </div>


            <div class="col-sm-4">
                <div>
                    <button class="btn btn-link" type="button" data-bs-toggle="collapse" data-bs-target="#collapseReferral" aria-expanded="false" aria-controls="collapseExample">
                        Bạn có mã giới thiệu?
                    </button>
                </div>
                <div class="collapse" id="collapseReferral">
                    <form action="#" class="row">
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="referral_code" placeholder="Mã giới thiệu">
                        </div>
                        <div class="col-sm-4">
                            <button type="submit" class="btn btn-light mb-3">Áp dụng</button>
                        </div>
                    </form>
                </div>

                <div>
                    <button class="btn btn-link" type="button" data-bs-toggle="collapse" data-bs-target="#collapseDiscount" aria-expanded="false" aria-controls="collapseExample">
                        Bạn có mã ưu đãi?
                    </button>
                </div>
                <div class="collapse" id="collapseDiscount">
                    <form action="#" class="row">
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="discount_code" placeholder="Mã giảm giá">
                        </div>
                        <div class="col-sm-4">
                            <button type="submit" class="btn btn-light mb-3">Áp dụng</button>
                        </div>
                    </form>
                </div>

                <div id="payCart" >
                    <h5>Thanh toán</h5>
                    <p >Tổng giá trị sản phẩm: <fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${cart == null ? 0 : cart.getTotal()}"/>đ</p>
                    <hr/>
                    <p>Tổng giá trị phải thanh toán:    <fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${cart == null ? 0 : cart.getTotal()}"/>đ</p>
                    <p>Số dư hiện tại: <fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${sessionScope.account == null ? 0 : sessionScope.account.wallet}"/>đ</p>
                    <p>Số tiền cần nạp thêm:  <fmt:formatNumber type="number" pattern="###,###,###,###,###,###" value="${(sessionScope.account == null ? 0 : sessionScope.account.wallet) >= cart.getTotal() ?  0 :  (cart == null ? 0 : (cart.getTotal() - (sessionScope.account == null ? 0 : sessionScope.account.wallet)))}"/>   đ</p>
                </div>
                <c:if test="${cart != null}">
                    <div class="d-grid gap-2 mt-4">
                        <c:if test="${account == null}" >
                            <a href="<c:url value="/order/checkAccount.do"/>" class="btn btn-primary">
                                <i class="bi bi-person-check-fill"></i> Đăng nhập để thanh toán
                            </a>
                        </c:if>
                        <c:if test="${account != null}" >
                            <a href="<c:url value="/order/checkAccount.do"/>" class="btn btn-primary">
                                <i class="bi bi-credit-card-2-front"></i> Thanh toán ngay!
                            </a>
                        </c:if>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
    <div style="background-color: #fff; min-height: 20px;" class="mt-3 mb-3"></div>
</div>
<c:set var="urlLogin" value="/cart/index.do" scope="session"/>
<c:set var="urlLogout" value="/cart/index.do" scope="session"/>
<c:set var="urlSignup" value="/cart/index.do" scope="session"/>
<script><%@include file="/WEB-INF/javascript/cart.js"%></script>
<jsp:include page="/WEB-INF/components/footer.jsp" />


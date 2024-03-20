<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/user.css"%></style>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<style><%@include file="/WEB-INF/css/history.css"%></style>

<div class="row">
    <jsp:include page="/WEB-INF/components/accountNavigate.jsp" />

    <div class="container info__wrapper col-lg-9 col-12">
        <div class="general nav_text">
            <div>
                <h3>Chi tiết đơn hàng số <span style="color: #0093E9">#${order.ordId}</span></h3>
                <p>Hiển thị thông tin các sản phẩm bạn đã mua tại Console Shop</p>
            </div>
        </div>
        <hr>
        <div class="row">
            <!--            <div class="col-sm-1"></div>-->
            <div class="col-sm-5">
                <h5>Thông tin đơn hàng</h5>
                <p>Mã đơn hàng: <span style="color: #0093E9; font-weight: 500">#${order.ordId}</span></p>
                <p>Ngày tạo: <span style="font-weight: 500">${order.requiredDate}</span></p>
                    <c:if test="${order.status.equals("Chờ xác nhận")}">
                    <div>Trạng thái đơn hàng: <span class="histories__status--waiting">${order.status}</span></div>
                    </c:if>
                    <c:if test="${!order.status.equals("Chờ xác nhận")}">
                    <div>Trạng thái đơn hàng: <span class="histories__status--checked">${order.status}</span></div>
                    </c:if>
            </div>
            <div class="col-sm-5">
                <h5>Giá trị thanh toán</h5>
                <p>Tổng giá trị sản phẩm: <span style="text-align: right; font-weight: 500;"><fmt:formatNumber value="${order.total}" type="number" pattern="###,###,###"/>đ</span></p>
                <p>Hình thức thanh toán: <span style="font-weight: 500; text-transform: uppercase;">${order.payment}</span> 
                </p>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-1"></div>
            <div class="col-sm-10 mt-3">
                <p>Địa chỉ người nhận: <span  style="font-weight: 500;">${order.shippAddress}</span></p>
            </div>
            <div class="col-sm-1"></div>
        </div>
        <hr/>
        <table class="history__table">
            <thead>
                <tr>
                    <th>No</th>
                    <th class="table__proName">Tên sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Tổng tiền</th>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${odList}" varStatus="loop">
                    <tr>
                        <td>
                            ${loop.count}
                        </td>
                        <td>
                            <img src="<c:url value="/images/${item.proId}.jpg"/>">
                            <span style="user-select: none ">${products.get(loop.count - 1).proName}</span>
                        </td>
                        <td>
                            Số lượng: ${item.quantity}
                        </td>
                        <td style="font-weight: 500">
                           <fmt:formatNumber value="${item.price}" type="number" pattern="###,###,###,###,###,###"/>đ
                        </td>
                        
                    </tr>
                </c:forEach>
            </tbody>

        </table>
    </div>

</div>
                <div style="width: 100%; height: 30px; background-color: #fff; margin-top: 40px"></div>
<jsp:include page="/WEB-INF/components/footer.jsp" />
<script><%@include file="/WEB-INF/javascript/accountNavigate.js"%></script>
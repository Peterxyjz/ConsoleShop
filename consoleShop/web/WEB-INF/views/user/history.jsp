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
                <h3>Chi tiết đơn hàng #${order.ordId}</h3>
                <p>Hiển thị thông tin các sản phẩm bạn đã mua tại Console Shop</p>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-5">
                <h5>Thông tin đơn hàng</h5>
                <p>Mã đơn hàng: #${order.ordId}</p>
                <p>Ngày tạo: ${order.requiredDate}</p>
                <p>Trạng thái đơn hàng: ${order.status}</p>
            </div>
            <div class="col-sm-5">
                <h5>Giá trị thanh toán</h5>
                <p>Tổng giá trị sản phẩm: <span style="text-align: right">${order.total}đ</span></p>
                <p>Hình thức thanh toán: ${order.payment}
                </p>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <p>Địa chỉ người nhận: ${order.shipAddress}</p>
            </div>
            <div class="col-sm-1"></div>
        </div>
        <hr/>
        <table>
            <c:forEach var="item" items="${odList}" varStatus="loop">
                <tr class="col-6">
                    <td class="col-4">
                        <img src="<c:url value="/images/${item.proId}.jpg"/>" width="50%">
                    </td>
                    <td class="col-4">
                        ${products.get(loop.count - 1).proName}
                    </td>
                    <td class="col-4">
                        Số lượng: ${item.quantity}
                        <br/>
                        <span style="text-align: right">${item.price}đ</span>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</div>

<jsp:include page="/WEB-INF/components/footer.jsp" />
<script><%@include file="/WEB-INF/javascript/accountNavigate.js"%></script>
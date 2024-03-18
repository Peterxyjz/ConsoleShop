<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/user.css"%></style>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<div class="row">
    <jsp:include page="/WEB-INF/components/accountNavigate.jsp" />

    <div class="container info__wrapper col-lg-9 col-12">
        <div class="general text">
            <div>
                <h3>Chi tiết đơn hàng #${order.ordId}</h3>
                <p>Hiển thị thông tin các sản phẩm bạn đã mua tại Console Shop</p>
            </div>
            <div>
                <a href="<c:url value="/"/>" class="btn btn-link">
                    <i class="bi bi-cart3"></i> Mua lại đơn hàng
                </a>
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
                <p>Địa chỉ người nhận: ${order.shipAddress}</p>
            </div>
            <div class="col-sm-5">
                <h5>Giá trị thanh toán</h5>
                <p>Tổng giá trị sản phẩm: <span style="text-align: right">${order.total}đ</span></p>
            </div>
            <div class="col-sm-1"></div>
        </div>
        <hr/>
        <table>
            <c:forEach var="item" items="${odList}">
                <tr>
                    <td class="col-3">
                        <img src="<c:url value="/images/${item.proId}.jpg"/>" width="100%">
                    </td>
                    <td class="col-3">Tên sản phẩm
                        <br/>Loại sản phẩm:
                    </td>
                    <td class="col-3">
                        Số lượng: ${item.quantity}
                    </td>
                    <td class="col-3">
                        <span style="text-align: right">${item.price}đ</span>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</div>

<jsp:include page="/WEB-INF/components/footer.jsp" />
<script><%@include file="/WEB-INF/javascript/accountNavigate.js"%></script>
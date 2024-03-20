<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/user.css"%></style>
<style><%@include file="/WEB-INF/css/history.css"%></style>

<jsp:include page="/WEB-INF/components/navbar.jsp" />
<div class="row">
    <jsp:include page="/WEB-INF/components/accountNavigate.jsp" />

    <div class="container info__wrapper col-lg-9 col-12">
        <div class="general nav_text">
            <h3>Lịch sử đơn hàng</h3>
            <p>Hiển thị thông tin các sản phẩm bạn đã mua tại Console Shop</p>
        </div>
        <hr>
        <div class="row">
            <c:if test="${orders.size() != 0}">
                <table>
                    <thead>
                        <tr>
                            <th>Thời gian</th>
                            <th>Mã đơn hàng</th>
                            <th>Tổng tiền</th>
                            <th>Trạng thái</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="item" items="${orders}"> 
                            <tr>
                                <td>${item.requiredDate}</td>
                                <td>${item.ordId}</td>
                                <td>${item.total}</td>
                                <td>${item.status}</td>
                                <td>
                                    <a href="<c:url value="/user/history.do?ordId=${item.ordId}&accId=${account.accId}"/>" class="btn btn-link">
                                        Chi tiết
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>

    </div>
</div>
<jsp:include page="/WEB-INF/components/footer.jsp" />
<script><%@include file="/WEB-INF/javascript/accountNavigate.js"%></script>

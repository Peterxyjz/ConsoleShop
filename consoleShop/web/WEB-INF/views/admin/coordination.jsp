<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<style><%@include file="/WEB-INF/css/admin.css"%></style>
<div class="nav_bg">
    <br/>
    <div class="container nav_admin">
        <div class="row">
            <div class="col-sm-6 d-grid gap-2 d-md-flex justify-content-md-start">
                <h4>Quản lí đơn hàng</h4>
            </div>
            <div class="col-sm-6 d-grid gap-2 d-md-flex justify-content-md-end">
                <a href="<c:url value="/admin/index.do"/>" class="btn btn-secondary" role="button">
                    <i class="bi bi-house-gear"></i> Quay lại
                </a>
            </div>
        </div>
        <hr/>
        <div>
            <h6 class="mb-3">Xác nhận đơn hàng</h6>
            <table class="table table-striped tbl--new mt-2">
                <thead style="font-size: 14px;">
                    <tr>
                        <th>No</th>
                        <th>Mã HĐ</th>
                        <th>Ngày mua</th>
                        <th>Địa chỉ</th>
                        <th>Mã KH</th>
                        <th>HT thanh toán</th>
                        <th>Tình trạng</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody  style="font-size: 14px;">
                    <c:forEach var="item" items="${orderWaitingList}" varStatus="loop">
                    <form action="confirmOrder.do">
                        <tr>
                            <td>${loop.count}</td>
                            <td>${item.ordId}</td>
                            <td>${item.requiredDate}</td>
                            <td>${item.shippAddress}</td>
                            <td>${item.accId}</td>
                            <td>${item.payment}</td>
                            <td style="color: red; font-weight: 600">${item.status}</td>
                            <td>
                                <button type="submit" class="btn btn-success">Xác nhận</button>
                                <input type="hidden" value="${item.ordId}" name="ordId">
                            </td>
                        </tr>
                    </form>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <hr/>
        <div>
            <h6 class="mb-3">Đơn hàng đang giao</h6>
            <table class="table table-striped tbl--new mt-2">
                <thead style="font-size: 14px;">
                    <tr>
                        <th>No</th>
                        <th>Mã HĐ</th>
                        <th>Ngày mua</th>
                        <th>Địa chỉ</th>
                        <th>Mã KH</th>
                        <th>HTTT</th>
                        <th>Tình trạng</th>
                        <th>Ngày giao dự kiến</th>
                    </tr>
                </thead>
                <tbody  style="font-size: 14px;">
                    <c:forEach var="item" items="${orderCheckedList}" varStatus="loop">
                        <tr>
                            <td>${loop.count}</td>
                            <td>${item.ordId}</td>
                            <td>${item.requiredDate}</td>
                            <td>${item.shippAddress}</td>
                            <td>${item.accId}</td>
                            <td>${item.payment}</td>
                            <td style="color: red; font-weight: 600">${item.status}</td>
                            <td style="color: green; font-weight: 600">${item.shippedDate}</td>
                        </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div> 
</div>
<script><%@include file="/WEB-INF/javascript/file.js"%></script>
<jsp:include page="/WEB-INF/components/footer.jsp"/>



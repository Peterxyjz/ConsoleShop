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
                <h4>Xin chào ${account.username}! <br/> <span style="font-size: 0.8rem">Chúc bạn ngày làm việc vui vẻ <3</span></h4> 
            </div>
            <div class="col-sm-6 d-grid gap-2 d-md-flex justify-content-md-end align-items-center">
                <a href="<c:url value="/admin/create.do" />" class="btn btn-primary" role="button">
                    <i class="bi bi-plus-circle-dotted"></i> Thêm sản phẩm mới
                </a>
                <a href="<c:url value="/admin/edit.do" />" class="btn btn-secondary align-items-center" role="button">
                    <i class="bi bi-pencil-square"></i> Chỉnh sửa sản phẩm
                </a>
            </div>
        </div>
        <hr/>
        <div class="accordion row" id="accordionExample">
            <c:if test="${account.role eq 'admin'}">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Chỉnh sửa nhân viên
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <a href="<c:url value="/admin/addEmployee.do"/>" class="btn btn-primary" style="float: right">
                                <i class="bi bi-plus-circle"></i> Thêm nhân viên
                            </a>
                            <table class="table table-striped mt-3">
                                <thead>
                                    <tr>
                                        <td>No</td>
                                        <td>ID</td>
                                        <td>User Name</td>
                                        <td>Họ và tên</td>
                                        <td>Chức vụ</td>
                                        <td>Vị trí</td>
                                        <td>Số điện thoại</td>
                                        <td>Chỉnh sửa</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="emp" items="${empList}" varStatus="loop">
                                        <tr>
                                            <td>${loop.count}</td>
                                            <td>${emp.empId}</td>
                                            <td>${emp.username}</td>
                                            <td>${emp.fullName}</td>
                                            <td>${emp.role}</td>
                                            <td>${emp.position}</td>
                                            <td>${emp.phoneNumber}</td>
                                            <td>
                                                <form action="<c:url value="/admin/updateEmployee.do"/>">
                                                    <button class="btn btn-danger">Sửa</button>
                                                    <input type="hidden" name="accId" value="${emp.accId}"/>

                                                </form>
<!--                                                <form action="<c:url value="/admin/deleteEmployee.do"/>">
                                                    <button>Xóa</button>
                                                    <input type="hidden" name="accId" value="${emp.accId}"/>
                                                </form>-->
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <c:if test="${empList.size() == 0}">
                                <p>Danh sách Nhân viên trống !</p>
                            </c:if>
                        </div>
                    </div>
                </div>
            </c:if>
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        Đơn hàng
                    </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                    <div class="accordion-body ">
                        <div style="float: right">
                            <a href="<c:url value="/admin/coordination.do" />" class="btn btn-primary position-relative">
                                Đơn mới | Đơn đang ship
                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                    ${orderWaitingList.size()}
                                    <span class="visually-hidden">unread messages</span>
                                </span>
                            </a>
                        </div>
                        <table class="table table-striped tbl--new mt-2">
                            <thead style="font-size: 14px;">
                                <tr>
                                    <th>No</th>
                                    <th>Mã HĐ</th>
                                    <th>Ngày mua</th>
                                    <th>Ngày nhận</th>
                                    <th>Địa chỉ</th>
                                    <th>Mã KH</th>
                                    <th>HT thanh toán</th>
                                    <th>Tình trạng</th>
                                </tr>
                            </thead>
                            <tbody  style="font-size: 14px;">
                                <c:forEach var="item" items="${orderCompletedList}" varStatus="loop">
                                    <tr>
                                        <td>${loop.count}</td>
                                        <td>${item.ordId}</td>
                                        <td>${item.requiredDate}</td>
                                        <td>${item.shippedDate}</td>
                                        <td>${item.shippAddress}</td>
                                        <td>${item.accId}</td>
                                        <td>${item.payment}</td>
                                        <td style="color: red; font-weight: 600">${item.status}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        Doanh thu
                    </button>
                </h2>
                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                    <div class="accordion-body row">
                        <h3 class="col-sm-12 text-center bg-primary">
                            <span class="badge">Tổng doanh thu: <fmt:formatNumber value="${income}" type="number" /> đ</span>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br/>
</div>
<br/>


<script><%@include file="/WEB-INF/javascript/admin.js"%></script>
<jsp:include page="/WEB-INF/components/footer.jsp" />


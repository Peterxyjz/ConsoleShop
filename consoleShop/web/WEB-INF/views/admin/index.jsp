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
                <h4>Hi ${account.username}!</h4>
            </div>
            <div class="col-sm-6 d-grid gap-2 d-md-flex justify-content-md-end">
                <a href="<c:url value="/admin/create.do" />" class="btn btn-primary" role="button">
                    <i class="bi bi-plus-circle-dotted"></i> Thêm sản phẩm mới
                </a>
                <a href="<c:url value="/admin/edit.do" />" class="btn btn-secondary" role="button">
                    <i class="bi bi-pencil-square"></i> Chỉnh sửa
                </a>
            </div>
        </div>
        <hr/>
        <div class="row text-center">
            <div class="col-sm-4">
                <h3>Đơn mới</h3>
            </div>
            <div class="col-sm-4">
                <h3>Doanh thu</h3>
            </div>
            <div class="col-sm-4">
                <h3>Tổng số account</h3>
            </div>
        </div>
        <hr/>
        <br/>
    </div>
    <br/>
</div>
<jsp:include page="/WEB-INF/components/footer.jsp" />


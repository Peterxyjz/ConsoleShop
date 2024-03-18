<%-- 
    Document   : updateEmployee
    Created on : Mar 17, 2024, 11:30:45 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/admin.css"%></style>

<jsp:include page="/WEB-INF/components/navbar.jsp" />
<div class="container" style="margin-bottom: 90px">
    <div class="row">
        <form action="<c:url value="/admin/updateEmployee_handler.do"/>" class="row personal__wrapper col-7" >
            <div class="personal__group col-lg-12">
                <label for="accId" class="form-label">ID Nhân viên</label>
                <input id="accId" value="${account.accId}" name="accId" type="text" class="form-control" disabled>
                <input value="${account.accId}" name="accId" class="form-control" type="hidden">
            </div>
            <div class="personal__group col-lg-12">
                <label for="fullName" class="form-label">Họ và tên</label>
                <input id="fullName" value="${account.fullName}" name="fullName" placeholder="Vui lòng nhâp họ và tên"  type="text" class="form-control">
            </div>

            <div class="personal__group col-lg-12">
                <label for="role" class="form-label">Chức vụ</label>
                <input id="role" value="${account.role}" name="role" type="text" class="form-control">
            </div>
            <div class="personal__group col-lg-12">
                <label for="position" class="form-label">Vị trí</label>
                <input id="position" value="${position}" name="position" type="text" class="form-control">
            </div>

            <div class="personal__group col-lg-12">
                <label for="phoneNumber" class="form-label">Số điện thoại</label>
                <input id="phoneNumber" value="${account.phoneNumber}" name="phoneNumber" type="tel" class="form-control">
            </div>
            <button type="submit" class="personal__submit col-md-5 col-7">Lưu các thay đổi</button>
        </form>
    </div>

</div>

<script><%@include file="/WEB-INF/javascript/admin.js"%></script>

<jsp:include page="/WEB-INF/components/footer.jsp"/>

<%-- 
    Document   : addEmployee
    Created on : Mar 18, 2024, 12:07:09 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/admin.css"%></style>


<jsp:include page="/WEB-INF/components/navbar.jsp" />

<div class="container">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Account ID</th>
                <th>User name</th>
                <th>Họ và tên</th>
                <th>Chức vụ</th>
                <th>Số điện thoại</th>
                <th>Chỉnh sửa</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="acc" items="${list}">
                <tr>
                    <td>${acc.accId}</td>
                    <td>${acc.username}</td>
                    <td>${acc.fullName}</td>
                    <td>${acc.role}</td>
                    <td>${acc.phoneNumber}</td>
                    <td>
                        <c:if test="${!acc.role.equals("employee") && !acc.role.equals("admin")}">
                            <form action="<c:url value="/admin/addEmployee_handler.do"/>">
                                <button class="btn btn-primary">Đặt làm nhân viên</button>
                                <input type="hidden" name="accId" value="${acc.accId}"/>
                            </form>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
        </tbody>

    </table>
</div>



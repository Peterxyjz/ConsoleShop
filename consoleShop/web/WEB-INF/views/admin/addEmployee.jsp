<%-- 
    Document   : addEmployee
    Created on : Mar 18, 2024, 12:07:09 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<table class="table table-striped">
    <thead>
        <tr>
            <th>Account ID</th>
            <th>Họ và tên</th>
            <th>Chức vụ</th>
            <th>Số điện thoại</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="acc" items="${list}">
            <tr>
                <td>${acc.accId}</td>
                <td>${acc.fullName}</td>
                <td>${acc.role}</td>
                <td>${acc.phoneNumber}</td>
            </tr>
        </c:forEach>
    </tbody>
        
</table>
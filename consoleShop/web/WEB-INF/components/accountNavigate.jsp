<%-- 
    Document   : accountNavigate
    Created on : Mar 15, 2024, 11:49:44 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="info__navigate col-sm-2" >
    <ul>
        <li class="info__management"><a href="<c:url value="/account/index.do"/>"><i class="bi bi-person-fill"></i> Quản lý tài khoản</a></li>
        <li class="order__history"><a href="<c:url value="/account/index.do"/>"><i class="bi bi-cart-check-fill"></i>Lịch sử đơn hàng</a></li>
        <li class="pay__history"><a href="<c:url value="/account/index.do"/>"><i class="bi bi-credit-card-2-back-fill"></i>Lịch sử giao dịch</a></li>
    </ul>
</div>


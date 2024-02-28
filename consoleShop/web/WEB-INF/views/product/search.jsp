<%-- 
    Document   : search
    Created on : Feb 27, 2024, 5:09:21 PM
    Author     : QUOC PHONG
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />

<div class="row">
    <c:forEach var="product" items="${list}">
        <div class="col-sm-4 mt-3">
            <img src="<c:url value="#" />" width="100%" />
            Id: ${product.proId}<br/>

            Old price: <strike><fmt:formatNumber value="${product.price}" type="currency" /></strike><br/>
            Discount: <fmt:formatNumber value="${product.discount}" type="percent" /><br/>
            New price: <fmt:formatNumber value="${(1-product.discount)*product.price}" type="currency" /><br/>
            Description: ${product.description}<br/>
            <a href="<c:url value="#" />" class="btn btn-primary btn-sm"><i class="bi bi-cart-plus"></i> Add to Cart</a>
        </div>
    </c:forEach>
    ${errorMsg}
</div>

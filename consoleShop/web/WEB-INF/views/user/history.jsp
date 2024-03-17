<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/user.css"%></style>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<div class="row ">
    <jsp:include page="/WEB-INF/components/accountNavigate.jsp" />

    <div class="container info__wrapper col-lg-9 col-12">

        <div class="row">
            <div class="general col-sm-12">
                
            </div>
            <hr>
            <div class="personal col-sm-5">
                
            </div>
        </div>

    </div>
</div>

<jsp:include page="/WEB-INF/components/footer.jsp" />
<script><%@include file="/WEB-INF/javascript/accountNavigate.js"%></script>
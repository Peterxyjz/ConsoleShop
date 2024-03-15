<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<style><%@include file="/WEB-INF/css/user.css"%></style>
<div class="nav_bg">
    <div class="container">
        <a href="<c:url value="/" />" class="link-primary"><i class="bi bi-chevron-left"></i> Quay lại trang chủ</a>
        <div class="nav_deposit row">
            <h3 class="text-center">Nạp tiền vào tài khoản</h3>
            <hr/>
            <div class="col-sm-6">
                <form action="deposit_handler.do">
                    <label for="money" class="form-label mt-3 mb-3">Số tiền muốn nạp: </label>
                    <div class="input-group mt-3 mb-3">
                        <input type="number" class="form-control" name="money" id="money" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <span class="input-group-text" id="basic-addon2">VNĐ</span>
                    </div>
                    <input type="hidden" value="${sessionScope.account.wallet}" name="wallet">
                    <input type="hidden" value="${sessionScope.account.accId}" name="accId">
                    <div class="form-check mt-3 mb-3">
                        <input class="form-check-input" type="checkbox" name="sure" id="sure">
                        <label class="form-check-label" for="sure">
                            Xác nhận nạp tiền
                        </label>
                    </div>
                    <button type="submit" class="btn btn-primary mt-3"><i class="bi bi-cash"></i> Nạp tiền</button>
                </form>
                <i style="color:red;">${errorMsg}</i>
            </div>
            <div class="col-sm-6">
                <img src="<c:url value="/images/Background/deposit.png"/>" width="55%" class="rounded mx-auto d-block"/>
            </div>
        </div>
    </div>
    <br/>
</div>
<jsp:include page="/WEB-INF/components/footer.jsp"/>



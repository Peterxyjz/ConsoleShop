<%-- 
    Document   : password_change
    Created on : Mar 20, 2024, 9:09:46 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style><%@include file="/WEB-INF/css/user.css"%></style>
<style><%@include file="/WEB-INF/css/updatePassword.css"%></style>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<div class="row ">
    <jsp:include page="/WEB-INF/components/accountNavigate.jsp" />

    <div class="container info__wrapper col-lg-9 col-12">
        <h3>Thay đổi mật khẩu</h3>
        <hr/>
        <div class="row">
            <form action="<c:url value="/user/updateToValidPassword_handler.do" />" class="col-sm-6">
                <div class="row">
                    <div class="form__group col-lg-8 col-sm-8">
                        <label for="accId" class="form-label"></label>
                        <input type="hidden" id="accId" name="accId" value="${sessionScope.account.accId}"><br/>
                    </div>
                    <div class="form__group col-lg-8 col-sm-8">
                        <label for="password">Mật khẩu mới</label><br/>
                        <input type="password" id="password" name="password" value="${param.password}"><br/>
                    </div>
                    <div class="form__group col-lg-8 col-sm-8">
                        <label for="password_check">Xác nhận mật khẩu mới</label><br/>
                        <input type="password" id="password_check" name="password_check" value="${param.password_check}"><br/>
                    </div>
                        <div class="form__message" style="color: red; font-size: 14px;">${errMsgPasswordNull}${errMsgPasswordInvalid}${errMsgPassword}</div>
                    <div class="form__group--submit col-lg-8 col-sm-8" >
                        <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i>Xác nhận</button>
                    </div>
                </div>
            </form>
            <div class="password__requirement col-sm-6">
                <h5>Mật khẩu của bạn</h5>
                <p>Phải có từ 3-10 kí tự</p>
                <p>Ít nhất 1 chữ cái (không phân biệt hoa thường)</p>
                <p>Ít nhất 1 chữ số</p>
                
            </div>
        </div>



    </div>
</div>
                    <div style="width: 100%; height: 30px; margin-top: 40px; background-color: #fff"></div>


<jsp:include page="/WEB-INF/components/footer.jsp" />
<script><%@include file="/WEB-INF/javascript/accountNavigate.js"%></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous">
</script>
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
                <h4>Chỉnh sửa sản phẩm</h4>
            </div>
            <div class="col-sm-6 d-grid gap-2 d-md-flex justify-content-md-end">
                <a href="<c:url value="/admin/edit.do"/>" class="btn btn-secondary" role="button">
                    <i class="bi bi-house-gear"></i> Quay lại
                </a>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <form action="edit_handler.do">
                    <div class="mb-3 mt-3">
                        <label class="mt-1" for="photo" class="form-label">Đổi ảnh sản phẩm:</label>
                        <input type="file" class="form-control" id="photo" name="photo">
                        <input type="hidden" id="proId" name="proId" value="${product.proId}"/>
                    </div>
                    <div class="mb-3">
                        <label for="proName" class="form-label">Nhập tên sản phẩm: </label>
                        <input type="text" class="form-control" id="proName" name="proName" value="${product.proName}">                       
                    </div>
                    <div class="row mb-3">
                        <div class=" col-sm-6">
                            <label for="price" class="form-label">Nhập giá sản phẩm: </label>
                            <input type="number" class="form-control" id="price" name="price" value="${product.price}" min="0">
                        </div>
                        <div class="col-sm-6">
                            <label for="discount" class="form-label">Nhập discount: </label>
                            <input type="number" class="form-control" id="discount" name="discount" value="${product.discount*100}" min="0" max="100">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-sm-6">
                            <label for="amount" class="form-label">Nhập số lượng sản phẩm: </label>
                            <input type="number" class="form-control" id="amount" name="amount" value="${product.amount}" min="0">
                        </div>
                        <div class="col-sm-6">
                            <label for="categoryId" class="form-label">Nhập loại sản phẩm: </label>
                            <select class="form-select" name="categoryId" id="categoryId">
                                <c:forEach var="category" items="${caList}">
                                    <option value="${category.categoryId}" ${category.categoryId==param.category? "seleted" : ""}>${category.categoryName}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">Nhập thông tin sản phẩm: </label>
                        <textarea class="form-control" id="description" name="description" rows="7">${product.description}</textarea>
                    </div> 
                    <button onclick="editFile()" type="submit" class="btn btn-primary" value="create"> <i class="bi bi-check"></i> Sửa sản phẩm</button>
                </form>
                <br/>
                <i style="color:red;">${errorMsg}</i>
            </div>
            <div class="col-sm-2"></div>
            <br/>
        </div>
    </div>
    <br/>
</div>
<script><%@include file="/WEB-INF/javascript/file.js"%></script>
<jsp:include page="/WEB-INF/components/footer.jsp"/>



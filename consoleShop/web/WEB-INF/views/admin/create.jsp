<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<!--<style><%@include file="/WEB-INF/css/product.css"%></style>-->
<div class="container">
    <div class="row">
        <div class="col-sm-6 d-grid gap-2 d-md-flex justify-content-md-start">
            <h4>Thêm sản phẩm mới</h4>
        </div>
        <div class="col-sm-6 d-grid gap-2 d-md-flex justify-content-md-end">
            <a href="<c:url value="/admin/index.do" />" class="btn btn-primary" role="button">
                <i class="bi bi-house-gear"></i> Quay lại
            </a>
        </div>
    </div>
    <hr/>
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <form method="POST" action="create_handler.do" enctype="multipart/form-data">
                <div class="mb-3 mt-3">
                    <label for="imageFile" class="form-label">Hình sản phẩm: </label>
                    <input type="file" class="form-control" id="imageFile" name="imageFile" value="${param.imageFile}">
                </div>
                <div class="mb-3">
                    <label for="proName" class="form-label">Nhập tên sản phẩm: </label>
                    <input type="text" class="form-control" id="proName" name="proName" value="${param.proName}">
                </div>
                <div class="mb-3">
                    <label for="price" class="form-label">Nhập giá sản phẩm: </label>
                    <input type="number" class="form-control" id="price" name="price" value="${param.price}">
                </div>
                <div class="mb-3">
                    <label for="discount" class="form-label">Nhập discount: </label>
                    <input type="number" class="form-control" id="discount" name="discount" value="${param.discount}" min="0" max="100">
                </div>
                <div class="mb-3">
                    <label for="amount" class="form-label">Nhập số lượng </label>
                    <input type="number" class="form-control" id="amount" name="amount" value="${param.amount}" min="0">
                </div>
                <div class="mb-3">
                    <label for="categoryId" class="form-label">Nhập loại sản phẩm: </label>
                    <select class="form-select" name="categoryId" id="categoryId">
                        <c:forEach var="category" items="${list}">
                            <option value="${category.categoryId}" ${category.categoryId==param.category? "seleted" : ""}>${category.categoryName}</option>
                        </c:forEach>
                    </select> <br/>
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Nhập thông tin sản phẩm: </label>
                    <textarea class="form-control" id="description" name="description" rows="5"></textarea>
                </div>
                <button type="submit" class="btn btn-primary" value="create"> <i class="bi bi-check"></i> Thêm sản phẩm</button>
            </form>
        </div>
        <div class="col-sm-2"></div>
    </div>
    <hr/>
    <br/>
</div>                  
<jsp:include page="/WEB-INF/components/footer.jsp" />



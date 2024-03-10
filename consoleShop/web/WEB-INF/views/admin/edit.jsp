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
                <h4>Chỉnh sửa</h4>
            </div>
            <div class="col-sm-6 d-grid gap-2 d-md-flex justify-content-md-end">
                <a href="<c:url value="/admin/index.do"/>" class="btn btn-secondary" role="button">
                    <i class="bi bi-house-gear"></i> Quay lại
                </a>
            </div>
        </div>
        <hr/>
        <form action="<c:url value="/admin/searchFilter_handler.do"/>">
            <div class="nav_filter row">
                <div class="col-sm-3">
                    <label for="categoryName">Danh mục</label>
                    <select id="categoryName" name="categoryName" class="form-select mb-3" aria-label=".form-select-lg example">
                        <option value="" selected>Tất cả</option>
                        <option value="Nintendo">Nintendo</option>
                        <option value="Playstation">Playstation</option>
                        <option value="Game">Game</option>
                        <option value="Accessory">Phụ kiện</option>
                    </select>
                </div>
                <div class="col-sm-3">
                    <label for="tmp">-----</label>
                    <select id="tmp" name="tmp" class="form-select mb-3" aria-label=".form-select-lg example">
                        <option value="" selected>Tất cả</option>
                        <option value="new">Máy mới</option>
                        <option value="likeNew">Like new</option>
                    </select>
                </div>
                <div class="col-sm-3">
                    <label for="status">Tình trạng</label>
                    <select id="status" name="status" class="form-select mb-3" aria-label=".form-select-lg example">
                        <option value=">=0" selected>Tất cả</option>
                        <option value=">0">Còn hàng</option>
                        <option value="=0">Hết hàng</option>
                    </select>
                </div>
                <div class="col-sm-2">
                    <label>Sắp xếp</label>
                    <select  id="sort" name="sort" class="form-select mb-3"  aria-label=".form-select-lg example">
                        <option value="proName ASC" selected>Mặc định</option>
                        <option value="proName ASC">Bán chạy nhất</option>
                        <option value="proName ASC">Mới cập nhật</option>
                        <option value="price ASC">Giá thấp đến cao</option>
                        <option value="price DESC">Giá cao đến thấp</option>
                        <option value="proName ASC">Tên từ A đến Z</option>
                        <option value="proName DESC">Tên từ Z đến A</option>
                    </select>
                </div>
                <div class="col-sm-1 mt-4">
                    <button type="submit" class="btn btn-primary"><i class="bi bi-search"></i> Tìm</button>
                </div>
            </div>
        </form>
        <hr/>
    </div>
    <div class="container-fluid nav_admin">
        <c:if test="${list.size() == 0}">
            <div class="text-center">
                <h3>Không có sản phẩm phù hợp</h3>
                <p>Bạn có thể thử từ khóa đơn giản hơn hoặc liên hệ với hỗ trợ</p>
                <br/>
                <img src="<c:url value="/images/Background/notFind.png"/>" width="30%" class=" rounded mx-auto d-block "/>
            </div>
        </c:if>
        <c:if test="${list.size() != 0}">
            <p>Có ${list.size()} được tìm thấy</p>
            <div class="row text-center">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Hình</th>
                            <th>ProId</th>
                            <th>Tên sản phẩm</th>
                            <th style="text-align: right;">Giá</th>
                            <th style="text-align: right;">Discount</th>
                            <th>Loại sản phẩm</th>
                            <th>Thông tin</th>
                            <th>Operations</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="product" items="${list}">
                            <tr>
                                <td><img src="<c:url value="/images/${product.proId}.jpg"/>" width="100%"></td>
                                <td>${product.proId}</td>
                                <td>${product.proName}</td>
                                <td style="text-align: right;">
                                    <fmt:formatNumber value="${product.price}" type="currency" />
                                </td>
                                <td style="text-align: right;">
                                    <fmt:formatNumber value="${product.discount}" type="percent" />
                                </td>
                                <td>${product.categoryId}</td>
                                <td>${product.description}</td> 
                                <td>
                                    <a href="edit_form.do?proName=${product.proName}"><i class="bi bi-gear"></i></a> 
                                  
                                    <button type="button" class="btn btn-light" data-bs-toggle="modal" data-bs-target="#exampleModal_${product.proId}">
                                        <i style="red" class="bi bi-trash"></i>
                                        
                                    </button>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal_${product.proId}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Xác nhận</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Bạn có chắc là muốn xóa không?</p>
                                                </div>
                                                <div class="modal-footer">     
                                                    <a href="<c:url value="/admin/delete_handler.do?proId=${product.proId}"/>" class="btn btn-danger"  >
                                                        Có
                                                    </a>
                                                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Không</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </c:if>

    <br/>
</div>
<jsp:include page="/WEB-INF/components/footer.jsp" />
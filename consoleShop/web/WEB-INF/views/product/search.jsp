<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/WEB-INF/components/navbar.jsp" />
<style><%@include file="/WEB-INF/css/product.css"%></style>
<c:set var="urlLogin" value="/product/search_handler.do?search=&index=1" scope="session"/>
<c:set var="urlLogout" value="/product/search_handler.do?search=&index=1" scope="session"/>
<c:set var="urlSignup" value="/product/search_handler.do?search=&index=1" scope="session"/>

<div class="container">
    <h2 class="mt-3">Tìm kiếm sản phẩm</h2>
    <form action="<c:url value="/product/searchFilter_handler.do"/>">
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
            <div class="col-sm-2">
                <label for="status">Tình trạng</label>
                <select id="status" name="status" class="form-select mb-3" aria-label=".form-select-lg example">
                    <option value="" selected>Tất cả</option>
                    <option value="new">Hàng mới</option>
                    <option value="Like New">Like new</option>
                </select>
            </div>
            <div class="col-sm-4">
                <label for="price">Mức giá</label>
                <div class="range">
                    <input name="priceLower" type="number" class=" form-control" id="price" min="0" value ="" placeholder="Mức giá từ: ">
                    <i class="bi bi-dash-lg"></i>
                    <input name="priceUpper" type="number" class=" form-control" id="price" min="0"  value =""  placeholder="Mức giá đến: ">
                </div>
            </div>
            <div class="col-sm-2">
                <label for="sort">Sắp xếp</label>
                <select  id="sort" name="sort" class="form-select mb-3"  aria-label=".form-select-lg example">
                    <option value="proName ASC" selected>Mặc định</option>
                    <option value="proName ASC">Bán chạy nhất</option>
                    <option value="price ASC">Giá thấp đến cao</option>
                    <option value="price DESC">Giá cao đến thấp</option>
                    <option value="proName ASC">Tên từ A đến Z</option>
                    <option value="proName DESC">Tên từ Z đến A</option>
                </select>
            </div>
            <div class="col-sm-1 mt-4">
                <button value="1" name="index" type="submit" class="btn btn-primary"><i class="bi bi-funnel"></i> Lọc</button>
            </div>
        </div>
    </form>
    <c:if test="${list.size() == 0}">
        <a href="<c:url value="/product/search_handler.do?search=" />" class="btn btn-link"><i class="bi bi-arrow-clockwise"></i> Khôi phục bộ lọc</a>
        <div class="text-center">
            <h3>Không có sản phẩm phù hợp</h3>
            <p>Bạn có thể thử từ khóa đơn giản hơn hoặc liên hệ với hỗ trợ</p>
            <br/>
            <img src="<c:url value="/images/Background/notFind.png"/>" width="30%" class=" rounded mx-auto d-block "/>
        </div>
    </c:if>
    <div class="row text-center">
        <c:forEach var="product" items="${list}">
            <div class="today-deal__item col-lg-3 col-md-4 col-sm-6 col-6">
                <div class="today-deal__img">
                    <a  href="<c:url value="/product/index.do?proName=${product.proName}"/>"><img src="<c:url value="/images/${product.proId}.jpg"/>" alt=""></a>
                </div>
                <a href="<c:url value="/product/index.do?proName=${product.proName}"/>" class="today-deal__info">
                    <div class="today-deal__name">${product.proName}</div>
                    <c:if test="${product.amount > 0}">
                        <div class="today-deal__price">
                            <fmt:formatNumber value="${(1-product.discount)*product.price}" type="number" />đ
                            <c:if test="${product.discount > 0}">
                                <div class="today-deal__discount"><fmt:formatNumber value="${product.price}" type="number" />đ</div>
                                <div class="today-deal__discount-p"><fmt:formatNumber value="${product.discount}" type="percent" /></div>
                            </c:if>

                            <c:if test="${product.proName.contains("Like New")}">
                                <div class="product__likenew" style="background: #e30010;font-size: 10px;border-radius: 14px;color: #fff; padding: 4px 4px;">Like new</div>
                            </c:if>
                        </div>
                    </c:if>
                    <c:if test="${product.amount == 0}">
                        <div class="today-deal__price">
                            <div class="today-deal__discount-p">Hết hàng</div>
                        </div>
                    </c:if>
                </a>
            </div>
        </c:forEach>
        <div style="display: flex; text-align: center; justify-content: center; gap: 10px;">
            <c:choose>
                <c:when test="${categoryName != null || sort != null || status != null || priceLower != null || priceUpper != null }">
                    <c:forEach var="index" begin="1" end="${endP}">
                        <a class="${tag == index?"bold__tag":""}" href="<c:url value="/product/searchFilter_handler.do?categoryName=${categoryName}&status=${status}&priceLower=${priceLower}&priceUpper=${priceUpper}&sort=${sort}&index=${index}"/>">${index}</a>                       
                    </c:forEach>
                    <c:set var="urlLogin" value="/product/searchFilter_handler.do?categoryName=${categoryName}&status=${status}&priceLower=${priceLower}&priceUpper=${priceUpper}&sort=${sort}&index=${index}" scope="session"/>
                    <c:set var="urlLogout" value="/product/searchFilter_handler.do?categoryName=${categoryName}&status=${status}&priceLower=${priceLower}&priceUpper=${priceUpper}&sort=${sort}&index=${index}" scope="session"/>
                    <c:set var="urlSignup" value="/product/searchFilter_handler.do?categoryName=${categoryName}&status=${status}&priceLower=${priceLower}&priceUpper=${priceUpper}&sort=${sort}&index=${index}" scope="session"/>
                </c:when>
                <c:otherwise>
                    <c:forEach var="index" begin="1" end="${endP}" >
                        <a class="${tag == index?"bold__tag":""}" href="<c:url value="/product/search_handler.do?search=${param.search}&index=${index}"/>">${index}</a>
                    </c:forEach>
                    <c:set var="urlLogin" value="/product/search_handler.do?search=&index=${index}" scope="session"/>
                    <c:set var="urlLogout" value="/product/search_handler.do?search=&index=${index}" scope="session"/>
                    <c:set var="urlSignup" value="/product/search_handler.do?search=&index=${index}" scope="session"/>
                </c:otherwise>
            </c:choose>

        </div>
        ${errorMsg}
    </div>
</div>
<br/>
<jsp:include page="/WEB-INF/components/footer.jsp" />
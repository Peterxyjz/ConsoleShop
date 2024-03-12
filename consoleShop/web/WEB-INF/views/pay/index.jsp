<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<jsp:include page="/WEB-INF/components/navbar.jsp" />
<div>
    <!--Thông tin người mua + địa chỉ--> 
    <div>
        Thông tin người mua: 
        ${requestScope.info}
    </div>
    
    <!--Thông tin đơn hàng--> 
    <div>
        
    </div>
    
    <!--Tổng tiền-->  
    <div>
        
    </div>
    <!--Phương thức thanh toán--> 
    <div>
        
    </div>
    <!--Chi tiết thanh toán--> 
    <div>
        
    </div>
    
    <!--Đặt hàng--> 
    <div>
        
    </div>
    
    
    
</div>
<jsp:include page="/WEB-INF/components/footer.jsp" />
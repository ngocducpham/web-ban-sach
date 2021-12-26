<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="requests" scope="request" type="java.util.List<com.doancntt.beans.Detail_Request>"/>

<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${requests}" var="i">
    <div>
        <div>Mã Khách Hàng: ${i.customer_ID}</div>
        <div>Tên Khách Hàng: ${i.first_Name}+${i.last_Name}</div>
        <div>Địa Chỉ: ${i.dest_Address}</div>
        <div>Ngày Yêu Cầu Đặt Hàng: ${i.order_Date}</div>
        <div>Tựa Sách: ${i.title}</div>
        <div>Số Lượng: ${i.so_sach}</div>
        <div>Giá Tiền: ${i.tien_sach}</div>
        <img src="${pageContext.request.contextPath}/public/imgs/${i.img}" alt="#"> </img>
    </div>
</c:forEach>
</body>
</html>

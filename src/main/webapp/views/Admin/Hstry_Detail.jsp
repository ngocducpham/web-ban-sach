<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="requests2" scope="request" type="java.util.List<com.doancntt.beans.Detail_Request>"/>
<jsp:useBean id="status" scope="request" type="java.lang.Integer"/>

<t:admin>
    <jsp:attribute name="js">
        <script>
            let tien = [];
            <c:forEach items="${requests2}" var="r">
            tien.push(${r.tien_sach});
            </c:forEach>
            document.getElementById('totalBill').innerText = "Tổng hóa đơn: " + tien.reduce((a, b) => a + b, 0) + " đ";
        </script>
    </jsp:attribute>
    <jsp:body>
        <div class="card ">
        <h4 class="card-header d-flex justify-content-between">Chi tiết hóa đơn</h4>
        <div class="card-body">
            <c:choose>
                <c:when test="${requests2.size() == 0}}">
                    <p class="card-text">Không có dữ liệu.</p>
                </c:when>
                <c:otherwise>
                    <c:choose>
                        <c:when test="${status==1}">
                            <div class="card-text" style="font-size: 24px;font-weight: bold">Trạng thái: <span
                                    style="color:red;"> Chưa Duyệt</span></div>
                        </c:when>
                        <c:when test="${status==-2}">
                            <div class="card-text" style="font-size: 24px;font-weight: bold">Trạng thái: <span
                                    style="color:red;"> Đã Từ Chối</span></div>
                        </c:when>
                        <c:otherwise>
                            <div class="card-text" style="font-size: 24px;font-weight: bold">Trạng thái: <span
                                    style="color:green"> đã duyệt</span></div>
                        </c:otherwise>
                    </c:choose>
                    <div class="card-text ">Mã khách hàng: ${requests2.get(0).customer_ID}</div>
                    <div class="card-text">Tên khách
                        hàng: ${requests2.get(0).first_Name} ${requests2.get(0).last_Name}</div>
                    <div class="card-text">Địa chỉ cần giao: ${requests2.get(0).dest_Address}</div>
                    <div id="totalBill" class="card-text font-weight-bold"></div>
                    <table class="table mt-5 mb-5">
                        <thead>
                        <tr>
                            <th scope="col">Hình ảnh</th>
                            <th scope="col">Tên sách</th>
                            <th scope="col">Số lượng</th>
                            <th scope="col">Thành tiền</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${requests2}" var="r">
                            <tr>
                                <th scope="row">
                                    <img style="width: 50px; height: 70px"
                                         src="${pageContext.request.contextPath}/public/imgs/${r.img}" alt="#"/>
                                </th>
                                <td>${r.title}</td>
                                <td>${r.so_sach}</td>
                                <td>${r.tien_sach}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                    <a href="${pageContext.request.contextPath}/Admin/RequestOrder"
                       class="btn btn-primary">
                        <i class="fa fa-arrow-left" aria-hidden="true"></i>
                        Trở về
                    </a>
                </c:otherwise>
            </c:choose>
        </div>
    </jsp:body>
</t:admin>

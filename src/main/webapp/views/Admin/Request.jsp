<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="all_request" scope="request" type="java.util.List<com.doancntt.beans.order_request>"/>
<t:admin>
    <jsp:body>

        <div class="card ">
            <h4 class="card-header d-flex justify-content-between">
                Danh sách sản phẩm
            </h4>
            <c:choose>
                <c:when test="${all_request.size() == 0}">
                    <div class="card-body">
                        <p class="card-text">Không có dữ liệu.</p>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Ngày Yêu Cầu</th>
                                <th>Mã Khách Hàng</th>
                                <th>Tình Trạng</th>
                                <th>&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${all_request}" var="ar">
                                <tr>
                                    <td>${ar.order_request_id}</td>
                                    <td>${ar.request_date}</td>
                                    <td>${ar.customer_ID}</td>
                                    <c:choose>
                                        <c:when test="${ar.status==1}">
                                            <td>Đang Chờ Phê Duyệt</td>
                                        </c:when>
                                        <c:otherwise>
                                            <td>Đã Duyệt</td>
                                        </c:otherwise>
                                    </c:choose>
                                    <td class="text-right">
                                        <c:if test="${ar.status==1}">
                                            <a class="btn btn-sm btn-outline-primary"
                                               href="${pageContext.request.contextPath}/Admin/Request_Detail?cus_id=${ar.customer_ID}"
                                               role="button">
                                                <i class="fa fa-pencil" aria-hidden="true" style="color: green"></i>
                                            </a>
                                        </c:if>
                                        <a class="btn btn-sm btn-outline-primary"
                                           href="${pageContext.request.contextPath}/Admin/hstry_Detail?cus_id=${ar.customer_ID}&s=${ar.status}"
                                           role="button">
                                            <i class="fa fa-eye" aria-hidden="true" style="color: red"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </jsp:body>
</t:admin>

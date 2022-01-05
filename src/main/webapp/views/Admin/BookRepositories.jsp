<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="repo" scope="request" type="java.util.List<com.doancntt.beans.Book>"/>

<t:admin>
    <jsp:body>
        <fmt:setLocale value="vi_VN"/>
        <div class="card ">
        <h4 class="card-header d-flex justify-content-between">Kho sách</h4>
        <div class="card-body">
            <c:choose>
                <c:when test="${repo.size() == 0}">
                    <p class="card-text">Không có dữ liệu.</p>
                </c:when>
                <c:otherwise>
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Ảnh</th>
                            <th scope="col">Tên sách</th>
                            <th scope="col">Tác giả</th>
                            <th scope="col">Thể loại</th>
                            <th scope="col">NXB</th>
                            <th scope="col">Giá tiền</th>
                            <th scope="col">Giảm</th>
                            <th scope="col"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${repo}" var="b">
                            <tr>
                                <th scope="row">
                                    <img style="width: 50px; height: 70px"
                                         src="${pageContext.request.contextPath}/public/imgs/${b.img}" alt="#"/>
                                </th>
                                <td>${b.title}</td>
                                <td>${b.author_Name}</td>
                                <td>${b.category_Name}</td>
                                <td>${b.publisher_Name}</td>
                                <td><fmt:formatNumber value="${b.price}" type="currency"/></td>
                                <td>${b.discount}%</td>
                                <td class="text-right">
                                    <a class="btn btn-sm btn-outline-primary"
                                       href="${pageContext.request.contextPath}/Admin/EditBook?id=${b.book_ID}"
                                       role="button">
                                        <i class="fa fa-pencil" aria-hidden="true" style="color: green"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </c:otherwise>
            </c:choose>
        </div>
    </jsp:body>
</t:admin>
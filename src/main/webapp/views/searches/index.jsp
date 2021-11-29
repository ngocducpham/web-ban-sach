<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="search" scope="request" type="java.util.List<com.doancntt.beans.Book>"/>
<jsp:useBean id="searchText" scope="request" type="java.lang.String"/>

<t:main>
    <jsp:body>
        <div class="container main-content">
            <div class='container search-title mt-5 mb-5'>Kết quả tìm kiếm: ${searchText}</div>
            <div class="book-specific">
                <c:forEach items="${search}" var="b">
                    <div class="book-card">
                        <div class="book-card-container">
                            <div class="card-main-content">
                                <img class="card-img"
                                     src="${pageContext.request.contextPath}/public/imgs/${b.img}" alt=""
                                     width="88px"
                                     height="160px">
                                <div class="card-content">
                                    <a class="book-name" href="${pageContext.request.contextPath}/Detail?id=${b.book_ID}">${b.title}</a>
                                    <div class="book-author">${b.author_Name}</div>
                                    <div class="card-descript">${b.description}</div>
                                </div>
                            </div>
                            <div class="card-price">
                                <div class="discount">-${b.discount}%</div>
                                <div class="price">
                                    <div class="price-origin">
                                        <fmt:formatNumber type="number" maxFractionDigits="0"
                                                          value="${b.price}"/> đ
                                    </div>
                                    <div class="price-after">
                                        <fmt:formatNumber type="number" maxFractionDigits="0"
                                                          value="${b.price*(100-b.discount)/100}"/> đ
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>

    </jsp:body>
</t:main>
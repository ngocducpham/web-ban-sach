<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="newBooks" scope="request" type="java.util.List<com.doancntt.beans.Book>"/>
<jsp:useBean id="vanhocmoi" scope="request" type="java.util.List<com.doancntt.beans.Book>"/>
<jsp:useBean id="kinhtemoi" scope="request" type="java.util.List<com.doancntt.beans.Book>"/>
<jsp:useBean id="doisongmoi" scope="request" type="java.util.List<com.doancntt.beans.Book>"/>
<jsp:useBean id="link" scope="request" type="java.util.List<java.lang.String>"/>

<t:admin>
    <jsp:body>
        <div class="container main-content mt-5">
            <div class="category-list">
                    <%--Sách mới nhập về--%>
                <c:if test="${newBooks.size()!=0}">
                    <div class="specific-category mb-5">
                        <div class="category-header d-flex justify-content-between align-items-center mb-4">
                            <div class="category-name">Sách Mới Nhập Về</div>
                            <div class="view-category-detail">
                                <a href="${pageContext.request.contextPath}/search?q=${link.get(0)}">Xem thêm</a>
                                <i class="fas fa-chevron-right ms-2"></i>
                            </div>
                        </div>
                        <div class="book-specific">
                            <c:forEach items="${newBooks}" var="b">
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
                </c:if>

                <c:if test="${vanhocmoi.size() != 0}">
                    <div class="specific-category mb-5">
                        <div class="category-header d-flex justify-content-between align-items-center mb-4">
                            <div class="category-name">Sách Văn Học Mới</div>
                            <div class="view-category-detail">
                                <a href="${pageContext.request.contextPath}/search?q=${link.get(1)}">Xem thêm</a>
                                <i class="fas fa-chevron-right ms-2"></i>
                            </div>
                        </div>
                        <div class="book-specific">
                            <c:forEach items="${vanhocmoi}" var="b">
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
                </c:if>

                    <%--Sách kinh tế mới--%>
                <c:if test="${kinhtemoi.size() != 0}">
                    <div class="specific-category mb-5">
                        <div class="category-header d-flex justify-content-between align-items-center mb-4">
                            <div class="category-name">Sách Kinh Tế Mới</div>
                            <div class="view-category-detail">
                                <a href="${pageContext.request.contextPath}/search?q=${link.get(2)}">Xem thêm</a>
                                <i class="fas fa-chevron-right ms-2"></i>
                            </div>
                        </div>
                        <div class="book-specific">
                            <c:forEach items="${kinhtemoi}" var="b">
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
                </c:if>

                    <%--Sách doi song moi--%>
                <c:if test="${doisongmoi.size() != 0}">
                    <div class="specific-category mb-5">
                        <div class="category-header d-flex justify-content-between align-items-center mb-4">
                            <div class="category-name">Sách Thường Thức - Đời Sống Mới</div>
                            <div class="view-category-detail">
                                <a href="${pageContext.request.contextPath}/search?q=${link.get(3)}">Xem thêm</a>
                                <i class="fas fa-chevron-right ms-2"></i>
                            </div>
                        </div>
                        <div class="book-specific">
                            <c:forEach items="${doisongmoi}" var="b">
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
                </c:if>
            </div>

        </div>
    </jsp:body>
</t:admin>
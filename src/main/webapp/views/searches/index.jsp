<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="search" scope="request" type="java.util.List<com.doancntt.beans.Book>"/>
<jsp:useBean id="searchText" scope="request" type="java.lang.String"/>

<t:main>
    <jsp:body>
        <div class="container container-category">
            <div class="list-group list-category hide">
                <a href="#"
                   class=" list-group-item list-group-item-action d-flex justify-content-between align-items-center">
                    Sách Bán Chạy
                    <i class="fas fa-chevron-right"></i>
                </a>
                <a href="#"
                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Sách
                    Ngoại Văn
                    <i class="fas fa-chevron-right"></i></a>
                <a href="#"
                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Sách
                    Kinh Tế<i class="fas fa-chevron-right"></i></a>
                <a href="#"
                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Sách
                    Văn Học Trong Nước<i class="fas fa-chevron-right"></i></a>
                <a href="#"
                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Sách
                    Văn Học Nước Ngoài<i class="fas fa-chevron-right"></i></a>
                <a href="#"
                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Sách
                    Thường Thức - Đời Sống<i class="fas fa-chevron-right"></i></a>
                <a href="#"
                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Sách
                    Thiếu Nhi<i class="fas fa-chevron-right"></i></a>
                <a href="#"
                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Sách
                    Phát Triển Bản Thân<i class="fas fa-chevron-right"></i></a>
                <a href="#"
                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Sách
                    Tin Học Ngoại Ngữ<i class="fas fa-chevron-right"></i></a>
                <a href="#"
                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Sách
                    Chuyên Ngành<i class="fas fa-chevron-right"></i></a>
                <a href="#"
                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Sách
                    Giáo Khoa - Giáo Trình<i class="fas fa-chevron-right"></i></a>
                <a href="#"
                   class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Tạp
                    Chí<i class="fas fa-chevron-right"></i></a>
            </div>
        </div>
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
                                    <div class="book-name">${b.title}</div>
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

        <script>
            let dropcategory = document.querySelector('.dropcategory');
            let books_category = document.querySelector('.list-category');
            dropcategory.addEventListener('focus', () => {
                books_category.classList.toggle('hide');
            });
            dropcategory.addEventListener('click', ()=>{
                books_category.classList.toggle('hide');
            })

            dropcategory.addEventListener('blur', () => {
                books_category.classList.add('hide');
            });

        </script>
    </jsp:body>
</t:main>
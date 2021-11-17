<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<jsp:useBean id="book" scope="request" type="com.doancntt.beans.Book"/>

<t:main>
    <jsp:body>
        <div class="container main-banner">
            <div class="list-group books-category">
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
            <a href="#" class="big-banner">
                <img src="${pageContext.request.contextPath}/public/imgs/big-banner.jpg" alt="" srcset="" width="648px" height="454px">
            </a>
            <a href="#" class="right-top-banner">
                <img src="${pageContext.request.contextPath}/public/imgs/right-top-banner.jpg" alt="" srcset="" width="324px" height="224px">
            </a>
            <a href="#" class="right-bottom-banner">
                <img src="${pageContext.request.contextPath}/public/imgs/right-bottom-banner.jpg" alt="" srcset="" width="324px" height="223px">
            </a>
        </div>

        <div class="container main-content mt-5">
            <div class="category-list">
                <div class="specific-category">
                    <div class="category-header d-flex justify-content-between align-items-center mb-4">
                        <div class="category-name">Sách Bán Chạy</div>
                        <div class="view-category-detail">
                            <a href="#">Xem thêm</a>
                            <i class="fas fa-chevron-right ms-2"></i>
                        </div>
                    </div>
                    <div class="book-specific">
                        <div class="book-card">
                            <div class="book-card-container">
                                <div class="card-main-content">
                                    <img class="card-img" src="${pageContext.request.contextPath}/public/imgs/book-cover1.jpg" alt="" width="88px"
                                         height="160px">
                                    <div class="card-content">
                                        <div class="book-name">Yêu em bằng mắt</div>
                                        <div class="book-author">by Richard Russo</div>
                                        <div class="card-descript">
                                            Readers of all ages and walks of life have drawn inspiration and empowerment
                                            from
                                            Elizabeth
                                            Gilbert’s books for years.
                                        </div>
                                    </div>
                                </div>
                                <div class="card-price">
                                    <div class="discount">-20%</div>
                                    <div class="price">
                                        <div class="price-origin">78.000 đ</div>
                                        <div class="price-after">62.000 đ</div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="book-card">
                            <div class="book-card-container">
                                <div class="card-main-content">
                                    <img class="card-img" src="${pageContext.request.contextPath}/public/imgs/book-cover1.jpg" alt="" width="88px"
                                         height="160px">
                                    <div class="card-content">
                                        <div class="book-name">Yêu em bằng mắt</div>
                                        <div class="book-author">by Richard Russo</div>
                                        <div class="card-descript">
                                            Readers of all ages and walks of life have drawn inspiration and empowerment
                                            from
                                            Elizabeth
                                            Gilbert’s books for years.
                                        </div>
                                    </div>
                                </div>
                                <div class="card-price">
                                    <div class="discount">-20%</div>
                                    <div class="price">
                                        <div class="price-origin">78.000 đ</div>
                                        <div class="price-after">62.000 đ</div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="book-card">
                            <div class="book-card-container">
                                <div class="card-main-content">
                                    <img class="card-img" src="${pageContext.request.contextPath}/public/imgs/book-cover1.jpg" alt="" width="88px"
                                         height="160px">
                                    <div class="card-content">
                                        <div class="book-name">Yêu em bằng mắt</div>
                                        <div class="book-author">by Richard Russo</div>
                                        <div class="card-descript">
                                            Readers of all ages and walks of life have drawn inspiration and empowerment
                                            from
                                            Elizabeth
                                            Gilbert’s books for years.
                                        </div>
                                    </div>
                                </div>
                                <div class="card-price">
                                    <div class="discount">-20%</div>
                                    <div class="price">
                                        <div class="price-origin">78.000 đ</div>
                                        <div class="price-after">62.000 đ</div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="book-card">
                            <div class="book-card-container">
                                <div class="card-main-content">
                                    <img class="card-img" src="${pageContext.request.contextPath}/public/imgs/book-cover1.jpg" alt="" width="88px"
                                         height="160px">
                                    <div class="card-content">
                                        <div class="book-name">Yêu em bằng mắt</div>
                                        <div class="book-author">by Richard Russo</div>
                                        <div class="card-descript">
                                            Readers of all ages and walks of life have drawn inspiration and empowerment
                                            from
                                            Elizabeth
                                            Gilbert’s books for years.
                                        </div>
                                    </div>
                                </div>
                                <div class="card-price">
                                    <div class="discount">-20%</div>
                                    <div class="price">
                                        <div class="price-origin">78.000 đ</div>
                                        <div class="price-after">62.000 đ</div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="book-card">
                            <div class="book-card-container">
                                <div class="card-main-content">
                                    <img class="card-img" src="${pageContext.request.contextPath}/public/imgs/book-cover1.jpg" alt="" width="88px"
                                         height="160px">
                                    <div class="card-content">
                                        <div class="book-name">Yêu em bằng mắt</div>
                                        <div class="book-author">by Richard Russo</div>
                                        <div class="card-descript">
                                            Readers of all ages and walks of life have drawn inspiration and empowerment
                                            from
                                            Elizabeth
                                            Gilbert’s books for years.
                                        </div>
                                    </div>
                                </div>
                                <div class="card-price">
                                    <div class="discount">-20%</div>
                                    <div class="price">
                                        <div class="price-origin">78.000 đ</div>
                                        <div class="price-after">62.000 đ</div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="book-card" onclick="window.open('#','_self')">
                            <div href="#" class="book-card-container">
                                <div class="card-main-content">
                                    <img class="card-img" src="${pageContext.request.contextPath}/public/imgs/book-cover1.jpg" alt="" width="88px"
                                         height="160px">
                                    <div class="card-content">
                                        <a href="#" class="book-name">Yêu em bằng mắt</a>
                                        <div class="book-author">by Richard Russo</div>
                                        <div class="card-descript">
                                            Readers of all ages and walks of life have drawn inspiration and empowerment
                                            from
                                            Elizabeth
                                            Gilbert’s books for years.
                                        </div>
                                    </div>
                                </div>
                                <div class="card-price">
                                    <div class="discount">-20%</div>
                                    <div class="price">
                                        <div class="price-origin">78.000 đ</div>
                                        <div class="price-after">62.000 đ</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </jsp:body>
</t:main>
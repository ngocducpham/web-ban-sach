<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/nav.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="Customer_logged_in" scope="session" type="com.doancntt.beans.Customer" />

<div class="container-top-banner">
    <div class="top-banner d-flex p-2 container">
        <div class="top-banner__ship d-flex align-items-center pe-3" data-bs-placement="bottom"
             data-bs-toggle="tooltip" title="Miễn phí giao hàng cho đơn hàng từ 250.00VNĐ">
            <i class="top-banner__ship__icon me-2 fas fa-shipping-fast"></i>
            <div class="top-banner__ship__text">Miễn phí giao hàng</div>
        </div>
        <div class="top-banner__books d-flex align-items-center ms-4">
            <i class="top-banner__books__icon me-2 fas fa-book"></i>
            <div class="top-banner__books__text">Hơn 10.000 tựu sách</div>
        </div>
    </div>
</div>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}">
            <img class="logo" src="${pageContext.request.contextPath}/public/imgs/logo.png">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form class="d-flex mt-3" method="get" action="${pageContext.request.contextPath}/search">
                <input class="form-control me-2 search-data" name="q" type="search" placeholder="Tìm sách" aria-label="Search">
                <button class="btn btn-outline-success btn-search" type="submit">Tìm</button>
            </form>
            <ul class="navbar-nav mb-lg-0 ms-auto">
                <li class="nav-item d-flex flex-column align-items-center me-5">
                    <button type="button" class="btn position-relative shadow-none p-0">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger ">10+</span>
                    </button>
                    <a class="noneDecoration" href="${pageContext.request.contextPath}/Cart">Giỏ hàng</a>
                </li>
                <li class="nav-item d-flex flex-column align-items-center" >
                    <button type="button" class="btn position-relative shadow-none p-0">
                        <i class="fas fa-user me-1"></i>
                    </button>
                    <c:choose>
                        <c:when test="${Verified}">
                            <a class="noneDecoration" href="Personal?email=${Customer_logged_in.email}">${Customer_logged_in.first_Name} ${Customer_logged_in.last_Name}</a>
                        </c:when>
                        <c:otherwise>
                            <a class="noneDecoration" href="${pageContext.request.contextPath}/Login">Tài khoản</a>
                        </c:otherwise>
                    </c:choose>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid banner-info p-3">
    <div class="container d-flex">
        <button class="d-flex align-items-center dropcategory">
            <i class="fas fa-stream me-5 ms-1"></i>
            Danh mục sách
        </button>
        <div class="d-flex align-items-center ms-auto">
            <i class="fas fa-phone-alt me-2"></i>
            Hotline: 09996699
        </div>
    </div>
</div>
<div class="container container-category">
    <div class="list-group list-category hide">
        <a href="#"
           class=" list-group-item list-group-item-action d-flex justify-content-between align-items-center">
            Sách Bán Chạy
            <i class="fas fa-chevron-right"></i>
        </a>
        <a href="#"
           class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">Sách
            Mới Phát Hành
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
    
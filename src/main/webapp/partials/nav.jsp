<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <a class="navbar-brand" href="#">
            <img src="${pageContext.request.contextPath}/public/imgs/Readbook-logos_transparent.png" width="110"
                 height="110" alt="" srcset="">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <form class="d-flex mt-3">
                <input class="form-control me-2" type="search" placeholder="Tìm sách" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Tìm</button>
            </form>
            <ul class="navbar-nav mb-lg-0 ms-auto">
                <li class="nav-item d-flex flex-column align-items-center me-5">
                    <button type="button" class="btn position-relative shadow-none p-0">
                        <i class="fas fa-shopping-cart"></i>
                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">10+</span>
                    </button>
                    Giỏ hàng
                </li>
                <li class="nav-item d-flex flex-column align-items-center">
                    <button type="button" class="btn position-relative shadow-none p-0">
                        <i class="fas fa-user me-1"></i>
                    </button>
                    Tài khoản
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid banner-info p-3">
    <div class="container d-flex">
        <div class="d-flex align-items-center">
            <i class="fas fa-stream me-5 ms-1"></i>
            Danh mục sách
        </div>
        <div class="d-flex align-items-center ms-auto">
            <i class="fas fa-phone-alt me-2"></i>
            Hotline: 09996699
        </div>
    </div>
</div>
    
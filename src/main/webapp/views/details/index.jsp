<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="book" scope="request" type="com.doancntt.beans.Book"/>
<%--<jsp:useBean id="Verified" scope="session"/>--%>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/detail.css">

<t:main>
    <jsp:attribute name="css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
              crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
        </jsp:attribute>
    <jsp:attribute name="js">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script>
        function handleCart(event) {

            document.getElementById("anou").style.display='block';
            var el = document.getElementById("anou");
            el.style.animation = 'none';
            el.offsetHeight; /* trigger reflow */
            el.style.animation = null;
            // arlet("Thêm vào giỏ hàng thành công!");
            // event.preventDefault();
        }
    </script>
        </jsp:attribute>
    <jsp:body>
        <div class="container">
            <div class="contentBook">
                <div class="boxPic">
                    <figure class="bookImage"><img src="${pageContext.request.contextPath}/public/imgs/${book.img}"
                                                   alt="Book Image"></figure>
                </div>
                <div class="detailBook">
                    <h4 class="bookName"> ${book.title} </h4>
                    <p class="author"> Tác giả: <span class="authorName">${book.author_Name}</span></p>
                    <p class="publishingCompany"> Nhà xuất bản: <span
                            class="publishingCompanyName"> ${book.publisher_Name} </span></p>
                    <p class="publisher"> Nhà phát hành: <span class="publisherName"> ${book.publisher_Name} </span></p>

                    <p class="briefContent contentDetail"> ${book.description} </p>
                    <a href="#contentDetail"> Xem thêm</a>
                    <hr class="hrDecoration">
                </div>
                <div class="annoucement" id="anou">
                    Thêm vào giỏ hàng thành công
                </div>
                <div class="boxPayment">
                    <h5 class="paymentInfo"> Thông tin thanh toán</h5>
                    <hr class="hrDecoration">
                    <p class="priceCover"> Giá niêm yết <span class="priceCoverMoney"> <del> <fmt:formatNumber
                            type="number" maxFractionDigits="0"
                            value="${book.price}"/> đ </del></span>
                    </p>
                    <p class="priceCover priceDiscount"> Giảm <span class="priceDiscountMoney"> <fmt:formatNumber
                            type="number" maxFractionDigits="0"
                            value="${book.discount}"/> % </span></p>
                    <p class="priceCover priceSale"> Giá bán <span class="priceSaleMoney"> <fmt:formatNumber
                            type="number" maxFractionDigits="0"
                            value="${book.price*(100-book.discount)/100}"/> đ </span></p>
                    <p class="priceCover priceSave"> Tiết kiệm <span
                            class="priceSaveMoney"> <fmt:formatNumber
                            type="number" maxFractionDigits="0"
                            value="${book.price*(book.discount)/100}"/> đ</span></p>

                    <hr class="hrDecoration">
                    <c:choose>
                        <c:when test="${Verified}">
                            <button class="addToCart" onclick="handleCart()">
                                <a style="text-decoration: none"
                                   href="${pageContext.request.contextPath}/AddtoCart?bookid=${book.book_ID}">Thêm vào giỏ hàng</a>
                            </button>
                        </c:when>
                        <c:otherwise>
                            <button class="addToCart">
                                <a style="text-decoration: none"
                                   href="${pageContext.request.contextPath}/Login">Đăng nhập để mua</a>
                            </button>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
            <ul class="nav nav-tabs mt-4 font" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" id="home-tab" data-bs-toggle="tab" href="#home" role="tab"
                       aria-controls="home" aria-selected="true">Giới thiệu sách</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="profile-tab" data-bs-toggle="tab" href="#profile" role="tab"
                       aria-controls="profile" aria-selected="false">Thông tin chi tiết</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <div class="introBookDetail">
                        <h5 class="titleBook"> ${book.title} </h5>
                        <p class="contentDetail" id="contentDetail"> ${book.description} </p>
                    </div>
                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    <div class="detailBookDetail">
                        <h4 class="detailInformation mt-3" id="detailInfor"> Thông tin chi tiết</h4>
                        <li class="author"> Tác giả: <span class="authorName"> ${book.author_Name}</span></li>
                        <li class="author"> Nhà phát hành: <span
                                class="publisherName"> ${book.publisher_Name}</span></li>
                        <li class="author"> Số trang: <span class="quantityPage"> ${book.pages}</span></li>
                        <li class="author"> Ngôn ngữ: <span class="authorName"> ${book.language_Name}</span></li>
                        <li class="author"> Ngày phát hành: <span
                                class="publicationDate"> ${book.publication_Date}</span>
                        </li>
                    </div>
                </div>
            </div>

        </div>
    </jsp:body>
</t:main>
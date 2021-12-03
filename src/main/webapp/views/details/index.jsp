<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="book" scope="request" type="com.doancntt.beans.Book"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/detail.css">

<t:main>
    <jsp:body>
        <div class="container">
            <div class="contentBook">
                <div class="boxPic">
                    <figure class="bookImage"> <img src="${pageContext.request.contextPath}/public/imgs/${book.img}"
                                                alt="Book Image"> </figure>
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
                    <button class="addToCart">
                        Thêm vào giỏ hàng
                    <a href="${pageContext.request.contextPath}/AddtoCart?id=${book.book_ID}"></a>
                    </button>
                </div>
            </div>
            <div class="container">
                <h2>Dynamic Tabs</h2>
                <p>To make the tabs toggleable, add the data-toggle="tab" attribute to each link. Then add a .tab-pane class with a unique ID for every tab and wrap them inside a div element with class .tab-content.</p>

                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
                    <li><a data-toggle="tab" href="#menu1">Menu 1</a></li>
                    <li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
                    <li><a data-toggle="tab" href="#menu3">Menu 3</a></li>
                </ul>

                <div class="tab-content">
                    <div id="home" class="tab-pane fade in active">
                        <h3>HOME</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                    <div id="menu1" class="tab-pane fade">
                        <h3>Menu 1</h3>
                        <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <h3>Menu 2</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                    </div>
                    <div id="menu3" class="tab-pane fade">
                        <h3>Menu 3</h3>
                        <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                    </div>
                </div>
            </div>

        <%--            <ul class="nav nav-tabs text-primary">--%>
<%--                <li class="active"><a data-toggle="tab" href="#home">Home</a></li>--%>
<%--                <li><a data-toggle="tab" href="#menu1">Menu 1</a></li>--%>
<%--            </ul>--%>

<%--            <div class="tab-content">--%>
<%--                <div id="home" class="tab-pane fade in active">--%>
<%--&lt;%&ndash;                    <h3>HOME</h3>&ndash;%&gt;--%>
<%--                    <div class="introBookDetail">--%>
<%--                        <h5 class="titleBook"> ${book.title} </h5>--%>
<%--                        <p class="contentDetail" id="contentDetail"> ${book.description} </p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div id="menu1" class="tab-pane fade">--%>
<%--&lt;%&ndash;                    <h3>Menu 1</h3>&ndash;%&gt;--%>
<%--                    <div class="detailBookDetail">--%>
<%--                        <h4 class="detailInformation mt-3" id="detailInfor"> Thông tin chi tiết</h4>--%>
<%--                        <li class="author"> Tác giả: <span class="authorName"> ${book.author_Name}</span></li>--%>
<%--                        <li class="author"> Nhà phát hành: <span class="publisherName"> ${book.publisher_Name}</span></li>--%>
<%--                        <li class="author"> Số trang: <span class="quantityPage"> ${book.pages}</span></li>--%>
<%--                        <li class="author"> Ngôn ngữ: <span class="authorName"> ${book.language_Name}</span></li>--%>
<%--                        <li class="author"> Ngày phát hành: <span class="publicationDate"> ${book.publication_Date}</span>--%>
<%--                        </li>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="bonusInfomation">--%>
<%--                <div class="navbarInfo">--%>
<%--                    <a class="decorationA introBook" href="#contentDetail"> Giới thiệu sách</a>--%>
<%--                    <a class="decorationA detailBookA" href="#detailInfor"> Thông tin chi tiết</a>--%>
<%--                </div>--%>

<%--                --%>
<%--                <div class="comment">--%>

<%--                </div>--%>
<%--            </div>--%>
        </div>
    </jsp:body>
</t:main>
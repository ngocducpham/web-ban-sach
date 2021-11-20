<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="book" scope="request" type="com.doancntt.beans.Book"/>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/detail.css">

<t:main>
    <jsp:body>
        <div class="container">
            <div class="contentBook">
                <figure class="bookImage"><img src="${pageContext.request.contextPath}/public/imgs/${book.img}" alt="Book Image"></figure>
                <div class="detailBook">
                    <h4 class="bookName"> ${book.title} </h4>
                    <p class="author"> Tác giả: <span class="authorName">${book.author_Name}</span></p>
                    <p class="publishingCompany"> Nhà xuất bản: <span class="publishingCompanyName"> Nxb Trẻ </span></p>
                    <p class="publisher"> Nhà phát hành: <span class="publisherName"> Nxb Trẻ </span></p>

                    <p class="briefContent"> Giới thiệu sơ lược về sách </p>
                    <hr>
                </div>
            </div>
            <div class="bonusInfomation">
                <div class="navbarInfo">
                    <div class="introBook"> Giới thiệu sách</div>
                    <div class="detailBook"> Thông tin chi tiết</div>
                        <%--                    <div class="introBook"> Đánh giá & Bình luận </div>--%>
                </div>
                <div class="introBookDetail">
                    <h5 class="titleBook"> Tên sách </h5>
                    <p class="contentDetail"> Nội dung về sách ở đây</p>
                </div>
                <div class="detailBookDetail">
                    <h4 class="detailInformation"> Thông tin chi tiết</h4>
                    <i class="author"> Tác giả: <span class="authorName"> Dương Thụy</span></i>
                    <i class="author"> Tác giả: <span class="authorName"> Dương Thụy</span></i>
                    <i class="author"> Tác giả: <span class="authorName"> Dương Thụy</span></i>
                    <i class="author"> Tác giả: <span class="authorName"> Dương Thụy</span></i>
                    <i class="author"> Tác giả: <span class="authorName"> Dương Thụy</span></i>
                    <i class="author"> Tác giả: <span class="authorName"> Dương Thụy</span></i>
                </div>
                <div class="comment">

                </div>
            </div>
        </div>
    </jsp:body>
</t:main>
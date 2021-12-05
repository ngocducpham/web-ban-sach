<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="Customer_infor" scope="request" type="com.doancntt.beans.Customer"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/personal.css">

<t:main>
    <jsp:body>
        <div class="container">
            <div class="auth-form mt-3" id="login">
                <input type="hidden" name="ga_id" class="js-octo-ga-id-input">
                <div class="auth-form-header p-0">
                    <h2 class="registerHeader">Thông tin cá nhân</h2>
                    <h4 class="hello"> Xin chào bạn ${Customer_infor.last_Name}</h4>
                </div>

<%--                <form class="auth-form-body mt-3" method="post">--%>
<%--                    <label for="email">--%>
<%--                        Địa chỉ Email <span class="txt_red">${Customer_infor.last_Name}</span>--%>
<%--                    </label>--%>
<%--                    <span class="txt_red" id="error_email"></span>--%>

<%--                    <input type="text" name="email" id="email" class="mb-3 form-control input-block js-login-field"--%>
<%--                           autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus"--%>
<%--                           onblur="checkEmail()">--%>
<%--                </form>--%>
<%--                <div class="productBought"> Các sản phẩm đã mua </div>--%>
<%--                <div class="ProductBuyList">--%>
<%--                    <figure class="bookImage padding"><img src="${pageContext.request.contextPath}/public/imgs/${book.img}"--%>
<%--                                                   alt="BookImage"></figure>--%>
<%--                    <div class="bookName padding">--%>
<%--                        <p class="p__bookName">Nghia tinh rang buoc</p>--%>
<%--                    </div>--%>
<%--                    <div class="dateBuy padding"> 2021-11-10</div>--%>
<%--                    <div class="price padding">250000đ</div>--%>
<%--                </div>--%>
            </div>
        </div>
    </jsp:body>
</t:main>

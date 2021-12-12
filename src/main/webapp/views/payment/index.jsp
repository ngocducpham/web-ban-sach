<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="customer_order" scope="request" type="java.util.List<com.doancntt.beans.CustomerOrder>"/>
<jsp:useBean id="order_detail" scope="request" type="java.util.List<com.doancntt.beans.OrderDetail>"/>
<jsp:useBean id="Book_ordered" scope="request" type="java.util.List<com.doancntt.beans.Book>"/>
<jsp:useBean id="customer_address" scope="request" type="com.doancntt.beans.Address"/>

<jsp:useBean id="count_book" scope="request" type="java.lang.Integer"/>
<jsp:useBean id="bill_cost" scope="request" type="java.lang.Integer"/>

<jsp:useBean id="Customer_logged_in" scope="session" type="com.doancntt.beans.Customer"/>

<t:main>
     <jsp:attribute name="css">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/payment.css">
         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/register.css">
        </jsp:attribute>
    <jsp:attribute name="js">
        <script type="text/javascript" src="${pageContext.request.contextPath}/public/scripts/pay.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="${pageContext.request.contextPath}/public/scripts/register.js"></script>
        <script src="${pageContext.request.contextPath}/public/scripts/vietnamlocalselector.js"></script>
        <script>
            let localpicker = new LocalPicker({
                province: "ls_province",
                district: "ls_district",
                ward: "ls_ward"
            });
        </script>
    </jsp:attribute>
    <jsp:body>
        <div class="paymentPage">
            <div class="containerPayment">
                <p id="province" style="display: none">${customer_address.province}</p>
                <h2 class="titlePay">Thanh Toán</h2>
                <div class="boxAddress">
                    <div class="topicAddress">
                        <h3 class="Address">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                            </svg>
                            Địa chỉ nhận hàng
                        </h3>
                        <button class="addNewAddress" id="newAddress"> Thêm địa chỉ mới</button>
                        <div class="newForm invisible1" id="formAddress">
                            <div class="container-fluid p-0">

                                <div class="auth-form px-3 mt-3" id="login">
                                    <input type="hidden" name="ga_id" class="js-octo-ga-id-input">
                                    <div class="auth-form-header p-0">
                                        <h2 class="addressHeader">Địa chỉ mới</h2>
                                    </div>
                                    <form class="auth-form-body mt-3" method="post" id="FormRegister">
                                        <label for="ten">
                                            Tên <span class="txt_red">(*)</span>
                                        </label>
                                        <span class="txt_red" id="error_ten"></span>

                                        <input type="text" name="ten" id="ten"
                                               class="form-control form-control input-block js-password-field"
                                               autocomplete="current-password"
                                               onblur="checkName()">
                                        <label for="sdt">
                                            Số Điện Thoại <span class="txt_red">(*)</span></label><span class="txt_red"
                                                                                                        id="error_phone"></span>
                                        </label>
                                        <input type="text" name="sdt" id="sdt"
                                               class="form-control form-control input-block js-password-field"
                                               autocomplete="current-password"
                                               onblur="checkPhone()">
                                        <p class="labelProvince"> Chọn tỉnh, huyện </p>
                                        <div class="provinceOption">
                                            <select class="space" name="ls_province" id="ls_province"></select>
                                            <select class="space" name="ls_district" id="ls_district"></select>
                                            <select class="space" name="ls_ward" id="ls_ward"></select>
                                        </div>
                                        <label for="diachi">
                                            Địa Chỉ Nhà
                                        </label>
                                        <input type="text" name="diachi" id="diachi"
                                               class="form-control form-control input-block js-password-field"
                                               autocomplete="current-password"

                                        >
                                        <input type="text" name="diachict" id="diachichitiet"
                                               class="form-control form-control input-block js-password-field"
                                               autocomplete="current-password"
                                               readonly

                                        >
                                        <div class="sameLine">
                                            <input value="Hủy"
                                                   class="btn btn-primary btn-block js-sign-in-button"
                                                   id="btnCanel"
                                                   type="button">
                                            <input value="Hoành Thành"
                                                   class="btn btn-primary btn-block js-sign-in-button"
                                                   id="btnComplete"
                                                   type="button">
                                        </div>

                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="detailAddress">
                        <div>
                            <p class="nameCustomer"
                               id="nameCustomer">${Customer_logged_in.first_Name} ${Customer_logged_in.last_Name}<br>
                            </p>
                            <p class="phoneNum" id="phoneNumber">SĐT: ${customer_address.phone_Number} </p>
                        </div>
                        <p class="customerAddress" id="customerAddress"> &nbsp; ${customer_address.full_Address} </p>
                    </div>
                    <c:forEach items="${Book_ordered}" var="b">
                        <div class="boxProduct">
                            <table class="tableProduct">
                                <tr class="topicProduct">
                                    <th>&nbsp; Sản phẩm</th>
                                    <th>Đơn giá</th>
                                    <th>Số lượng</th>
                                    <th>Thành tiền</th>
                                </tr>
                                <tr class="detailProduct">
                                    <td class="fullProduct">
                                        <a href="${pageContext.request.contextPath}/Detail?id=${b.book_ID}">
                                            <figure class="picProduct"><img
                                                    src="${pageContext.request.contextPath}/public/imgs/${b.img}"
                                                    alt="Picture Product">
                                            </figure>
                                        </a>
                                        <p class="nameProduct">&nbsp; ${b.title}</p>
                                    </td>
                                    <td id="bookMoney"><fmt:formatNumber
                                            type="number" maxFractionDigits="0"
                                            value="${b.price*(100-b.discount)/100}"/>
                                    </td>
                                    <td id="quantity"> ${order_detail.get(Book_ordered.indexOf(b)).count_book}
                                    </td>
                                    <td id="moneyQuantity"><fmt:formatNumber
                                            type="number" maxFractionDigits="0"
                                            value="${order_detail.get(Book_ordered.indexOf(b)).count_book * (b.price*(100-b.discount)/100)}"/>
                                        đ
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </c:forEach>
                    <div class="boxPayment">
                        <table class="tablePayment">
                            <tr class="methodPayment">
                                <th class="orange">$ Phương thức thanh toán</th>
                                <td class="orange">Thanh toán khi nhận hàng</td>
                            </tr>
                            <tr class="labelTotalMoney">
                                <th>1. &nbsp;Tổng tiền hàng</th>
                                <td id="totalMoneyProduct"><fmt:formatNumber
                                        type="number" maxFractionDigits="0"
                                        value="${bill_cost}"/> đ
                                </td>
                            </tr>
                            <tr class="labelfeeTransfer">
                                <th>2.&nbsp; Phí vận chuyển</th>
                                <td id="detailMoney">57.200</td>
                            </tr>
                            <tr class="totalPay">
                                <th>3. Tổng thanh toán</th>
                                <td id="detailMoneyProduct">387.200</td>
                            </tr>
                        </table>
                        <button class="btnOrder"> Đặt hàng</button>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:main>
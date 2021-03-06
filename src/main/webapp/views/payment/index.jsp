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
        <form class="paymentPage" method="post">
            <div class="containerPayment">
                <p id="province" style="display: none">${customer_address.province}</p>
                <h2 class="titlePay">Thanh To??n</h2>
                <div class="boxAddress">
                    <div class="topicAddress">
                        <h3 class="Address">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                 class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                            </svg>
                            ?????a ch??? nh???n h??ng
                        </h3>
                        <button type="button" class="addNewAddress" id="newAddress"> ?????i ?????a ch??? nh???n h??ng</button>
                        <div class="newForm invisible1" id="formAddress">
                            <div class="container-fluid p-0">

                                <div class="auth-form px-3 mt-3" id="login">
                                    <input type="hidden" name="ga_id" class="js-octo-ga-id-input">
                                    <div class="auth-form-header p-0">
                                        <h2 class="addressHeader">?????a ch??? m???i</h2>
                                    </div>
                                    <div class="auth-form-body mt-3">
                                        <label for="ten">
                                            T??n <span class="txt_red">(*)</span>
                                        </label>
                                        <span class="txt_red" id="error_ten"></span>

                                        <input type="text" name="ten" id="ten"
                                               class="form-control form-control input-block js-password-field"
                                               autocomplete="current-password"
                                               onblur="checkName()">
                                        <label for="sdt">
                                            S??? ??i???n Tho???i <span class="txt_red">(*)</span></label><span class="txt_red"
                                                                                                        id="error_phone"></span>
                                        </label>
                                        <input type="text" name="sdt" id="sdt"
                                               class="form-control form-control input-block js-password-field"
                                               autocomplete="current-password"
                                               onblur="checkPhone()">
                                        <p class="labelProvince"> Ch???n t???nh, huy???n </p>
                                        <div class="provinceOption">
                                            <select class="space" name="ls_province" id="ls_province"></select>
                                            <select class="space" name="ls_district" id="ls_district"></select>
                                            <select class="space" name="ls_ward" id="ls_ward"></select>
                                        </div>
                                        <label for="diachi">
                                            ?????a Ch??? Nh??
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
                                            <input value="H???y"
                                                   class="btn btn-primary btn-block js-sign-in-button"
                                                   id="btnCanel"
                                                   type="button">
                                            <input value="Ho??nh Th??nh"
                                                   class="btn btn-primary btn-block js-sign-in-button"
                                                   id="btnComplete"
                                                   type="button">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="detailAddress">
                        <div>
                            <p class="nameCustomer"
                               id="nameCustomer">${Customer_logged_in.first_Name} ${Customer_logged_in.last_Name}<br>
                            </p>
                            <p class="phoneNum" id="phoneNumber">S??T: ${customer_address.phone_Number} </p>
                        </div>
                        <p class="customerAddress" id="customerAddress"> &nbsp; ${customer_address.full_Address} </p>
                    </div>
                    <c:forEach items="${Book_ordered}" var="b">
                        <div class="boxProduct">
                            <table class="tableProduct">
                                <tr class="topicProduct">
                                    <th>&nbsp; S???n ph???m</th>
                                    <th>????n gi??</th>
                                    <th>S??? l?????ng</th>
                                    <th>Th??nh ti???n</th>
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
                                        ??
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </c:forEach>
                    <div class="boxPayment">
                        <table class="tablePayment">
                            <tr class="methodPayment">
                                <th class="orange">$ Ph????ng th???c thanh to??n</th>
                                <td class="orange">Thanh to??n khi nh???n h??ng</td>
                            </tr>
                            <tr class="labelTotalMoney">
                                <th>1. &nbsp;T???ng ti???n h??ng</th>
                                <td id="totalMoneyProduct"><fmt:formatNumber
                                        type="number" maxFractionDigits="0"
                                        value="${bill_cost}"/> ??
                                </td>
                            </tr>
                            <tr class="labelfeeTransfer">
                                <th>2.&nbsp; Ph?? v???n chuy???n</th>
                                <td id="detailMoney">57.200</td>
                            </tr>
                            <tr class="totalPay">
                                <th>3. T???ng thanh to??n</th>
                                <td id="detailMoneyProduct">387.200</td>
                            </tr>
                        </table>
                        <button type="submit" class="btnOrder"> ?????t h??ng</button>
                    </div>
                </div>
            </div>
        </form>
    </jsp:body>
</t:main>
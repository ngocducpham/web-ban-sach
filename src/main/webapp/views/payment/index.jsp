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
         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/payment.css">
        </jsp:attribute>
    <jsp:attribute name="js">
        <script type="text/javascript" src="${pageContext.request.contextPath}/public/scripts/pay.js"></script>
    </jsp:attribute>
    <jsp:body>
        <div class="paymentPage">
            <div class="containerPayment">
                <p id="province" style="visibility: hidden">${customer_address.province}</p>
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
                        <button class="addNewAddress"> Thêm địa chỉ mới</button>
                    </div>
                    <div class="detailAddress">
                        <p class="nameCustomer">${Customer_logged_in.first_Name} ${Customer_logged_in.last_Name}<br><span
                                class="phoneNum">Số Điện Thoại ${customer_address.phone_Number} </span>
                        </p>
                        <p class="customerAddress"> ${customer_address.full_Address} </p>
                    </div>
                    <c:forEach items="${Book_ordered}" var="b">
                        <div class="boxProduct">
                            <table class="tableProduct">
                                <tr class="topicProduct">
                                    <th>Sản phẩm</th>
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
                                        <p class="nameProduct">${b.title}</p>
                                    </td>
                                    <td><fmt:formatNumber
                                            type="number" maxFractionDigits="0"
                                            value="${b.price*(100-b.discount)/100}"/>
                                    </td>
                                    <td class="quantity"> ${order_detail.get(Book_ordered.indexOf(b)).count_book}
                                    </td>
                                    <td> 99999đ</td>
                                </tr>
                            </table>
                        </div>
                    </c:forEach>
                    <div class="boxPayment">
                        <table class="tablePayment">
                            <tr class="methodPayment">
                                <th>$ Phương thức thanh toán</th>
                                <td>Thanh toán khi nhận hàng</td>
                            </tr>
                            <tr class="labelTotalMoney">
                                <th>1. &nbsp;Tổng tiền hàng</th>
                                    <%--                                <td>${bill_cost}</td>--%>
                            </tr>
                            <tr class="labelfeeTransfer">
                                <th>2.&nbsp; Phí vận chuyển</th>
                                <td>57.200</td>
                            </tr>
                            <tr class="totalPay">
                                <th>3. Tổng thanh toán</th>
                                <td>387.200</td>
                            </tr>
                        </table>
                        <button class="btnOrder"> Đặt hàng</button>
                    </div>
                </div>
            </div>
        </div>
    </jsp:body>
</t:main>
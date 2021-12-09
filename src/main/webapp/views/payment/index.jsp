<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%--<jsp:useBean id="customer_order" scope="request" type="java.util.List<com.doancntt.beans.CustomerOrder>"/>--%>
<%--<jsp:useBean id="order_detail" scope="request" type="java.util.List<com.doancntt.beans.OrderDetail>"/>--%>
<%--<jsp:useBean id="Book_ordered" scope="request" type="java.util.List<com.doancntt.beans.Book>"/>--%>
<%--<jsp:useBean id="customer_address" scope="request" type="com.doancntt.beans.Address"/>--%>

<%--<jsp:useBean id="count_book" scope="request" type="java.lang.Integer"/>--%>
<%--<jsp:useBean id="bill_cost" scope="request" type="java.lang.Integer"/>--%>


<t:main>
     <jsp:attribute name="css">
         <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/payment.css">
        </jsp:attribute>
    <jsp:attribute name="js">
    </jsp:attribute>
    <jsp:body>
        <div class="paymentPage">
            <div class="container">
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
                        <p class="nameCustomer"> Customer Name <br><span class="phoneNum">0842805550 </span></p>
                        <p class="customerAddress"> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nisi atque
                            dolor hic nam </p>
                    </div>
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
                                    <figure class="picProduct"><img src="#" alt="Picture Product"></figure>
                                    <p class="nameProduct">Name product in here</p>
                                </td>
                                <td>330000 đ</td>
                                <td class="quantity"> 1
                                </th>
                                <td> 330000 đ
                                </th>
                            </tr>
                        </table>
                    </div>
                    <div class="boxPayment">
                        <table class="tablePayment">
                            <tr class="methodPayment">
                                <th>$ Phương thức thanh toán</th>
                                <td>Thanh toán khi nhận hàng</td>
                            </tr>
                            <tr class="labelTotalMoney">
                                <th>1. &nbsp;Tổng tiền hàng</th>
                                <td>330000</td>
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
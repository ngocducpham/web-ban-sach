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

<%--<link rel="stylesheet" href="../../public/styles/cart.css">--%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/cart.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/public/scripts/cart.js"></script>


<t:main>
     <jsp:attribute name="css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
              crossorigin="anonymous">
         <%--                <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"--%>
         <%--                      id="bootstrap-css">--%>

        </jsp:attribute>
    <jsp:attribute name="js">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/public/scripts/cart.js"></script>
    </jsp:attribute>
    <jsp:body>
        <h2 class="headerCart"> GIỎ HÀNG</h2>
        <p id="province" style="visibility: hidden">${customer_address.province}</p>
        <div class="container">
            <div class="productBox">
                <h4 class="headerProduct"> SẢN PHẨM</h4>
                <c:forEach items="${Book_ordered}" var="b">
                    <div class="quantityProduct">
                        <a class="bookImage" href="${pageContext.request.contextPath}/Detail?id=${b.book_ID}"><img
                                src="${pageContext.request.contextPath}/public/imgs/${b.img}"
                                alt="BookImage"></a>
                        <div class="bookName">
                            <p class="p__bookName">${b.title}</p>

                            <div class=" input-group w-auto justify-content-center align-items-center">
                                <p class="p__buying"> Số lượng mua: </p>
                                <input type="button" value="-"
                                       class="button-minus border rounded-circle  icon-shape icon-sm mx-1 "
                                       data-field="quantity">
                                <input type="number" step="1" max="100" value="1" name="quantity"
                                       class="numberBuying quantity-field text-center w-25">
                                <input type="button" value="+"
                                       class="button-plus border rounded-circle icon-shape icon-sm btnPlus "
                                       data-field="quantity">
                            </div>
                        </div>
                        <div class="money">
                            <p class="quantity"><span
                                    class="numberBuy"> ${order_detail.get(Book_ordered.indexOf(b)).count_book} </span> x
                                <span
                                        class="moneyBook"><fmt:formatNumber
                                        type="number" maxFractionDigits="0"
                                        value="${b.price*(100-b.discount)/100}"/> đ</span></p>
                            <button class="trashIcon">
                                Xóa sản phẩm

                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                     class="bi bi-trash" viewBox="0 0 16 16">
                                    <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
                                    <path fill-rule="evenodd"
                                          d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
                                </svg>
                            </button>
                            <!-- <a href="https://icons8.com/icon/67884/remove">Remove icon by Icons8</a> -->
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="briefOder">
                <h4 class="headerOrder">TÓM TẮT ĐƠN HÀNG</h4>
                <div class="bill">
                    <div class="containerProduct">
                        <div class="rowProduct">
                            <div class="col colProduct">
                                <p class="billProduct"> Số sản phẩm</p>
                                <p class="feeTransport"> Phí vận chuyển</p>
                                <p class="provisional"> Tạm tính</p>
                            </div>
                            <div class="colJS">
                                <p class="quantityProductNum" id="quantỉty_books"> ${count_book} </p>
                                <p class="fee" id="fee"><fmt:formatNumber
                                        type="number" maxFractionDigits="0"
                                        value="${order_detail.size()*7000}"/> đ</p>
                                <p class="provisionalMoney" id="provisionalMoney"><fmt:formatNumber
                                        type="number" maxFractionDigits="0"
                                        value="${bill_cost}"/> đ</p>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="total">
                        <p class="p__Total">TỔNG CỘNG</p>
                        <p class="moneyTotal" id="moneyTotal"><fmt:formatNumber
                                type="number" maxFractionDigits="0"
                                value="${bill_cost +order_detail.size()*7000}"/> đ</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="containerBtn">
            <button class="back"> QUAY LẠI</button>
            <button class="pay"><a href="" class=""></a> THANH TOÁN</button>
        </div>
    </jsp:body>
</t:main>
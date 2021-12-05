<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="customer_order" scope="request" type="java.util.List<com.doancntt.beans.CustomerOrder>"/>
<jsp:useBean id="order_detail" scope="request" type="java.util.List<com.doancntt.beans.OrderDetail>"/>
<jsp:useBean id="Book_ordered" scope="request" type="java.util.List<com.doancntt.beans.Book>"/>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%--<link rel="stylesheet" href="../../public/styles/cart.css">--%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/styles/cart.css">


<t:main>
     <jsp:attribute name="css">

<%--                <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"--%>
<%--                      id="bootstrap-css">--%>

        </jsp:attribute>
    <jsp:attribute name="js">
        <script type="text/javascript" src="${pageContext.request.contextPath}/public/scripts/cart.js"></script>
    </jsp:attribute>
    <jsp:body>
        <h2 class="headerCart"> GIỎ HÀNG</h2>
        <div class="container">
            <div class="productBox">
                <h4 class="headerProduct"> SẢN PHẨM</h4>
                <c:forEach items="${Book_ordered}" var="b">
                    <div class="quantityProduct">
                        <figure class="bookImage"><img
                                src="${pageContext.request.contextPath}/public/imgs/${b.img}"
                                alt="BookImage"></figure>
                        <div class="bookName">
                            <p class="p__bookName">${b.title}</p>
                            <div class="col-lg-2">
                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-left-minus btn btn-danger btn-number"
                                                data-type="minus" data-field="">
                                          <span class="glyphicon glyphicon-minus"></span>
                                        </button>
                                    </span>
                                    <input type="text" id="quantity" name="quantity" class="form-control input-number"
                                           value="10" min="1" max="100">
                                    <span class="input-group-btn">
                                        <button type="button" class="quantity-right-plus btn btn-success btn-number"
                                                data-type="plus" data-field="">
                                            <span class="glyphicon glyphicon-plus"></span>
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="money">
                            <p class="quantity"><span class="numberBuy"> ${order_detail.get(Book_ordered.indexOf(b)).count_book} </span> x <span
                                    class="moneyBook"><fmt:formatNumber
                                    type="number" maxFractionDigits="0"
                                    value="${b.price*(100-b.discount)/100}"/> </span></p>
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
                                <p class="billProduct"> Sản phẩm</p>
                                <p class="feeTransport"> Phí vận chuyển</p>
                                <p class="provisional"> Tạm tính</p>
                            </div>
                            <div class="colJS">
                                <p class="quantityProduct"> 3</p>
                                <p class="fee"> Mien phi</p>
                                <p class="provisionalMoney"> 459.000</p>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="total">
                        <p class="p__Total">TỔNG CỘNG</p>
                        <p class="moneyTotal">459.000</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="containerBtn">
            <button class="back"> QUAY LẠI</button>
            <button class="pay"> THANH TOÁN</button>
        </div>
    </jsp:body>
</t:main>